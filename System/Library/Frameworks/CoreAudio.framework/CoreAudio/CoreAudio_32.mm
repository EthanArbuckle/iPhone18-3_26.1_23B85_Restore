uint64_t AMCP::Feature_Flags::force_mock_dsp_type(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::force_mock_dsp_type(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::s_force_mock_dsp_type;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::s_force_mock_dsp_type = v2;
    if (v2 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::s_force_mock_dsp_type = a1;
    if ((a1 & 1) == 0)
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

  a1 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a1)
  {
    v16 = 136315394;
    v17 = "Configuration.cpp";
    v18 = 1024;
    v19 = 449;
    _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, "%32s:%-5d Use MOCK DSP on Hosted DSP construction (testing only) - this will override ADM loading option.", &v16, 0x12u);
  }

LABEL_12:
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
    v10 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v10 = *v9;
  }

  v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v11 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v8);
  }

  v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = os_signpost_id_generate(*v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v14 = os_signpost_id_generate(*v12);
  }

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v16 = 67109120;
    LODWORD(v17) = AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::s_force_mock_dsp_type;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v10, OS_SIGNPOST_EVENT, v14, "AMCP_Force_Mock_DSP_Type", "Force Using Mock DSP: %d", &v16, 8u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(AMCP::Log::AMCP_Scope_Registry *a1, std::__shared_weak_count *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = a1;
  {
    goto LABEL_25;
  }

  while (1)
  {
    if (a2 && (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable & 1) != 0)
    {
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

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Configuration.cpp";
        v20 = 1024;
        v21 = 467;
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEFAULT, "%32s:%-5d WARNING: Feature Flag 'Use_AHAL_DSP_Hosting_Lib' is initialized as runtime configurable (development only).", buf, 0x12u);
      }
    }

    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable != 1)
    {
      break;
    }

    v7 = v17;
    v8 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib;
    if (!v17 || *v17 == AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib)
    {
      goto LABEL_23;
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    a2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (a2)
    {
      atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v10 = *(v9 + 8);
      v11 = (*v17 << 32) | 0x1DA;
      v12 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v12 + 16) = 0;
      *(v12 + 20) = 0;
      *(v12 + 24) = "Configuration.cpp";
      *(v12 + 32) = v11;
      *v12 = &unk_1F5971348;
      *(v12 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v10, v12);
      if (a2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a2);
      }

      v8 = *v7;
      AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib = *v7;
      goto LABEL_23;
    }

    __break(1u);
LABEL_25:
    if (a1)
    {
      if (a2)
      {
        v15 = a2->__vftable;
      }

      else
      {
        v15 = 0;
      }

      AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable = v15 & 1;
    }
  }

  v16 = &v17;
  if (atomic_load_explicit(&AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::once, memory_order_acquire) != -1)
  {
    *buf = &v16;
    v18 = buf;
    std::__call_once(&AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::once, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_1 &&>>);
  }

  v8 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib;
LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void sub_1DE45D4CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_1 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib = a1;
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
        v25 = 500;
        v11 = "%32s:%-5d Use AHAL DSP Hosting Lib.";
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
    v25 = 504;
    v11 = "%32s:%-5d Do not use AHAL DSP Hosting Lib.";
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
    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_AHAL_DSP_Hosting_Lib", "Use AHAL DSP Hosting Lib: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_0,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d WARNING: Feature Flag 'Use_AHAL_DSP_Hosting_Lib' is runtime configurable (development only).  Changing setting to %d.", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_0,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Feature_Flags::allow_smart_routing_macos(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::allow_smart_routing_macos(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::s_allow_smart_routing_macos;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::s_allow_smart_routing_macos = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::s_allow_smart_routing_macos = a1;
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
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 533;
        v11 = "%32s:%-5d Allow Smart Routing on macOS";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
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
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 537;
    v11 = "%32s:%-5d Do not allow Smart Routing on macOS";
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
    v21 = 67109120;
    LODWORD(v22) = AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::s_allow_smart_routing_macos;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_Smart_Routing_macOS", "Allow Smart Routing: %d", &v21, 8u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::allow_client_io_timeout_macos(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::allow_client_io_timeout_macos(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::s_allow_client_io_timeout_macos;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::s_allow_client_io_timeout_macos = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::s_allow_client_io_timeout_macos = a1;
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
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 566;
        v11 = "%32s:%-5d Allow Client IO Timeout on macOS";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
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
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 570;
    v11 = "%32s:%-5d Do not allow Client IO Timeout on macOS";
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
    v21 = 67109120;
    LODWORD(v22) = AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::s_allow_client_io_timeout_macos;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_Client_IO_Timeout_macOS", "Allow Client IO Timeout: %d", &v21, 8u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::allow_unified_device_engine_replacer(AMCP::Feature_Flags *this)
{
  v2 = &v3;
  v3 = 0;
  if (atomic_load_explicit(&AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v5 = &v2;
    v4 = &v5;
    std::__call_once(&AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::s_allow_unified_device_engine_replacer;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::s_allow_unified_device_engine_replacer = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::s_allow_unified_device_engine_replacer = a1;
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
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 599;
        v11 = "%32s:%-5d Allow unified device engine replacer";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
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
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 603;
    v11 = "%32s:%-5d Disallow unified device engine replacer";
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
    v21 = 67109120;
    LODWORD(v22) = AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::s_allow_unified_device_engine_replacer;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "Unified Device Engine Replacer", "Allow unified device engine replacer: %d", &v21, 8u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::allow_high_quality_local_recording(AMCP::Feature_Flags *this)
{
  only_ios_high_quality_recording = AMCP::Feature_Flags::va_read_only_ios_high_quality_recording(this);
  if (only_ios_high_quality_recording)
  {
    return 1;
  }

  return AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(only_ios_high_quality_recording);
}

uint64_t AMCP::Feature_Flags::use_graph_based_io_processor(AMCP::Log::AMCP_Scope_Registry *a1, std::__shared_weak_count *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = a1;
  {
    goto LABEL_25;
  }

  while (1)
  {
    if (a2 && (AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable & 1) != 0)
    {
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

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Configuration.cpp";
        v20 = 1024;
        v21 = 621;
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEFAULT, "%32s:%-5d WARNING: Feature Flag 'Use_Graph_Based_IO_Processor' is initialized as runtime configurable (development only).", buf, 0x12u);
      }
    }

    if (AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable != 1)
    {
      break;
    }

    v7 = v17;
    v8 = AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor;
    if (!v17 || *v17 == AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor)
    {
      goto LABEL_23;
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    a2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (a2)
    {
      atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v10 = *(v9 + 8);
      v11 = (*v17 << 32) | 0x274;
      v12 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v12 + 16) = 0;
      *(v12 + 20) = 0;
      *(v12 + 24) = "Configuration.cpp";
      *(v12 + 32) = v11;
      *v12 = &unk_1F59713A0;
      *(v12 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v10, v12);
      if (a2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a2);
      }

      v8 = *v7;
      AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor = *v7;
      goto LABEL_23;
    }

    __break(1u);
LABEL_25:
    if (a1)
    {
      if (a2)
      {
        v15 = a2->__vftable;
      }

      else
      {
        v15 = 0;
      }

      AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable = v15 & 1;
    }
  }

  v16 = &v17;
  if (atomic_load_explicit(&AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::once, memory_order_acquire) != -1)
  {
    *buf = &v16;
    v18 = buf;
    std::__call_once(&AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::once, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_1 &&>>);
  }

  v8 = AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor;
LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void sub_1DE45E698(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_1 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor = a1;
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
        v25 = 654;
        v11 = "%32s:%-5d Use Graph Based IO Procesor.";
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
    v25 = 658;
    v11 = "%32s:%-5d Do not use Graph Based IO Procesor.";
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
    if (AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_Graph_Based_IO_Processor", "Use Graph Based IO Processor: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_0,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d WARNING: Feature Flag 'Use_Graph_Based_IO_Processor' is runtime configurable (development only).  Changing setting to %d.", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_0,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Feature_Flags::report_real_system_health_to_watchdog(AMCP::Feature_Flags *this)
{
  v2 = &v3;
  v3 = 0;
  if (atomic_load_explicit(&AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v5 = &v2;
    v4 = &v5;
    std::__call_once(&AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::s_report_real_system_health_to_watchdog;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::s_report_real_system_health_to_watchdog = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::s_report_real_system_health_to_watchdog = a1;
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
        v25 = 720;
        v11 = "%32s:%-5d Report real system health to watchdog.";
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
    v25 = 724;
    v11 = "%32s:%-5d Always report 'healthy' to watchdog.";
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
    if (AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::s_report_real_system_health_to_watchdog)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "Report_Real_System_Health_To_Watchdog", "Report real system health to watchdog: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::use_isolated_muted_talker_detection(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::use_isolated_muted_talker_detection(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::s_use_isolated_muted_talker_detection;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::s_use_isolated_muted_talker_detection = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::s_use_isolated_muted_talker_detection = a1;
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
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 687;
        v11 = "%32s:%-5d Allow Isolated Muted Talker Detection";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
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
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 691;
    v11 = "%32s:%-5d Do not allow Isolated Muted Talker Detection";
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
    v21 = 67109120;
    LODWORD(v22) = AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::s_use_isolated_muted_talker_detection;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_Isolated_Muted_Talker_Detection", "Allow Isolated Muted Talker Detection: %d", &v21, 8u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

ADS::BaseObject *ADS::Control::GetPropertyData(ADS::BaseObject *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, _DWORD *a9)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4->mSelector == 1667591277)
  {
    if (a7 > 3)
    {
      *a9 = 0;
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "ADS_Control.cpp";
      v16 = 1024;
      v17 = 92;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d  ADS::Control::GetPropertyData: not enough space for the return value of kAudioControlPropertyElement for the volume control";
      goto LABEL_15;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  if (a4->mSelector == 1668506480)
  {
    if (a7 > 3)
    {
      *a9 = *(this + 29);
LABEL_7:
      *a8 = 4;
      v9 = *MEMORY[0x1E69E9840];
      return this;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "ADS_Control.cpp";
      v16 = 1024;
      v17 = 85;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d  ADS::Control::GetPropertyData: not enough space for the return value of kAudioControlPropertyScope for the volume control";
LABEL_15:
      _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0x12u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v10 = *MEMORY[0x1E69E9840];

  return ADS::BaseObject::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ADS::Control::GetPropertyDataSize(ADS::Control *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  if (a4->mSelector == 1667591277 || a4->mSelector == 1668506480)
  {
    return 4;
  }

  else
  {
    return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }
}

uint64_t ADS::Control::IsPropertySettable(ADS::Control *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  if (a4->mSelector == 1667591277 || a4->mSelector == 1668506480)
  {
    return 0;
  }

  else
  {
    return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
  }
}

uint64_t ADS::Control::HasProperty(ADS::Control *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  if (a4->mSelector == 1667591277 || a4->mSelector == 1668506480)
  {
    return 1;
  }

  else
  {
    return ADS::BaseObject::HasProperty(this, a2, a3, a4);
  }
}

ADS::Control *ADS::Control::Control(ADS::Control *this, int a2, int a3, int a4, int a5, int a6)
{
  *(this + 2) = a2;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a3;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 112) = 0;
  *this = &unk_1F5984F18;
  *(this + 29) = a4;
  CADeprecated::CAMutex::CAMutex((this + 120), "Control State");
  return this;
}

void AMCP::DAL::Fixed_Buffer::get_direct_write_ranges(AMCP::DAL::Fixed_Buffer *this@<X0>, const AMCP::DAL::DAL_Time_Range *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(this + 8, a2);
  if (!v6)
  {
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
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 218;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_time_range.encompasses(range))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v33);
    std::logic_error::logic_error(&v34, &v33);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5991430;
    v36 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
    v43 = "virtual rt_safe_vector<std::pair<Buffer_Time_Translator::Translation_Range, Container>> AMCP::DAL::Fixed_Buffer::get_direct_write_ranges(const DAL_Time_Range &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v45 = 218;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a2);
  v8 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 40));
  v9 = AMCP::DAL::DAL_Time::get_sample_time((this + 8));
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v35 = *a2;
  v36 = *(a2 + 2);
  v10 = *(a2 + 24);
  v28 = v10;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v31 = *(a2 + 40);
  v32 = *(a2 + 7);
  v11 = *(a2 + 4);
  v27 = v11;
  if (*(&v11 + 1))
  {
    atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(this + 88);
  v26 = v12;
  if (*(&v12 + 1))
  {
    atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v8 - v9;
  v14 = sample_time - v9;
  v43 = a3;
  v15 = std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>(1);
  *buf = v15;
  *&buf[8] = v15;
  *&buf[24] = v15 + 112 * v16;
  *v15 = v14;
  *(v15 + 1) = v13;
  *(v15 + 4) = v36;
  *(v15 + 1) = v35;
  *(v15 + 40) = v28;
  *(v15 + 56) = v31;
  *(v15 + 9) = v32;
  *(v15 + 5) = v27;
  *(v15 + 6) = v26;
  *&buf[16] = v15 + 112;
  v17 = *(a3 + 8);
  v18 = v15 + *a3 - v17;
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>,std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>*>(a3, *a3, v17, v18);
  v19 = *a3;
  *a3 = v18;
  v20 = *(a3 + 16);
  v29 = *&buf[16];
  *(a3 + 8) = *&buf[16];
  *&buf[16] = v19;
  *&buf[24] = v20;
  *buf = v19;
  *&buf[8] = v19;
  std::__split_buffer<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>> &>::~__split_buffer(buf);
  *(a3 + 8) = v29;
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE45F954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v33 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a32);
  MEMORY[0x1E12C0F00](&a30);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a13)
  {
    __cxa_free_exception(v32);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 129));
  _Unwind_Resume(a1);
}

BOOL caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(uint64_t a1, uint64_t a2)
{
  result = AMCP::DAL::DAL_Time::operator<(a1, (a1 + 40));
  if (result)
  {
    if (AMCP::DAL::DAL_Time::operator<(a2, (a2 + 40)))
    {
      return !AMCP::DAL::DAL_Time::operator<(a2, a1) && !AMCP::DAL::DAL_Time::operator<((a1 + 40), (a2 + 40));
    }

    else
    {
      return 1;
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0x24924924924924ALL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_allocate(result);
    }
  }

  __break(1u);
  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>,std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 1);
      *(a4 + 32) = v6[4];
      *(a4 + 16) = v7;
      *(a4 + 40) = *(v6 + 5);
      v6[5] = 0;
      v6[6] = 0;
      v8 = *(v6 + 7);
      *(a4 + 72) = v6[9];
      *(a4 + 56) = v8;
      *(a4 + 80) = *(v6 + 5);
      v6[10] = 0;
      v6[11] = 0;
      *(a4 + 96) = *(v6 + 6);
      v6[12] = 0;
      v6[13] = 0;
      v6 += 14;
      a4 += 112;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(v5);
      v5 += 14;
    }

    while (v5 != a3);
  }
}

void std::__split_buffer<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 112;
    std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>((v3 - 112));
  }

  v4 = *a1;
  if (*a1)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 24) - v4) >> 4)) < 0x24924924924924ALL && *MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[11];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void AMCP::DAL::Fixed_Buffer::create_writable_range(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  *buf = *(a1 + 8);
  v6 = *(a1 + 32);
  *&buf[16] = *(a1 + 24);
  *&buf[24] = v6;
  v7 = *(a1 + 40);
  v42 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v43 = *(a1 + 48);
  v8 = *(a1 + 72);
  v44 = *(a1 + 64);
  v45 = v8;
  v9 = *(a1 + 80);
  v46 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(buf, a2);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v11 = v42;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (!v10)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      *&buf[18] = 2080;
      *&buf[20] = "not (get_time_range().encompasses(range))";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v42 = "virtual Writable_Range AMCP::DAL::Fixed_Buffer::create_writable_range(DAL_Time_Range) const";
    *&v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    DWORD2(v43) = 164;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  v23 = *a2;
  v12 = *(a2 + 24);
  v24 = *(a2 + 16);
  v25 = v12;
  v13 = *(a2 + 32);
  v26 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = *(a2 + 40);
  v14 = *(a2 + 64);
  v28 = *(a2 + 56);
  v29 = v14;
  v15 = *(a2 + 72);
  v30 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Readable_Range::Readable_Range(a3, &v23, a1);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v16 = v26;
  if (v26)
  {
    v17 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];
  }
}

void AMCP::DAL::Fixed_Buffer::create_writable_range(AMCP::DAL::Fixed_Buffer *this@<X0>, uint64_t a2@<X8>)
{
  v7 = *(this + 8);
  v2 = *(this + 4);
  v8 = *(this + 3);
  v9 = v2;
  v3 = *(this + 5);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 3);
  v4 = *(this + 9);
  v12 = *(this + 8);
  v13 = v4;
  v5 = *(this + 10);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Fixed_Buffer::create_writable_range(this, &v7, a2);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v6 = v10;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void AMCP::DAL::Fixed_Buffer::create_readable_range(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  v73 = *(a1 + 8);
  v6 = *(a1 + 32);
  v74 = *(a1 + 24);
  v75 = v6;
  v7 = *(a1 + 40);
  v76 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v77 = *(a1 + 48);
  v8 = *(a1 + 72);
  v78 = *(a1 + 64);
  v79 = v8;
  v9 = *(a1 + 80);
  v80 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(&v73, a2);
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
  }

  v11 = v76;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (!v10)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      v73 = *(a1 + 8);
      v23 = *(a1 + 32);
      v74 = *(a1 + 24);
      v75 = v23;
      v24 = *(a1 + 40);
      v76 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v77 = *(a1 + 48);
      v25 = *(a1 + 72);
      v78 = *(a1 + 64);
      v79 = v25;
      v26 = *(a1 + 80);
      v80 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v73);
      v65 = *(a1 + 8);
      v28 = *(a1 + 32);
      v66 = *(a1 + 24);
      v67 = v28;
      v29 = *(a1 + 40);
      v68 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      v69 = *(a1 + 48);
      v30 = *(a1 + 72);
      v70 = *(a1 + 64);
      v71 = v30;
      v31 = *(a1 + 80);
      v72 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      v32 = AMCP::DAL::DAL_Time::get_sample_time(&v69);
      v33 = AMCP::DAL::DAL_Time::get_sample_time(a2);
      v34 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 5));
      *buf = 136316674;
      v82 = "Fixed_Buffer.cpp";
      v83 = 1024;
      v84 = 146;
      v85 = 2080;
      v86 = "not (get_time_range().encompasses(range))";
      v87 = 2048;
      *v88 = vcvtmd_s64_f64(sample_time);
      *&v88[8] = 2048;
      v89 = vcvtmd_s64_f64(v32);
      *v90 = 2048;
      *&v90[2] = vcvtmd_s64_f64(v33);
      v91 = 2048;
      v92 = vcvtmd_s64_f64(v34);
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s create_readable_range: [%lld  %lld]  range:[%lld  %lld]", buf, 0x44u);
      AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&v65);
      AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&v73);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v64);
    __cxa_allocate_exception(0x40uLL);
    v73 = *(a1 + 8);
    v35 = *(a1 + 32);
    v74 = *(a1 + 24);
    v75 = v35;
    v36 = *(a1 + 40);
    v76 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v77 = *(a1 + 48);
    v37 = *(a1 + 72);
    v78 = *(a1 + 64);
    v79 = v37;
    v38 = *(a1 + 80);
    v80 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v39 = AMCP::DAL::DAL_Time::get_sample_time(&v73);
    v65 = *(a1 + 8);
    v40 = *(a1 + 32);
    v66 = *(a1 + 24);
    v67 = v40;
    v41 = *(a1 + 40);
    v68 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
    }

    v69 = *(a1 + 48);
    v42 = *(a1 + 72);
    v70 = *(a1 + 64);
    v71 = v42;
    v43 = *(a1 + 80);
    v72 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = AMCP::DAL::DAL_Time::get_sample_time(&v69);
    v45 = AMCP::DAL::DAL_Time::get_sample_time(a2);
    v46 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 5));
    caulk::make_string("create_readable_range: [%lld  %lld]  range:[%lld  %lld]", &v56, vcvtmd_s64_f64(v39), vcvtmd_s64_f64(v44), vcvtmd_s64_f64(v45), vcvtmd_s64_f64(v46));
    std::logic_error::logic_error(&v57, &v56);
    v57.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v58, &v57);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = -1;
    v58.__vftable = &unk_1F5991430;
    v59 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v58);
    *&v88[2] = "virtual Readable_Range AMCP::DAL::Fixed_Buffer::create_readable_range(DAL_Time_Range) const";
    v89 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    *v90 = 146;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v55);
  }

  v47 = *a2;
  v12 = a2[3];
  v48 = a2[2];
  v49 = v12;
  v13 = a2[4];
  v50 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v51 = *(a2 + 5);
  v14 = a2[8];
  v52 = a2[7];
  v53 = v14;
  v15 = a2[9];
  v54 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Readable_Range::Readable_Range(a3, &v47, a1);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v16 = v50;
  if (v50)
  {
    v17 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE460724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a49);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v49 - 240));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Fixed_Buffer::create_readable_range(AMCP::DAL::Fixed_Buffer *this@<X0>, uint64_t a2@<X8>)
{
  v7 = *(this + 8);
  v2 = *(this + 4);
  v8 = *(this + 3);
  v9 = v2;
  v3 = *(this + 5);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 3);
  v4 = *(this + 9);
  v12 = *(this + 8);
  v13 = v4;
  v5 = *(this + 10);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Fixed_Buffer::create_readable_range(this, &v7, a2);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v6 = v10;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void AMCP::DAL::Fixed_Buffer::advance_to_time(AMCP::DAL::Fixed_Buffer *this, std::__shared_weak_count **a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = AMCP::DAL::DAL_Time::operator<(a2, (this + 8));
  if (v4)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 97;
      *&buf[18] = 2080;
      *&buf[20] = "not (time >= m_time_range.start())";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v28);
    std::logic_error::logic_error(&v34, &v28);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v35, &v34);
    v37 = 0uLL;
    v38 = 0;
    v39 = -1;
    v35.__vftable = &unk_1F5991430;
    v36 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
    *&buf[32] = "virtual void AMCP::DAL::Fixed_Buffer::advance_to_time(const DAL_Time &)";
    *&v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    DWORD2(v42) = 97;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v35 = *a2;
  v5 = a2[3];
  v36 = a2[2];
  *&v37 = v5;
  v6 = a2[4];
  *(&v37 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Buffer::get_timebase(buf, this);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*buf | v5) == 0;
  if (!*buf || !v5)
  {
LABEL_21:
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v8 = (*(**buf + 16))(*buf);
  v9 = (v5->__on_zero_shared)(v5);
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  v12 = *(v9 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v9 + 8);
  }

  if (v11 == v12)
  {
    if (v10 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = *v8;
    }

    if (v13 >= 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *v9;
    }

    v7 = memcmp(v14, v15, v11) == 0;
    goto LABEL_21;
  }

  v7 = 0;
  if (v6)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_23:
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (!v7)
  {
    host_time = AMCP::DAL::DAL_Time::get_host_time(&v35);
    AMCP::DAL::DAL_Buffer::get_timebase(&v32, this);
    v17 = v32;
    v32 = 0uLL;
    LODWORD(v35.__vftable) = 1;
    v35.__imp_.__imp_ = 0;
    v36 = host_time;
    v18 = *(&v37 + 1);
    v37 = v17;
    v6 = *(&v17 + 1);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  AMCP::DAL::DAL_Time::operator-(&v28, (this + 48), (this + 8));
  boost::operators_impl::operator+(&v30, &v35, &v28);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v35, &v30);
  *(this + 8) = *buf;
  *(this + 3) = *&buf[16];
  v19 = *&buf[24];
  *&buf[24] = 0;
  *&buf[32] = 0;
  v20 = *(this + 5);
  *(this + 2) = v19;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  *(this + 3) = v42;
  *(this + 8) = v43;
  v21 = v44;
  v44 = 0uLL;
  v22 = *(this + 10);
  *(this + 72) = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    if (*(&v44 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
    }
  }

  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DE460D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Fixed_Buffer::increment_time_range(uint64_t a1, __int128 *a2)
{
  v20 = *a2;
  v3 = *(a2 + 3);
  v21 = *(a2 + 2);
  *&v22 = v3;
  v4 = *(a2 + 4);
  *(&v22 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Buffer::get_timebase(&v18, a1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (v18 | v3) == 0;
  if (!v18 || !v3)
  {
LABEL_20:
    if (!v4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v6 = (*(*v18 + 16))();
  v7 = (*(*v3 + 16))(v3);
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  v10 = *(v7 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 8);
  }

  if (v9 == v10)
  {
    if (v8 >= 0)
    {
      v12 = v6;
    }

    else
    {
      v12 = *v6;
    }

    if (v11 >= 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = *v7;
    }

    v5 = memcmp(v12, v13, v9) == 0;
    goto LABEL_20;
  }

  v5 = 0;
  if (v4)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_22:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (!v5)
  {
    if ((v20 & 1) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(&v20);
    }

    v14 = v21;
    AMCP::DAL::DAL_Buffer::get_timebase(&v17, a1);
    LODWORD(v20) = 1;
    *(&v20 + 1) = 0;
    v21 = v14;
    v15 = *(&v22 + 1);
    v22 = v17;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  AMCP::DAL::DAL_Time::operator+=((a1 + 8), &v20);
  AMCP::DAL::DAL_Time::operator+=((a1 + 48), &v20);
  v16 = *(&v22 + 1);
  if (*(&v22 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1DE46105C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Fixed_Buffer::set_range(AMCP::DAL::Fixed_Buffer *this, const AMCP::DAL::DAL_Time_Range *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  AMCP::DAL::DAL_Time::operator-(buf, (a2 + 40), a2);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v4 = round(*&buf[8]);
  v5 = *&buf[32];
  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v4 < 0.0)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 180;
      *&buf[18] = 2080;
      *&buf[20] = "not (range.length().get_sample_delta() >= 0_S)";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v34);
    std::logic_error::logic_error(&v35, &v34);
    v35.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5991430;
    v37 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v36);
    *&buf[32] = "void AMCP::DAL::Fixed_Buffer::set_range(const DAL_Time_Range &)";
    *&v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    DWORD2(v44) = 180;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v6.n128_f64[0] = AMCP::DAL::DAL_Time::operator-(buf, (a2 + 40), a2);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v7 = *&buf[8];
  v8 = *(this + 11);
  if (v8)
  {
    (*(*v8 + 48))(v8, v6);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = round(v9);
  v11 = round(v7);
  v12 = *&buf[32];
  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v10 < v11)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 181;
      *&buf[18] = 2080;
      *&buf[20] = "not (range.length().get_sample_delta() <= m_container.get_length_in_frames())";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v34);
    std::logic_error::logic_error(&v35, &v34);
    v35.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5991430;
    v37 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v36);
    *&buf[32] = "void AMCP::DAL::Fixed_Buffer::set_range(const DAL_Time_Range &)";
    *&v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    DWORD2(v44) = 181;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v13 = *(this + 11);
  if (v13)
  {
    (*(*v13 + 48))(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a2 + 24);
  v16 = *(a2 + 4);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v30) = 2;
  v31 = v14;
  v32 = v15;
  boost::operators_impl::operator+(&v36, a2, &v30);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, a2, &v36);
  *(this + 8) = *buf;
  *(this + 3) = *&buf[16];
  v17 = *&buf[24];
  *&buf[24] = 0;
  *&buf[32] = 0;
  v18 = *(this + 5);
  *(this + 2) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *(this + 3) = v44;
  *(this + 8) = v45;
  v19 = v46;
  v46 = 0uLL;
  v20 = *(this + 10);
  *(this + 72) = v19;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    if (*(&v46 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
    }
  }

  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE461700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = *(v31 - 112);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::DAL::Fixed_Buffer::reuse(AMCP::DAL::Fixed_Buffer *this)
{
  result = *(this + 11);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

double AMCP::DAL::Fixed_Buffer::get_format@<D0>(AMCP::DAL::Fixed_Buffer *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 24);
    *a2 = v3;
    *(a2 + 16) = v4;
    *(a2 + 32) = *(v2 + 40);
  }

  else
  {
    *(a2 + 32) = 0;
    *&v3 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v3;
}

uint64_t AMCP::DAL::Fixed_Buffer::get_allowed_read_range@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 8);
  v2 = *(this + 32);
  *(a2 + 16) = *(this + 24);
  *(a2 + 24) = v2;
  v3 = *(this + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 48);
  v4 = *(this + 72);
  *(a2 + 56) = *(this + 64);
  *(a2 + 64) = v4;
  v5 = *(this + 80);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AMCP::DAL::Fixed_Buffer::get_time_range@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 8);
  v2 = *(this + 32);
  *(a2 + 16) = *(this + 24);
  *(a2 + 24) = v2;
  v3 = *(this + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 48);
  v4 = *(this + 72);
  *(a2 + 56) = *(this + 64);
  *(a2 + 64) = v4;
  v5 = *(this + 80);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AMCP::DAL::Fixed_Buffer::get_container@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  *a2 = *(this + 88);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AMCP::DAL::Fixed_Buffer::receive_zeros(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v13 = *a3;
  v4 = *(a3 + 3);
  v14 = *(a3 + 2);
  v15 = v4;
  v5 = *(a3 + 4);
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a3 + 40);
  v6 = *(a3 + 8);
  v18 = *(a3 + 7);
  v19 = v6;
  v7 = *(a3 + 9);
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Fixed_Buffer::create_writable_range(a1, &v13, v21);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(v12, v24, v21);
  v8 = v12[0];
  v9 = v12[1];
  while (v8 != v9)
  {
    v10 = *v8;
    v11 = *(v8 + 1);
    AMCP::DAL::Container::erase_range(*(a1 + 88));
    v8 += 12;
  }

  v25 = v12;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1DE461A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(va);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Fixed_Buffer::receive_data_at_range(uint64_t a1, uint64_t a2, const AMCP::DAL::DAL_Time_Range **a3, void *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = AMCP::DAL::DAL_Time::operator<((a3 + 5), a3);
  if (v7)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 44;
      v58 = 2080;
      v59 = "not (new_audio.get_time_range().end() >= new_audio.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::receive_data_at_range: Bad time range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v56);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Fixed_Buffer::receive_data_at_range: Bad time range", &v48);
    std::logic_error::logic_error(&v49, &v48);
    v49.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v50, &v49);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
    v60 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v62 = 44;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
  }

  AMCP::DAL::DAL_Time::operator-(buf, (a4 + 5), a4);
  AMCP::DAL::DAL_Time::operator-(&v50, (a3 + 5), a3);
  v8 = AMCP::DAL::DAL_Time_Delta::operator==(buf, &v50);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v9 = v60;
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (!v8)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 45;
      v58 = 2080;
      v59 = "not (write_range.length() == new_audio.get_time_range().length())";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::receive_data_at_range: source audio range length must eaqual write range length", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v56);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Fixed_Buffer::receive_data_at_range: source audio range length must eaqual write range length", &v48);
    std::logic_error::logic_error(&v49, &v48);
    v49.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v50, &v49);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
    v60 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v62 = 45;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
  }

  v10 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(a1 + 8, a4);
  if (!v10)
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = *v32;
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    else
    {
      v33 = *v32;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      v58 = 2080;
      v59 = "not (m_time_range.encompasses(write_range))";
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::receive_data_at_range: range to write to must encompass the audio buffer range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v56);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Fixed_Buffer::receive_data_at_range: range to write to must encompass the audio buffer range", &v48);
    std::logic_error::logic_error(&v49, &v48);
    v49.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v50, &v49);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
    v60 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v62 = 46;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
  }

  (*(*a3[10] + 56))(buf);
  is_compatible = AMCP::DAL::Container::container_is_compatible(*(a1 + 88), *buf);
  v12 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (!is_compatible)
  {
    v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v34 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = *v36;
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      v37 = *v36;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 47;
      v58 = 2080;
      v59 = "not (m_container.container_is_compatible(new_audio.get_container()))";
      _os_log_error_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::receive_data_at_range: Containers Are Not Compatible", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v56);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Fixed_Buffer::receive_data_at_range: Containers Are Not Compatible", &v48);
    std::logic_error::logic_error(&v49, &v48);
    v49.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v50, &v49);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
    v60 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v62 = 47;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(&v50, a3[10], a3);
  v13 = v50.__vftable;
  for (i = v50.__imp_.__imp_; v13 != i; v13 += 4)
  {
    v38 = *a4;
    v15 = a4[3];
    v39 = a4[2];
    v40 = v15;
    v16 = a4[4];
    v41 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v42 = *(a4 + 5);
    v17 = a4[8];
    v43 = a4[7];
    v18 = a4[9];
    v44 = v17;
    v45 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Fixed_Buffer::create_writable_range(a1, &v38, buf);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(v47, v64, buf);
    v19 = v47[0];
    v20 = v47[1];
    while (v19 != v20)
    {
      (*(*a3[10] + 56))(&v48);
      AMCP::DAL::Container::copy_from_this_container(&v48, v13, (a1 + 88), v19);
      if (v48.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48.__r_.__value_.__l.__size_);
      }

      v19 += 12;
    }

    v48.__r_.__value_.__r.__words[0] = v47;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v48);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }
  }

  *buf = &v50;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE4624EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  v40 = *(v38 - 160);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Fixed_Buffer::receive_data(uint64_t a1, uint64_t a2, const AMCP::DAL::DAL_Time_Range **a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = AMCP::DAL::DAL_Time::operator<((a3 + 5), a3);
  if (v5)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 23;
      v50 = 2080;
      v51 = "not (new_audio.get_time_range().end() >= new_audio.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::RecieveData: Bad time range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Fixed_Buffer::RecieveData: Bad time range", &v40);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5991430;
    v43 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v42);
    v52 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data(const Source_ID &, const Readable_Range &)";
    v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v54 = 23;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(a1 + 8, a3);
  if (!v6)
  {
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
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 24;
      v50 = 2080;
      v51 = "not (m_time_range.encompasses(new_audio.get_time_range()))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v40);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5991430;
    v43 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v42);
    v52 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data(const Source_ID &, const Readable_Range &)";
    v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v54 = 24;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  (*(*a3[10] + 56))(buf);
  is_compatible = AMCP::DAL::Container::container_is_compatible(*(a1 + 88), *buf);
  v8 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (!is_compatible)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 25;
      v50 = 2080;
      v51 = "not (m_container.container_is_compatible(new_audio.get_container()))";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::WriteTo: Containers Are Not Compatible", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Fixed_Buffer::WriteTo: Containers Are Not Compatible", &v40);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5991430;
    v43 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v42);
    v52 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data(const Source_ID &, const Readable_Range &)";
    v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v54 = 25;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(&v42, a3[10], a3);
  v9 = v42.__vftable;
  for (i = v42.__imp_.__imp_; v9 != i; v9 += 4)
  {
    v30 = *&v9->what;
    what = v9[1].what;
    v31 = v9[1].~logic_error_0;
    v32 = what;
    v12 = v9[2].~logic_error;
    v33 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = *&v9[2].~logic_error_0;
    v13 = v9[3].~logic_error_0;
    v35 = v9[3].~logic_error;
    v14 = v9[3].what;
    v36 = v13;
    v37 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Fixed_Buffer::create_writable_range(a1, &v30, buf);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(v39, v56, buf);
    v15 = v39[0];
    v16 = v39[1];
    while (v15 != v16)
    {
      (*(*a3[10] + 56))(&v40);
      AMCP::DAL::Container::copy_from_this_container(&v40, v9, (a1 + 88), v15);
      if (v40.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40.__r_.__value_.__l.__size_);
      }

      v15 += 12;
    }

    v40.__r_.__value_.__r.__words[0] = v39;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v40);
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }
  }

  *buf = &v42;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DE462E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a9);
  *(v34 - 176) = &a34;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100]((v34 - 176));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Fixed_Buffer::translate_range(AMCP::DAL::Fixed_Buffer *this@<X0>, const char **a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(this + 8, a2);
  if (!v6)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 110;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_time_range.encompasses(range))";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v24);
    std::logic_error::logic_error(&v25, &v24);
    v25.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v26, &v25);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = -1;
    v26.__vftable = &unk_1F5991430;
    v27 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v26);
    v34 = "virtual rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::Fixed_Buffer::translate_range(const DAL_Time_Range &) const";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    LODWORD(v36) = 110;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a2);
  v8 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 5));
  v9 = AMCP::DAL::DAL_Time::get_sample_time((this + 8));
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *buf = sample_time - v9;
  *&buf[8] = v8 - v9;
  *&buf[16] = *a2;
  v10 = a2[3];
  v34 = a2[2];
  v35 = v10;
  v11 = a2[4];
  v36 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = *(a2 + 5);
  v12 = a2[8];
  v38 = a2[7];
  v39 = v12;
  v13 = a2[9];
  v40 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range>(a3, buf);
  v15 = v40;
  a3[1] = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = v36;
  if (v36)
  {
    v17 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE4632F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v6 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (v6 + 96 * v2);
  *(&v18 + 1) = v6 + 96 * v7;
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(v8 + 4) = *(a2 + 32);
  *(v8 + 1) = v9;
  *(v8 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v10 = *(a2 + 56);
  *(v8 + 9) = *(a2 + 72);
  *(v8 + 56) = v10;
  *(v8 + 5) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *&v18 = v8 + 96;
  v11 = a1[1];
  v12 = &v8[*a1 - v11];
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>,AMCP::DAL::Buffer_Time_Translator::Translation_Range*>(*a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v18;
  *(a1 + 1) = v18;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v17[0] = v13;
  v17[1] = v13;
  std::__split_buffer<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range> &>::~__split_buffer(v17);
  return v16;
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0x2AAAAAAAAAAAAABLL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_allocate(result);
    }
  }

  __break(1u);
  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>,AMCP::DAL::Buffer_Time_Translator::Translation_Range*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      *(a3 + 40) = *(v5 + 40);
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      v7 = *(v5 + 56);
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 56) = v7;
      *(a3 + 80) = *(v5 + 80);
      *(v5 + 80) = 0;
      *(v5 + 88) = 0;
      v5 += 96;
      a3 += 96;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<AMCP::DAL::Buffer_Time_Translator::Translation_Range,0>(v4);
      v4 += 96;
    }

    while (v4 != a2);
  }
}

void std::__split_buffer<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::__destroy_at[abi:ne200100]<AMCP::DAL::Buffer_Time_Translator::Translation_Range,0>(i - 96);
  }

  v4 = *a1;
  if (*a1)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - v4) >> 5) < 0x2AAAAAAAAAAAAABLL && *MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v4);
    }

    else
    {
      __break(1u);
    }
  }
}

__n128 caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(unsigned int *a1, __n128 *a2)
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
  v7 = (v4 & 0xFFFFFFFC) + 5;
  v8 = &a1[16 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 16);
  result = *a2;
  *(v8 + 17) = *a2;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 16);
  atomic_store(v7 & 0xFFFFFFFC | 2, a1);
  return result;
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

void AMCP::IO_Core::Thread_Control_State::set_state(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(a1) != a2)
  {
    *buf = a2;
    LOBYTE(v18) = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(a1) != 0;
    BYTE1(v18) = 0;
    HIDWORD(v18) = 4;
    caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(a1);
    LOBYTE(v19) = v4 & 1;
    caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(a1, buf);
    v5 = pthread_cond_broadcast((a1 + 192));
    v6 = v5;
    AMCP::Utility::Kernel_Error_Category::get(v5);
    if (v6)
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
        v18 = "Thread_Control_State.cpp";
        v19 = 1024;
        v20 = 79;
        v21 = 2080;
        v22 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the signaling the condition variable", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](v14, v6, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(v15, v14);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, v15);
      v23 = "void AMCP::IO_Core::Thread_Control_State::set_state(Transport_State)";
      v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v25 = 79;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE463A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v22 - 144);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a20);
  std::runtime_error::~runtime_error(&a17);
  if (v21)
  {
    __cxa_free_exception(v20);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v22 - 145));
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(unsigned int *a1)
{
  v14 = 0;
  v2 = atomic_load(a1);
  if ((v2 & 2) != 0)
  {
    v7 = a1 + 16;
    while (1)
    {
      v8 = (v2 >> 2) & 1;
      v9 = &v7[16 * ((v2 & 4) == 0)];
      explicit = atomic_load_explicit(v9, memory_order_acquire);
      if ((explicit & 1) == 0 || (v9 = &v7[16 * v8], explicit = atomic_load_explicit(v9, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v11 = *(v9 + 1);
        v1 = HIWORD(v11);
        v12 = *(v9 + 3);
        __dmb(9u);
        if (explicit == atomic_load_explicit(v9, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v14);
      v2 = atomic_load(a1);
      if ((v2 & 2) == 0)
      {
        v3 = 0;
        v4 = 0;
        v5 = 0;
        return v5 | (v1 << 48) | v4 | v3;
      }
    }

    v5 = v11 & 0xFF0000000000;
    v4 = v11 & 0xFF00000000;
    v3 = v11;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  return v5 | (v1 << 48) | v4 | v3;
}

void AMCP::IO_Core::Thread_Control_State::sleep_until_time(AMCP::IO_Core::Thread_Control_State *this, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a2 > mach_absolute_time() && caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this) && (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this) & 0x10000000000) == 0)
  {
    v3 = __udivti3();
    if (v3 >= 0x3B9ACA00)
    {
      v4 = v3 / 0x3B9ACA00;
      v3 %= 0x3B9ACA00uLL;
    }

    else
    {
      v4 = 0;
    }

    v34.tv_sec = v4;
    v34.tv_nsec = v3;
    v5 = pthread_mutex_lock((this + 240));
    v6 = v5;
    AMCP::Utility::Kernel_Error_Category::get(v5);
    if (v6 >= 2)
    {
      v19 = v6;
      v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v20 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
        v45 = "Thread_Control_State.cpp";
        v46 = 1024;
        v47 = 51;
        v48 = 2080;
        v49 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to lock the mutex", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](&v37, v19, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(&v38, &v37);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v38);
      v52 = "BOOL AMCP::IO_Core::Thread_Control_State::lock()";
      v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v54 = 51;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
    }

    if (v6 == 1)
    {
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
        v45 = "Thread_Control_State.cpp";
        v46 = 1024;
        v47 = 155;
        v48 = 2080;
        v49 = "not (success)";
        _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v36);
      std::logic_error::logic_error(&v32, &v36);
      v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v38, &v32);
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = -1;
      v38.__vftable = &unk_1F5991430;
      v39 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v38);
      v50 = "BOOL AMCP::IO_Core::Thread_Control_State::sleep_until_time(uint64_t)";
      v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      LODWORD(v52) = 155;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
    }

    v8 = pthread_cond_timedwait_relative_np(this + 4, (this + 240), &v34);
    v9 = v8;
    AMCP::Utility::Kernel_Error_Category::get(v8);
    if (v9 && v9 != 60)
    {
      v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v28 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        v31 = *v30;
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      else
      {
        v31 = *v30;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v45 = "Thread_Control_State.cpp";
        v46 = 1024;
        v47 = 161;
        v48 = 2080;
        v49 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failure waiting for the condition variable", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](&v37, v9, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(&v38, &v37);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v38);
      v52 = "BOOL AMCP::IO_Core::Thread_Control_State::sleep_until_time(uint64_t)";
      v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v54 = 161;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
    }

    v11 = pthread_mutex_unlock((this + 240));
    v12 = v11;
    AMCP::Utility::Kernel_Error_Category::get(v11);
    if (v12 >= 2)
    {
      v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v24 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v13);
      }

      v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v27 = *v26;
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      else
      {
        v27 = *v26;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v45 = "Thread_Control_State.cpp";
        v46 = 1024;
        v47 = 64;
        v48 = 2080;
        v49 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to unlock the mutex", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](&v37, v12, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(&v38, &v37);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v38);
      v52 = "BOOL AMCP::IO_Core::Thread_Control_State::unlock()";
      v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v54 = 64;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE4643F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *__p, uint64_t a23, uint64_t a24, std::runtime_error a25, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v30 - 144);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a25);
  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a10);
  _Unwind_Resume(a1);
}

void HALS_DSPHostAudioStream::modifiers(HALS_DSPHostAudioStream *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 17);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = *(this + 16);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = *(v6 + 16);
      *a2 = v7;
      a2[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void HALS_DSPHostAudioStream::downstream_format(AudioStreamBasicDescription *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *&this[2].mSampleRate;
  if (HIDWORD(this[1].mSampleRate) == 1768845428)
  {
    v4[0] = *&this[1].mBytesPerFrame;
    v4[1] = v3;
    v5 = *&this[2].mBytesPerPacket;
    HALS_DSPHostAudioStream::format_with_channel_modifier(a2, this, v4);
  }

  else
  {
    *a2 = *&this[1].mBytesPerFrame;
    *(a2 + 16) = v3;
    *(a2 + 32) = *&this[2].mBytesPerPacket;
  }

  *(a2 + 40) = 1;
}

void HALS_DSPHostAudioStream::format_with_channel_modifier(HALS_DSPHostAudioStream *this, AudioStreamBasicDescription *a2, uint64_t a3)
{
  HALS_DSPHostAudioStream::modifiers(a2, &v10);
  if (v10)
  {
    HALS_DSPHostAudioStream::modifiers(a2, &v8);
    AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_StreamClientFacingChannelCount>(&v12, v8);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    (*(*v12 + 56))(v12);
  }

  v6 = *(a3 + 16);
  *this = *a3;
  *(this + 1) = v6;
  *(this + 4) = *(a3 + 32);
  v7 = v13;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE464704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostAudioStream::upstream_format(AudioStreamBasicDescription *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *&this[2].mSampleRate;
  if (HIDWORD(this[1].mSampleRate) == 1869968496)
  {
    v4[0] = *&this[1].mBytesPerFrame;
    v4[1] = v3;
    v5 = *&this[2].mBytesPerPacket;
    HALS_DSPHostAudioStream::format_with_channel_modifier(a2, this, v4);
  }

  else
  {
    *a2 = *&this[1].mBytesPerFrame;
    *(a2 + 16) = v3;
    *(a2 + 32) = *&this[2].mBytesPerPacket;
  }

  *(a2 + 40) = 1;
}

uint64_t HALS_DSPHostAudioStream::owning_device@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = *(this + 32);
    *a2 = v2;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

void HALS_DSPHostAudioStream::~HALS_DSPHostAudioStream(HALS_DSPHostAudioStream *this)
{

  JUMPOUT(0x1E12C1730);
}

{
}

void HALS_DSPHostAudioStream::~HALS_DSPHostAudioStream(HALS_DSPHostAudioStream *this, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[3];
  v4 = *(this + 17);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 16);
      if (v7)
      {
        HALS_DSPHostModifiers_StreamProxy::release(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v8 = *(this + 17);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = *(this + 14);
  if (v9)
  {
    v10 = (*(*v9 + 16))(v9);
    if (v10)
    {
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = 0;
        v20 = 0;
        v21 = 47;
        do
        {
          v22 = &aLibraryCachesC_37[v19];
          if (v21 == 47)
          {
            v20 = &aLibraryCachesC_37[v19];
          }

          v21 = v22[1];
          if (!v22[1])
          {
            break;
          }
        }

        while (v19++ < 0xFFF);
        if (v20)
        {
          v24 = v20 + 1;
        }

        else
        {
          v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostAudioStream_IOBufferReference.cpp";
        }

        v25 = 136315394;
        v26 = v24;
        v27 = 1024;
        v28 = 22;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Buffer reference destroyed without unlocking first.", &v25, 0x12u);
      }
    }
  }

  v15 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    v16 = *(this + 15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  v17 = *(this + 4);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1DE464A88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *HALS_DSPHostModifiers_StreamProxy::release(void *this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (this[1])
  {
    v1 = this;
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
        v10 = &aLibraryCachesC_98[v7];
        if (v9 == 47)
        {
          v8 = &aLibraryCachesC_98[v7];
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
        v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostModifiers_StreamProxy.h";
      }

      if (*(v1 + 4) == 1)
      {
        v13 = *v1;
      }

      else
      {
        v13 = 0;
      }

      v14 = 136315650;
      v15 = v12;
      v16 = 1024;
      v17 = 56;
      v18 = 1024;
      v19 = v13;
      _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] Stream modifiers being reverted (Stream ID: %d)", &v14, 0x18u);
    }

    this = (*(*v1[1] + 40))(v1[1], 0);
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void HALS_DSPHostAudioStream::acquire_modifiers(HALS_DSPHostAudioStream *this, HALS_Stream *a2, unsigned int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *(this + 17);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (v7)
  {
    v8 = *(this + 16);
    if (v8)
    {
      HALS_DSPHostPerClientStreamEdits::get_modifiers_for_client(buf, *(a2 + 8), a3, 0);
      v10 = *buf;
      v11 = *&buf[8];
      if (*buf)
      {
        if (*&buf[8])
        {
          v12 = *(*&buf[8] + 8);
          if (v12 >= 3)
          {
            v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v13 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
              *buf = 136315906;
              *&buf[4] = "HALS_Stream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 589;
              v37 = 1024;
              v38 = a3;
              v39 = 1024;
              v40 = v12;
              _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] (Client ID: %d) Multiple external references to the HALS_Stream DSP modifier list is not recommended (%d).", buf, 0x1Eu);
            }
          }
        }

        v34 = v10;
        v35 = v11;
      }

      else
      {
        HALS_DSPHostPerClientStreamEdits::get_modifiers_for_client(&v34, *(a2 + 8), a3, 1);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v10 = v34;
      }

      if (v10 == *(v8 + 8))
      {
        goto LABEL_28;
      }

      HALS_DSPHostModifiers_StreamProxy::release(v8);
      *v8 = *(a2 + 4);
      *(v8 + 4) = 1;
      if (v10)
      {
        v17 = **v10;
        if (v18)
        {
          v19 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_26;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = 0;
LABEL_26:
      v20 = *(v8 + 16);
      *(v8 + 8) = v18;
      *(v8 + 16) = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

LABEL_28:
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }
  }

LABEL_30:
  HALS_DSPHostAudioStream::modifiers(this, &v34);
  if (!v34)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v21);
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
      v27 = 0;
      v28 = 0;
      v29 = 47;
      do
      {
        v30 = &aLibraryCachesC_97[v27];
        if (v29 == 47)
        {
          v28 = &aLibraryCachesC_97[v27];
        }

        v29 = v30[1];
        if (!v30[1])
        {
          break;
        }
      }

      while (v27++ < 0xFFF);
      if (v28)
      {
        v32 = v28 + 1;
      }

      else
      {
        v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostAudioStream.cpp";
      }

      if (a2)
      {
        v33 = *(a2 + 4);
      }

      else
      {
        v33 = 0;
      }

      *buf = 136315650;
      *&buf[4] = v32;
      *&buf[12] = 1024;
      *&buf[14] = 83;
      v37 = 1024;
      v38 = v33;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Unable to access modifiers (Stream ID: %d)", buf, 0x18u);
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1DE464FA4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t AMCP::IO_Core::Device_Timebase::get_private_transport_state(AMCP::IO_Core::Device_Timebase *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 432;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v12);
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
    v27 = "virtual Transport_State AMCP::IO_Core::Device_Timebase::get_private_transport_state() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 432;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v4 = (v2->__vftable[3].__on_zero_shared)(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE4652C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::release_power_assertions(AMCP::IO_Core::Device_Timebase *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2)) == 0 || (v3 = v2, (v2 = *(this + 4)) == 0))
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v20 = "Device_Timebase.cpp";
      v21 = 1024;
      v22 = 452;
      v23 = 2080;
      v24 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v10);
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
    v25 = "virtual void AMCP::IO_Core::Device_Timebase::release_power_assertions()";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v27 = 452;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (v2->__vftable[9].__on_zero_shared)(v2);
  v4 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE46561C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IO_Core::Device_Timebase::take_power_assertions(AMCP::IO_Core::Device_Timebase *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2)) == 0 || (v3 = v2, (v2 = *(this + 4)) == 0))
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v20 = "Device_Timebase.cpp";
      v21 = 1024;
      v22 = 442;
      v23 = 2080;
      v24 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v10);
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
    v25 = "virtual void AMCP::IO_Core::Device_Timebase::take_power_assertions()";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v27 = 442;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (v2->__vftable[9].~__shared_weak_count_0)(v2);
  v4 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE4658E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double AMCP::IO_Core::Device_Timebase::get_max_io_buffer_frame_size(AMCP::IO_Core::Device_Timebase *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 4096.0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 4096.0;
  }

  v4 = v3;
  v5 = *(this + 4);
  if (v5)
  {
    v6 = (*(*v5 + 32))(v5);
  }

  else
  {
    v6 = 4096.0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void AMCP::IO_Core::Device_Timebase::reset_clock_anchor_time(os_unfair_lock_s *this)
{
  v35 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 16);
  v2 = *&this[10]._os_unfair_lock_opaque;
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *&this[8]._os_unfair_lock_opaque) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      *buf = 136315650;
      v27 = "Device_Timebase.cpp";
      v28 = 1024;
      v29 = 322;
      v30 = 2080;
      v31 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v17);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual void AMCP::IO_Core::Device_Timebase::reset_clock_anchor_time()";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v34 = 322;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = (v2->__vftable[8].~__shared_weak_count_0)(v2);
  if ((v4 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v27 = "Device_Timebase.cpp";
      v28 = 1024;
      v29 = 323;
      v30 = 2080;
      v31 = "not (engine->has_time())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v17);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual void AMCP::IO_Core::Device_Timebase::reset_clock_anchor_time()";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v34 = 323;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  if (this[22]._os_unfair_lock_opaque)
  {
    v5 = mach_absolute_time();
    v6 = AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(this, v5);
    if ((this[26]._os_unfair_lock_opaque & 1) == 0)
    {
      LOBYTE(this[26]._os_unfair_lock_opaque) = 1;
    }

    *&this[24]._os_unfair_lock_opaque = v6;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v7 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(this + 16);
}

void sub_1DE465EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 145));
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  os_unfair_lock_unlock(v24 + 16);
  _Unwind_Resume(a1);
}

double AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(AMCP::IO_Core::Device_Timebase *this, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = *(this + 5);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 4)) == 0)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v38 = "Device_Timebase.cpp";
      v39 = 1024;
      v40 = 73;
      v41 = 2080;
      v42 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v30);
    std::logic_error::logic_error(&v23, &v30);
    v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v23);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    __p.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44[2] = "virtual double AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(uint64_t) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v46 = 73;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v27);
  }

  v7 = (*(*v6 + 328))(v6);
  if ((v7 & 1) == 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      (*(*v6 + 16))(&v29, v6);
      v15 = applesauce::CF::StringRef::operator->(&v29);
      applesauce::CF::convert_to<std::string,0>(&__p, *v15);
      if (SHIBYTE(v32) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__vftable;
      }

      *buf = 136315906;
      v38 = "Device_Timebase.cpp";
      v39 = 1024;
      v40 = 74;
      v41 = 2080;
      v42 = "not (engine->has_time())";
      v43 = 2080;
      *v44 = p_p;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s The engine (%s) must be running in order to translate time", buf, 0x26u);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p.__vftable);
      }

      applesauce::CF::StringRef::~StringRef(&v29);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    (*(*v6 + 16))(&v24, v6);
    v17 = applesauce::CF::StringRef::operator->(&v24);
    applesauce::CF::convert_to<std::string,0>(v27, *v17);
    if (v28 >= 0)
    {
      v18 = v27;
    }

    else
    {
      v18 = *v27;
    }

    caulk::make_string("The engine (%s) must be running in order to translate time", &v30, v18);
    std::logic_error::logic_error(&v25, &v30);
    v25.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v25);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    __p.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44[2] = "virtual double AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(uint64_t) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v46 = 74;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  v8 = (*(*v6 + 360))(v6, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void AMCP::IO_Core::Device_Timebase::set_clock_anchor_time(os_unfair_lock_s *this)
{
  v35 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 16);
  v2 = *&this[10]._os_unfair_lock_opaque;
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *&this[8]._os_unfair_lock_opaque) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      *buf = 136315650;
      v27 = "Device_Timebase.cpp";
      v28 = 1024;
      v29 = 307;
      v30 = 2080;
      v31 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v17);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual void AMCP::IO_Core::Device_Timebase::set_clock_anchor_time()";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v34 = 307;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = (v2->__vftable[8].~__shared_weak_count_0)(v2);
  if ((v4 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v27 = "Device_Timebase.cpp";
      v28 = 1024;
      v29 = 308;
      v30 = 2080;
      v31 = "not (engine->has_time())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v17);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual void AMCP::IO_Core::Device_Timebase::set_clock_anchor_time()";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v34 = 308;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  if (this[22]._os_unfair_lock_opaque && (this[26]._os_unfair_lock_opaque & 1) == 0)
  {
    v5 = mach_absolute_time();
    v6 = AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(this, v5);
    if ((this[26]._os_unfair_lock_opaque & 1) == 0)
    {
      LOBYTE(this[26]._os_unfair_lock_opaque) = 1;
    }

    *&this[24]._os_unfair_lock_opaque = v6;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v7 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(this + 16);
}

void sub_1DE466C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 145));
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  os_unfair_lock_unlock(v24 + 16);
  _Unwind_Resume(a1);
}

uint64_t AMCP::IO_Core::Device_Timebase::wait_for_time_to_start(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, unsigned int *a3)
{
  v3 = a3;
  v4 = a2;
  v115 = *MEMORY[0x1E69E9840];
  *__p = 0u;
  v97 = 0u;
  v98 = 1065353216;
  v5 = *(a2 + 16);
  if (v5)
  {
LABEL_2:
    (*(*v5[2] + 192))(buf);
    v6 = 0x9DDFEA08EB382D69 * ((8 * (*buf & 0x1FFFFFFF) + 8) ^ *&buf[4]);
    v7 = 0x9DDFEA08EB382D69 * (*&buf[4] ^ (v6 >> 47) ^ v6);
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    if (!__p[1])
    {
      goto LABEL_18;
    }

    v9 = vcnt_s8(__p[1]);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= __p[1])
      {
        v10 = v8 % __p[1];
      }
    }

    else
    {
      v10 = v8 & (__p[1] - 1);
    }

    v11 = *(__p[0] + v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v8)
      {
        if (v12[2] == *buf)
        {
          a1 = *&buf[8];
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          v5 = *v5;
          if (!v5)
          {
            v14 = __p[1];
            v3 = a3;
            v4 = a2;
            v15 = vcnt_s8(__p[1]);
            v15.i16[0] = vaddlv_u8(v15);
            if (v15.u32[0] > 1uLL)
            {
              v16 = 0xD7C06285B9DE677ALL;
              if (__p[1] <= 0xD7C06285B9DE677ALL)
              {
                v16 = 0xD7C06285B9DE677ALL % __p[1];
              }
            }

            else
            {
              v16 = (__p[1] - 1) & 0xD7C06285B9DE677ALL;
            }

            v17 = *(__p[0] + v16);
            if (!v17)
            {
              break;
            }

            v18 = *v17;
            if (!*v17)
            {
              break;
            }

            v19 = __p[1] - 1;
            while (1)
            {
              v20 = *(v18 + 1);
              if (v20 == 0xD7C06285B9DE677ALL)
              {
                if (!*(v18 + 2))
                {
                  v21 = *(v18 + 1);
                  if (v15.u32[0] > 1uLL)
                  {
                    if (v21 >= __p[1])
                    {
                      v21 %= __p[1];
                    }
                  }

                  else
                  {
                    v21 &= v19;
                  }

                  v22 = *(__p[0] + v21);
                  do
                  {
                    v23 = v22;
                    v22 = *v22;
                  }

                  while (v22 != v18);
                  if (v23 == &v97)
                  {
                    goto LABEL_56;
                  }

                  v24 = *(v23 + 1);
                  if (v15.u32[0] > 1uLL)
                  {
                    if (v24 >= __p[1])
                    {
                      v24 %= __p[1];
                    }
                  }

                  else
                  {
                    v24 &= v19;
                  }

                  if (v24 != v21)
                  {
LABEL_56:
                    if (!*v18)
                    {
                      goto LABEL_57;
                    }

                    v25 = *(*v18 + 8);
                    if (v15.u32[0] > 1uLL)
                    {
                      if (v25 >= __p[1])
                      {
                        v25 %= __p[1];
                      }
                    }

                    else
                    {
                      v25 &= v19;
                    }

                    if (v25 != v21)
                    {
LABEL_57:
                      *(__p[0] + v21) = 0;
                    }
                  }

                  v26 = *v18;
                  if (*v18)
                  {
                    v27 = *(v26 + 8);
                    if (v15.u32[0] > 1uLL)
                    {
                      if (v27 >= v14)
                      {
                        v27 %= v14;
                      }
                    }

                    else
                    {
                      v27 &= v19;
                    }

                    if (v27 != v21)
                    {
                      *(__p[0] + v27) = v23;
                      v26 = *v18;
                    }
                  }

                  *v23 = v26;
                  *v18 = 0;
                  --*(&v97 + 1);
                  std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<AMCP::Graph::Timebase>,void *>>>::operator()[abi:ne200100](1, v18);
                  goto LABEL_66;
                }
              }

              else
              {
                if (v15.u32[0] > 1uLL)
                {
                  if (v20 >= __p[1])
                  {
                    v20 %= __p[1];
                  }
                }

                else
                {
                  v20 &= v19;
                }

                if (v20 != v16)
                {
                  goto LABEL_66;
                }
              }

              v18 = *v18;
              if (!v18)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_2;
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= __p[1])
          {
            v13 %= __p[1];
          }
        }

        else
        {
          v13 &= __p[1] - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_18;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_66:
  if (!*(&v97 + 1))
  {
    v83 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v83 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v85 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v84 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v84)
    {
      atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
      v86 = *v85;
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    else
    {
      v86 = *v85;
    }

    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Engine.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 73;
      *&buf[18] = 2080;
      *&buf[20] = "not (!in_engine_list.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v86, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot wait for no engines", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v100);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Cannot wait for no engines", &v104);
    std::logic_error::logic_error(&v99, &v104);
    v99.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v105, &v99);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = -1;
    v105.__vftable = &unk_1F5991430;
    v106 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v105);
    v112 = "static std::vector<Engine_Ptr> AMCP::Core::Engine::wait_for_time_to_start(const std::unordered_set<Engine_Ptr> &, const std::atomic_uint32_t &)";
    v113 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
    v114 = 73;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v102);
  }

  v93 = 0;
  v94 = 0;
  v95 = 0;
  memset(&v104, 0, sizeof(v104));
  v28 = &v97;
  v29 = &v97;
  while (1)
  {
    v29 = *v29;
    if (!v29)
    {
      break;
    }

    if (!(*(**(v29 + 2) + 136))(*(v29 + 2)))
    {
      goto LABEL_169;
    }
  }

  for (i = v97; i; i = *i)
  {
    if (((*(**(i + 2) + 328))(*(i + 2)) & 1) == 0)
    {
      std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v104, i + 1);
    }
  }

  kdebug_trace();
  AMCP::Core::update_time_for_all(v102, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  v32 = v102[0];
  v31 = v102[1];
  while (v32 != v31)
  {
    std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v93, v32++);
  }

  size = v104.__r_.__value_.__l.__size_;
  v33 = v104.__r_.__value_.__r.__words[0];
  if (v104.__r_.__value_.__r.__words[0] == v104.__r_.__value_.__l.__size_)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v35 = v102[0];
    if (v102[0] != v102[1])
    {
      v35 = v102[0];
      while (*v35 != *v33)
      {
        v35 += 2;
        if (v35 == v102[1])
        {
          goto LABEL_85;
        }
      }
    }

    if (v35 != v102[1])
    {
      break;
    }

LABEL_85:
    v33 += 2;
    if (v33 == v104.__r_.__value_.__l.__size_)
    {
      v36 = v104.__r_.__value_.__l.__size_;
      goto LABEL_103;
    }
  }

  if (v33 == v104.__r_.__value_.__l.__size_ || (v37 = v33 + 2, v33 + 2 == v104.__r_.__value_.__l.__size_))
  {
LABEL_102:
    v36 = v33;
  }

  else
  {
    v36 = v33;
    do
    {
      v38 = v37;
      v39 = v102[0];
      if (v102[0] != v102[1])
      {
        v40 = *v38;
        while (*v39 != v40)
        {
          v39 += 2;
          if (v39 == v102[1])
          {
            goto LABEL_97;
          }
        }
      }

      if (v39 == v102[1])
      {
        v40 = *v38;
LABEL_97:
        v41 = v33[3];
        *v38 = 0;
        v38[1] = 0;
        v42 = v36[1];
        *v36 = v40;
        v36[1] = v41;
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        v36 += 2;
      }

      v37 = v38 + 2;
      v33 = v38;
    }

    while (v38 + 2 != size);
    size = v104.__r_.__value_.__l.__size_;
  }

LABEL_103:
  std::vector<std::shared_ptr<AMCP::Core::Engine>>::erase(&v104, v36, size);
  v43 = 0;
LABEL_104:
  v44 = &v97;
  while (1)
  {
    v44 = *v44;
    if (!v44)
    {
      break;
    }

    if (!(*(**(v44 + 2) + 136))(*(v44 + 2)))
    {
      goto LABEL_150;
    }
  }

  v45 = &v97;
  while (1)
  {
    v45 = *v45;
    if (!v45)
    {
      break;
    }

    if (((*(**(v45 + 2) + 328))(*(v45 + 2)) & 1) == 0)
    {
      if (v104.__r_.__value_.__r.__words[0] == v104.__r_.__value_.__l.__size_)
      {
        break;
      }

      if (v43 > 0xF9)
      {
        break;
      }

      if (atomic_load(v3))
      {
        break;
      }

      v47 = mach_absolute_time();
      mach_wait_until(v47 + 480000);
      AMCP::Core::update_time_for_all(buf, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
      v48 = v102[0];
      if (v102[0])
      {
        v49 = v102[1];
        v50 = v102[0];
        if (v102[1] != v102[0])
        {
          do
          {
            v51 = *(v49 - 1);
            if (v51)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v51);
            }

            v49 -= 16;
          }

          while (v49 != v48);
          v50 = v102[0];
        }

        v102[1] = v48;
        operator delete(v50);
      }

      *v102 = *buf;
      v103 = *&buf[16];
      memset(buf, 0, 24);
      v105.__vftable = buf;
      std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v105);
      v52 = v102[0];
      v53 = v102[1];
      while (v52 != v53)
      {
        std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v93, v52++);
      }

      v55 = v104.__r_.__value_.__l.__size_;
      v54 = v104.__r_.__value_.__r.__words[0];
      if (v104.__r_.__value_.__r.__words[0] == v104.__r_.__value_.__l.__size_)
      {
        goto LABEL_148;
      }

      while (1)
      {
        v56 = v102[0];
        if (v102[0] != v102[1])
        {
          v56 = v102[0];
          while (*v56 != *v54)
          {
            v56 += 2;
            if (v56 == v102[1])
            {
              goto LABEL_131;
            }
          }
        }

        if (v56 != v102[1])
        {
          break;
        }

LABEL_131:
        v54 += 2;
        if (v54 == v104.__r_.__value_.__l.__size_)
        {
          v57 = v104.__r_.__value_.__l.__size_;
          goto LABEL_149;
        }
      }

      if (v54 == v104.__r_.__value_.__l.__size_ || (v58 = v54 + 2, v54 + 2 == v104.__r_.__value_.__l.__size_))
      {
LABEL_148:
        v57 = v54;
      }

      else
      {
        v57 = v54;
        do
        {
          v59 = v58;
          v60 = v102[0];
          if (v102[0] != v102[1])
          {
            v61 = *v59;
            while (*v60 != v61)
            {
              v60 += 2;
              if (v60 == v102[1])
              {
                goto LABEL_143;
              }
            }
          }

          if (v60 == v102[1])
          {
            v61 = *v59;
LABEL_143:
            v62 = v54[3];
            *v59 = 0;
            v59[1] = 0;
            v63 = v57[1];
            *v57 = v61;
            v57[1] = v62;
            if (v63)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v63);
            }

            v57 += 2;
          }

          v58 = v59 + 2;
          v54 = v59;
        }

        while (v59 + 2 != v55);
        v55 = v104.__r_.__value_.__l.__size_;
      }

LABEL_149:
      ++v43;
      std::vector<std::shared_ptr<AMCP::Core::Engine>>::erase(&v104, v57, v55);
      goto LABEL_104;
    }
  }

LABEL_150:
  v64 = kdebug_trace();
  v65 = atomic_load(v3);
  v66 = &v97;
  if (v65)
  {
    v67 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v67 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v64);
    }

    v69 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v68 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      v70 = *v69;
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    else
    {
      v70 = *v69;
    }

    v66 = &v97;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Engine.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 120;
      _os_log_debug_impl(&dword_1DE1F9000, v70, OS_LOG_TYPE_DEBUG, "%32s:%-5d Engine start interrupted", buf, 0x12u);
      v66 = &v97;
    }
  }

  while (1)
  {
    v66 = *v66;
    if (!v66)
    {
      break;
    }

    v71 = (*(**(v66 + 2) + 136))(*(v66 + 2));
    if (!v71)
    {
      v72 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v72 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v71);
      }

      v74 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v73 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v73)
      {
        atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
        v75 = *v74;
        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      }

      else
      {
        v75 = *v74;
      }

      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Engine.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 123;
        *&buf[18] = 2080;
        *&buf[20] = "(are_all_running(in_engine_list)) == false";
        _os_log_error_impl(&dword_1DE1F9000, v75, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Engine start failed", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v101);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v100, "Engine start failed");
      std::runtime_error::runtime_error(&v105, &v100);
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v110 = -1;
      v105.__vftable = &unk_1F5992170;
      v106 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v105);
      v112 = "static std::vector<Engine_Ptr> AMCP::Core::Engine::wait_for_time_to_start(const std::unordered_set<Engine_Ptr> &, const std::atomic_uint32_t &)";
      v113 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
      v114 = 123;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v99);
    }
  }

  while (1)
  {
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v76 = (*(**(v28 + 2) + 328))(*(v28 + 2));
    if ((v76 & 1) == 0)
    {
      if (!atomic_load(v3))
      {
        v87 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v87 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v76);
        }

        v89 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v88 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          v90 = *v89;
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        else
        {
          v90 = *v89;
        }

        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Engine.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 127;
          _os_log_error_impl(&dword_1DE1F9000, v90, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Engine start timed out", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v101);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v100, "Engine start timed out");
        std::runtime_error::runtime_error(&v105, &v100);
        v107 = 0;
        v108 = 0;
        v109 = 0;
        v110 = -1;
        v105.__vftable = &unk_1F5992170;
        v106 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v105);
        v112 = "static std::vector<Engine_Ptr> AMCP::Core::Engine::wait_for_time_to_start(const std::unordered_set<Engine_Ptr> &, const std::atomic_uint32_t &)";
        v113 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
        v114 = 127;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v99);
      }

      break;
    }
  }

  *buf = v102;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_169:
  *buf = &v104;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (atomic_load(v3))
  {
    j = 2;
  }

  else
  {
    for (j = *(v4 + 16); j; j = *j)
    {
      (*(**(j + 16) + 192))(buf);
      v80 = v93;
      if (v93 != v94)
      {
        while (*v80 != *buf)
        {
          v80 += 2;
          if (v80 == v94)
          {
            goto LABEL_178;
          }
        }
      }

      if (v80 != v94)
      {
        (*(**(j + 16) + 208))(*(j + 16));
      }

LABEL_178:
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }
  }

  *buf = &v93;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(__p);
  v81 = *MEMORY[0x1E69E9840];
  return j;
}

void sub_1DE4680AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, std::runtime_error a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a2)
  {
    if (__p)
    {
      a35 = __p;
      operator delete(__p);
    }

    if (a21)
    {
      a22 = a21;
      operator delete(a21);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v45 - 176);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a43);
    std::runtime_error::~runtime_error(&a24);
    if (v44)
    {
      __cxa_free_exception(v43);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
    *(v45 - 176) = &a29;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100]((v45 - 176));
    *(v45 - 176) = &a37;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100]((v45 - 176));
    *(v45 - 176) = &a12;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100]((v45 - 176));
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE467A58);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *AMCP::IO_Core::Device_Timebase::get_engine_ptr@<X0>(AMCP::IO_Core::Device_Timebase *this@<X0>, void *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  result = *(this + 5);
  if (!result || (result = std::__shared_weak_count::lock(result), (a2[1] = result) == 0) || (v5 = *(this + 4), (*a2 = v5) == 0))
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 296;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v12);
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
    v27 = "virtual Core::Engine_Ptr AMCP::IO_Core::Device_Timebase::get_engine_ptr() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 296;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE46856C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IO_Core::Device_Timebase::available_past_data(AMCP::IO_Core::Device_Timebase *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = *(this + 4);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2->__vftable[5].~__shared_weak_count_0)(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

uint64_t AMCP::IO_Core::Device_Timebase::supports_past_data(AMCP::IO_Core::Device_Timebase *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = *(this + 4);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2->__vftable[4].__get_deleter)(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

BOOL AMCP::IO_Core::Device_Timebase::is_valid(AMCP::IO_Core::Device_Timebase *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 4) != 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

void AMCP::IO_Core::Device_Timebase::get_current_time(AMCP::IO_Core::Device_Timebase *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v20 = "Device_Timebase.cpp";
      v21 = 1024;
      v22 = 41;
      v23 = 2080;
      v24 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v10);
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
    v25 = "virtual CA::TimeStamp AMCP::IO_Core::Device_Timebase::get_current_time() const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v27 = 41;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (v2->__vftable[8].__on_zero_shared)(v2);
  v4 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE468A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

double AMCP::IO_Core::Device_Timebase::get_sample_rate(AMCP::IO_Core::Device_Timebase *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2)
  {
    v7 = this;
LABEL_7:
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v12 = (v7 + 8);
      if (*(v7 + 31) < 0)
      {
        v12 = *v12;
      }

      *buf = 136315906;
      v25 = "Device_Timebase.cpp";
      v26 = 1024;
      v27 = 255;
      v28 = 2080;
      v29 = "not (engine.operator BOOL())";
      v30 = 2080;
      *v31 = v12;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No engine for %s", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    v13 = (v7 + 8);
    if (*(v7 + 31) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string("No engine for %s", &v15, v13);
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
    *&v31[2] = "virtual Sample_Rate AMCP::IO_Core::Device_Timebase::get_sample_rate() const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v33 = 255;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v2 = std::__shared_weak_count::lock(v2);
  v3 = v2;
  if (!v2 || (v2 = *(this + 4)) == 0)
  {
    v7 = this;
    goto LABEL_7;
  }

  v4 = (v2->__get_deleter)(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE468DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a26);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v28)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 145));
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

unint64_t AMCP::IO_Core::Device_Timebase::get_engine_info(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(a1 + 32)) == 0)
  {
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
      *buf = 136315650;
      v28 = "Device_Timebase.cpp";
      v29 = 1024;
      v30 = 209;
      v31 = 2080;
      v32 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v18);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual Engine_Info AMCP::IO_Core::Device_Timebase::get_engine_info(Buffer_Alignment) const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v35 = 209;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v7 = *v6;
  if (a2 == 1)
  {
    v8 = (*(v7 + 80))(v6);
    v9 = (*(*v6 + 96))(v6);
  }

  else
  {
    v8 = (*(v7 + 88))(v6);
    v9 = (*(*v6 + 104))(v6);
  }

  v10 = v9;
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v11 = *MEMORY[0x1E69E9840];
  return v8 | (v10 << 32);
}

void sub_1DE4691EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::get_state(AMCP::IO_Core::Device_Timebase *this@<X0>, AMCP::IO_Core::Play_State_Manager *a2@<X8>)
{
  os_unfair_lock_lock(this + 16);
  AMCP::IO_Core::Play_State_Manager::get_state_snapshot(a2, this + 9);

  os_unfair_lock_unlock(this + 16);
}

BOOL AMCP::IO_Core::Device_Timebase::is_running(AMCP::IO_Core::Device_Timebase *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 106;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v12);
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
    v27 = "virtual BOOL AMCP::IO_Core::Device_Timebase::is_running() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 106;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v4 = (v2->__vftable[3].__on_zero_shared)(v2) != 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE4695C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::stop(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 64));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  std::string::basic_string[abi:ne200100]<0>(__p, "Device_Timebase");
  v7 = AMCP::IO_Core::Play_State_Manager::stop((a1 + 72), a2, __p);
  if (SBYTE3(v25) < 0)
  {
    operator delete(*__p);
  }

  v8 = *(a1 + 88);
  *(a1 + 88) = v7;
  if (v8 != v7 && v6)
  {
    (*(*v6 + 144))(v6, v7);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      if (!*(a1 + 88))
      {
        v12 = *(a1 + 48);
        if (v12)
        {
          v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v13 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v17 = *v17;
            }

            *__p = 136315650;
            *&__p[4] = "Device_Timebase.cpp";
            v22 = 1024;
            v23 = 197;
            v24 = 2080;
            v25 = v17;
            _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_INFO, "%32s:%-5d stop - timebase swap: %s", __p, 0x1Cu);
          }

          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v18 = *(a1 + 40);
          *(a1 + 32) = v12;
          *(a1 + 40) = v11;
          if (v18)
          {
            std::__shared_weak_count::__release_weak(v18);
          }

          v19 = *(a1 + 56);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          if (v19)
          {
            std::__shared_weak_count::__release_weak(v19);
          }

          if (*(a1 + 104) == 1)
          {
            *(a1 + 104) = 0;
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  os_unfair_lock_unlock((a1 + 64));
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE46989C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, int a10, __int16 a11, int a12, __int16 a13, uint64_t a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  os_unfair_lock_unlock(v14 + 16);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::begin_cycle(AMCP::IO_Core::Device_Timebase *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v20 = "Device_Timebase.cpp";
      v21 = 1024;
      v22 = 232;
      v23 = 2080;
      v24 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v10);
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
    v25 = "virtual void AMCP::IO_Core::Device_Timebase::begin_cycle()";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v27 = 232;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (v2->__vftable[7].__on_zero_shared_weak)(v2);
  v4 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE469CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::start(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 64));
  v4 = *(a1 + 40);
  if (!v4 || (v4 = std::__shared_weak_count::lock(v4), (v5 = v4) == 0) || (v6 = *(a1 + 32)) == 0)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *__p = 136315650;
      *&__p[4] = "Device_Timebase.cpp";
      v38 = 1024;
      v39 = 125;
      v40 = 2080;
      v41 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
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
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v30);
    *&v43[2] = "virtual void AMCP::IO_Core::Device_Timebase::start(Play_State_Manager::Play_Request)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v45 = 125;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Device_Timebase");
  v7 = AMCP::IO_Core::Play_State_Manager::start((a1 + 72), a2, __p);
  v8 = v7;
  if (SBYTE3(v41) < 0)
  {
    operator delete(*__p);
  }

  if (!v8)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *__p = 136315650;
      *&__p[4] = "Device_Timebase.cpp";
      v38 = 1024;
      v39 = 131;
      v40 = 2080;
      v41 = "not (new_state == Transport_State::on or new_state == Transport_State::prewarm)";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread::start: Start failed to change the prewarming state in a reasonable way", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("IO_Thread::start: Start failed to change the prewarming state in a reasonable way", &v28);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v30);
    *&v43[2] = "virtual void AMCP::IO_Core::Device_Timebase::start(Play_State_Manager::Play_Request)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v45 = 131;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v9 = *(a1 + 88);
  if (*(a1 + 80))
  {
    v10 = 1;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(a1 + 72) != 0;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  if (v10 && *(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

LABEL_14:
  *(a1 + 88) = v8;
  if (v9 != v8)
  {
    AMCP::Logging_Settings::instance(v7);
    if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v11), BYTE2(AMCP::Logging_Settings::instance(void)::s_instance) == 1))
    {
      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v17 = *v17;
        }

        std::string::basic_string[abi:ne200100]<0>(&v30, off_1E8678810[*(a1 + 88)]);
        if (SHIBYTE(v31) >= 0)
        {
          v18 = &v30;
        }

        else
        {
          v18 = v30.__vftable;
        }

        *__p = 136315906;
        *&__p[4] = "Device_Timebase.cpp";
        v38 = 1024;
        v39 = 147;
        v40 = 2080;
        v41 = v17;
        v42 = 2080;
        *v43 = v18;
        _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d Engine(%s)::set_transport_state: %s", __p, 0x26u);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30.__vftable);
        }
      }
    }

    (*(*v6 + 144))(v6, *(a1 + 88));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  os_unfair_lock_unlock((a1 + 64));
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE46A41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *buf, int a36, __int16 a37, __int16 a38, __int16 a39, __int16 a40, __int16 a41, char a42, char a43)
{
  if (a2)
  {
    v47 = __cxa_begin_catch(exception_object);
    v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v48 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v47);
    }

    v50 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      v51 = *v50;
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    else
    {
      v51 = *v50;
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = (v43 + 8);
      if (*(v43 + 31) < 0)
      {
        v52 = *v52;
      }

      LODWORD(buf) = 136315650;
      *(v46 + 4) = "Device_Timebase.cpp";
      a37 = 1024;
      *(v46 + 14) = 153;
      a40 = 2080;
      *(v46 + 20) = v52;
      _os_log_error_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_ERROR, "%32s:%-5d Error starting device: %s", &buf, 0x1Cu);
    }

    *(v43 + 88) = (*(*v45 + 136))(v45);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Device_Timebase");
    AMCP::IO_Core::Play_State_Manager::stop((v43 + 72), v44, &buf);
    if (a43 < 0)
    {
      operator delete(buf);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE46A5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  __cxa_end_catch();
  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  os_unfair_lock_unlock(v34 + 16);
  _Unwind_Resume(a1);
}

void sub_1DE46A600(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE46A604);
  }

  __clang_call_terminate(a1);
}

void sub_1DE46A624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  os_unfair_lock_unlock(v34 + 16);
  _Unwind_Resume(a1);
}

void sub_1DE46A63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  os_unfair_lock_unlock(v35 + 16);
  _Unwind_Resume(a1);
}

double AMCP::IO_Core::Device_Timebase::get_host_ticks_per_frame(AMCP::IO_Core::Device_Timebase *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 86;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v12);
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
    v27 = "virtual double AMCP::IO_Core::Device_Timebase::get_host_ticks_per_frame() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 86;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v4 = (v2->__vftable[8].__get_deleter)(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE46A9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 145));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IO_Core::Device_Timebase::convert_sample_to_host_time(AMCP::IO_Core::Device_Timebase *this, double a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = *(this + 5);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 4)) == 0)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v38 = "Device_Timebase.cpp";
      v39 = 1024;
      v40 = 62;
      v41 = 2080;
      v42 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v30);
    std::logic_error::logic_error(&v23, &v30);
    v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v23);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    __p.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44[2] = "virtual uint64_t AMCP::IO_Core::Device_Timebase::convert_sample_to_host_time(double) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v46 = 62;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v27);
  }

  v7 = (*(*v6 + 328))(*(this + 4));
  if ((v7 & 1) == 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      (*(*v6 + 16))(&v29, v6);
      v15 = applesauce::CF::StringRef::operator->(&v29);
      applesauce::CF::convert_to<std::string,0>(&__p, *v15);
      if (SHIBYTE(v32) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__vftable;
      }

      *buf = 136315906;
      v38 = "Device_Timebase.cpp";
      v39 = 1024;
      v40 = 63;
      v41 = 2080;
      v42 = "not (engine->has_time())";
      v43 = 2080;
      *v44 = p_p;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s The engine (%s) must be running in order to translate time", buf, 0x26u);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p.__vftable);
      }

      applesauce::CF::StringRef::~StringRef(&v29);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    (*(*v6 + 16))(&v24, v6);
    v17 = applesauce::CF::StringRef::operator->(&v24);
    applesauce::CF::convert_to<std::string,0>(v27, *v17);
    if (v28 >= 0)
    {
      v18 = v27;
    }

    else
    {
      v18 = *v27;
    }

    caulk::make_string("The engine (%s) must be running in order to translate time", &v30, v18);
    std::logic_error::logic_error(&v25, &v30);
    v25.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v25);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    __p.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44[2] = "virtual uint64_t AMCP::IO_Core::Device_Timebase::convert_sample_to_host_time(double) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v46 = 63;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  v8 = (*(*v6 + 352))(v6, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t AMCP::IO_Core::Device_Timebase::get_clock_domain(AMCP::IO_Core::Device_Timebase *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 96;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v12);
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
    v27 = "virtual uint32_t AMCP::IO_Core::Device_Timebase::get_clock_domain() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 96;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v4 = (v2->__vftable[1].~__shared_weak_count_0)(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE46B484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::get_last_zero_time_stamp(AMCP::IO_Core::Device_Timebase *this)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v4 = *(this + 4)) == 0)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v34 = "Device_Timebase.cpp";
      v35 = 1024;
      v36 = 51;
      v37 = 2080;
      v38 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v26);
    std::logic_error::logic_error(&v19, &v26);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v19);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    __p.__vftable = &unk_1F5991430;
    v28 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v40[2] = "virtual CA::TimeStamp AMCP::IO_Core::Device_Timebase::get_last_zero_time_stamp() const";
    v41 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v42 = 51;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v23);
  }

  v5 = (*(*v4 + 328))(v4);
  if ((v5 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      (*(*v4 + 16))(&v25, v4);
      v11 = applesauce::CF::StringRef::operator->(&v25);
      applesauce::CF::convert_to<std::string,0>(&__p, *v11);
      if (SHIBYTE(v28) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__vftable;
      }

      *buf = 136315906;
      v34 = "Device_Timebase.cpp";
      v35 = 1024;
      v36 = 52;
      v37 = 2080;
      v38 = "not (engine->has_time())";
      v39 = 2080;
      *v40 = p_p;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s engine (%s) does not have time", buf, 0x26u);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p.__vftable);
      }

      applesauce::CF::StringRef::~StringRef(&v25);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    (*(*v4 + 16))(&v20, v4);
    v13 = applesauce::CF::StringRef::operator->(&v20);
    applesauce::CF::convert_to<std::string,0>(v23, *v13);
    if (v24 >= 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = *v23;
    }

    caulk::make_string("engine (%s) does not have time", &v26, v14);
    std::logic_error::logic_error(&v21, &v26);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v21);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    __p.__vftable = &unk_1F5991430;
    v28 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v40[2] = "virtual CA::TimeStamp AMCP::IO_Core::Device_Timebase::get_last_zero_time_stamp() const";
    v41 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v42 = 52;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  (*(*v4 + 304))(v4);
  v6 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void AMCP::IO_Core::Device_Timebase::get_underlying_device_uid(AMCP::IO_Core::Device_Timebase *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 5);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 4);
    if (v7)
    {
      (*(*v7 + 16))(&cf);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(a2, cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_1DE46BD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::StringRef::~StringRef(&a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::~Device_Timebase(AMCP::IO_Core::Device_Timebase *this)
{
  AMCP::IO_Core::Device_Timebase::~Device_Timebase(this);

  JUMPOUT(0x1E12C1730);
}

{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C1730);
}

void CAXException::~CAXException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C1730);
}

void virtual thunk toCAException::~CAException(CAException *this)
{
  std::exception::~exception((this + *(*this - 24)));
}

{
  std::exception::~exception((this + *(*this - 24)));

  JUMPOUT(0x1E12C1730);
}

OS::CF::MutableDictionary *OS::CF::MutableDictionary::MutableDictionary(OS::CF::MutableDictionary *a1, uint64_t a2, unint64_t a3)
{
  OS::CF::MutableDictionary::MutableDictionary(a1);
  OS::CF::Dictionary::Dictionary(v7, a2, a3);
  OS::CF::MutableDictionary::operator=(a1, v7[1]);
  OS::CF::UntypedObject::~UntypedObject(v7);
  return a1;
}

uint64_t OS::CF::MutableDictionary::operator=(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  }

  return OS::CF::UntypedObject::operator=(a1, MutableCopy);
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::HALB_PowerAssertion(OS::CF::String,OS::CF::String,std::optional<int>,std::optional<IOPMAssertionCategory>,__CFArray const*,HALB_PowerAssertion::DeviceRestart)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_PowerAssertion::HALB_PowerAssertion: failed to create the power assertion, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::HALB_PowerAssertion(OS::CF::String,OS::CF::String,std::optional<int>,std::optional<IOPMAssertionCategory>,__CFArray const*,HALB_PowerAssertion::DeviceRestart)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALB_PowerAssertion::HALB_PowerAssertion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v34 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 4) = a7;
  *(a1 + 8) = 0;
  OS::CF::UntypedObject::UntypedObject((a1 + 16), *(a2 + 8));
  *(a1 + 16) = &unk_1F5991188;
  OS::CF::UntypedObject::UntypedObject((a1 + 32), *(a3 + 8));
  *(a1 + 32) = &unk_1F5991188;
  *(a1 + 48) = a4;
  v13 = *(a2 + 8);
  v26 = @"AssertType";
  v27 = v13;
  v14 = *(a3 + 8);
  v28 = @"AssertName";
  v29 = v14;
  OS::CF::Number::Number<int>(v23, 0);
  v30 = @"AssertLevel";
  v31 = v23[1];
  v32 = @"ResourcesUsed";
  v33 = a6;
  OS::CF::MutableDictionary::MutableDictionary(v24, &v26, 4uLL);
  OS::CF::UntypedObject::~UntypedObject(v23);
  if (AssertionProperties)
  {
    if ((a4 & 0x100000000) != 0)
    {
      OS::CF::Number::Number<int>(&v26, a4);
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(AssertionProperties, @"AssertionOnBehalfOfPID", v27);
      OS::CF::UntypedObject::~UntypedObject(&v26);
    }

    if ((a5 & 0x100000000) != 0)
    {
      OS::CF::Number::Number<int>(&v26, a5);
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(AssertionProperties, @"Category", v27);
      OS::CF::UntypedObject::~UntypedObject(&v26);
    }

    if (!*(a1 + 4))
    {
      OS::CF::Boolean::Boolean(&v26, 1);
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(AssertionProperties, @"AllowsDeviceRestart", v27);
      OS::CF::UntypedObject::~UntypedObject(&v26);
    }

    v15 = IOPMAssertionCreateWithProperties(AssertionProperties, a1);
    if (v15)
    {
      v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v18 = *(v16 + 8);
      v19 = (v15 << 32) | 0x62;
      v20 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v20 + 16) = 0;
      *(v20 + 20) = 16;
      *(v20 + 24) = "HALB_PowerAssertion.cpp";
      *(v20 + 32) = v19;
      *v20 = &unk_1F59716B8;
      *(v20 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v18, v20);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }
  }

  OS::CF::UntypedObject::~UntypedObject(v24);
  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE46C400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject(v5);
  OS::CF::UntypedObject::~UntypedObject(v4);
  _Unwind_Resume(a1);
}

void HALB_PowerAssertion::Take(std::chrono::system_clock::time_point *this)
{
  v44 = *MEMORY[0x1E69E9840];
  OS::CF::String::AsCString(&this[2], v43, 256);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  v28 = 0u;
  OS::CF::String::AsCString(&this[4], v27, 256);
  this[1].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v2 = BYTE4(this[6].__d_.__rep_);
  v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v3)
    {
      rep = this->__d_.__rep_;
      v5 = this[6].__d_.__rep_;
      v17 = 136316418;
      *theValue = "HALB_PowerAssertion.cpp";
      *&theValue[8] = 1024;
      *&theValue[10] = 123;
      v19 = 1024;
      v20 = rep;
      v21 = 2082;
      v22 = v43;
      v23 = 2082;
      v24 = v27;
      v25 = 1024;
      v26 = v5;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  HALB_PowerAssertion::Take: taking power assertion ID %u of type '%{public}s' with name: '%{public}s' on behalf of %d";
      v8 = 50;
LABEL_6:
      _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEFAULT, v7, &v17, v8);
    }
  }

  else if (v3)
  {
    v9 = this->__d_.__rep_;
    v17 = 136316162;
    *theValue = "HALB_PowerAssertion.cpp";
    *&theValue[8] = 1024;
    *&theValue[10] = 127;
    v19 = 1024;
    v20 = v9;
    v21 = 2082;
    v22 = v43;
    v23 = 2082;
    v24 = v27;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "%25s:%-5d  HALB_PowerAssertion::Take: taking power assertion ID %u of type '%{public}s' with name: '%{public}s'";
    v8 = 44;
    goto LABEL_6;
  }

  v10 = this->__d_.__rep_;
  if (v10)
  {
    OS::CF::Number::Number<int>(&v17, 255);
    v11 = IOPMAssertionSetProperty(v10, @"AssertLevel", *&theValue[4]);
    OS::CF::UntypedObject::~UntypedObject(&v17);
    if (v11)
    {
      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v14 = *(v12 + 8);
      v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v15 + 16) = 0;
      *(v15 + 20) = 16;
      *(v15 + 24) = "HALB_PowerAssertion.cpp";
      *(v15 + 32) = (v11 << 32) | 0x86;
      *v15 = &unk_1F5971710;
      *(v15 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v14, v15);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Take(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_PowerAssertion::Take: failed to take the power assertion, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Take(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALB_PowerAssertion::Release(const std::chrono::system_clock::time_point *this)
{
  v48 = *MEMORY[0x1E69E9840];
  OS::CF::String::AsCString(&this[2], v47, 256);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  *v31 = 0u;
  OS::CF::String::AsCString(&this[4], v31, 256);
  v19 = std::chrono::system_clock::to_time_t(this + 1);
  v2 = localtime(&v19);
  strftime(v30, 0x1EuLL, "%Y-%m-%d %H:%M:%S", v2);
  v3 = (1000 * (std::chrono::system_clock::now().__d_.__rep_ - this[1].__d_.__rep_)) / 1000000000.0;
  v4 = BYTE4(this[6].__d_.__rep_);
  v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (v5)
    {
      rep = this->__d_.__rep_;
      v7 = this[6].__d_.__rep_;
      *buf = 136316930;
      *theValue = "HALB_PowerAssertion.cpp";
      *&theValue[8] = 1024;
      *&theValue[10] = 161;
      v22 = 1024;
      v23 = rep;
      v24 = 2082;
      v25 = v47;
      v26 = 2082;
      v27 = v31;
      v28 = 1024;
      *v29 = v7;
      *&v29[4] = 2080;
      *&v29[6] = v30;
      *&v29[14] = 2048;
      *&v29[16] = v3;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  HALB_PowerAssertion::Release: releasing power assertion ID %u of type '%{public}s' with name: '%{public}s' on behalf of %d taken at %s for %.6f seconds";
      v10 = 70;
LABEL_6:
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
    }
  }

  else if (v5)
  {
    v11 = this->__d_.__rep_;
    *buf = 136316674;
    *theValue = "HALB_PowerAssertion.cpp";
    *&theValue[8] = 1024;
    *&theValue[10] = 165;
    v22 = 1024;
    v23 = v11;
    v24 = 2082;
    v25 = v47;
    v26 = 2082;
    v27 = v31;
    v28 = 2080;
    *v29 = v30;
    *&v29[8] = 2048;
    *&v29[10] = v3;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "%25s:%-5d  HALB_PowerAssertion::Release: releasing power assertion ID %u of type '%{public}s' with name: '%{public}s' taken at %s for %.6f seconds";
    v10 = 64;
    goto LABEL_6;
  }

  v12 = this->__d_.__rep_;
  if (v12)
  {
    OS::CF::Number::Number<int>(buf, 0);
    v13 = IOPMAssertionSetProperty(v12, @"AssertLevel", *&theValue[4]);
    OS::CF::UntypedObject::~UntypedObject(buf);
    if (v13)
    {
      v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v16 = *(v14 + 8);
      v17 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v17 + 16) = 0;
      *(v17 + 20) = 16;
      *(v17 + 24) = "HALB_PowerAssertion.cpp";
      *(v17 + 32) = (v13 << 32) | 0xAC;
      *v17 = &unk_1F5971768;
      *(v17 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v16, v17);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1DE46CB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Release(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_PowerAssertion::Release: failed to release the power assertion, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Release(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALB_PowerAssertion::Rename(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *(a1 + 40);
    v5 = *(a2 + 8);
    *(a1 + 40) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v6 = IOPMAssertionSetProperty(*a1, @"AssertName", *(a2 + 8));
    if (v6)
    {
      v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*MEMORY[0x1E69E3C08])
      {
        v9 = *(v7 + 8);
        v10 = (v6 << 32) | 0xB8;
        v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v11 + 16) = 0;
        *(v11 + 20) = 16;
        *(v11 + 24) = "HALB_PowerAssertion.cpp";
        *(v11 + 32) = v10;
        *v11 = &unk_1F59717C0;
        *(v11 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v9, v11);
        if (v8)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Rename(OS::CF::String)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_PowerAssertion::Rename: failed to change the name of the power assertion, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Rename(OS::CF::String)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

unint64_t AMCP::DAL::Ramstad_Resampler::get_latency(AMCP::DAL::Ramstad_Resampler *this)
{
  v1 = **(this + 12);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56) == 8;
  v5 = v2 / v3;
  if (v5 >= 1.0)
  {
    v6 = dbl_1DE7580D0[v4];
  }

  else
  {
    v6 = dbl_1DE7580C0[v4] / v5;
  }

  return vcvtad_u64_f64(v6);
}

uint64_t AMCP::DAL::Ramstad_Resampler::get_expected_output_samples_for_input_samples(AMCP::DAL::Ramstad_Resampler *this, int a2, unint64_t *a3)
{
  v3 = *(this + 12);
  v4 = *(this + 13);
  if (v3 == v4)
  {
    return 0;
  }

  do
  {
    v9 = 0;
    v7 = *v3++;
    LODWORD(result) = RamstadSRC::outputSamplesForInputSamples(v7, a2, &v9);
    *a3 = v9;
  }

  while (v3 != v4);
  return result;
}

uint64_t AMCP::DAL::Ramstad_Resampler::get_required_input_samples_for_output_samples(AMCP::DAL::Ramstad_Resampler *this, int a2)
{
  v2 = *(this + 12);
  v3 = *(this + 13);
  if (v2 == v3)
  {
    return 0;
  }

  do
  {
    v5 = *v2++;
    LODWORD(result) = RamstadSRC::inputSamplesForOutputSamples(v5, a2);
  }

  while (v2 != v3);
  return result;
}

double AMCP::DAL::Ramstad_Resampler::process(uint64_t a1, const float ***a2, uint64_t *a3, void *a4, double a5, double a6, double a7)
{
  v840 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == *(a1 + 104))
  {
    v807 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v807 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v809 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v808 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v808)
    {
      atomic_fetch_add_explicit(&v808->__shared_owners_, 1uLL, memory_order_relaxed);
      v810 = *v809;
      std::__shared_weak_count::__release_shared[abi:ne200100](v808);
    }

    else
    {
      v810 = *v809;
    }

    if (os_log_type_enabled(v810, OS_LOG_TYPE_ERROR))
    {
      *v832 = 136315650;
      *&v832[4] = "Ramstad_Resampler.cpp";
      v833 = 1024;
      v834 = 37;
      v835 = 2080;
      v836 = "not (not m_resamplers.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v810, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v832, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v822);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v825);
    std::logic_error::logic_error(&v821, &v825);
    v821.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v826, &v821);
    v828 = 0;
    v829 = 0;
    v830 = 0;
    v831 = -1;
    v826.__vftable = &unk_1F5991430;
    v827 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v832, &v826);
    v837 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v838 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
    v839 = 37;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v824);
  }

  if (*a2 == a2[1])
  {
    v811 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v811 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v813 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v812 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v812)
    {
      atomic_fetch_add_explicit(&v812->__shared_owners_, 1uLL, memory_order_relaxed);
      v814 = *v813;
      std::__shared_weak_count::__release_shared[abi:ne200100](v812);
    }

    else
    {
      v814 = *v813;
    }

    if (os_log_type_enabled(v814, OS_LOG_TYPE_ERROR))
    {
      *v832 = 136315650;
      *&v832[4] = "Ramstad_Resampler.cpp";
      v833 = 1024;
      v834 = 38;
      v835 = 2080;
      v836 = "not (not source.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v814, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v832, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v822);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v825);
    std::logic_error::logic_error(&v821, &v825);
    v821.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v826, &v821);
    v828 = 0;
    v829 = 0;
    v830 = 0;
    v831 = -1;
    v826.__vftable = &unk_1F5991430;
    v827 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v832, &v826);
    v837 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v838 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
    v839 = 38;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v824);
  }

  std::string::basic_string[abi:ne200100]<0>(v832, "scale ratio");
  v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a4, v832);
  if (v15)
  {
    v16 = AMCP::Thing::convert_to<double>((v15 + 5));
  }

  else
  {
    v16 = 1.0;
  }

  if (SBYTE3(v836) < 0)
  {
    operator delete(*v832);
  }

  v819 = a3;
  v820 = a2;
  *&v823[1] = 0;
  v17 = a7 - a6;
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  if (v18 != v19)
  {
    v20 = vcvtmd_s64_f64(v17);
    v21 = vcvtmd_s64_f64(a5);
    LODWORD(v7) = vcvtmd_s64_f64(v16);
    v22 = vcvtmd_s64_f64((v16 - floor(v16)) * 2147483650.0);
    do
    {
      v23 = *v18;
      *(v23 + 60) = v7;
      *(v23 + 68) = v22;
      *(v23 + 80) = (v7 << 32 >> 1) + v22;
      *(v23 + 256) = -1;
      *(v23 + 264) = -1;
      if (*(a1 + 88) == 1)
      {
        v24 = RamstadSRC::outputSamplesForInputSamples(v23, v21, &v823[1]);
        if (v24 <= 0)
        {
          v799 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v799 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v24);
          }

          v801 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v800 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v800)
          {
            atomic_fetch_add_explicit(&v800->__shared_owners_, 1uLL, memory_order_relaxed);
            v802 = *v801;
            std::__shared_weak_count::__release_shared[abi:ne200100](v800);
          }

          else
          {
            v802 = *v801;
          }

          if (os_log_type_enabled(v802, OS_LOG_TYPE_ERROR))
          {
            *v832 = 136315650;
            *&v832[4] = "Ramstad_Resampler.cpp";
            v833 = 1024;
            v834 = 50;
            v835 = 2080;
            v836 = "not (output_length > 0)";
            _os_log_error_impl(&dword_1DE1F9000, v802, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v832, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v822);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v825);
          std::logic_error::logic_error(&v821, &v825);
          v821.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v826, &v821);
          v828 = 0;
          v829 = 0;
          v830 = 0;
          v831 = -1;
          v826.__vftable = &unk_1F5991430;
          v827 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v832, &v826);
          v837 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v838 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
          v839 = 50;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(v824);
        }

        v17 = v24;
      }

      else
      {
        v25 = RamstadSRC::inputSamplesForOutputSamples(v23, v20);
        *&v823[1] = v25;
        v26 = v25 - v21;
        if (v26 < 0)
        {
          v26 = v21 - v25;
        }

        if (v26 >= 2)
        {
          v803 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v803 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v25);
          }

          v805 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v804 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v804)
          {
            atomic_fetch_add_explicit(&v804->__shared_owners_, 1uLL, memory_order_relaxed);
            v806 = *v805;
            std::__shared_weak_count::__release_shared[abi:ne200100](v804);
          }

          else
          {
            v806 = *v805;
          }

          if (os_log_type_enabled(v806, OS_LOG_TYPE_ERROR))
          {
            *v832 = 136315650;
            *&v832[4] = "Ramstad_Resampler.cpp";
            v833 = 1024;
            v834 = 56;
            v835 = 2080;
            v836 = "not (std::abs(actual_input_consumed - number_of_samples.get()) <= 1.0)";
            _os_log_error_impl(&dword_1DE1F9000, v806, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v832, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v822);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v825);
          std::logic_error::logic_error(&v821, &v825);
          v821.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v826, &v821);
          v828 = 0;
          v829 = 0;
          v830 = 0;
          v831 = -1;
          v826.__vftable = &unk_1F5991430;
          v827 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v832, &v826);
          v837 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v838 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
          v839 = 56;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(v824);
        }
      }

      ++v18;
    }

    while (v18 != v19);
  }

  v27 = *v819;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*v819);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v825, v27, a6, a6 + v17);
  v29 = *v819;
  if (*v819)
  {
    if ((*(v29 + 20) & 0x20) != 0)
    {
      v30 = 1;
    }

    else
    {
      v30 = *(v29 + 36);
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = *v820;
  v32 = v820[1];
  v33 = v32 - *v820;
  if (v33 != v825.__r_.__value_.__l.__size_ - v825.__r_.__value_.__r.__words[0])
  {
    v815 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v815 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v817 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v816 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v816)
    {
      atomic_fetch_add_explicit(&v816->__shared_owners_, 1uLL, memory_order_relaxed);
      v818 = *v817;
      std::__shared_weak_count::__release_shared[abi:ne200100](v816);
    }

    else
    {
      v818 = *v817;
    }

    if (os_log_type_enabled(v818, OS_LOG_TYPE_ERROR))
    {
      *v832 = 136315650;
      *&v832[4] = "Ramstad_Resampler.cpp";
      v833 = 1024;
      v834 = 65;
      v835 = 2080;
      v836 = "not (source.size() == dest.size())";
      _os_log_error_impl(&dword_1DE1F9000, v818, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v832, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v823);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", v824);
    std::logic_error::logic_error(&v822, v824);
    v822.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v826, &v822);
    v828 = 0;
    v829 = 0;
    v830 = 0;
    v831 = -1;
    v826.__vftable = &unk_1F5991430;
    v827 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v832, &v826);
    v837 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v838 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
    v839 = 65;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v821);
  }

  v34 = v33 >> 4;
  if (v33 >> 4 == 2)
  {
    RamstadSRC::processStereo(v832, **(a1 + 96), *v31, v31[2], *v825.__r_.__value_.__l.__data_, *(v825.__r_.__value_.__r.__words[0] + 16), vcvtmd_s64_f64(a5), vcvtmd_s64_f64(v17), v30, v30);
    goto LABEL_314;
  }

  if (v34 != 1)
  {
    v819 = &v819;
    MEMORY[0x1EEE9AC00](v28);
    v41 = (8 * v34 + 15) & 0xFFFFFFFFFFFFFFF0;
    v42 = &v819 - v41;
    v44 = v43 >> 1;
    if (v44 >= 0x200)
    {
      v45 = 512;
    }

    else
    {
      v45 = v44;
    }

    bzero(&v819 - v41, v45);
    MEMORY[0x1EEE9AC00](v46);
    v47 = &v819 - v41;
    bzero(&v819 - v41, v45);
    if (v32 != v31)
    {
      v48 = *v820;
      v49 = v825.__r_.__value_.__r.__words[0];
      if (v34 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v34;
      }

      v51 = (&v819 - v41);
      v52 = (&v819 - v41);
      do
      {
        v53 = *v48;
        v48 += 2;
        *v51++ = v53;
        v54 = *v49;
        v49 += 2;
        *v52++ = v54;
        --v50;
      }

      while (v50);
    }

    v55 = **(a1 + 96);
    v56 = vcvtmd_s64_f64(a5);
    v57 = vcvtmd_s64_f64(v17);
    RamstadSRC::checkPreflight(v832, v55, v56, v57);
    if (v832[4] != 1)
    {
      goto LABEL_313;
    }

    if (*(v55 + 93) == 1)
    {
      if (*(v55 + 92))
      {
        v58 = *(v55 + 60);
        v60 = *(v55 + 68);
        v59 = *(v55 + 72);
        v61 = *(v55 + 88);
        v62 = *(v55 + 16);
        v63 = *(v62 + 16);
        v64 = *(v62 + 40);
        v65 = *(v55 + 160);
        v66 = *(v55 + 184);
        v67 = *(v55 + 52);
        if (*(v55 + 56) == 8)
        {
          if (v57 < 1)
          {
            v103 = 0;
            v69 = 0;
          }

          else
          {
            v68 = 0;
            v69 = 0;
            LODWORD(v70) = 0;
            for (i = 0; i != v57; ++i)
            {
              if (v61 >= 1)
              {
                v72 = 0;
                v70 = v70;
                do
                {
                  v73 = *(v55 + 48);
                  if (v73)
                  {
                    v74 = (&v819 - v41);
                    v75 = v65;
                    v76 = v66;
                    do
                    {
                      v77 = *v74++;
                      v78 = vdupq_lane_s64(COERCE__INT64(*(v77 + 4 * v70)), 0);
                      v80 = *v75;
                      v79 = v75[1];
                      v82 = v75[2];
                      v81 = v75[3];
                      v83 = vmlaq_f64(v78, v82, v63[2]);
                      v84 = vmlaq_f64(v78, v81, v63[3]);
                      v85 = vmlaq_f64(v78, *v75, *v63);
                      v86 = vmlaq_f64(vmlaq_f64(v78, v79, v63[1]), v76[1], v63[5]);
                      v87 = vmlaq_f64(v85, *v76, v63[4]);
                      v88 = vmlaq_f64(v84, v76[3], v63[7]);
                      v89 = vmlaq_f64(v83, v76[2], v63[6]);
                      v76[2] = v82;
                      v76[3] = v81;
                      *v76 = v80;
                      v76[1] = v79;
                      v76 += 4;
                      v75[2] = v89;
                      v75[3] = v88;
                      *v75 = v87;
                      v75[1] = v86;
                      v75 += 4;
                      --v73;
                    }

                    while (v73);
                  }

                  v70 += v30;
                  ++v72;
                }

                while (v72 != v61);
              }

              v90 = *(v55 + 48);
              if (v90)
              {
                v92 = v65;
                v93 = v66;
                v94 = (&v819 - v41);
                do
                {
                  v95 = v93[2];
                  v96 = v93[3];
                  v97 = *v93;
                  v98 = v93[1];
                  v93 += 4;
                  v99 = *v94++;
                  v91 = (v64 + ((2 * v59) << 6));
                  v100 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v91[4], v97), *v92, *v91), vmlaq_f64(vmulq_f64(v91[6], v95), v92[2], v91[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v91[5], v98), v92[1], v91[1]), vmlaq_f64(vmulq_f64(v91[7], v96), v92[3], v91[3]))));
                  *(v99 + 4 * v68) = v100;
                  v92 += 4;
                  --v90;
                }

                while (v90);
              }

              v69 += v61;
              v101 = v59 + v60;
              if (v101 < v67)
              {
                v61 = v58;
              }

              else
              {
                v61 = v58 + 1;
              }

              if (v101 < v67)
              {
                v102 = 0;
              }

              else
              {
                v102 = v67;
              }

              v59 = v101 - v102;
              v68 += v30;
            }

            v103 = v70;
          }

          v567 = v56 - v69;
          if (v56 <= v69)
          {
            goto LABEL_285;
          }

          if (v61 < v567)
          {
            v567 = v61;
          }

          if (v567 >= 1)
          {
            for (j = 0; j != v567; ++j)
            {
              v569 = *(v55 + 48);
              if (v569)
              {
                v570 = (&v819 - v41);
                v571 = v65;
                v572 = v66;
                do
                {
                  v573 = *v570++;
                  v574 = vdupq_lane_s64(COERCE__INT64(*(v573 + 4 * v103)), 0);
                  v576 = *v571;
                  v575 = v571[1];
                  v578 = v571[2];
                  v577 = v571[3];
                  v579 = vmlaq_f64(v574, v578, v63[2]);
                  v580 = vmlaq_f64(v574, v577, v63[3]);
                  v581 = vmlaq_f64(v574, *v571, *v63);
                  v582 = vmlaq_f64(vmlaq_f64(v574, v575, v63[1]), v572[1], v63[5]);
                  v583 = vmlaq_f64(v581, *v572, v63[4]);
                  v584 = vmlaq_f64(v580, v572[3], v63[7]);
                  v585 = vmlaq_f64(v579, v572[2], v63[6]);
                  v572[2] = v578;
                  v572[3] = v577;
                  *v572 = v576;
                  v572[1] = v575;
                  v572 += 4;
                  v571[2] = v585;
                  v571[3] = v584;
                  *v571 = v583;
                  v571[1] = v582;
                  v571 += 4;
                  --v569;
                }

                while (v569);
              }

              v103 += v30;
            }
          }
        }

        else
        {
          if (v57 < 1)
          {
            v334 = 0;
            v256 = 0;
          }

          else
          {
            v255 = 0;
            v256 = 0;
            v257 = 0;
            LODWORD(v258) = 0;
            do
            {
              if (v61 >= 1)
              {
                v259 = 0;
                v258 = v258;
                do
                {
                  v260 = *(v55 + 48);
                  v261 = v260 != 0;
                  v262 = v66;
                  v263 = v65;
                  v264 = (v260 - v261);
                  if (v260 != v261)
                  {
                    v265 = 0;
                    v263 = v65;
                    v262 = v66;
                    do
                    {
                      v266 = &v42[8 * v265];
                      v267 = vdupq_lane_s64(COERCE__INT64(*(*v266 + 4 * v258)), 0);
                      v268 = vdupq_lane_s64(COERCE__INT64(*(*(v266 + 1) + 4 * v258)), 0);
                      v269 = *v263;
                      v270 = v263[1];
                      v271 = v263[2];
                      v272 = v263[3];
                      v273 = vmlaq_f64(vmlaq_f64(v267, *v263, *v63), *v262, v63[8]);
                      v274 = vmlaq_f64(vmlaq_f64(v267, v270, v63[1]), v262[1], v63[9]);
                      v275 = vmlaq_f64(vmlaq_f64(v267, v271, v63[2]), v262[2], v63[10]);
                      v276 = vmlaq_f64(vmlaq_f64(v267, v272, v63[3]), v262[3], v63[11]);
                      v262[2] = v271;
                      v262[3] = v272;
                      *v262 = v269;
                      v262[1] = v270;
                      v263[2] = v275;
                      v263[3] = v276;
                      *v263 = v273;
                      v263[1] = v274;
                      v277 = v263[4];
                      v278 = v263[5];
                      v279 = v263[6];
                      v280 = v263[7];
                      v281 = vmlaq_f64(vmlaq_f64(v268, v277, *v63), v262[4], v63[8]);
                      v282 = vmlaq_f64(vmlaq_f64(v268, v278, v63[1]), v262[5], v63[9]);
                      v283 = vmlaq_f64(vmlaq_f64(v268, v279, v63[2]), v262[6], v63[10]);
                      v284 = vmlaq_f64(vmlaq_f64(v268, v280, v63[3]), v262[7], v63[11]);
                      v262[6] = v279;
                      v262[7] = v280;
                      v262[4] = v277;
                      v262[5] = v278;
                      v263[6] = v283;
                      v263[7] = v284;
                      v263[4] = v281;
                      v263[5] = v282;
                      v286 = v263[8];
                      v285 = v263[9];
                      v288 = v263[10];
                      v287 = v263[11];
                      v289 = vmlaq_f64(v268, v288, v63[6]);
                      v290 = vmlaq_f64(v267, v286, v63[4]);
                      v291 = vmlaq_f64(vmlaq_f64(v267, v285, v63[5]), v262[9], v63[13]);
                      v292 = vmlaq_f64(v290, v262[8], v63[12]);
                      v293 = vmlaq_f64(vmlaq_f64(v268, v287, v63[7]), v262[11], v63[15]);
                      v294 = vmlaq_f64(v289, v262[10], v63[14]);
                      v262[10] = v288;
                      v262[11] = v287;
                      v262[8] = v286;
                      v262[9] = v285;
                      v263[10] = v294;
                      v263[11] = v293;
                      v263[8] = v292;
                      v263[9] = v291;
                      v263 += 12;
                      v262 += 12;
                      v265 += 2;
                    }

                    while (v265 < v264);
                  }

                  if (v260)
                  {
                    v295 = vdupq_lane_s64(COERCE__INT64(*(*&v42[8 * (v260 - 1)] + 4 * v258)), 0);
                    v296 = *v263;
                    v297 = v263[1];
                    v298 = v263[2];
                    v299 = v263[3];
                    v300 = vmlaq_f64(vmlaq_f64(v295, *v263, *v63), *v262, v63[8]);
                    v301 = vmlaq_f64(vmlaq_f64(v295, v297, v63[1]), v262[1], v63[9]);
                    v302 = vmlaq_f64(vmlaq_f64(v295, v298, v63[2]), v262[2], v63[10]);
                    v303 = vmlaq_f64(vmlaq_f64(v295, v299, v63[3]), v262[3], v63[11]);
                    v262[2] = v298;
                    v262[3] = v299;
                    *v262 = v296;
                    v262[1] = v297;
                    v263[2] = v302;
                    v263[3] = v303;
                    *v263 = v300;
                    v263[1] = v301;
                    v305 = v263[4];
                    v304 = v263[5];
                    v307 = v263[6];
                    v306 = v263[7];
                    v308 = vmlaq_f64(v295, v305, v63[4]);
                    v309 = vmlaq_f64(vmlaq_f64(0, v306, v63[7]), v262[7], v63[15]);
                    v310 = vmlaq_f64(vmlaq_f64(0, v307, v63[6]), v262[6], v63[14]);
                    v311 = vmlaq_f64(vmlaq_f64(v295, v304, v63[5]), v262[5], v63[13]);
                    v312 = vmlaq_f64(v308, v262[4], v63[12]);
                    v262[4] = v305;
                    v262[5] = v304;
                    v262[6] = v307;
                    v262[7] = v306;
                    v263[6] = v310;
                    v263[7] = v309;
                    v263[4] = v312;
                    v263[5] = v311;
                  }

                  v258 += v30;
                  ++v259;
                }

                while (v259 != v61);
              }

              v313 = (v64 + ((4 * v59) << 6));
              v314 = *(v55 + 48);
              v315 = v314 != 0;
              v316 = v66;
              v317 = v65;
              v318 = (v314 - v315);
              if (v314 != v315)
              {
                v319 = 0;
                v317 = v65;
                v316 = v66;
                do
                {
                  v320 = &v47[8 * v319];
                  v321 = v313[1];
                  v323 = v313[2];
                  v322 = v313[3];
                  v324 = v313[10];
                  v325 = v313[11];
                  v326 = v313[8];
                  v327 = v313[9];
                  v328 = *v320;
                  v329 = *(v320 + 1);
                  v330 = vmlaq_f64(vmulq_f64(v327, v316[5]), v317[5], v321);
                  *v321.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v326, *v316), *v317, *v313), vmlaq_f64(vmulq_f64(v324, v316[2]), v317[2], v323)), vaddq_f64(vmlaq_f64(vmulq_f64(v327, v316[1]), v317[1], v321), vmlaq_f64(vmulq_f64(v325, v316[3]), v317[3], v322))), vaddq_f64(vmlaq_f64(vmulq_f64(v313[12], v316[8]), v317[8], v313[4]), vmlaq_f64(vmulq_f64(v313[13], v316[9]), v317[9], v313[5]))));
                  *v322.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v326, v316[4]), v317[4], *v313), vmlaq_f64(vmulq_f64(v324, v316[6]), v317[6], v323)), vaddq_f64(v330, vmlaq_f64(vmulq_f64(v325, v316[7]), v317[7], v322))), vaddq_f64(vmlaq_f64(vmulq_f64(v313[14], v316[10]), v317[10], v313[6]), vmlaq_f64(vmulq_f64(v313[15], v316[11]), v317[11], v313[7]))));
                  *(v328 + 4 * v255) = LODWORD(v321.f64[0]);
                  *(v329 + 4 * v255) = LODWORD(v322.f64[0]);
                  v317 += 12;
                  v316 += 12;
                  v319 += 2;
                }

                while (v319 < v318);
              }

              if (v314)
              {
                v331 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v313[8], *v316), *v317, *v313), vmlaq_f64(vmulq_f64(v313[10], v316[2]), v317[2], v313[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v313[9], v316[1]), v317[1], v313[1]), vmlaq_f64(vmulq_f64(v313[11], v316[3]), v317[3], v313[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v313[12], v316[4]), v317[4], v313[4]), vmlaq_f64(vmulq_f64(v313[14], v316[6]), v317[6], v313[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v313[13], v316[5]), v317[5], v313[5]), vmlaq_f64(vmulq_f64(v313[15], v316[7]), v317[7], v313[7])))));
                *(*&v47[8 * (v314 - 1)] + 4 * v255) = v331;
              }

              v256 += v61;
              v332 = v59 + v60;
              if (v332 < v67)
              {
                v61 = v58;
              }

              else
              {
                v61 = v58 + 1;
              }

              if (v332 < v67)
              {
                v333 = 0;
              }

              else
              {
                v333 = v67;
              }

              v59 = v332 - v333;
              ++v257;
              v255 += v30;
            }

            while (v257 != v57);
            v334 = v258;
          }

          v567 = v56 - v256;
          if (v56 <= v256)
          {
            goto LABEL_285;
          }

          if (v61 < v567)
          {
            v567 = v61;
          }

          if (v567 >= 1)
          {
            for (k = 0; k != v567; ++k)
            {
              v630 = *(v55 + 48);
              v631 = v66;
              v632 = v65;
              v633 = v630 - (v630 != 0);
              if (v633)
              {
                v634 = 0;
                v632 = v65;
                v631 = v66;
                do
                {
                  v635 = &v42[8 * v634];
                  v636 = vdupq_lane_s64(COERCE__INT64(*(*v635 + 4 * v334)), 0);
                  v637 = vdupq_lane_s64(COERCE__INT64(*(*(v635 + 1) + 4 * v334)), 0);
                  v638 = *v632;
                  v639 = v632[1];
                  v640 = v632[2];
                  v641 = v632[3];
                  v642 = vmlaq_f64(vmlaq_f64(v636, *v632, *v63), *v631, v63[8]);
                  v643 = vmlaq_f64(vmlaq_f64(v636, v639, v63[1]), v631[1], v63[9]);
                  v644 = vmlaq_f64(vmlaq_f64(v636, v640, v63[2]), v631[2], v63[10]);
                  v645 = vmlaq_f64(vmlaq_f64(v636, v641, v63[3]), v631[3], v63[11]);
                  v631[2] = v640;
                  v631[3] = v641;
                  *v631 = v638;
                  v631[1] = v639;
                  v632[2] = v644;
                  v632[3] = v645;
                  *v632 = v642;
                  v632[1] = v643;
                  v646 = v632[4];
                  v647 = v632[5];
                  v648 = v632[6];
                  v649 = v632[7];
                  v650 = vmlaq_f64(vmlaq_f64(v637, v646, *v63), v631[4], v63[8]);
                  v651 = vmlaq_f64(vmlaq_f64(v637, v647, v63[1]), v631[5], v63[9]);
                  v652 = vmlaq_f64(vmlaq_f64(v637, v648, v63[2]), v631[6], v63[10]);
                  v653 = vmlaq_f64(vmlaq_f64(v637, v649, v63[3]), v631[7], v63[11]);
                  v631[6] = v648;
                  v631[7] = v649;
                  v631[4] = v646;
                  v631[5] = v647;
                  v632[6] = v652;
                  v632[7] = v653;
                  v632[4] = v650;
                  v632[5] = v651;
                  v655 = v632[8];
                  v654 = v632[9];
                  v657 = v632[10];
                  v656 = v632[11];
                  v658 = vmlaq_f64(v637, v657, v63[6]);
                  v659 = vmlaq_f64(v636, v655, v63[4]);
                  v660 = vmlaq_f64(vmlaq_f64(v636, v654, v63[5]), v631[9], v63[13]);
                  v661 = vmlaq_f64(v659, v631[8], v63[12]);
                  v662 = vmlaq_f64(vmlaq_f64(v637, v656, v63[7]), v631[11], v63[15]);
                  v663 = vmlaq_f64(v658, v631[10], v63[14]);
                  v631[10] = v657;
                  v631[11] = v656;
                  v631[8] = v655;
                  v631[9] = v654;
                  v632[10] = v663;
                  v632[11] = v662;
                  v632[8] = v661;
                  v632[9] = v660;
                  v632 += 12;
                  v631 += 12;
                  v634 += 2;
                }

                while (v634 < v633);
              }

              if (v630)
              {
                v664 = vdupq_lane_s64(COERCE__INT64(*(*&v42[8 * (v630 - 1)] + 4 * v334)), 0);
                v665 = *v632;
                v666 = v632[1];
                v667 = v632[2];
                v668 = v632[3];
                v669 = vmlaq_f64(vmlaq_f64(v664, *v632, *v63), *v631, v63[8]);
                v670 = vmlaq_f64(vmlaq_f64(v664, v666, v63[1]), v631[1], v63[9]);
                v671 = vmlaq_f64(vmlaq_f64(v664, v667, v63[2]), v631[2], v63[10]);
                v672 = vmlaq_f64(vmlaq_f64(v664, v668, v63[3]), v631[3], v63[11]);
                v631[2] = v667;
                v631[3] = v668;
                *v631 = v665;
                v631[1] = v666;
                v632[2] = v671;
                v632[3] = v672;
                *v632 = v669;
                v632[1] = v670;
                v674 = v632[4];
                v673 = v632[5];
                v676 = v632[6];
                v675 = v632[7];
                v677 = vmlaq_f64(v664, v674, v63[4]);
                v678 = vmlaq_f64(vmlaq_f64(0, v675, v63[7]), v631[7], v63[15]);
                v679 = vmlaq_f64(vmlaq_f64(0, v676, v63[6]), v631[6], v63[14]);
                v680 = vmlaq_f64(vmlaq_f64(v664, v673, v63[5]), v631[5], v63[13]);
                v681 = vmlaq_f64(v677, v631[4], v63[12]);
                v631[4] = v674;
                v631[5] = v673;
                v631[6] = v676;
                v631[7] = v675;
                v632[6] = v679;
                v632[7] = v678;
                v632[4] = v681;
                v632[5] = v680;
              }

              v334 += v30;
            }
          }
        }

LABEL_284:
        v61 -= v567;
LABEL_285:
        *(v55 + 72) = v59;
        *(v55 + 88) = v61;
LABEL_313:
        *(v55 + 256) = -1;
        *(v55 + 264) = -1;
        goto LABEL_314;
      }

      v141 = *(v55 + 68);
      v140 = *(v55 + 72);
      v142 = *(v55 + 88);
      v143 = *(v55 + 16);
      v144 = *(v143 + 16);
      v145 = *(v143 + 40);
      v146 = *(v55 + 160);
      v147 = *(v55 + 184);
      v148 = *(v55 + 60);
      if (*(v55 + 56) == 8)
      {
        if (v57 < 1)
        {
          v201 = 0;
          v150 = 0;
        }

        else
        {
          v149 = 0;
          v150 = 0;
          LODWORD(v151) = 0;
          for (m = 0; m != v57; ++m)
          {
            if (v142 >= 1)
            {
              v153 = 0;
              v151 = v151;
              do
              {
                v154 = *(v55 + 48);
                if (v154)
                {
                  v155 = v42;
                  v156 = v146;
                  v157 = v147;
                  do
                  {
                    v158 = *v155++;
                    v159 = vdupq_lane_s64(COERCE__INT64(*(v158 + 4 * v151)), 0);
                    v161 = *v156;
                    v160 = v156[1];
                    v163 = v156[2];
                    v162 = v156[3];
                    v164 = vmlaq_f64(v159, v163, v144[2]);
                    v165 = vmlaq_f64(v159, v162, v144[3]);
                    v166 = vmlaq_f64(v159, *v156, *v144);
                    v167 = vmlaq_f64(vmlaq_f64(v159, v160, v144[1]), v157[1], v144[5]);
                    v168 = vmlaq_f64(v166, *v157, v144[4]);
                    v169 = vmlaq_f64(v165, v157[3], v144[7]);
                    v170 = vmlaq_f64(v164, v157[2], v144[6]);
                    v157[2] = v163;
                    v157[3] = v162;
                    *v157 = v161;
                    v157[1] = v160;
                    v157 += 4;
                    v156[2] = v170;
                    v156[3] = v169;
                    *v156 = v168;
                    v156[1] = v167;
                    v156 += 4;
                    --v154;
                  }

                  while (v154);
                }

                v151 += v30;
                ++v153;
              }

              while (v153 != v142);
            }

            v171 = *(v55 + 48);
            if (v171)
            {
              v172 = *(v55 + 96) * (v140 & 0x7FFFFF);
              v173 = (v145 + (((v140 >> 22) & 0x1FE) << 6));
              v174 = *(v55 + 208);
              v175 = v146;
              v176 = v147;
              v177 = v174;
              v178 = *(v55 + 48);
              do
              {
                v179 = v176[2];
                v180 = v176[3];
                v181 = *v176;
                v182 = v176[1];
                v176 += 4;
                v183 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v173[4], v181), *v175, *v173), vmlaq_f64(vmulq_f64(v173[6], v179), v175[2], v173[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v173[5], v182), v175[1], v173[1]), vmlaq_f64(vmulq_f64(v173[7], v180), v175[3], v173[3]))));
                *v177++ = v183;
                v175 += 4;
                --v178;
              }

              while (v178);
              v184 = *(v55 + 232);
              v185 = v146;
              v186 = v147;
              v187 = v184;
              v188 = v171;
              do
              {
                v189 = v186[2];
                v190 = v186[3];
                v191 = *v186;
                v192 = v186[1];
                v186 += 4;
                v193 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v173[12], v191), *v185, v173[8]), vmlaq_f64(vmulq_f64(v173[14], v189), v185[2], v173[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v173[13], v192), v185[1], v173[9]), vmlaq_f64(vmulq_f64(v173[15], v190), v185[3], v173[11]))));
                *v187++ = v193;
                v185 += 4;
                --v188;
              }

              while (v188);
              v194 = v47;
              do
              {
                v195 = *v174++;
                v196 = v195;
                v197 = *v184++;
                v198 = v196 + (v172 * (v197 - v196));
                v199 = *v194++;
                *(v199 + 4 * v149) = v198;
                --v171;
              }

              while (v171);
            }

            v150 += v142;
            v200 = v140 + v141;
            v140 = (v140 + v141) & 0x7FFFFFFF;
            v142 = v148 + (v200 >> 31);
            v149 += v30;
          }

          v201 = v151;
        }

        v598 = v56 - v150;
        if (v56 <= v150)
        {
          goto LABEL_312;
        }

        if (v142 < v598)
        {
          v598 = v142;
        }

        if (v598 >= 1)
        {
          for (n = 0; n != v598; ++n)
          {
            v600 = *(v55 + 48);
            if (v600)
            {
              v601 = v42;
              v602 = v146;
              v603 = v147;
              do
              {
                v604 = *v601++;
                v605 = vdupq_lane_s64(COERCE__INT64(*(v604 + 4 * v201)), 0);
                v607 = *v602;
                v606 = v602[1];
                v609 = v602[2];
                v608 = v602[3];
                v610 = vmlaq_f64(v605, v609, v144[2]);
                v611 = vmlaq_f64(v605, v608, v144[3]);
                v612 = vmlaq_f64(v605, *v602, *v144);
                v613 = vmlaq_f64(vmlaq_f64(v605, v606, v144[1]), v603[1], v144[5]);
                v614 = vmlaq_f64(v612, *v603, v144[4]);
                v615 = vmlaq_f64(v611, v603[3], v144[7]);
                v616 = vmlaq_f64(v610, v603[2], v144[6]);
                v603[2] = v609;
                v603[3] = v608;
                *v603 = v607;
                v603[1] = v606;
                v603 += 4;
                v602[2] = v616;
                v602[3] = v615;
                *v602 = v614;
                v602[1] = v613;
                v602 += 4;
                --v600;
              }

              while (v600);
            }

            v201 += v30;
          }
        }

LABEL_311:
        v142 -= v598;
LABEL_312:
        *(v55 + 72) = v140;
        *(v55 + 88) = v142;
        goto LABEL_313;
      }

      if (v57 < 1)
      {
        v483 = 0;
        v395 = 0;
LABEL_287:
        v598 = v56 - v395;
        if (v56 <= v395)
        {
          goto LABEL_312;
        }

        if (v142 < v598)
        {
          v598 = v142;
        }

        if (v598 >= 1)
        {
          for (ii = 0; ii != v598; ++ii)
          {
            v714 = *(v55 + 48);
            v715 = v147;
            v716 = v146;
            v717 = v714 - (v714 != 0);
            if (v717)
            {
              v718 = 0;
              v716 = v146;
              v715 = v147;
              do
              {
                v719 = &v42[8 * v718];
                v720 = vdupq_lane_s64(COERCE__INT64(*(*v719 + 4 * v483)), 0);
                v721 = vdupq_lane_s64(COERCE__INT64(*(*(v719 + 1) + 4 * v483)), 0);
                v722 = *v716;
                v723 = v716[1];
                v724 = v716[2];
                v725 = v716[3];
                v726 = vmlaq_f64(vmlaq_f64(v720, *v716, *v144), *v715, v144[8]);
                v727 = vmlaq_f64(vmlaq_f64(v720, v723, v144[1]), v715[1], v144[9]);
                v728 = vmlaq_f64(vmlaq_f64(v720, v724, v144[2]), v715[2], v144[10]);
                v729 = vmlaq_f64(vmlaq_f64(v720, v725, v144[3]), v715[3], v144[11]);
                v715[2] = v724;
                v715[3] = v725;
                *v715 = v722;
                v715[1] = v723;
                v716[2] = v728;
                v716[3] = v729;
                *v716 = v726;
                v716[1] = v727;
                v730 = v716[4];
                v731 = v716[5];
                v732 = v716[6];
                v733 = v716[7];
                v734 = vmlaq_f64(vmlaq_f64(v721, v730, *v144), v715[4], v144[8]);
                v735 = vmlaq_f64(vmlaq_f64(v721, v731, v144[1]), v715[5], v144[9]);
                v736 = vmlaq_f64(vmlaq_f64(v721, v732, v144[2]), v715[6], v144[10]);
                v737 = vmlaq_f64(vmlaq_f64(v721, v733, v144[3]), v715[7], v144[11]);
                v715[6] = v732;
                v715[7] = v733;
                v715[4] = v730;
                v715[5] = v731;
                v716[6] = v736;
                v716[7] = v737;
                v716[4] = v734;
                v716[5] = v735;
                v739 = v716[8];
                v738 = v716[9];
                v741 = v716[10];
                v740 = v716[11];
                v742 = vmlaq_f64(v721, v741, v144[6]);
                v743 = vmlaq_f64(v720, v739, v144[4]);
                v744 = vmlaq_f64(vmlaq_f64(v720, v738, v144[5]), v715[9], v144[13]);
                v745 = vmlaq_f64(v743, v715[8], v144[12]);
                v746 = vmlaq_f64(vmlaq_f64(v721, v740, v144[7]), v715[11], v144[15]);
                v747 = vmlaq_f64(v742, v715[10], v144[14]);
                v715[10] = v741;
                v715[11] = v740;
                v715[8] = v739;
                v715[9] = v738;
                v716[10] = v747;
                v716[11] = v746;
                v716[8] = v745;
                v716[9] = v744;
                v716 += 12;
                v715 += 12;
                v718 += 2;
              }

              while (v718 < v717);
            }

            if (v714)
            {
              v748 = vdupq_lane_s64(COERCE__INT64(*(*&v42[8 * (v714 - 1)] + 4 * v483)), 0);
              v749 = *v716;
              v750 = v716[1];
              v751 = v716[2];
              v752 = v716[3];
              v753 = vmlaq_f64(vmlaq_f64(v748, *v716, *v144), *v715, v144[8]);
              v754 = vmlaq_f64(vmlaq_f64(v748, v750, v144[1]), v715[1], v144[9]);
              v755 = vmlaq_f64(vmlaq_f64(v748, v751, v144[2]), v715[2], v144[10]);
              v756 = vmlaq_f64(vmlaq_f64(v748, v752, v144[3]), v715[3], v144[11]);
              v715[2] = v751;
              v715[3] = v752;
              *v715 = v749;
              v715[1] = v750;
              v716[2] = v755;
              v716[3] = v756;
              *v716 = v753;
              v716[1] = v754;
              v758 = v716[4];
              v757 = v716[5];
              v760 = v716[6];
              v759 = v716[7];
              v761 = vmlaq_f64(v748, v758, v144[4]);
              v762 = vmlaq_f64(vmlaq_f64(0, v759, v144[7]), v715[7], v144[15]);
              v763 = vmlaq_f64(vmlaq_f64(0, v760, v144[6]), v715[6], v144[14]);
              v764 = vmlaq_f64(vmlaq_f64(v748, v757, v144[5]), v715[5], v144[13]);
              v765 = vmlaq_f64(v761, v715[4], v144[12]);
              v715[4] = v758;
              v715[5] = v757;
              v715[6] = v760;
              v715[7] = v759;
              v716[6] = v763;
              v716[7] = v762;
              v716[4] = v765;
              v716[5] = v764;
            }

            v483 += v30;
          }
        }

        goto LABEL_311;
      }

      v394 = 0;
      v395 = 0;
      v396 = 0;
      LODWORD(v397) = 0;
      while (1)
      {
        if (v142 >= 1)
        {
          v398 = 0;
          v397 = v397;
          do
          {
            v399 = *(v55 + 48);
            v400 = v147;
            v401 = v146;
            v402 = v399 - (v399 != 0);
            if (v402)
            {
              v403 = 0;
              v401 = v146;
              v400 = v147;
              do
              {
                v404 = &v42[8 * v403];
                v405 = vdupq_lane_s64(COERCE__INT64(*(*v404 + 4 * v397)), 0);
                v406 = vdupq_lane_s64(COERCE__INT64(*(*(v404 + 1) + 4 * v397)), 0);
                v407 = *v401;
                v408 = v401[1];
                v409 = v401[2];
                v410 = v401[3];
                v411 = vmlaq_f64(vmlaq_f64(v405, *v401, *v144), *v400, v144[8]);
                v412 = vmlaq_f64(vmlaq_f64(v405, v408, v144[1]), v400[1], v144[9]);
                v413 = vmlaq_f64(vmlaq_f64(v405, v409, v144[2]), v400[2], v144[10]);
                v414 = vmlaq_f64(vmlaq_f64(v405, v410, v144[3]), v400[3], v144[11]);
                v400[2] = v409;
                v400[3] = v410;
                *v400 = v407;
                v400[1] = v408;
                v401[2] = v413;
                v401[3] = v414;
                *v401 = v411;
                v401[1] = v412;
                v415 = v401[4];
                v416 = v401[5];
                v417 = v401[6];
                v418 = v401[7];
                v419 = vmlaq_f64(vmlaq_f64(v406, v415, *v144), v400[4], v144[8]);
                v420 = vmlaq_f64(vmlaq_f64(v406, v416, v144[1]), v400[5], v144[9]);
                v421 = vmlaq_f64(vmlaq_f64(v406, v417, v144[2]), v400[6], v144[10]);
                v422 = vmlaq_f64(vmlaq_f64(v406, v418, v144[3]), v400[7], v144[11]);
                v400[6] = v417;
                v400[7] = v418;
                v400[4] = v415;
                v400[5] = v416;
                v401[6] = v421;
                v401[7] = v422;
                v401[4] = v419;
                v401[5] = v420;
                v424 = v401[8];
                v423 = v401[9];
                v426 = v401[10];
                v425 = v401[11];
                v427 = vmlaq_f64(v406, v426, v144[6]);
                v428 = vmlaq_f64(v405, v424, v144[4]);
                v429 = vmlaq_f64(vmlaq_f64(v405, v423, v144[5]), v400[9], v144[13]);
                v430 = vmlaq_f64(v428, v400[8], v144[12]);
                v431 = vmlaq_f64(vmlaq_f64(v406, v425, v144[7]), v400[11], v144[15]);
                v432 = vmlaq_f64(v427, v400[10], v144[14]);
                v400[10] = v426;
                v400[11] = v425;
                v400[8] = v424;
                v400[9] = v423;
                v401[10] = v432;
                v401[11] = v431;
                v401[8] = v430;
                v401[9] = v429;
                v401 += 12;
                v400 += 12;
                v403 += 2;
              }

              while (v403 < v402);
            }

            if (v399)
            {
              v433 = vdupq_lane_s64(COERCE__INT64(*(*&v42[8 * (v399 - 1)] + 4 * v397)), 0);
              v434 = *v401;
              v435 = v401[1];
              v436 = v401[2];
              v437 = v401[3];
              v438 = vmlaq_f64(vmlaq_f64(v433, *v401, *v144), *v400, v144[8]);
              v439 = vmlaq_f64(vmlaq_f64(v433, v435, v144[1]), v400[1], v144[9]);
              v440 = vmlaq_f64(vmlaq_f64(v433, v436, v144[2]), v400[2], v144[10]);
              v441 = vmlaq_f64(vmlaq_f64(v433, v437, v144[3]), v400[3], v144[11]);
              v400[2] = v436;
              v400[3] = v437;
              *v400 = v434;
              v400[1] = v435;
              v401[2] = v440;
              v401[3] = v441;
              *v401 = v438;
              v401[1] = v439;
              v443 = v401[4];
              v442 = v401[5];
              v445 = v401[6];
              v444 = v401[7];
              v446 = vmlaq_f64(v433, v443, v144[4]);
              v447 = vmlaq_f64(vmlaq_f64(0, v444, v144[7]), v400[7], v144[15]);
              v448 = vmlaq_f64(vmlaq_f64(0, v445, v144[6]), v400[6], v144[14]);
              v449 = vmlaq_f64(vmlaq_f64(v433, v442, v144[5]), v400[5], v144[13]);
              v450 = vmlaq_f64(v446, v400[4], v144[12]);
              v400[4] = v443;
              v400[5] = v442;
              v400[6] = v445;
              v400[7] = v444;
              v401[6] = v448;
              v401[7] = v447;
              v401[4] = v450;
              v401[5] = v449;
            }

            v397 += v30;
            ++v398;
          }

          while (v398 != v142);
        }

        v451 = *(v55 + 96);
        v452 = (v145 + (((v140 >> 21) & 0x3FC) << 6));
        v453 = *(v55 + 48);
        v454 = *(v55 + 208);
        v455 = v147;
        v456 = v146;
        v457 = v453 - (*(v55 + 48) != 0);
        if (v457)
        {
          v458 = 0;
          v459 = *(v55 + 208);
          v456 = v146;
          v455 = v147;
          do
          {
            v460 = v452[1];
            v461 = v452[3];
            v462 = v452[11];
            v463 = v452[9];
            *v459++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[8], *v455), *v456, *v452), vmlaq_f64(vmulq_f64(v452[10], v455[2]), v456[2], v452[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v463, v455[1]), v456[1], v460), vmlaq_f64(vmulq_f64(v462, v455[3]), v456[3], v461))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[8], v455[4]), v456[4], *v452), vmlaq_f64(vmulq_f64(v452[10], v455[6]), v456[6], v452[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v463, v455[5]), v456[5], v460), vmlaq_f64(vmulq_f64(v462, v455[7]), v456[7], v461)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[12], v455[8]), v456[8], v452[4]), vmlaq_f64(vmulq_f64(v452[13], v455[9]), v456[9], v452[5])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[14], v455[10]), v456[10], v452[6]), vmlaq_f64(vmulq_f64(v452[15], v455[11]), v456[11], v452[7])))));
            v456 += 12;
            v455 += 12;
            v458 += 2;
          }

          while (v458 < v457);
        }

        if (v453)
        {
          v464 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[8], *v455), *v456, *v452), vmlaq_f64(vmulq_f64(v452[10], v455[2]), v456[2], v452[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[9], v455[1]), v456[1], v452[1]), vmlaq_f64(vmulq_f64(v452[11], v455[3]), v456[3], v452[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[12], v455[4]), v456[4], v452[4]), vmlaq_f64(vmulq_f64(v452[14], v455[6]), v456[6], v452[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[13], v455[5]), v456[5], v452[5]), vmlaq_f64(vmulq_f64(v452[15], v455[7]), v456[7], v452[7])))));
          v454[(v453 - 1)] = v464;
        }

        v465 = *(v55 + 232);
        v466 = v147;
        v467 = v146;
        if (v457)
        {
          v468 = 0;
          v469 = *(v55 + 232);
          v467 = v146;
          v466 = v147;
          do
          {
            v470 = v452[17];
            v471 = v452[19];
            v472 = v452[27];
            v473 = v452[25];
            *v469++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[24], *v466), *v467, v452[16]), vmlaq_f64(vmulq_f64(v452[26], v466[2]), v467[2], v452[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v473, v466[1]), v467[1], v470), vmlaq_f64(vmulq_f64(v472, v466[3]), v467[3], v471))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[24], v466[4]), v467[4], v452[16]), vmlaq_f64(vmulq_f64(v452[26], v466[6]), v467[6], v452[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v473, v466[5]), v467[5], v470), vmlaq_f64(vmulq_f64(v472, v466[7]), v467[7], v471)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[28], v466[8]), v467[8], v452[20]), vmlaq_f64(vmulq_f64(v452[29], v466[9]), v467[9], v452[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[30], v466[10]), v467[10], v452[22]), vmlaq_f64(vmulq_f64(v452[31], v466[11]), v467[11], v452[23])))));
            v467 += 12;
            v466 += 12;
            v468 += 2;
          }

          while (v468 < v457);
        }

        v474 = v451 * (v140 & 0x7FFFFF);
        if (v453)
        {
          break;
        }

        v475 = v47;
        if (v453)
        {
          goto LABEL_187;
        }

LABEL_188:
        v395 += v142;
        v482 = v140 + v141;
        v140 = (v140 + v141) & 0x7FFFFFFF;
        v142 = v148 + (v482 >> 31);
        ++v396;
        v394 += v30;
        if (v396 == v57)
        {
          v483 = v397;
          goto LABEL_287;
        }
      }

      v476 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[24], *v466), *v467, v452[16]), vmlaq_f64(vmulq_f64(v452[26], v466[2]), v467[2], v452[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[25], v466[1]), v467[1], v452[17]), vmlaq_f64(vmulq_f64(v452[27], v466[3]), v467[3], v452[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[28], v466[4]), v467[4], v452[20]), vmlaq_f64(vmulq_f64(v452[30], v466[6]), v467[6], v452[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[29], v466[5]), v467[5], v452[21]), vmlaq_f64(vmulq_f64(v452[31], v466[7]), v467[7], v452[23])))));
      v465[(v453 - 1)] = v476;
      v475 = v47;
      do
      {
LABEL_187:
        v477 = *v454++;
        v478 = v477;
        v479 = *v465++;
        v480 = v478 + (v474 * (v479 - v478));
        v481 = *v475++;
        *(v481 + 4 * v394) = v480;
        --v453;
      }

      while (v453);
      goto LABEL_188;
    }

    if (*(v55 + 92))
    {
      v104 = *(v55 + 60);
      v105 = *(v55 + 68);
      v59 = *(v55 + 72);
      v61 = *(v55 + 88);
      v106 = *(*v55 + 16);
      v107 = *(*v55 + 40);
      v108 = *(v55 + 112);
      v109 = *(v55 + 136);
      v110 = *(v55 + 52);
      if (*(v55 + 56) == 8)
      {
        if (v57 < 1)
        {
          v139 = 0;
          v112 = 0;
        }

        else
        {
          v111 = 0;
          v112 = 0;
          LODWORD(v113) = 0;
          for (jj = 0; jj != v57; ++jj)
          {
            if (v61 >= 1)
            {
              v115 = 0;
              v113 = v113;
              do
              {
                v116 = *(v55 + 48);
                if (v116)
                {
                  v117 = (&v819 - v41);
                  v118 = v108;
                  v119 = v109;
                  do
                  {
                    v120 = *v117++;
                    v121 = (v120 + 4 * v113);
                    v122 = vld1q_dup_f32(v121);
                    v123 = v118[1];
                    v124 = vmlaq_f32(v122, v123, v106[1]);
                    v125 = vmlaq_f32(vmlaq_f32(v122, *v118, *v106), *v119, v106[2]);
                    v126 = vmlaq_f32(v124, v119[1], v106[3]);
                    *v119 = *v118;
                    v119[1] = v123;
                    v119 += 2;
                    *v118 = v125;
                    v118[1] = v126;
                    v118 += 2;
                    --v116;
                  }

                  while (v116);
                }

                v113 += v30;
                ++v115;
              }

              while (v115 != v61);
            }

            v127 = *(v55 + 48);
            if (v127)
            {
              v128 = v108;
              v129 = v109;
              v130 = (&v819 - v41);
              do
              {
                v131 = *v128;
                v132 = v128[1];
                v128 += 2;
                v134 = *v129;
                v133 = v129[1];
                v129 += 2;
                v135 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v107 + 64 * v59 + 32), v134), v131, *(v107 + 64 * v59)), vmlaq_f32(vmulq_f32(*(v107 + 64 * v59 + 48), v133), v132, *(v107 + 64 * v59 + 16)));
                v136 = *v130++;
                *(v136 + 4 * v111) = vaddv_f32(vadd_f32(*v135.i8, *&vextq_s8(v135, v135, 8uLL)));
                --v127;
              }

              while (v127);
            }

            v112 += v61;
            v137 = v59 + v105;
            if (v137 < v110)
            {
              v61 = v104;
            }

            else
            {
              v61 = v104 + 1;
            }

            if (v137 < v110)
            {
              v138 = 0;
            }

            else
            {
              v138 = v110;
            }

            v59 = v137 - v138;
            v111 += v30;
          }

          v139 = v113;
        }

        v567 = v56 - v112;
        if (v56 <= v112)
        {
          goto LABEL_285;
        }

        if (v61 < v567)
        {
          v567 = v61;
        }

        if (v567 >= 1)
        {
          for (kk = 0; kk != v567; ++kk)
          {
            v587 = *(v55 + 48);
            if (v587)
            {
              v588 = (&v819 - v41);
              v589 = v108;
              v590 = v109;
              do
              {
                v591 = *v588++;
                v592 = (v591 + 4 * v139);
                v593 = vld1q_dup_f32(v592);
                v594 = v589[1];
                v595 = vmlaq_f32(v593, v594, v106[1]);
                v596 = vmlaq_f32(vmlaq_f32(v593, *v589, *v106), *v590, v106[2]);
                v597 = vmlaq_f32(v595, v590[1], v106[3]);
                *v590 = *v589;
                v590[1] = v594;
                v590 += 2;
                *v589 = v596;
                v589[1] = v597;
                v589 += 2;
                --v587;
              }

              while (v587);
            }

            v139 += v30;
          }
        }
      }

      else
      {
        if (v57 < 1)
        {
          v393 = 0;
          v336 = 0;
        }

        else
        {
          v335 = 0;
          v336 = 0;
          v337 = 0;
          LODWORD(v338) = 0;
          do
          {
            if (v61 >= 1)
            {
              v339 = 0;
              v338 = v338;
              do
              {
                v340 = *(v55 + 48);
                v341 = v109;
                v342 = v108;
                v343 = v340 - (v340 != 0);
                if (v343)
                {
                  v344 = 0;
                  v342 = v108;
                  v341 = v109;
                  do
                  {
                    v345 = &v42[8 * v344];
                    v346 = (*v345 + 4 * v338);
                    v347 = (*(v345 + 1) + 4 * v338);
                    v348 = vld1q_dup_f32(v346);
                    v349 = vld1q_dup_f32(v347);
                    v350 = v342[1];
                    v351 = vmlaq_f32(vmlaq_f32(v348, *v342, *v106), *v341, v106[4]);
                    v352 = vmlaq_f32(vmlaq_f32(v348, v350, v106[1]), v341[1], v106[5]);
                    *v341 = *v342;
                    v341[1] = v350;
                    *v342 = v351;
                    v342[1] = v352;
                    v353 = v342[2];
                    v354 = v342[3];
                    v355 = vmlaq_f32(vmlaq_f32(v349, v353, *v106), v341[2], v106[4]);
                    v356 = vmlaq_f32(vmlaq_f32(v349, v354, v106[1]), v341[3], v106[5]);
                    v341[2] = v353;
                    v341[3] = v354;
                    v342[2] = v355;
                    v342[3] = v356;
                    v357 = v342[4];
                    v358 = v342[5];
                    v359 = vmlaq_f32(vmlaq_f32(v348, v357, v106[2]), v341[4], v106[6]);
                    v360 = vmlaq_f32(vmlaq_f32(v349, v358, v106[3]), v341[5], v106[7]);
                    v341[4] = v357;
                    v341[5] = v358;
                    v342[4] = v359;
                    v342[5] = v360;
                    v342 += 6;
                    v341 += 6;
                    v344 += 2;
                  }

                  while (v344 < v343);
                }

                if (v340)
                {
                  v361 = (*&v42[8 * (v340 - 1)] + 4 * v338);
                  v362 = vld1q_dup_f32(v361);
                  v363 = v342[1];
                  v364 = vmlaq_f32(vmlaq_f32(v362, *v342, *v106), *v341, v106[4]);
                  v365 = vmlaq_f32(vmlaq_f32(v362, v363, v106[1]), v341[1], v106[5]);
                  *v341 = *v342;
                  v341[1] = v363;
                  *v342 = v364;
                  v342[1] = v365;
                  v366 = v342[2];
                  v367 = v342[3];
                  v368 = vmlaq_f32(vmlaq_f32(0, v367, v106[3]), v341[3], v106[7]);
                  v369 = vmlaq_f32(vmlaq_f32(v362, v366, v106[2]), v341[2], v106[6]);
                  v341[2] = v366;
                  v341[3] = v367;
                  v342[2] = v369;
                  v342[3] = v368;
                }

                v338 += v30;
                ++v339;
              }

              while (v339 != v61);
            }

            v370 = (v107 + 128 * v59);
            v371 = *(v55 + 48);
            v372 = v109;
            v373 = v108;
            v374 = v371 - (v371 != 0);
            if (v374)
            {
              v375 = 0;
              v373 = v108;
              v372 = v109;
              do
              {
                v376 = &v47[8 * v375];
                v377 = v370[1];
                v379 = v370[4];
                v378 = v370[5];
                v380 = vmlaq_f32(vmulq_f32(v378, v372[1]), v373[1], v377);
                v381 = vmlaq_f32(vmulq_f32(v378, v372[3]), v373[3], v377);
                v383 = *v376;
                v382 = *(v376 + 1);
                v384 = vmlaq_f32(vmulq_f32(v370[7], v372[5]), v373[5], v370[3]);
                v385 = vmlaq_f32(vmulq_f32(v370[6], v372[4]), v373[4], v370[2]);
                v386 = vaddq_f32(vmlaq_f32(vmulq_f32(v379, *v372), *v373, *v370), v380);
                *v386.i8 = vadd_f32(*v386.i8, *&vextq_s8(v386, v386, 8uLL));
                v387 = vadd_f32(*v385.i8, *&vextq_s8(v385, v385, 8uLL));
                *v386.i8 = vadd_f32(vzip1_s32(*v386.i8, v387), vzip2_s32(*v386.i8, v387));
                v388 = vaddq_f32(vmlaq_f32(vmulq_f32(v379, v372[2]), v373[2], *v370), v381);
                *v388.i8 = vadd_f32(*v388.i8, *&vextq_s8(v388, v388, 8uLL));
                *v384.i8 = vadd_f32(*v384.i8, *&vextq_s8(v384, v384, 8uLL));
                *(v383 + 4 * v335) = vaddv_f32(*v386.i8);
                *(v382 + 4 * v335) = vaddv_f32(vadd_f32(vzip1_s32(*v388.i8, *v384.i8), vzip2_s32(*v388.i8, *v384.i8)));
                v373 += 6;
                v372 += 6;
                v375 += 2;
              }

              while (v375 < v374);
            }

            if (v371)
            {
              v389 = vaddq_f32(vmlaq_f32(vmulq_f32(v370[4], *v372), *v373, *v370), vmlaq_f32(vmulq_f32(v370[5], v372[1]), v373[1], v370[1]));
              *v389.i8 = vadd_f32(*v389.i8, *&vextq_s8(v389, v389, 8uLL));
              v390 = vaddq_f32(vmlaq_f32(vmulq_f32(v370[6], v372[2]), v373[2], v370[2]), vmlaq_f32(vmulq_f32(v370[7], v372[3]), v373[3], v370[3]));
              *v390.i8 = vadd_f32(*v390.i8, *&vextq_s8(v390, v390, 8uLL));
              *(*&v47[8 * (v371 - 1)] + 4 * v335) = vaddv_f32(vadd_f32(vzip1_s32(*v389.i8, *v390.i8), vzip2_s32(*v389.i8, *v390.i8)));
            }

            v336 += v61;
            v391 = v59 + v105;
            if (v391 < v110)
            {
              v61 = v104;
            }

            else
            {
              v61 = v104 + 1;
            }

            if (v391 < v110)
            {
              v392 = 0;
            }

            else
            {
              v392 = v110;
            }

            v59 = v391 - v392;
            ++v337;
            v335 += v30;
          }

          while (v337 != v57);
          v393 = v338;
        }

        v567 = v56 - v336;
        if (v56 <= v336)
        {
          goto LABEL_285;
        }

        if (v61 < v567)
        {
          v567 = v61;
        }

        if (v567 >= 1)
        {
          for (mm = 0; mm != v567; ++mm)
          {
            v683 = *(v55 + 48);
            v684 = v109;
            v685 = v108;
            v686 = v683 - (v683 != 0);
            if (v686)
            {
              v687 = 0;
              v685 = v108;
              v684 = v109;
              do
              {
                v688 = &v42[8 * v687];
                v689 = (*v688 + 4 * v393);
                v690 = (*(v688 + 1) + 4 * v393);
                v691 = vld1q_dup_f32(v689);
                v692 = vld1q_dup_f32(v690);
                v693 = v685[1];
                v694 = vmlaq_f32(vmlaq_f32(v691, *v685, *v106), *v684, v106[4]);
                v695 = vmlaq_f32(vmlaq_f32(v691, v693, v106[1]), v684[1], v106[5]);
                *v684 = *v685;
                v684[1] = v693;
                *v685 = v694;
                v685[1] = v695;
                v696 = v685[2];
                v697 = v685[3];
                v698 = vmlaq_f32(vmlaq_f32(v692, v696, *v106), v684[2], v106[4]);
                v699 = vmlaq_f32(vmlaq_f32(v692, v697, v106[1]), v684[3], v106[5]);
                v684[2] = v696;
                v684[3] = v697;
                v685[2] = v698;
                v685[3] = v699;
                v700 = v685[4];
                v701 = v685[5];
                v702 = vmlaq_f32(vmlaq_f32(v691, v700, v106[2]), v684[4], v106[6]);
                v703 = vmlaq_f32(vmlaq_f32(v692, v701, v106[3]), v684[5], v106[7]);
                v684[4] = v700;
                v684[5] = v701;
                v685[4] = v702;
                v685[5] = v703;
                v685 += 6;
                v684 += 6;
                v687 += 2;
              }

              while (v687 < v686);
            }

            if (v683)
            {
              v704 = (*&v42[8 * (v683 - 1)] + 4 * v393);
              v705 = vld1q_dup_f32(v704);
              v706 = v685[1];
              v707 = vmlaq_f32(vmlaq_f32(v705, *v685, *v106), *v684, v106[4]);
              v708 = vmlaq_f32(vmlaq_f32(v705, v706, v106[1]), v684[1], v106[5]);
              *v684 = *v685;
              v684[1] = v706;
              *v685 = v707;
              v685[1] = v708;
              v709 = v685[2];
              v710 = v685[3];
              v711 = vmlaq_f32(vmlaq_f32(0, v710, v106[3]), v684[3], v106[7]);
              v712 = vmlaq_f32(vmlaq_f32(v705, v709, v106[2]), v684[2], v106[6]);
              v684[2] = v709;
              v684[3] = v710;
              v685[2] = v712;
              v685[3] = v711;
            }

            v393 += v30;
          }
        }
      }

      goto LABEL_284;
    }

    v202 = *(v55 + 68);
    v140 = *(v55 + 72);
    v142 = *(v55 + 88);
    v203 = *(*v55 + 16);
    v204 = *(*v55 + 40);
    v205 = *(v55 + 112);
    v206 = *(v55 + 136);
    v207 = *(v55 + 60);
    if (*(v55 + 56) == 8)
    {
      if (v57 < 1)
      {
        v254 = 0;
        v209 = 0;
      }

      else
      {
        v208 = 0;
        v209 = 0;
        LODWORD(v210) = 0;
        for (nn = 0; nn != v57; ++nn)
        {
          if (v142 >= 1)
          {
            v212 = 0;
            v210 = v210;
            do
            {
              v213 = *(v55 + 48);
              if (v213)
              {
                v214 = v42;
                v215 = v205;
                v216 = v206;
                do
                {
                  v217 = *v214++;
                  v218 = (v217 + 4 * v210);
                  v219 = vld1q_dup_f32(v218);
                  v220 = v215[1];
                  v221 = vmlaq_f32(v219, v220, v203[1]);
                  v222 = vmlaq_f32(vmlaq_f32(v219, *v215, *v203), *v216, v203[2]);
                  v223 = vmlaq_f32(v221, v216[1], v203[3]);
                  *v216 = *v215;
                  v216[1] = v220;
                  v216 += 2;
                  *v215 = v222;
                  v215[1] = v223;
                  v215 += 2;
                  --v213;
                }

                while (v213);
              }

              v210 += v30;
              ++v212;
            }

            while (v212 != v142);
          }

          v224 = *(v55 + 48);
          if (v224)
          {
            v225 = *(v55 + 96) * (v140 & 0x7FFFFF);
            v226 = (v204 + 32 * ((v140 >> 22) & 0x1FE));
            v227 = *(v55 + 208);
            v228 = v205;
            v229 = v206;
            v230 = v227;
            v231 = *(v55 + 48);
            do
            {
              v232 = *v228;
              v233 = v228[1];
              v228 += 2;
              v235 = *v229;
              v234 = v229[1];
              v229 += 2;
              v236 = vaddq_f32(vmlaq_f32(vmulq_f32(v226[2], v235), v232, *v226), vmlaq_f32(vmulq_f32(v226[3], v234), v233, v226[1]));
              *v230++ = vaddv_f32(vadd_f32(*v236.i8, *&vextq_s8(v236, v236, 8uLL)));
              --v231;
            }

            while (v231);
            v237 = *(v55 + 232);
            v238 = v205;
            v239 = v206;
            v240 = v237;
            v241 = v224;
            do
            {
              v242 = *v238;
              v243 = v238[1];
              v238 += 2;
              v245 = *v239;
              v244 = v239[1];
              v239 += 2;
              v246 = vaddq_f32(vmlaq_f32(vmulq_f32(v226[6], v245), v242, v226[4]), vmlaq_f32(vmulq_f32(v226[7], v244), v243, v226[5]));
              *v240++ = vaddv_f32(vadd_f32(*v246.i8, *&vextq_s8(v246, v246, 8uLL)));
              --v241;
            }

            while (v241);
            v247 = v47;
            do
            {
              v248 = *v227++;
              v249 = v248;
              v250 = *v237++;
              v251 = v249 + (v225 * (v250 - v249));
              v252 = *v247++;
              *(v252 + 4 * v208) = v251;
              --v224;
            }

            while (v224);
          }

          v209 += v142;
          v253 = v140 + v202;
          v140 = (v140 + v202) & 0x7FFFFFFF;
          v142 = v207 + (v253 >> 31);
          v208 += v30;
        }

        v254 = v210;
      }

      v598 = v56 - v209;
      if (v56 <= v209)
      {
        goto LABEL_312;
      }

      if (v142 < v598)
      {
        v598 = v142;
      }

      if (v598 >= 1)
      {
        for (i1 = 0; i1 != v598; ++i1)
        {
          v618 = *(v55 + 48);
          if (v618)
          {
            v619 = v42;
            v620 = v205;
            v621 = v206;
            do
            {
              v622 = *v619++;
              v623 = (v622 + 4 * v254);
              v624 = vld1q_dup_f32(v623);
              v625 = v620[1];
              v626 = vmlaq_f32(v624, v625, v203[1]);
              v627 = vmlaq_f32(vmlaq_f32(v624, *v620, *v203), *v621, v203[2]);
              v628 = vmlaq_f32(v626, v621[1], v203[3]);
              *v621 = *v620;
              v621[1] = v625;
              v621 += 2;
              *v620 = v627;
              v620[1] = v628;
              v620 += 2;
              --v618;
            }

            while (v618);
          }

          v254 += v30;
        }
      }

      goto LABEL_311;
    }

    if (v57 < 1)
    {
      v566 = 0;
      v485 = 0;
LABEL_300:
      v598 = v56 - v485;
      if (v56 <= v485)
      {
        goto LABEL_312;
      }

      if (v142 < v598)
      {
        v598 = v142;
      }

      if (v598 >= 1)
      {
        for (i2 = 0; i2 != v598; ++i2)
        {
          v767 = *(v55 + 48);
          v768 = v206;
          v769 = v205;
          v770 = v767 - (v767 != 0);
          if (v770)
          {
            v771 = 0;
            v769 = v205;
            v768 = v206;
            do
            {
              v772 = &v42[8 * v771];
              v773 = (*v772 + 4 * v566);
              v774 = (*(v772 + 1) + 4 * v566);
              v775 = vld1q_dup_f32(v773);
              v776 = vld1q_dup_f32(v774);
              v777 = v769[1];
              v778 = vmlaq_f32(vmlaq_f32(v775, *v769, *v203), *v768, v203[4]);
              v779 = vmlaq_f32(vmlaq_f32(v775, v777, v203[1]), v768[1], v203[5]);
              *v768 = *v769;
              v768[1] = v777;
              *v769 = v778;
              v769[1] = v779;
              v780 = v769[2];
              v781 = v769[3];
              v782 = vmlaq_f32(vmlaq_f32(v776, v780, *v203), v768[2], v203[4]);
              v783 = vmlaq_f32(vmlaq_f32(v776, v781, v203[1]), v768[3], v203[5]);
              v768[2] = v780;
              v768[3] = v781;
              v769[2] = v782;
              v769[3] = v783;
              v784 = v769[4];
              v785 = v769[5];
              v786 = vmlaq_f32(vmlaq_f32(v775, v784, v203[2]), v768[4], v203[6]);
              v787 = vmlaq_f32(vmlaq_f32(v776, v785, v203[3]), v768[5], v203[7]);
              v768[4] = v784;
              v768[5] = v785;
              v769[4] = v786;
              v769[5] = v787;
              v769 += 6;
              v768 += 6;
              v771 += 2;
            }

            while (v771 < v770);
          }

          if (v767)
          {
            v788 = (*&v42[8 * (v767 - 1)] + 4 * v566);
            v789 = vld1q_dup_f32(v788);
            v790 = v769[1];
            v791 = vmlaq_f32(vmlaq_f32(v789, *v769, *v203), *v768, v203[4]);
            v792 = vmlaq_f32(vmlaq_f32(v789, v790, v203[1]), v768[1], v203[5]);
            *v768 = *v769;
            v768[1] = v790;
            *v769 = v791;
            v769[1] = v792;
            v793 = v769[2];
            v794 = v769[3];
            v795 = vmlaq_f32(vmlaq_f32(0, v794, v203[3]), v768[3], v203[7]);
            v796 = vmlaq_f32(vmlaq_f32(v789, v793, v203[2]), v768[2], v203[6]);
            v768[2] = v793;
            v768[3] = v794;
            v769[2] = v796;
            v769[3] = v795;
          }

          v566 += v30;
        }
      }

      goto LABEL_311;
    }

    v484 = 0;
    v485 = 0;
    v486 = 0;
    LODWORD(v487) = 0;
    while (1)
    {
      if (v142 >= 1)
      {
        v488 = 0;
        v487 = v487;
        do
        {
          v489 = *(v55 + 48);
          v490 = v206;
          v491 = v205;
          v492 = v489 - (v489 != 0);
          if (v492)
          {
            v493 = 0;
            v491 = v205;
            v490 = v206;
            do
            {
              v494 = &v42[8 * v493];
              v495 = (*v494 + 4 * v487);
              v496 = (*(v494 + 1) + 4 * v487);
              v497 = vld1q_dup_f32(v495);
              v498 = vld1q_dup_f32(v496);
              v499 = v491[1];
              v500 = vmlaq_f32(vmlaq_f32(v497, *v491, *v203), *v490, v203[4]);
              v501 = vmlaq_f32(vmlaq_f32(v497, v499, v203[1]), v490[1], v203[5]);
              *v490 = *v491;
              v490[1] = v499;
              *v491 = v500;
              v491[1] = v501;
              v502 = v491[2];
              v503 = v491[3];
              v504 = vmlaq_f32(vmlaq_f32(v498, v502, *v203), v490[2], v203[4]);
              v505 = vmlaq_f32(vmlaq_f32(v498, v503, v203[1]), v490[3], v203[5]);
              v490[2] = v502;
              v490[3] = v503;
              v491[2] = v504;
              v491[3] = v505;
              v506 = v491[4];
              v507 = v491[5];
              v508 = vmlaq_f32(vmlaq_f32(v497, v506, v203[2]), v490[4], v203[6]);
              v509 = vmlaq_f32(vmlaq_f32(v498, v507, v203[3]), v490[5], v203[7]);
              v490[4] = v506;
              v490[5] = v507;
              v491[4] = v508;
              v491[5] = v509;
              v491 += 6;
              v490 += 6;
              v493 += 2;
            }

            while (v493 < v492);
          }

          if (v489)
          {
            v510 = (*&v42[8 * (v489 - 1)] + 4 * v487);
            v511 = vld1q_dup_f32(v510);
            v512 = v491[1];
            v513 = vmlaq_f32(vmlaq_f32(v511, *v491, *v203), *v490, v203[4]);
            v514 = vmlaq_f32(vmlaq_f32(v511, v512, v203[1]), v490[1], v203[5]);
            *v490 = *v491;
            v490[1] = v512;
            *v491 = v513;
            v491[1] = v514;
            v515 = v491[2];
            v516 = v491[3];
            v517 = vmlaq_f32(vmlaq_f32(0, v516, v203[3]), v490[3], v203[7]);
            v518 = vmlaq_f32(vmlaq_f32(v511, v515, v203[2]), v490[2], v203[6]);
            v490[2] = v515;
            v490[3] = v516;
            v491[2] = v518;
            v491[3] = v517;
          }

          v487 += v30;
          ++v488;
        }

        while (v488 != v142);
      }

      v519 = *(v55 + 96);
      v520 = (v204 + 32 * ((v140 >> 21) & 0x3FC));
      v521 = *(v55 + 48);
      v522 = *(v55 + 208);
      v523 = v206;
      v524 = v205;
      v525 = v521 - (*(v55 + 48) != 0);
      if (v525)
      {
        v526 = 0;
        v527 = *(v55 + 208);
        v524 = v205;
        v523 = v206;
        do
        {
          v528 = v520[1];
          v530 = v520[4];
          v529 = v520[5];
          v531 = vmlaq_f32(vmulq_f32(v529, v523[1]), v524[1], v528);
          v532 = vmlaq_f32(vmulq_f32(v529, v523[3]), v524[3], v528);
          v533 = vmlaq_f32(vmulq_f32(v520[7], v523[5]), v524[5], v520[3]);
          v534 = vmlaq_f32(vmulq_f32(v520[6], v523[4]), v524[4], v520[2]);
          v535 = vaddq_f32(vmlaq_f32(vmulq_f32(v530, *v523), *v524, *v520), v531);
          *v534.i8 = vadd_f32(*v534.i8, *&vextq_s8(v534, v534, 8uLL));
          *v535.i8 = vadd_f32(*v535.i8, *&vextq_s8(v535, v535, 8uLL));
          v536 = vaddq_f32(vmlaq_f32(vmulq_f32(v530, v523[2]), v524[2], *v520), v532);
          *v536.i8 = vadd_f32(*v536.i8, *&vextq_s8(v536, v536, 8uLL));
          *v533.i8 = vadd_f32(*v533.i8, *&vextq_s8(v533, v533, 8uLL));
          *v527++ = vadd_f32(vadd_f32(vzip1_s32(*v535.i8, *v536.i8), vzip2_s32(*v535.i8, *v536.i8)), vadd_f32(vzip1_s32(*v534.i8, *v533.i8), vzip2_s32(*v534.i8, *v533.i8)));
          v524 += 6;
          v523 += 6;
          v526 += 2;
        }

        while (v526 < v525);
      }

      if (v521)
      {
        v537 = vaddq_f32(vmlaq_f32(vmulq_f32(v520[4], *v523), *v524, *v520), vmlaq_f32(vmulq_f32(v520[5], v523[1]), v524[1], v520[1]));
        *v537.i8 = vadd_f32(*v537.i8, *&vextq_s8(v537, v537, 8uLL));
        v538 = vaddq_f32(vmlaq_f32(vmulq_f32(v520[6], v523[2]), v524[2], v520[2]), vmlaq_f32(vmulq_f32(v520[7], v523[3]), v524[3], v520[3]));
        *v538.i8 = vadd_f32(*v538.i8, *&vextq_s8(v538, v538, 8uLL));
        v522[(v521 - 1)] = vaddv_f32(vadd_f32(vzip1_s32(*v537.i8, *v538.i8), vzip2_s32(*v537.i8, *v538.i8)));
      }

      v539 = *(v55 + 232);
      v540 = v206;
      v541 = v205;
      if (v525)
      {
        v542 = 0;
        v543 = *(v55 + 232);
        v541 = v205;
        v540 = v206;
        do
        {
          v544 = v520[8];
          v545 = v520[9];
          v547 = v520[12];
          v546 = v520[13];
          v548 = vmlaq_f32(vmulq_f32(v546, v540[1]), v541[1], v545);
          v549 = vmlaq_f32(vmulq_f32(v547, *v540), *v541, v544);
          v550 = vmlaq_f32(vmulq_f32(v546, v540[3]), v541[3], v545);
          v551 = vmlaq_f32(vmulq_f32(v547, v540[2]), v541[2], v544);
          v552 = vmlaq_f32(vmulq_f32(v520[15], v540[5]), v541[5], v520[11]);
          v553 = vmlaq_f32(vmulq_f32(v520[14], v540[4]), v541[4], v520[10]);
          v554 = vaddq_f32(v549, v548);
          *v553.i8 = vadd_f32(*v553.i8, *&vextq_s8(v553, v553, 8uLL));
          *v554.i8 = vadd_f32(*v554.i8, *&vextq_s8(v554, v554, 8uLL));
          v555 = vaddq_f32(v551, v550);
          *v555.i8 = vadd_f32(*v555.i8, *&vextq_s8(v555, v555, 8uLL));
          *v552.i8 = vadd_f32(*v552.i8, *&vextq_s8(v552, v552, 8uLL));
          *v543++ = vadd_f32(vadd_f32(vzip1_s32(*v554.i8, *v555.i8), vzip2_s32(*v554.i8, *v555.i8)), vadd_f32(vzip1_s32(*v553.i8, *v552.i8), vzip2_s32(*v553.i8, *v552.i8)));
          v541 += 6;
          v540 += 6;
          v542 += 2;
        }

        while (v542 < v525);
      }

      v556 = v519 * (v140 & 0x7FFFFF);
      if (v521)
      {
        break;
      }

      v557 = v47;
      if (v521)
      {
        goto LABEL_212;
      }

LABEL_213:
      v485 += v142;
      v565 = v140 + v202;
      v140 = (v140 + v202) & 0x7FFFFFFF;
      v142 = v207 + (v565 >> 31);
      ++v486;
      v484 += v30;
      if (v486 == v57)
      {
        v566 = v487;
        goto LABEL_300;
      }
    }

    v558 = vaddq_f32(vmlaq_f32(vmulq_f32(v520[12], *v540), *v541, v520[8]), vmlaq_f32(vmulq_f32(v520[13], v540[1]), v541[1], v520[9]));
    *v558.i8 = vadd_f32(*v558.i8, *&vextq_s8(v558, v558, 8uLL));
    v559 = vaddq_f32(vmlaq_f32(vmulq_f32(v520[14], v540[2]), v541[2], v520[10]), vmlaq_f32(vmulq_f32(v520[15], v540[3]), v541[3], v520[11]));
    *v559.i8 = vadd_f32(*v559.i8, *&vextq_s8(v559, v559, 8uLL));
    v539[(v521 - 1)] = vaddv_f32(vadd_f32(vzip1_s32(*v558.i8, *v559.i8), vzip2_s32(*v558.i8, *v559.i8)));
    v557 = v47;
    do
    {
LABEL_212:
      v560 = *v522++;
      v561 = v560;
      v562 = *v539++;
      v563 = v561 + (v556 * (v562 - v561));
      v564 = *v557++;
      *(v564 + 4 * v484) = v563;
      --v521;
    }

    while (v521);
    goto LABEL_213;
  }

  v35 = *(a1 + 96);
  v36 = *(a1 + 104);
  if (v35 != v36)
  {
    v37 = 0;
    v38 = vcvtmd_s64_f64(a5);
    v39 = vcvtmd_s64_f64(v17);
    do
    {
      v40 = *v35++;
      RamstadSRC::processMono(v832, v40, &(**v820)[v37], (*v825.__r_.__value_.__l.__data_ + v37 * 4), v38, v39, v30, v30);
      ++v37;
    }

    while (v35 != v36);
  }

LABEL_314:
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v825);
  v797 = *MEMORY[0x1E69E9840];
  return a6;
}