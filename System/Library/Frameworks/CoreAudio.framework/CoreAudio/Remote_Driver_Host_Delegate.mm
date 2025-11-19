@interface Remote_Driver_Host_Delegate
- (id).cxx_construct;
- (id)init_with_remote_plugin:(shared_ptr<HALS_UCRemotePlugIn>)a3;
- (int)delete_storage_settings:(__CFString *)a3;
- (int)write_storage_settings:(__CFString *)a3 storage_data:(void *)a4;
- (pair<int,)copy_storage_settings:(__CFString *)a3;
- (shared_ptr<HALS_UCRemotePlugIn>)remote_plugin;
- (uint64_t)object_properties_changed:(NSObject  *){objcproto17OS_dispatch_queue} data:(id)&;
- (uint64_t)object_properties_changed:(uint64_t *)a1 data:;
- (uint64_t)request_config_change:(NSObject  *){objcproto17OS_dispatch_queue} change_action:(id)& change_token:;
- (uint64_t)request_config_change:(uint64_t *)a1 change_action:change_token:;
- (void)object_properties_changed:(unsigned int)a3 data:(id)a4;
- (void)object_properties_changed:data:;
- (void)request_config_change:(unsigned int)a3 change_action:(unint64_t)a4 change_token:(unint64_t)a5;
- (void)request_config_change:change_action:change_token:;
- (void)setRemote_plugin:(shared_ptr<HALS_UCRemotePlugIn>)a3;
- (void)teardown;
@end

@implementation Remote_Driver_Host_Delegate

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)setRemote_plugin:(shared_ptr<HALS_UCRemotePlugIn>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_remote_plugin.__cntrl_;
  self->_remote_plugin.__ptr_ = v4;
  self->_remote_plugin.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<HALS_UCRemotePlugIn>)remote_plugin
{
  cntrl = self->_remote_plugin.__cntrl_;
  *v2 = self->_remote_plugin.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (int)delete_storage_settings:(__CFString *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  [(Remote_Driver_Host_Delegate *)self remote_plugin];
  if (v15)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (v15 + 392));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __55__Remote_Driver_Host_Delegate_delete_storage_settings___block_invoke;
    block[3] = &unk_1F5960880;
    block[5] = v15;
    v9 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = &v11;
    v10 = a3;
    v4 = atomic_load(&v18);
    if (v4)
    {
      atomic_store(1u, v19);
    }

    dispatch_sync(queue[0], block);
    v5 = *(v12 + 6);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 560947818;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (pair<int,)copy_storage_settings:(__CFString *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  [(Remote_Driver_Host_Delegate *)self remote_plugin];
  if (v21)
  {
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (v21 + 392));
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __53__Remote_Driver_Host_Delegate_copy_storage_settings___block_invoke;
    v10[3] = &unk_1F5960848;
    v10[6] = v21;
    v11 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = a3;
    v10[4] = &v17;
    v10[5] = &v13;
    v4 = atomic_load(&v24);
    if (v4)
    {
      atomic_store(1u, v25);
    }

    dispatch_sync(queue[0], v10);
    v5 = *(v18 + 6);
    v6 = v14[3];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
  }

  else
  {
    v6 = 0;
    v5 = 560947818;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v7 = *MEMORY[0x1E69E9840];
  v8 = v5;
  v9 = v6;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (int)write_storage_settings:(__CFString *)a3 storage_data:(void *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = 560947818;
  if (a4)
  {
    [(Remote_Driver_Host_Delegate *)self remote_plugin];
    if (v18)
    {
      AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (v18 + 392));
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3321888768;
      v10[2] = __67__Remote_Driver_Host_Delegate_write_storage_settings_storage_data___block_invoke;
      v10[3] = &unk_1F5960810;
      v10[5] = v18;
      v11 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10[4] = &v14;
      v12 = a4;
      v13 = a3;
      v7 = atomic_load(&v21);
      if (v7)
      {
        atomic_store(1u, v22);
      }

      dispatch_sync(queue[0], v10);
      v4 = *(v15 + 6);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      _Block_object_dispose(&v14, 8);
      AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)request_config_change:(unsigned int)a3 change_action:(unint64_t)a4 change_token:(unint64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  [(Remote_Driver_Host_Delegate *)self remote_plugin];
  if (v14)
  {
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v21, (v14 + 392));
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = atomic_load(&v22);
    if (v8)
    {
      atomic_store(1u, v23);
    }

    if (v25 != 1)
    {
      v12 = v21[0];
      operator new();
    }

    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v24;
    v10 = v21[0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZ80__Remote_Driver_Host_Delegate_request_config_change_change_action_change_token__E3__8EEvOT__block_invoke;
    block[3] = &__block_descriptor_72_ea8_32c92_ZTSZ80__Remote_Driver_Host_Delegate_request_config_change_change_action_change_token__E3__8_e5_v8__0l;
    block[4] = v14;
    v17 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = a3;
    v19 = a4;
    v20 = a5;
    v11 = v9;
    dispatch_group_async(v11, v10, block);

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v21);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)request_config_change:(uint64_t *)a1 change_action:change_token:
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

    MEMORY[0x1E12C1730](v2, 0x1020C40992E6479);
  }

  return a1;
}

- (uint64_t)request_config_change:(NSObject  *){objcproto17OS_dispatch_queue} change_action:(id)& change_token:
{
  v2 = a1;
  [Remote_Driver_Host_Delegate request_config_change:change_action:change_token:]::$_8::operator()(a1);
  return std::unique_ptr<-[Remote_Driver_Host_Delegate request_config_change:change_action:change_token:]::$_8>::~unique_ptr[abi:ne200100](&v2);
}

- (void)request_config_change:change_action:change_token:
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(*a1 + 752))
  {
    operator new();
  }

  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v3;
    AMCP::Log::Scope::get_os_log_t(*v3);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v5 = *v3;
    AMCP::Log::Scope::get_os_log_t(*v3);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 4);
    v8 = 136315650;
    v9 = "HALS_UCRemotePlugIn.mm";
    v10 = 1024;
    v11 = 123;
    v12 = 1024;
    v13 = v7;
    _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d The host ref is null, cannot request config change for object id %u", &v8, 0x18u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)object_properties_changed:(unsigned int)a3 data:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(Remote_Driver_Host_Delegate *)self remote_plugin];
  if (v16)
  {
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v22, (v16 + 392));
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6;
    v8 = atomic_load(&v23);
    if (v8)
    {
      atomic_store(1u, v24);
    }

    if (v26 != 1)
    {
      v14 = v22[0];
      operator new();
    }

    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v7;
    v10 = v9;
    v11 = v25;
    v12 = v22[0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZ62__Remote_Driver_Host_Delegate_object_properties_changed_data__E3__7EEvOT__block_invoke;
    block[3] = &__block_descriptor_64_ea8_32c74_ZTSZ62__Remote_Driver_Host_Delegate_object_properties_changed_data__E3__7_e5_v8__0l;
    block[4] = v16;
    v19 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a3;
    v21 = v9;
    v13 = v11;
    dispatch_group_async(v13, v12, block);

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);

      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
    }

    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v22);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (uint64_t)object_properties_changed:(uint64_t *)a1 data:
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

    MEMORY[0x1E12C1730](v2, 0x10A0C405C5CD52DLL);
  }

  return a1;
}

- (uint64_t)object_properties_changed:(NSObject  *){objcproto17OS_dispatch_queue} data:(id)&
{
  v2 = a1;
  [Remote_Driver_Host_Delegate object_properties_changed:data:]::$_7::operator()(a1);
  return std::unique_ptr<-[Remote_Driver_Host_Delegate object_properties_changed:data:]::$_7>::~unique_ptr[abi:ne200100](&v2);
}

- (void)object_properties_changed:data:
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 24) bytes];
  [*(a1 + 24) length];
  v2 = *(*a1 + 752);
  if (v2)
  {
    v3 = *v2;
    v4 = *(a1 + 16);
    v5 = *MEMORY[0x1E69E9840];

    v3();
  }

  else
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v7;
      AMCP::Log::Scope::get_os_log_t(*v7);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v9 = *v7;
      AMCP::Log::Scope::get_os_log_t(*v7);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 16);
      v12 = 136315650;
      v13 = "HALS_UCRemotePlugIn.mm";
      v14 = 1024;
      v15 = 97;
      v16 = 1024;
      v17 = v11;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d The host ref is null, cannot issue properties changed for object id %u", &v12, 0x18u);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)teardown
{
  v2 = 0;
  v3 = 0;
  [(Remote_Driver_Host_Delegate *)self setRemote_plugin:&v2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

- (id)init_with_remote_plugin:(shared_ptr<HALS_UCRemotePlugIn>)a3
{
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = Remote_Driver_Host_Delegate;
  v4 = [(Remote_Driver_Host_Delegate *)&v10 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_remote_plugin.__cntrl_;
    v5->_remote_plugin.__ptr_ = v7;
    v5->_remote_plugin.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

@end