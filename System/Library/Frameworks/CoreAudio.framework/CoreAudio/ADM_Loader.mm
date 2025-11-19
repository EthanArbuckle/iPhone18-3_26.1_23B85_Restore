@interface ADM_Loader
- (ADM_Loader)init;
- (id)createFactory;
- (void)dealloc;
@end

@implementation ADM_Loader

- (id)createFactory
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(ADM_Loader *)self admLibrary];
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
      v10 = 0;
      v11 = 0;
      v12 = 47;
      do
      {
        v13 = &aLibraryCachesC_50[v10];
        if (v12 == 47)
        {
          v11 = &aLibraryCachesC_50[v10];
        }

        v12 = v13[1];
        if (!v13[1])
        {
          break;
        }

        v14 = v10++ >= 0xFFF;
      }

      while (!v14);
      if (v11)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi_loader.mm";
      }

      v36 = 136315394;
      v37 = v15;
      v38 = 1024;
      v39 = 54;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d [ahal_dsp] Calling dlsym() on ADM.", &v36, 0x12u);
    }

    v16 = dlsym([(ADM_Loader *)self admLibrary], "CreateAudioDSPManager");
    if (v16)
    {
      v17 = v16();
      goto LABEL_33;
    }

    v18 = dlerror();
    v19 = v18;
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v21;
      AMCP::Log::Scope::get_os_log_t(*v21);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v23 = *v21;
      AMCP::Log::Scope::get_os_log_t(*v21);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v31 = 0;
      v32 = 0;
      v33 = 47;
      do
      {
        v34 = &aLibraryCachesC_50[v31];
        if (v33 == 47)
        {
          v32 = &aLibraryCachesC_50[v31];
        }

        v33 = v34[1];
        if (!v34[1])
        {
          break;
        }

        v14 = v31++ >= 0xFFF;
      }

      while (!v14);
      if (v32)
      {
        v35 = v32 + 1;
      }

      else
      {
        v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi_loader.mm";
      }

      v36 = 136315650;
      v37 = v35;
      v38 = 1024;
      v39 = 60;
      v40 = 2080;
      v41 = v19;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] ADM dlsym failed: %s", &v36, 0x1Cu);
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
      v26 = 0;
      v27 = 0;
      v28 = 47;
      do
      {
        v29 = &aLibraryCachesC_50[v26];
        if (v28 == 47)
        {
          v27 = &aLibraryCachesC_50[v26];
        }

        v28 = v29[1];
        if (!v29[1])
        {
          break;
        }

        v14 = v26++ >= 0xFFF;
      }

      while (!v14);
      if (v27)
      {
        v30 = v27 + 1;
      }

      else
      {
        v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi_loader.mm";
      }

      v36 = 136315394;
      v37 = v30;
      v38 = 1024;
      v39 = 50;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] ADM library unavailable.  Cannot call createFactory.", &v36, 0x12u);
    }
  }

  v17 = 0;
LABEL_33:
  v24 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
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
      v7 = 0;
      v8 = 0;
      v9 = 47;
      do
      {
        v10 = &aLibraryCachesC_50[v7];
        if (v9 == 47)
        {
          v8 = &aLibraryCachesC_50[v7];
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
        v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi_loader.mm";
      }

      *buf = 136315394;
      v16 = v12;
      v17 = 1024;
      v18 = 40;
      _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, "%32s:%-5d [ahal_dsp] Calling dlclose() on ADM.", buf, 0x12u);
    }

    dlclose(self->_admLibrary);
    self->_admLibrary = 0;
  }

  v14.receiver = self;
  v14.super_class = ADM_Loader;
  [(ADM_Loader *)&v14 dealloc];
  v13 = *MEMORY[0x1E69E9840];
}

- (ADM_Loader)init
{
  v35 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = ADM_Loader;
  v2 = [(ADM_Loader *)&v28 init];
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
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_50[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_50[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }

        v12 = v8++ >= 0xFFF;
      }

      while (!v12);
      if (v9)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi_loader.mm";
      }

      *buf = 136315394;
      v30 = v13;
      v31 = 1024;
      v32 = 24;
      _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_INFO, "%32s:%-5d [ahal_dsp] Calling dlopen() on ADM.", buf, 0x12u);
    }

    v14 = dlopen("/System/Library/PrivateFrameworks/AudioDSPManager.framework/AudioDSPManager", 1);
    v3->_admLibrary = v14;
    if (!v14)
    {
      v15 = dlerror();
      v16 = v15;
      v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v17 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v15);
      }

      v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *v18;
        AMCP::Log::Scope::get_os_log_t(*v18);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        v20 = *v18;
        AMCP::Log::Scope::get_os_log_t(*v18);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = 0;
        v24 = 0;
        v25 = 47;
        do
        {
          v26 = &aLibraryCachesC_50[v23];
          if (v25 == 47)
          {
            v24 = &aLibraryCachesC_50[v23];
          }

          v25 = v26[1];
          if (!v26[1])
          {
            break;
          }

          v12 = v23++ >= 0xFFF;
        }

        while (!v12);
        if (v24)
        {
          v27 = v24 + 1;
        }

        else
        {
          v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/submodules/ahal_dsp_lib_repo/ahal_dsp_hosting_lib/src/plugin/spi-adm-thin/ahal_dsp_adm_spi_loader.mm";
        }

        *buf = 136315650;
        v30 = v27;
        v31 = 1024;
        v32 = 30;
        v33 = 2080;
        v34 = v16;
        _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] ADM dlopen() failed: %s", buf, 0x1Cu);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v3;
}

@end