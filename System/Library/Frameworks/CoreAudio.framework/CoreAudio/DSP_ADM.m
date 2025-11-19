@interface DSP_ADM
- (DSP_ADM)init;
- (id)createFactory;
- (void)dealloc;
@end

@implementation DSP_ADM

- (id)createFactory
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(DSP_ADM *)self admLibrary];
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v6;
      AMCP::Log::Scope::get_os_log_t(*v6);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v8 = *v6;
      AMCP::Log::Scope::get_os_log_t(*v6);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "DSP_ADM.mm";
      v22 = 1024;
      v23 = 52;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d [hal_dsp] Calling dlsym() on ADM.", &v20, 0x12u);
    }

    v10 = dlsym([(DSP_ADM *)self admLibrary], "CreateAudioDSPManager");
    if (v10)
    {
      v11 = v10();
      goto LABEL_26;
    }

    v12 = dlerror();
    v13 = v12;
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v15;
      AMCP::Log::Scope::get_os_log_t(*v15);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v17 = *v15;
      AMCP::Log::Scope::get_os_log_t(*v15);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315650;
      v21 = "DSP_ADM.mm";
      v22 = 1024;
      v23 = 58;
      v24 = 2080;
      v25 = v13;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] ADM dlsym failed: %s", &v20, 0x1Cu);
    }
  }

  else
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v6;
      AMCP::Log::Scope::get_os_log_t(*v6);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v6;
      AMCP::Log::Scope::get_os_log_t(*v6);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "DSP_ADM.mm";
      v22 = 1024;
      v23 = 48;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] ADM library unavailable.  Cannot call createFactory.", &v20, 0x12u);
    }
  }

  v11 = 0;
LABEL_26:
  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_admLibrary)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(self);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v4;
      AMCP::Log::Scope::get_os_log_t(*v4);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v6 = *v4;
      AMCP::Log::Scope::get_os_log_t(*v4);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "DSP_ADM.mm";
      v11 = 1024;
      v12 = 38;
      _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, "%32s:%-5d [hal_dsp] Calling dlclose() on ADM.", buf, 0x12u);
    }

    dlclose(self->_admLibrary);
    self->_admLibrary = 0;
  }

  v8.receiver = self;
  v8.super_class = DSP_ADM;
  [(DSP_ADM *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (DSP_ADM)init
{
  v24 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = DSP_ADM;
  v2 = [(DSP_ADM *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v5;
      AMCP::Log::Scope::get_os_log_t(*v5);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v7 = *v5;
      AMCP::Log::Scope::get_os_log_t(*v5);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "DSP_ADM.mm";
      v20 = 1024;
      v21 = 22;
      _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_INFO, "%32s:%-5d [hal_dsp] Calling dlopen() on ADM.", buf, 0x12u);
    }

    v8 = dlopen("/System/Library/PrivateFrameworks/AudioDSPManager.framework/AudioDSPManager", 1);
    v3->_admLibrary = v8;
    if (!v8)
    {
      v9 = dlerror();
      v10 = v9;
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v12;
        AMCP::Log::Scope::get_os_log_t(*v12);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      else
      {
        v14 = *v12;
        AMCP::Log::Scope::get_os_log_t(*v12);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "DSP_ADM.mm";
        v20 = 1024;
        v21 = 28;
        v22 = 2080;
        v23 = v10;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] ADM dlopen() failed: %s", buf, 0x1Cu);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

@end