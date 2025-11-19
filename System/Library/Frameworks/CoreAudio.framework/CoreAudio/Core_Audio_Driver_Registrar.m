@interface Core_Audio_Driver_Registrar
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (Core_Audio_Driver_Registrar)init;
- (id).cxx_construct;
- (id)register_driver:bundle_url:bundle_id:cpu_type:is_using_driver_service:reply:;
- (shared_ptr<std::vector<Registrar_Connection_Info>>)connection_infos;
- (uint64_t)register_driver:bundle_url:bundle_id:cpu_type:is_using_driver_service:reply:;
- (void)register_driver:(id)a3 bundle_url:(id)a4 bundle_id:(id)a5 cpu_type:(int)a6 is_using_driver_service:(BOOL)a7 reply:(id)a8;
- (void)register_driver:bundle_url:bundle_id:cpu_type:is_using_driver_service:reply:;
- (void)setConnection_infos:(shared_ptr<std::vector<Registrar_Connection_Info>>)a3;
@end

@implementation Core_Audio_Driver_Registrar

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)setConnection_infos:(shared_ptr<std::vector<Registrar_Connection_Info>>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_connection_infos.__cntrl_;
  self->_connection_infos.__ptr_ = v4;
  self->_connection_infos.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::vector<Registrar_Connection_Info>>)connection_infos
{
  cntrl = self->_connection_infos.__cntrl_;
  *v2 = self->_connection_infos.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)register_driver:(id)a3 bundle_url:(id)a4 bundle_id:(id)a5 cpu_type:(int)a6 is_using_driver_service:(BOOL)a7 reply:(id)a8
{
  v35 = *MEMORY[0x1E69E9840];
  a3;
  a4;
  v12 = a5;
  v13 = a8;
  v14 = [MEMORY[0x1E696B0B8] currentConnection];
  v15 = self;
  objc_sync_enter(v15);
  [(Core_Audio_Driver_Registrar *)v15 connection_infos];
  for (i = **buf; i != *(*buf + 8); i += 2)
  {
    if (v14 == i[1])
    {
      objc_storeStrong(i, a5);
      v18 = *i;
      v17 = i[1];
LABEL_7:
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      objc_sync_exit(v15);

      v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v20 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v19);
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

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        v25 = 0;
        v26 = 47;
        do
        {
          v27 = &aLibraryCachesC_5[v24];
          if (v26 == 47)
          {
            v25 = &aLibraryCachesC_5[v24];
          }

          v26 = v27[1];
          if (!v27[1])
          {
            break;
          }
        }

        while (v24++ < 0xFFF);
        if (v25)
        {
          v29 = v25 + 1;
        }

        else
        {
          v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/Core_Audio_Driver_Registrar.mm";
        }

        if (v12)
        {
          v30 = v12;
          v31 = [v12 UTF8String];
        }

        else
        {
          v31 = "null";
        }

        *buf = 136315650;
        *&buf[4] = v29;
        *&buf[12] = 1024;
        *&buf[14] = 97;
        v33 = 2080;
        v34 = v31;
        _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Registering remote driver with bundle id %s", buf, 0x1Cu);
      }

      [(Core_Audio_Driver_Registrar *)v15 registrar];
      v18;
      v17;
      v12;
      v15;
      operator new();
    }
  }

  v17 = 0;
  v18 = 0;
  goto LABEL_7;
}

- (uint64_t)register_driver:bundle_url:bundle_id:cpu_type:is_using_driver_service:reply:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z107-[Core_Audio_Driver_Registrar register_driver:bundle_url:bundle_id:cpu_type:is_using_driver_service:reply:]E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)register_driver:bundle_url:bundle_id:cpu_type:is_using_driver_service:reply:
{

  JUMPOUT(0x1E12C1730);
}

- (id)register_driver:bundle_url:bundle_id:cpu_type:is_using_driver_service:reply:
{
  *a2 = &unk_1F5960F08;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = a1[3];
  result = a1[4];
  a2[4] = result;
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__221;
  v31[4] = __Block_byref_object_dispose__222;
  v32 = a4;
  v5 = v32;
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5999938];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __66__Core_Audio_Driver_Registrar_listener_shouldAcceptNewConnection___block_invoke;
  v30[3] = &unk_1E8675100;
  v30[4] = v31;
  [v5 setInterruptionHandler:v30];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __66__Core_Audio_Driver_Registrar_listener_shouldAcceptNewConnection___block_invoke_2;
  v28[3] = &unk_1E8673418;
  v28[4] = self;
  v7 = v5;
  v29 = v7;
  [v7 setInvalidationHandler:v28];
  v8 = self;
  objc_sync_enter(v8);
  [(Core_Audio_Driver_Registrar *)v8 connection_infos];
  v10 = v26[1];
  v9 = v26[2];
  if (v10 >= v9)
  {
    v12 = (v10 - *v26) >> 4;
    if ((v12 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - *v26;
    v14 = v13 >> 3;
    if (v13 >> 3 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      if (!(v15 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = (16 * v12);
    *v16 = 0;
    v16[1] = v7;
    v11 = 16 * v12 + 16;
    v18 = *v26;
    v17 = v26[1];
    v19 = v16 + *v26 - v17;
    if (*v26 != v17)
    {
      v20 = *v26;
      v21 = (v16 + *v26 - v17);
      do
      {
        v22 = *v20;
        *v20 = 0;
        v20[1] = 0;
        v20 += 2;
        *v21++ = v22;
      }

      while (v20 != v17);
      while (v18 != v17)
      {

        v23 = *v18;
        v18 += 2;
      }
    }

    v24 = *v26;
    *v26 = v19;
    *(v26 + 1) = (v16 + 2);
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v10 = 0;
    v10[1] = v7;
    v11 = (v10 + 2);
  }

  v26[1] = v11;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  objc_sync_exit(v8);

  [v7 resume];
  _Block_object_dispose(v31, 8);

  return 1;
}

- (Core_Audio_Driver_Registrar)init
{
  v3.receiver = self;
  v3.super_class = Core_Audio_Driver_Registrar;
  if ([(Core_Audio_Driver_Registrar *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end