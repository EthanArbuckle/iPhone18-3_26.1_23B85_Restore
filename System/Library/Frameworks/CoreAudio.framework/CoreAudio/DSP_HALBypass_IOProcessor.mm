@interface DSP_HALBypass_IOProcessor
- (DSP_HALBypass_IOProcessor)init;
- (id)adaptToConfigurationChange:(id)change withCallbacks:(void *)callbacks error:(id *)error;
- (id)negotiateConfigurationChange:(id)change error:(id *)error;
- (id)simulateConfigurationChange:(id)change error:(id *)error;
- (void)dealloc;
@end

@implementation DSP_HALBypass_IOProcessor

- (id)adaptToConfigurationChange:(id)change withCallbacks:(void *)callbacks error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  dspCallbacks = [(DSP_HALBypass_IOProcessor *)self dspCallbacks];
  v8 = dspCallbacks;
  if (dspCallbacks)
  {
    v9 = atomic_load(dspCallbacks + 316);
    if (v9)
    {
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(dspCallbacks);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *v11;
        AMCP::Log::Scope::get_os_log_t(*v11);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v13 = *v11;
        AMCP::Log::Scope::get_os_log_t(*v11);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315394;
        v16 = "DSP_HAL_Bypass.mm";
        v17 = 1024;
        v18 = 84;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] DSP HAL Bypass adaptToConfigurationChange - existing callbacks are still registered.", &v15, 0x12u);
      }
    }

    (*(*v8 + 8))(v8);
    [(DSP_HALBypass_IOProcessor *)self setDspCallbacks:0];
  }

  operator new();
}

- (id)negotiateConfigurationChange:(id)change error:(id *)error
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF18]);

  return v4;
}

- (id)simulateConfigurationChange:(id)change error:(id *)error
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF18]);

  return v4;
}

- (void)dealloc
{
  dspCallbacks = self->_dspCallbacks;
  if (dspCallbacks)
  {
    (*(*dspCallbacks + 8))(dspCallbacks, a2);
    self->_dspCallbacks = 0;
  }

  hostCallbacks = self->_hostCallbacks;
  self->_hostCallbacks = 0;

  v5.receiver = self;
  v5.super_class = DSP_HALBypass_IOProcessor;
  [(DSP_HALBypass_IOProcessor *)&v5 dealloc];
}

- (DSP_HALBypass_IOProcessor)init
{
  v6.receiver = self;
  v6.super_class = DSP_HALBypass_IOProcessor;
  v2 = [(DSP_HALBypass_IOProcessor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    hostCallbacks = v2->_hostCallbacks;
    v2->_dspCallbacks = 0;
    v2->_hostCallbacks = 0;
  }

  return v3;
}

@end