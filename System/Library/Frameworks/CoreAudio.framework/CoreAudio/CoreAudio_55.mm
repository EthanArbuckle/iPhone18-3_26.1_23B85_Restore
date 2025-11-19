caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Caught exception while doing io message operation %llu, device id %u", &v11, 0x22u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Unknown IO message command", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>(void *a1, unsigned int *a2)
{
  v4 = std::hash<AMCP::Portal::IPC::shared_buffer_info_t>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v4 == v9)
      {
        if (*(i + 4) == *a2 && *(i + 5) == a2[1] && *(i + 6) == a2[2] && *(i + 7) == a2[3])
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t std::__function::__func<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0,std::allocator<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0>,void ()(caulk::ipc::mapped_memory &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5985130;
  a2[1] = v2;
  return result;
}

void HALS_IOContext_Manager::destroy_context_core_for_hal_object_id(HALS_IOContext_Manager *this, unsigned int a2)
{
  os_unfair_lock_lock(this + 4);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((this + 40), a2);
  v5 = mcp_object;
  if (HIDWORD(mcp_object))
  {
    v15 = 0;
    AMCP::Core::Broker::fetch_core(&v13, *(this + 15), mcp_object);
    v6 = v13;
    if (v13)
    {
      AMCP::Core::Core::get_simple_required_property<1853188452u>(cf, v13);
      v7 = cf[0];
      v15 = cf[0];
    }

    else
    {
      v7 = 0;
    }

    v8 = *(this + 32);
    cf[0] = MEMORY[0x1E69E9820];
    cf[1] = 1174405120;
    cf[2] = ___ZN27HALS_IOContext_Manager_Impl38destroy_context_core_for_hal_object_idEj_block_invoke;
    cf[3] = &__block_descriptor_tmp_19063;
    cf[4] = this + 24;
    cf[5] = v6;
    v9 = v14;
    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      CFRetain(v7);
    }

    v12 = v7;
    AMCP::Utility::Dispatch_Queue::async(v8, cf);
    HALS_IOContext_Manager_Impl::Object_Map::remove_object((this + 40), v5, a2);
    AMCP::Core::Broker::destroy_core(*(this + 15), v5);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1DE63C04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  applesauce::CF::StringRef::~StringRef((v18 + 56));
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  applesauce::CF::StringRef::~StringRef((v19 - 72));
  os_unfair_lock_unlock(v16 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::create_stream_info_for_device(HALS_IOContext_Manager *this, os_unfair_lock_s *a2, const HALS_IODevice *a3)
{
  os_unfair_lock_lock(a2 + 4);
  HALS_IOContext_Manager_Impl::create_stream_info_for_device(this, a3);

  os_unfair_lock_unlock(a2 + 4);
}

void HALS_IOContext_Manager::device_arrived(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3, const __CFString **a4, void *a5)
{
  os_unfair_lock_lock(a1 + 4);
  v10 = *a4;
  if (v10)
  {
    CFRetain(v10);
  }

  v11 = v10;
  HALS_IOContext_Manager_Impl::device_arrived(&a1[6], a2, a3, &v11, a5);
}

void sub_1DE63C1A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  os_unfair_lock_unlock(v2 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::device_died(uint64_t a1, unsigned int a2, unsigned int a3, const void **a4)
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 16));
  v8 = *a4;
  if (v8)
  {
    CFRetain(v8);
  }

  cf = v8;
  std::mutex::lock((a1 + 192));
  v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v10 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v23 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Manager_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 495;
    *&buf[18] = 2080;
    *&buf[20] = v19;
    _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d device_died: %s", buf, 0x1Cu);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = HALS_IOContext_Manager_Impl::demand_driver_object_for_id((a1 + 24), a3);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((a1 + 40), a2);
  v16 = mcp_object;
  if (HIDWORD(mcp_object))
  {
    v17 = *(a1 + 136);
    *buf = &unk_1F598CCA8;
    *&buf[8] = a1 + 24;
    *&buf[16] = v16 | (a2 << 32);
    *&buf[24] = buf;
    HALS_Graph_Manager::enqueue_config_change(v17, v14, v16, 1, buf);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
    HALS_IOContext_Manager_Impl::garbage_collect((a1 + 24));
  }

  std::mutex::unlock((a1 + 192));
  if (cf)
  {
    CFRelease(cf);
  }

  os_unfair_lock_unlock((a1 + 16));
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1DE63C410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v10);
  std::mutex::unlock((v9 + 192));
  applesauce::CF::StringRef::~StringRef(&a9);
  os_unfair_lock_unlock((v9 + 16));
  _Unwind_Resume(a1);
}

uint64_t **HALS_IOContext_Manager::get_hal_object_id_for_device_uid(uint64_t a1, const void **a2)
{
  os_unfair_lock_lock((a1 + 16));
  hal_object_id_for_device_uid = HALS_IOContext_Manager_Impl::get_hal_object_id_for_device_uid(*(a1 + 168), a2);
  os_unfair_lock_unlock((a1 + 16));
  return hal_object_id_for_device_uid;
}

BOOL HALS_IOContext_Manager::has_engine_for_device(os_unfair_lock_s *this, const HALS_IODevice *a2)
{
  if (!AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    return 1;
  }

  os_unfair_lock_lock(this + 4);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[38]._os_unfair_lock_opaque, *(a2 + 4)) != 0;
  os_unfair_lock_unlock(this + 4);
  return v4;
}

void HALS_IOContext_Manager::create_engine_for_device(HALS_IOContext_Manager *this, const HALS_IODevice *a2)
{
  os_unfair_lock_lock(this + 4);
  HALS_IOContext_Manager_Impl::create_engine_for_device(this + 3, a2);

  os_unfair_lock_unlock(this + 4);
}

void HALS_IOContext_Manager::destroy_engine_for_device(os_unfair_lock_s *this, const HALS_IODevice *a2)
{
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    os_unfair_lock_lock(this + 4);
    HALS_IOContext_Manager_Impl::destroy_engine_for_device(&this[6], *(a2 + 4));

    os_unfair_lock_unlock(this + 4);
  }
}

void HALS_IOContext_Manager::pause_contexts_for_device(HALS_IOContext_Manager *this, HALS_IODevice *a2)
{
  os_unfair_lock_lock(this + 4);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((this + 40), *(a2 + 4));
  if (HIDWORD(mcp_object))
  {
    AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(v8, *(this + 17), mcp_object);
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    AMCP::IO_Core::Graph_Manager::pause_iocontexts_for_timebases(*(this + 17), v8, &v6);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN13HALS_IODevice22set_paused_io_contextsERKNSt3__13setIjNS0_4lessIjEENS0_9allocatorIjEEEE_block_invoke;
    v9[3] = &__block_descriptor_tmp_10_20782;
    v9[4] = a2;
    v9[5] = &v6;
    v5 = (*(*a2 + 64))(a2);
    HALB_CommandGate::ExecuteCommand(v5, v9);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v7[0]);
    v9[0] = v8;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v9);
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1DE63C70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void *a10)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a10);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  os_unfair_lock_unlock(v10 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::resume_contexts_for_device(HALS_IOContext_Manager *this, HALS_IODevice *a2)
{
  os_unfair_lock_lock(this + 4);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((this + 40), *(a2 + 4));
  if (HIDWORD(mcp_object))
  {
    AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(v28, *(this + 17), mcp_object);
    __p[0] = 0;
    __p[1] = __p;
    v38 = 0x4002000000;
    v39 = __Block_byref_object_copy__20790;
    v42[0] = 0;
    v42[1] = 0;
    v40 = __Block_byref_object_dispose__20791;
    v41 = v42;
    v31 = MEMORY[0x1E69E9820];
    v32 = 0x40000000;
    v33 = ___ZN13HALS_IODevice32get_and_clear_paused_io_contextsEv_block_invoke;
    v34 = &unk_1E8679560;
    v35 = __p;
    v36 = a2;
    v5 = (*(*a2 + 64))(a2);
    HALB_CommandGate::ExecuteCommand(v5, &v31);
    std::set<unsigned int>::set[abi:ne200100](&v26, __p[1] + 40);
    _Block_object_dispose(__p, 8);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v42[0]);
    v32 = 0;
    v33 = 0;
    v31 = &v32;
    v6 = v26;
    v8 = *(this + 15);
    v7 = *(this + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = v7;
    if (v6 != v27)
    {
      v9 = &v32;
      while (1)
      {
        AMCP::Core::Broker::fetch_core(&v29, v8, *(v6 + 7));
        if (v29)
        {
          AMCP::Core::Core::get_simple_required_property<1853188452u>(&v43, v29);
          v10 = v43;
          if (!v43)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(__p, v43);
          CFRelease(v10);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "");
        }

        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        if (&v32 == v9 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v9[1].isa) & 0x80) != 0)
        {
          break;
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v9[1].isa, __p) & 0x80) != 0)
        {
          info = v9->info;
          v19 = info;
          v20 = v9;
          if (info)
          {
            do
            {
              data = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              data = v20->data;
              v15 = *data == v20;
              v20 = data;
            }

            while (!v15);
          }

          if (data == &v32 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, data + 4) & 0x80) != 0)
          {
            if (info)
            {
              v29 = data;
            }

            else
            {
              v29 = v9;
              data = &v9->info;
            }

            goto LABEL_25;
          }

LABEL_22:
          data = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v31, &v29, __p);
LABEL_25:
          v9 = *data;
          goto LABEL_26;
        }

        v29 = v9;
        v43 = v9;
LABEL_26:
        v17 = v9;
        if (!v9)
        {
          goto LABEL_38;
        }

        v21 = v9->info;
        if (v21)
        {
          do
          {
            v9 = v21;
            v21 = v21->isa;
          }

          while (v21);
        }

        else
        {
          do
          {
            v9 = v17[2];
            v15 = v9->isa == v17;
            v17 = v9;
          }

          while (!v15);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[0]);
        }

        v22 = v6[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v6[2];
            v15 = *v23 == v6;
            v6 = v23;
          }

          while (!v15);
        }

        v6 = v23;
        if (v23 == v27)
        {
          goto LABEL_54;
        }
      }

      isa = v9->isa;
      v12 = v9;
      if (v31 == v9)
      {
        goto LABEL_23;
      }

      v13 = v9->isa;
      v14 = v9;
      if (isa)
      {
        do
        {
          v12 = v13;
          v13 = v13->info;
        }

        while (v13);
      }

      else
      {
        do
        {
          v12 = v14->data;
          v15 = v12->isa == v14;
          v14 = v12;
        }

        while (v15);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v12[1].isa, __p) & 0x80) != 0)
      {
LABEL_23:
        if (!isa)
        {
          v29 = v9;
LABEL_38:
          operator new();
        }

        v29 = v12;
        data = &v12->info;
        goto LABEL_25;
      }

      goto LABEL_22;
    }

LABEL_54:
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    AMCP::IO_Core::Graph_Manager::resume_iocontexts_for_timebases(*(this + 17), &v26, &v31);
    std::__tree<std::string>::destroy(v32);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v27[0]);
    __p[0] = v28;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1DE63CBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::__tree<std::string>::destroy(a20);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a12);
  a11 = &a14;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a11);
  os_unfair_lock_unlock(v34 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::hog_mode_owner_changed(os_unfair_lock_s *this, HALS_IODevice *a2, int a3)
{
  os_unfair_lock_lock(this + 4);
  if (a3 != -1)
  {
    mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object(&this[10], *(a2 + 4));
    if (HIDWORD(mcp_object))
    {
      memset(v15, 0, sizeof(v15));
      v16 = 1065353216;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(&v11, *&this[34]._os_unfair_lock_opaque, mcp_object);
      v7 = v11;
      for (i = v12; v7 != i; v7 += 16)
      {
        v9 = *v7;
        v10 = *(v7 + 8);
        v13[6] = *v7;
        v14 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::__emplace_unique_key_args<std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase>>(v15, v9);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      v13[0] = &v11;
      std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v13);
      HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(v13, &this[6]);
    }
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1DE63CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(&a19);
  AMCP::Graph::Timebase_Set::~Timebase_Set((v27 - 112));
  os_unfair_lock_unlock(v26 + 4);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_Manager::rebuild_engine_for_device(HALS_IOContext_Manager *this, const HALS_IODevice *a2)
{
  result = AMCP::Feature_Flags::run_hybrid_hal(this, a2);
  if (result)
  {
    os_unfair_lock_lock(this + 4);
    HALS_IOContext_Manager_Impl::create_engine_for_device(this + 3, a2);
    HALS_IOContext_Manager_Impl::create_stream_info_for_device(__p, a2);
    v5 = *(a2 + 4);
    v6 = *(a2 + 7);
    v7 = (*(*a2 + 216))(a2);
    cf = v7;
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    (*(*a2 + 232))(a2);
    HALS_IOContext_Manager_Impl::device_arrived(this + 24, v5, v6, &cf, __p);
  }

  return result;
}

void sub_1DE63D0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v10 + 4);
  _Unwind_Resume(a1);
}

void std::default_delete<HALIO::HALIO_Graph_Builder>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContextHostedDSP::DSPStreamInstance::~DSPStreamInstance(HALS_IOContextHostedDSP::DSPStreamInstance *this)
{
  v2 = (this + 2024);
  v3 = *(this + 254);
  *v2 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v4 = *(this + 254);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  *(this + 166) = &unk_1F598DC40;
  v13 = (this + 2000);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v13);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 1400));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 1376));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 1352));
  *(this + 166) = &unk_1F598DC90;
  if (*(this + 1344) == 1)
  {
    v5 = *(this + 167);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *(this + 162);
  if (v6)
  {
    *(this + 163) = v6;
    operator delete(v6);
  }

  v13 = (this + 1272);
  std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v13);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*(this + 157));
  *(this + 68) = &unk_1F598DC40;
  v13 = (this + 1216);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v13);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 616));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 592));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 568));
  *(this + 68) = &unk_1F598DC90;
  if (*(this + 560) == 1)
  {
    v7 = *(this + 69);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 512);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 480);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 448);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 416);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 384);
  v8 = *(this + 47);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 45);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 43);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<HALS_DSPCaptureFiles>::reset[abi:ne200100](this + 41, 0);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 280);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 216);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 184);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 152);
  v11 = *(this + 18);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *(this + 2) = &unk_1F5985940;
  *(this + 11) = &unk_1F5985C78;
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 88));
  *(this + 5) = &unk_1F5985C78;
  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 40));
  *(this + 2) = &unk_1F5985E58;
  if (*(this + 32) == 1)
  {
    v12 = *(this + 3);
    if (v12)
    {
      CFRelease(v12);
    }
  }
}

uint64_t *std::unique_ptr<HALS_DSPCaptureFiles>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 48);
    std::vector<std::pair<std::string const,HALS_IOEngineInfo const*>>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*(v2 + 32));
    std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*(v2 + 8));

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<HALB_InstrumentedEvent_RealtimeDuration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIMN23HALS_IOContextHostedDSP17DSPStreamInstanceEFvRK26AudioObjectPropertyAddressEJPS2_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5985378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::CustomPropertyListenerCallback(HALS_IOContextHostedDSP::DSPStreamInstance *this, const AudioObjectPropertyAddress *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*this);
  v6 = v4;
  if (v4)
  {
    v7 = *(v4 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 1);
  mElement = a2->mElement;
  *&buf.mSelector = *&a2->mSelector;
  buf.mElement = mElement;
  HALS_NotificationManager::PropertiesChanged(v8, v7, 1, &buf, v5);
  v11 = *(this + 2);
  if (*(this + 1) != v11)
  {
    v12 = a2->mElement;
    *&buf.mSelector = *&a2->mSelector;
    buf.mElement = v12;
    HALS_NotificationManager::PropertiesChanged(v11, v7, 1, &buf, v10);
  }

  v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v13 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(this + 79);
    v20 = *this;
    v21 = *(this + 1);
    v22 = *(this + 2);
    mScope = a2->mScope;
    v18.i32[0] = bswap32(a2->mSelector);
    v24 = vzip1_s8(v18, v18);
    v25.i64[0] = 0x1F0000001FLL;
    v25.i64[1] = 0x1F0000001FLL;
    v26.i64[0] = 0x1F0000001FLL;
    v26.i64[1] = 0x1F0000001FLL;
    v27.i64[0] = 0x5F0000005FLL;
    v27.i64[1] = 0x5F0000005FLL;
    v28 = vbsl_s8(vmovn_s32(vcgtq_u32(v27, vsraq_n_s32(v26, vshlq_n_s32(vmovl_u16(v24), 0x18uLL), 0x18uLL))), v24, 0x2E002E002E002ELL);
    v37 = 4;
    v29 = vuzp1_s8(v28, v28);
    LODWORD(v36) = v29.i32[0];
    BYTE4(v36) = 0;
    v29.i32[0] = bswap32(mScope);
    v30 = vzip1_s8(v29, v29);
    v35 = 4;
    v31 = vbsl_s8(vmovn_s32(vcgtq_u32(v27, vsraq_n_s32(v25, vshlq_n_s32(vmovl_u16(v30), 0x18uLL), 0x18uLL))), v30, 0x2E002E002E002ELL);
    LODWORD(__p) = vuzp1_s8(v31, v31).u32[0];
    BYTE4(__p) = 0;
    v32 = a2->mElement;
    buf.mSelector = 136317442;
    *&buf.mScope = "HALS_IOContextHostedDSP.cpp";
    v39 = 1024;
    v40 = 622;
    v41 = 2048;
    v42 = this;
    v43 = 2048;
    v44 = v19;
    v45 = 2048;
    v46 = v20;
    v47 = 2048;
    v48 = v21;
    v49 = 2048;
    v50 = v22;
    v51 = 2080;
    v52 = &v36;
    v53 = 2080;
    p_p = &__p;
    v55 = 1024;
    v56 = v32;
    _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp] %p (Context ID: %lu) (Client ID: %lu) (Device ID: %lu (%lu)) Sent Hosted DSP change notification sel:%s scope:%s el:%u", &buf, 0x5Eu);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }
  }

  HALS_ObjectMap::ReleaseObject(v6, v17);
  v33 = *MEMORY[0x1E69E9840];
}

void HALS_IOContextHostedDSP::DSPStreamInstance::ConfigureCaptureFiles(uint64_t *a1, uint64_t *a2, char a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (HALS_DSPCaptureFiles::isDSPCaptureEnabled(a1))
    {
      if (*(a1 + 3) != 1768845428)
      {
        goto LABEL_35;
      }

      v8 = a2 + 8;
      v9 = a2[8];
      if (!v9)
      {
        goto LABEL_35;
      }

      v10 = a2 + 8;
      v11 = a2 + 8;
      v12 = a2[8];
      do
      {
        v13 = *(v12 + 28);
        v14 = v13 >= 3;
        v15 = v13 < 3;
        if (v14)
        {
          v11 = v12;
        }

        v12 = *(v12 + 8 * v15);
      }

      while (v12);
      if (v11 == v8 || *(v11 + 7) >= 4u)
      {
        v16 = a2 + 8;
        v17 = a2[8];
        do
        {
          v18 = *(v17 + 28);
          v14 = v18 >= 6;
          v19 = v18 < 6;
          if (v14)
          {
            v16 = v17;
          }

          v17 = *(v17 + 8 * v19);
        }

        while (v17);
        if (v16 == v8 || *(v16 + 7) >= 7u)
        {
          v20 = a2 + 8;
          v21 = a2[8];
          do
          {
            v22 = *(v21 + 28);
            v14 = v22 >= 0xA;
            v23 = v22 < 0xA;
            if (v14)
            {
              v20 = v21;
            }

            v21 = *(v21 + 8 * v23);
          }

          while (v21);
          if (v20 == v8 || *(v20 + 7) >= 0xBu)
          {
            do
            {
              v24 = *(v9 + 28);
              v14 = v24 >= 9;
              v25 = v24 < 9;
              if (v14)
              {
                v10 = v9;
              }

              v9 = *(v9 + 8 * v25);
            }

            while (v9);
            if (v10 == v8 || *(v10 + 7) >= 0xAu)
            {
LABEL_35:
              if ((a3 & 4) != 0)
              {
                goto LABEL_39;
              }

LABEL_38:
              operator new();
            }
          }
        }
      }

      HALS_IODSPInfo::GetClientFormat(__str, a2);
      if ((a3 & 4) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_39:
    v26 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = *MEMORY[0x1E69E9840];
  v6 = a1 + 41;

  std::unique_ptr<HALS_DSPCaptureFiles>::reset[abi:ne200100](v6, 0);
}

void sub_1DE63E090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  *(v46 + 56) = v47;
  operator delete(__p);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  a40 = a17;
  std::vector<std::pair<std::string const,HALS_IOEngineInfo const*>>::__destroy_vector::operator()[abi:ne200100](&a40);
  std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*(v46 + 32));
  std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*(v46 + 8));
  MEMORY[0x1E12C1730](v46, 0x1020C408C5B6129);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContextHostedDSP::DSPStreamInstance::Negotiate_NP(uint64_t a1, uint64_t *a2, int a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  v87[3] = *MEMORY[0x1E69E9840];
  v79 = a4;
  v10 = a2[8];
  if (v10)
  {
    v11 = a2 + 8;
    do
    {
      v12 = *(v10 + 28);
      v13 = v12 >= 9;
      v14 = v12 < 9;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a2 + 8 && *(v11 + 7) <= 9u)
    {
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextHostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 162;
        _os_log_debug_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Skip negotiation for client-visible common reference stream.", buf, 0x12u);
      }

      HALS_IOContextHostedDSP::DSPStreamInstance::CreateRequest(cf, *(a1 + 12), 1u, a2, a3, &v79);
      DSP_Host_Types::NegotiateRequest::NegotiateRequest(buf, cf);
      *cf = &unk_1F598DC40;
      __p = v83;
      std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
      DSP_Host_Types::IOContextDescription::~IOContextDescription(&v82[3]);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v82);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&cf[24]);
      *cf = &unk_1F598DC90;
      if (cf[16] == 1 && *&cf[8])
      {
        CFRelease(*&cf[8]);
      }

      DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(a1 + 544, buf);
      *cf = 0;
      memset(&cf[16], 0, 32);
      *&cf[8] = &cf[16];
      memset(v82, 0, 32);
      *(a1 + 1240) = 0;
      v45 = a1 + 1256;
      std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*(a1 + 1256));
      v46 = *&cf[16];
      *(a1 + 1248) = *&cf[8];
      *(a1 + 1256) = v46;
      v47 = *&cf[24];
      *(a1 + 1264) = *&cf[24];
      if (v47)
      {
        *(v46 + 16) = v45;
        *&cf[8] = &cf[16];
        *&cf[16] = 0;
        *&cf[24] = 0;
      }

      else
      {
        *(a1 + 1248) = v45;
      }

      std::vector<MutationItinerary::Device>::__vdeallocate((a1 + 1272));
      *(a1 + 1272) = *&cf[32];
      *(a1 + 1288) = v82[0];
      *&cf[40] = 0;
      v82[0] = 0;
      *&cf[32] = 0;
      v48 = *(a1 + 1296);
      if (v48)
      {
        *(a1 + 1304) = v48;
        operator delete(v48);
        *(a1 + 1296) = 0;
        *(a1 + 1304) = 0;
        *(a1 + 1312) = 0;
      }

      *(a1 + 1296) = *&v82[1];
      *(a1 + 1312) = v82[3];
      memset(&v82[1], 0, 24);
      __p = &cf[32];
      std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&cf[16]);
      *(a1 + 312) = 0;
      DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary((a1 + 544), "Client Reference Stream");
      *buf = &unk_1F598DC40;
      *cf = v87;
      std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
      DSP_Host_Types::IOContextDescription::~IOContextDescription(&v86[3]);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v86);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&buf[24]);
      *buf = &unk_1F598DC90;
      if (buf[16] == 1 && *&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      v30 = 1685283698;
      goto LABEL_133;
    }
  }

  v19 = a1 + 648;
  v20 = *(a1 + 648);
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = a1 + 648;
  do
  {
    if (*(v20 + 28))
    {
      v21 = v20;
    }

    v20 = *(v20 + 8 * (*(v20 + 28) == 0));
  }

  while (v20);
  if (v21 == v19 || *(v21 + 28) >= 2u)
  {
LABEL_20:
    v21 = a1 + 648;
  }

  v22 = (a4 & 1) != 0 || v19 == v21;
  v23 = (a4 >> 2) & 1;
  if (!v22)
  {
    v23 = 1;
  }

  if (v23)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  LOBYTE(v79) = v24 | a4 & 0xFB;
  *buf = 0;
  *&buf[16] = 0u;
  *&buf[8] = &buf[16];
  v85 = 0u;
  memset(v86, 0, 32);
  *a5 = 0;
  v25 = (a5 + 16);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*(a5 + 16));
  v26 = *&buf[16];
  *(a5 + 8) = *&buf[8];
  *v25 = v26;
  v27 = *&buf[24];
  *(a5 + 24) = *&buf[24];
  v28 = (a5 + 8);
  if (v27)
  {
    *(v26 + 16) = v25;
    *&buf[8] = &buf[16];
    *&buf[16] = 0;
    *&buf[24] = 0;
  }

  else
  {
    *(a5 + 8) = v25;
  }

  std::vector<MutationItinerary::Device>::__vdeallocate((a5 + 32));
  *(a5 + 32) = v85;
  v29 = *(a5 + 56);
  *(a5 + 48) = v86[0];
  v86[0] = 0;
  v85 = 0uLL;
  if (v29)
  {
    *(a5 + 64) = v29;
    operator delete(v29);
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    *(a5 + 72) = 0;
  }

  *(a5 + 56) = *&v86[1];
  *(a5 + 72) = v86[3];
  memset(&v86[1], 0, 24);
  *cf = &v85;
  std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](cf);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&buf[16]);
  HALS_IOContextHostedDSP::DSPStreamInstance::CreateRequest(cf, *(a1 + 12), 1u, a2, a3, &v79);
  DSP_Host_Types::NegotiateRequest::NegotiateRequest(buf, cf);
  *cf = &unk_1F598DC40;
  __p = v83;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(&v82[3]);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v82);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&cf[24]);
  *cf = &unk_1F598DC90;
  if (cf[16] == 1 && *&cf[8])
  {
    CFRelease(*&cf[8]);
  }

  if ((v6 & 2) == 0)
  {
    v30 = 1685287013;
    if ((v6 & 1) != 0 && v87[0] == v87[1])
    {
      goto LABEL_130;
    }

    v31 = DSP_Host_Types::ConfigurationChangeRequest::util_compare_request((a1 + 544), buf, 1);
    v32 = v31;
    if (v31 >= 0x20)
    {
      v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v36 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v31);
      }

      v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        v39 = *v38;
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      else
      {
        v39 = *v38;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *cf = 136315394;
        *&cf[4] = "HALS_IOContextHostedDSP.cpp";
        *&cf[12] = 1024;
        *&cf[14] = 209;
        _os_log_debug_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing negotiate, new request is identical to last.", cf, 0x12u);
      }

      if (*(a1 + 1240) != 1)
      {
        goto LABEL_130;
      }

      *a5 = *(a1 + 1240);
      if (a1 + 1240 != a5)
      {
        std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(a5 + 8, *(a1 + 1248), (a1 + 1256));
        std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>(a5 + 32, *(a1 + 1272), *(a1 + 1280), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1280) - *(a1 + 1272)) >> 4));
        std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>((a5 + 56), *(a1 + 1296), *(a1 + 1304), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 1304) - *(a1 + 1296)) >> 3));
      }
    }

    else
    {
      v33 = *(a1 + 336);
      if (v33 && (atomic_exchange((v33 + 77), 0) & 1) != 0)
      {
        v34 = 1;
        goto LABEL_87;
      }

      if (*(a1 + 1240) != 1 || (v31 & 0xF) != 0xF || (v40 = (a1 + 1240), v31 = MutationItinerary::AreChangesReconciled((a1 + 1240), buf, 0), !v31))
      {
        v34 = (v32 & 4) != 0 && (v32 & 8) == 0;
LABEL_87:
        v49 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v49 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v31);
        }

        v51 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v50 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          v52 = *v51;
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        else
        {
          v52 = *v51;
        }

        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
        if (v53)
        {
          DSP_Host_Types::ConfigurationChangeRequest::debug_stringify_compare_result(&__p, v32);
          v69 = "no";
          if (v34)
          {
            v69 = "require";
          }

          *&cf[4] = "HALS_IOContextHostedDSP.cpp";
          *cf = 136315906;
          *&cf[12] = 1024;
          if (v75 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *&cf[14] = 238;
          *&cf[18] = 2080;
          *&cf[20] = v69;
          *&cf[28] = 2080;
          *&cf[30] = p_p;
          _os_log_debug_impl(&dword_1DE1F9000, v52, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: New negotiate request due to configuration changes, %s rebuild: %s", cf, 0x26u);
          if (v75 < 0)
          {
            operator delete(__p);
          }
        }

        if ((v79 & 1) == 0)
        {
          v54 = *(a1 + 1240);
          v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if (v54 != 1)
          {
            if ((v55 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v53);
            }

            v60 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v59 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v59)
            {
              atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
              v61 = *v60;
              std::__shared_weak_count::__release_shared[abi:ne200100](v59);
            }

            else
            {
              v61 = *v60;
            }

            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *cf = 136315394;
              *&cf[4] = "HALS_IOContextHostedDSP.cpp";
              *&cf[12] = 1024;
              *&cf[14] = 248;
              _os_log_debug_impl(&dword_1DE1F9000, v61, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Deactivation requested with no previous activation, ignoring.", cf, 0x12u);
            }

            goto LABEL_130;
          }

          if ((v55 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v53);
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

          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            *cf = 136315394;
            *&cf[4] = "HALS_IOContextHostedDSP.cpp";
            *&cf[12] = 1024;
            *&cf[14] = 243;
            _os_log_debug_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Deactivation requested but with a different context configuration, ignoring, using previous config.", cf, 0x12u);
          }

          DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(buf, a1 + 544);
          WORD4(v85) = 256;
        }

        (*(**(a1 + 136) + 24))(&__p);
        v62 = MutationItinerary::LoadFromNegotiateResponse_util(a5, &__p, v34);
        if (v62)
        {
          v63 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v63 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v62);
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

          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            *cf = 136315394;
            *&cf[4] = "HALS_IOContextHostedDSP.cpp";
            *&cf[12] = 1024;
            *&cf[14] = 261;
            _os_log_debug_impl(&dword_1DE1F9000, v66, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Negotiate allowed, and succeeded.", cf, 0x12u);
          }

          DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(a1 + 544, buf);
          *(a1 + 1240) = *a5;
          if (a1 + 1240 != a5)
          {
            std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(a1 + 1248, *v28, (a5 + 16));
            std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>(a1 + 1272, *(a5 + 32), *(a5 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 40) - *(a5 + 32)) >> 4));
            std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>((a1 + 1296), *(a5 + 56), *(a5 + 64), 0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 64) - *(a5 + 56)) >> 3));
          }

          MutationItinerary::AreChangesReconciled((a1 + 1240), buf, (a1 + 1320));
          DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(cf);
          *cf = &unk_1F598AC58;
          DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(a1 + 1328, cf);
          v80 = v83;
          *cf = &unk_1F598DC40;
          std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v80);
          DSP_Host_Types::IOContextDescription::~IOContextDescription(&v82[3]);
          DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v82);
          DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&cf[24]);
          *cf = &unk_1F598DC90;
          if (cf[16] == 1 && *&cf[8])
          {
            CFRelease(*&cf[8]);
          }

          v30 = 0;
          *(a1 + 312) = 0;
        }

        __p = &unk_1F598EA30;
        *cf = &v78;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
        *cf = &v77;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
        *cf = &v76;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
        __p = &unk_1F598EA70;
        if (v74 == 1)
        {
          v35 = v73;
          if (v73)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_130;
      }

      *a5 = *v40;
      if (v40 != a5)
      {
        std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(v28, *(a1 + 1248), (a1 + 1256));
        std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>(a5 + 32, *(a1 + 1272), *(a1 + 1280), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1280) - *(a1 + 1272)) >> 4));
        v31 = std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>((a5 + 56), *(a1 + 1296), *(a1 + 1304), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 1304) - *(a1 + 1296)) >> 3));
      }

      v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v41 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v31);
      }

      v43 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        v44 = *v43;
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      else
      {
        v44 = *v43;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        DSP_Host_Types::ConfigurationChangeRequest::debug_stringify_compare_result(&__p, v32);
        v71 = v75 >= 0 ? &__p : __p;
        *cf = 136315650;
        *&cf[4] = "HALS_IOContextHostedDSP.cpp";
        *&cf[12] = 1024;
        *&cf[14] = 226;
        *&cf[18] = 2080;
        *&cf[20] = v71;
        _os_log_debug_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing negotiate, new request is the resolution of DSP changes: %s", cf, 0x1Cu);
        if (v75 < 0)
        {
          operator delete(__p);
        }
      }
    }

    v30 = 1685287789;
    goto LABEL_130;
  }

  (*(**(a1 + 136) + 16))(cf);
  if (MutationItinerary::LoadFromNegotiateResponse_util(a5, cf, 0))
  {
    v30 = 0;
  }

  else
  {
    v30 = 1685287013;
  }

  *cf = &unk_1F598EA30;
  __p = &v82[3];
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = v82;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &cf[24];
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *cf = &unk_1F598EA70;
  if (cf[16] == 1)
  {
    v35 = *&cf[8];
    if (*&cf[8])
    {
LABEL_49:
      CFRelease(v35);
    }
  }

LABEL_130:
  *buf = &unk_1F598DC40;
  *cf = v87;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(&v86[3]);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v86);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&buf[24]);
  *buf = &unk_1F598DC90;
  if (buf[16] == 1 && *&buf[8])
  {
    CFRelease(*&buf[8]);
  }

LABEL_133:
  v67 = *MEMORY[0x1E69E9840];
  return v30;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::CreateRequest(DSP_Host_Types::ConfigurationChangeRequest *a1, int a2, unsigned __int8 a3, uint64_t *a4, int a5, unsigned __int8 *a6)
{
  v105 = *MEMORY[0x1E69E9840];
  DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(v76);
  v76[0] = &unk_1F5968AD0;
  v92 = a2;
  v93 = a3;
  v94 = a4;
  v95 = 0;
  v97 = 0;
  v96 = 0;
  v73 = a6;
  v11 = *a6;
  v77 = v11 & 1 | 0x100;
  v78 = (v11 >> 1) & 1 | 0x100;
  v82[42] = a5;
  v83 = 1;
  v84 = 4096;
  v85 = 1;
  *&cf.__r_.__value_.__r.__words[1] = 0uLL;
  cf.__r_.__value_.__r.__words[0] = &cf.__r_.__value_.__l.__size_;
  p_size = &cf.__r_.__value_.__l.__size_;
  v13 = a4[7];
  if (v13 != a4 + 8)
  {
    while (1)
    {
      v14 = *(v13 + 7);
      LODWORD(v104.__first_) = v14;
      if (v14 <= 0xA)
      {
        if (((1 << v14) & 0x7CC) != 0)
        {
          if (v92 != 1768845428)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (((1 << v14) & 0x30) != 0)
        {
          if (v92 != 1869968496)
          {
            goto LABEL_11;
          }

LABEL_10:
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(&cf, v14);
          goto LABEL_11;
        }

        if (v14 == 1)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      v15 = v13[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13[2];
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      v13 = v16;
      if (v16 == a4 + 8)
      {
        p_size = cf.__r_.__value_.__r.__words[0];
        break;
      }
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(&v79, p_size, &cf.__r_.__value_.__l.__size_);
  HALS_IODSPInfo::GetClientFormat(&v104, v94);
  if (v92 == 1869968496 || v92 == 1768845428)
  {
    DSP_Host_Types::FormatDescription::operator=(&v81, &v104);
    DSP_Host_Types::FormatDescription::operator=(v82, &v104);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_DSPRequest.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 94;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp] Unrecognized scope applied to hosted DSP.", buf, 0x12u);
  }

  v18 = v94;
  if (*(v94 + 152) == 1)
  {
    DSP_Host_Types::AudioChannelConfiguration::operator=(&v86, v94[16]);
    v18 = v94;
  }

  if (*(v18 + 116) == 1)
  {
    v90 = *(v18 + 28);
    v91 = 1;
  }

  v19 = v18[10];
  if (v19)
  {
    v20 = *(v19 + 2);
    if (v20)
    {
      if (CFDictionaryGetCount(v20))
      {
        has_all_id = DSP_Host_OffloadDictionary::has_all_id(v19);
        v18 = v94;
        if (!has_all_id)
        {
          v22 = v94[10];
          DSP_Host_OffloadDictionary::deep_copy(buf);
        }
      }

      else
      {
        v18 = v94;
      }
    }
  }

  v25 = v18[8];
  v23 = v18 + 8;
  v24 = v25;
  if (v25)
  {
    v26 = v23;
    do
    {
      v27 = *(v24 + 28);
      v28 = v27 >= 8;
      v29 = v27 < 8;
      if (v28)
      {
        v26 = v24;
      }

      v24 = *(v24 + 8 * v29);
    }

    while (v24);
    if (v26 != v23 && *(v26 + 7) <= 8u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_DSPRequest.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 109;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp][offloads] DSP Offloading specified but no offload information supplied.", buf, 0x12u);
    }
  }

  v30 = v94;
  v31 = v94[12];
  if (v31)
  {
    v32 = *(v31 + 16);
    if (v32)
    {
      Count = CFDictionaryGetCount(v32);
      v30 = v94;
      if (Count)
      {
        v34 = v94[12];
        DSP_Host_OffloadDictionary::deep_copy(buf);
      }
    }
  }

  v37 = v30[8];
  v35 = v30 + 8;
  v36 = v37;
  if (v37)
  {
    v38 = v35;
    do
    {
      v39 = *(v36 + 28);
      v28 = v39 >= 0xA;
      v40 = v39 < 0xA;
      if (v28)
      {
        v38 = v36;
      }

      v36 = *(v36 + 8 * v40);
    }

    while (v36);
    if (v38 != v35 && *(v38 + 7) <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_DSPRequest.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp][content creation] Content Creation Recording specified but no settings information supplied.", buf, 0x12u);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(cf.__r_.__value_.__l.__size_);
  memset(buf, 0, 24);
  if (v92 == 1768845428)
  {
    v41 = v93;
  }

  else
  {
    v41 = 0;
  }

  v42 = v94;
  v43 = *v94;
  if (v94[1] != *v94)
  {
    v44 = 0;
    v45 = 8;
    do
    {
      LODWORD(v104.__first_) = *(v43 + v45);
      v104.__begin_ = v44;
      LOBYTE(v104.__end_) = 1;
      std::vector<std::pair<unsigned int,std::optional<unsigned long>>>::push_back[abi:ne200100](buf, &v104);
      ++v44;
      v42 = v94;
      v43 = *v94;
      v45 += 128;
    }

    while (v44 < (v94[1] - *v94) >> 7);
  }

  if (v41)
  {
    v46 = v42[3];
    for (i = v42[4]; v46 != i; ++v46)
    {
      v48 = HALS_ObjectMap::CopyObjectByObjectID(*v46);
      if (v48)
      {
        v50 = *(v48 + 5) == 1633773415;
      }

      else
      {
        v50 = 0;
      }

      HALS_ObjectMap::ReleaseObject(v48, v49);
      if (!v50)
      {
        v51 = *buf;
        if (*buf != *&buf[8])
        {
          while (*v51 != *v46)
          {
            v51 += 6;
            if (v51 == *&buf[8])
            {
              goto LABEL_74;
            }
          }
        }

        if (*&buf[8] == v51)
        {
LABEL_74:
          LODWORD(v104.__first_) = *v46;
          LOBYTE(v104.__begin_) = 0;
          LOBYTE(v104.__end_) = 0;
          std::vector<std::pair<unsigned int,std::optional<unsigned long>>>::push_back[abi:ne200100](buf, &v104);
        }
      }
    }
  }

  v52 = *buf;
  v75 = *&buf[8];
  if (*buf != *&buf[8])
  {
    do
    {
      v53 = HALS_ObjectMap::CopyObjectByObjectID(*v52);
      if (v53)
      {
        v98 = v53;
        LOBYTE(v100) = 0;
        v101 = 0;
        if (*(v52 + 16) == 1)
        {
          v55 = *v94 + (*(v52 + 1) << 7);
        }

        else
        {
          v55 = 0;
        }

        v99 = v55;
        if (v92 == 1768845428)
        {
          HALS_IODSPInfo::GetClientFormat(&v104, v94);
          v56 = *&v104.__first_;
          v57 = v56;
          v58 = 0x100000000;
          v53 = v98;
        }

        else
        {
          v57 = 0.0;
          v58 = 0;
        }

        v101 = BYTE4(v58);
        v100 = v58 | LODWORD(v57);
        (*(*v53 + 272))();
        _ZNSt3__115allocate_sharedB8ne200100IN14DSP_Host_Types17DeviceDescriptionENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      HALS_ObjectMap::ReleaseObject(0, v54);
      v52 += 6;
    }

    while (v52 != v75);
    v52 = *buf;
  }

  if (v52)
  {
    operator delete(v52);
  }

  v59 = v95;
  for (j = v96; v59 != j; ++v59)
  {
    std::to_string(&cf, *v59);
    v61 = v88;
    if (v88 >= v89)
    {
      v63 = 0xAAAAAAAAAAAAAAABLL * ((v88 - __src) >> 3);
      v64 = v63 + 1;
      if (v63 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v89 - __src) >> 3) > v64)
      {
        v64 = 0x5555555555555556 * ((v89 - __src) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v89 - __src) >> 3) >= 0x555555555555555)
      {
        v65 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v65 = v64;
      }

      v104.__end_cap_.__value_ = &__src;
      if (v65)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v65);
      }

      v66 = 8 * ((v88 - __src) >> 3);
      v67 = *&cf.__r_.__value_.__l.__data_;
      *(v66 + 16) = *(&cf.__r_.__value_.__l + 2);
      *v66 = v67;
      memset(&cf, 0, sizeof(cf));
      v68 = 24 * v63 + 24;
      v69 = (24 * v63 - (v88 - __src));
      memcpy((v66 - (v88 - __src)), __src, v88 - __src);
      v70 = __src;
      __src = v69;
      v88 = v68;
      v71 = v89;
      v89 = 0;
      v104.__end_ = v70;
      v104.__end_cap_.__value_ = v71;
      v104.__first_ = v70;
      v104.__begin_ = v70;
      std::__split_buffer<std::string>::~__split_buffer(&v104);
      v88 = v68;
      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v62 = *&cf.__r_.__value_.__l.__data_;
      *(v88 + 2) = *(&cf.__r_.__value_.__l + 2);
      *v61 = v62;
      v88 = v61 + 24;
    }
  }

  if ((*v73 & 4) != 0)
  {
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v80[0]);
    v80[0] = 0;
    v80[1] = 0;
    v79 = v80;
    LODWORD(v104.__first_) = 1;
    std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v79, 1u);
  }

  DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(a1, v76);
  HALS_DSPRequest::~HALS_DSPRequest(v76);
  v72 = *MEMORY[0x1E69E9840];
}

void sub_1DE640660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, DSP_Dictionariable::DictionariableKvp *a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v16 = *(v14 - 224);
  *(v14 - 224) = 0;
  if (v16)
  {
    std::default_delete<DSP_Host_OffloadDictionary>::operator()[abi:ne200100](v16);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(STACK[0x388]);
  HALS_DSPRequest::~HALS_DSPRequest(va);
  _Unwind_Resume(a1);
}

void sub_1DE640C2C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DSP_HAL_BypassCallbacks>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

DSP_Host_Types::AdaptRequest *DSP_Host_Types::AdaptRequest::AdaptRequest(DSP_Host_Types::AdaptRequest *this, const DSP_Host_Types::NegotiateRequest *a2)
{
  v4 = DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(this);
  *v4 = &unk_1F598AC58;
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(v4, a2);
  return this;
}

BOOL HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(HALS_IOContextHostedDSP::DSPStreamInstance *this, unsigned int a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(this + 253);
  if (a3)
  {
    if (!v4)
    {
      operator new();
    }

    v5 = **v4;
    HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::SetCurrentSize(v6, a2);
    goto LABEL_7;
  }

  if (!v4)
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  v7 = **v4;
  if (atomic_load(v8 + 5))
  {
    result = 1;
  }

  else
  {
    v12 = v8;
    v13 = (v8 + 16);
    v14 = atomic_load(v8 + 4);
    if (v14 != a2)
    {
      v15 = 0;
      atomic_compare_exchange_strong(v8 + 5, &v15, 1u);
      if (!v15)
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
        v19 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v19 + 16) = 0;
        *(v19 + 20) = 2;
        *(v19 + 24) = "HALS_IOContextHostedDSP.cpp";
        *(v19 + 32) = 498;
        *v19 = &unk_1F5985320;
        *(v19 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v18, v19);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v25[0] = 0;
        v25[1] = 0;
        HALS_System::GetInstance(&v26, 0, v25);
        v20 = *(v26 + 1888);
        if (v20)
        {
          if (!*(v20 + 112))
          {
            std::mutex::lock((v20 + 48));
            operator new();
          }

          v21 = *(v20 + 120);
          v22.n128_u64[0] = *(v20 + 112);
          v22.n128_u64[1] = v21;
          v24 = v22;
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v24 = 0u;
        }

        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        if (v24.n128_u64[0])
        {
          *(v12 + 48) = a2;
          (*(*v24.n128_u64[0] + 16))(v24.n128_u64[0], v12 + 136, v24);
        }

        if (v24.n128_u64[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24.n128_u64[1]);
        }
      }
    }

    v23 = atomic_load(v13);
    result = v23 != a2;
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE641288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v28, 0);
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v31);
  std::mutex::unlock((v29 + 48));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::simple_message_playload::~simple_message_playload(caulk::concurrent::message *a1)
{
  *a1 = &unk_1F5985548;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 24);

  caulk::concurrent::message::~message(a1);
}

{
  *a1 = &unk_1F5985548;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 24);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::SetCurrentSize(uint64_t a1, unsigned int a2)
{
  v7.__m_ = (a1 + 24);
  v4 = 1;
  v7.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  atomic_compare_exchange_strong((a1 + 20), &v4, 3u);
  while (atomic_load((a1 + 20)))
  {
    std::condition_variable::wait((a1 + 88), &v7);
  }

  atomic_store(a2, (a1 + 16));
  atomic_store(0, (a1 + 20));
  if (v7.__owns_)
  {
    std::mutex::unlock(v7.__m_);
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::RT_MaybeEnqueueAdapt(unsigned int)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp] Enqueing buffer size change for hosted DSP.", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::RT_MaybeEnqueueAdapt(unsigned int)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIMZN23HALS_IOContextHostedDSP17DSPStreamInstance25RT_HandleBufferSizeChangeEjbE19BufferChangeHandlerFvjEJPS3_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::operator()(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

__n128 std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5985588;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::AdaptNewSize(uint64_t a1, unsigned int a2)
{
  v26[3] = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOContextHostedDSP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 512;
    v20 = 1024;
    v21 = a2;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Adapting a new buffer size %u.", buf, 0x18u);
  }

  v8 = 1;
  atomic_compare_exchange_strong((a1 + 20), &v8, 2u);
  if (v8 == 1)
  {
    std::mutex::lock((a1 + 24));
    v9 = atomic_load((a1 + 16));
    if (a2 && v9 != a2)
    {
      DSP_Host_Types::AdaptRequest::AdaptRequest(buf, (*(a1 + 8) + 1328));
      v24[92] = a2;
      v25 = 1;
      (*(**(*(a1 + 8) + 136) + 32))(&v12);
      if (!v18)
      {
        v10 = *(a1 + 8);
        *(v10 + 1768) = a2;
        *(v10 + 1772) = 1;
        atomic_store(a2, (a1 + 16));
      }

      v12 = &unk_1F598EAC8;
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v15);
      v12 = &unk_1F598EB08;
      if (v14 == 1 && cf)
      {
        CFRelease(cf);
      }

      *buf = &unk_1F598DC40;
      v12 = v26;
      std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v12);
      DSP_Host_Types::IOContextDescription::~IOContextDescription(v24);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v23);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v22);
      *buf = &unk_1F598DC90;
      if (buf[16] == 1 && *&buf[8])
      {
        CFRelease(*&buf[8]);
      }
    }

    std::mutex::unlock((a1 + 24));
  }

  std::condition_variable::notify_one((a1 + 88));
  atomic_store(0, (a1 + 20));
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE641A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

DSP_Host_Types::AdaptRequest *DSP_Host_Types::AdaptRequest::AdaptRequest(DSP_Host_Types::AdaptRequest *this, const DSP_Host_Types::AdaptRequest *a2)
{
  v4 = DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(this);
  *v4 = &unk_1F598AC58;
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(v4, a2);
  return this;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::~BufferChangeHandler(uint64_t a1)
{
  HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::~BufferChangeHandler(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::~BufferChangeHandler(uint64_t a1)
{
  *a1 = &unk_1F5985528;
  HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::SetCurrentSize(a1, 0);
  *(a1 + 136) = &unk_1F5985548;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 160);
  caulk::concurrent::message::~message((a1 + 136));
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void std::__shared_ptr_emplace<HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler,std::allocator<HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59854D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5985690;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5985638;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
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
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp] Caught an error while calling hosted DSP.", &v9, 0x12u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALB_RealtimeDuration_Collection>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<HALB_RealtimeDuration_Collection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59856B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContextHostedDSP::HostedDSPList::find(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (result != a2)
  {
    while (*result != a3 || *(result + 4) != __PAIR64__(a4, HIDWORD(a3)))
    {
      result += 24;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

HALS_IOContextHostedDSP::DSPStreamInstance *std::unique_ptr<HALS_IOContextHostedDSP::DSPStreamInstance>::reset[abi:ne200100](HALS_IOContextHostedDSP::DSPStreamInstance **a1, HALS_IOContextHostedDSP::DSPStreamInstance *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALS_IOContextHostedDSP::DSPStreamInstance::~DSPStreamInstance(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::HALDSPBypass::~HALDSPBypass(HALS_IOContextHostedDSP::DSPStreamInstance::HALDSPBypass *this)
{
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 144);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 112);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 80);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 48);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 16);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void HAL_DSP_IOCallbacks::~HAL_DSP_IOCallbacks(HAL_DSP_IOCallbacks *this)
{
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 128);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 96);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this);
}

void HALS_IOContextHostedDSP::HostedDSPList::remove_at(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = a1[1];
  v5 = HALS_IOContextHostedDSP::HostedDSPList::find(*a1, v4, a2, a3);
  if (v4 != v5)
  {
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = a1[3];
      v10 = *(v7 + 352);
      v9 = *(v7 + 360);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v8;
        v14 = v8[1];
        v12 = v8 + 1;
        v13 = v14;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v11 = *v8;
        v15 = v8[1];
        v12 = v8 + 1;
        v13 = v15;
      }

      if (v11 != v13)
      {
        while (1)
        {
          v17 = *v11;
          v16 = v11[1];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v17 == v10)
          {
            break;
          }

          v11 += 2;
          if (v11 == v13)
          {
            v11 = v13;
            break;
          }
        }
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v18 = *v12;
      if (v11 != *v12)
      {
        if (v11 + 2 != v18)
        {
          do
          {
            v19 = *(v11 + 1);
            v11[2] = 0;
            v11[3] = 0;
            v20 = v11[1];
            *v11 = v19;
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            v21 = v11 + 2;
            v22 = v11 + 4;
            v11 += 2;
          }

          while (v22 != v18);
          v18 = *v12;
          v11 = v21;
        }

        while (v18 != v11)
        {
          v23 = *(v18 - 1);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          v18 -= 2;
        }

        *v12 = v11;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    v24 = a1[1];
    if (v6 + 24 != v24)
    {
      v25 = v6;
      do
      {
        v26 = *(v25 + 24);
        v25 += 24;
        *v6 = v26;
        *(v6 + 8) = *(v6 + 32);
        v27 = *(v6 + 40);
        *(v6 + 40) = 0;
        std::unique_ptr<HALS_IOContextHostedDSP::DSPStreamInstance>::reset[abi:ne200100]((v6 + 16), v27);
        v28 = v6 + 48;
        v6 = v25;
      }

      while (v28 != v24);
      v24 = a1[1];
      v6 = v25;
    }

    for (; v24 != v6; v24 -= 24)
    {
      std::unique_ptr<HALS_IOContextHostedDSP::DSPStreamInstance>::reset[abi:ne200100]((v24 - 8), 0);
    }

    a1[1] = v6;
  }
}

uint64_t HALS_IOContextHostedDSP::Initialize(HALS_IOContextHostedDSP *this, HALS_IOContextDescription *a2, int a3, int a4)
{
  v13[0] = *(a2 + 4);
  v8 = v13[0];
  v13[1] = a3;
  v13[2] = a4;
  v14 = this;
  *&v16 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextHostedDSP::Initialize(HALS_IOContextDescription &,unsigned int,unsigned int)::$_0>;
  *(&v16 + 1) = v13;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*(a2 + 7), *(a2 + 8), &v16);
  v11[0] = v8;
  v11[1] = a3;
  v11[2] = a4;
  v12 = this;
  v10[0] = &unk_1F5987768;
  v10[1] = a2;
  v15[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Initialize(HALS_IOContextDescription &,unsigned int,unsigned int)::$_1>;
  v15[1] = v11;
  *&v16 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
  *(&v16 + 1) = v15;
  return VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a2 + 10), *(a2 + 11), &v16, v10);
}

void HALS_IOContextHostedDSP::Initialize(HALS_IOContextDescription &,unsigned int,unsigned int)::$_2::operator()(unsigned int *a1, uint64_t a2, int a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a4 + 108))
  {
    v8 = *(a4 + 112);
    if (*(a4 + 120) == v8 || v8 == 0)
    {
      v14 = *a1;
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v37 = *a1;
        LODWORD(__str.__r_.__value_.__l.__data_) = 136315650;
        *(__str.__r_.__value_.__r.__words + 4) = "HALS_IOContextHostedDSP.cpp";
        WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = 905;
        WORD1(__str.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(__str.__r_.__value_.__r.__words[2]) = v37;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Creating DSP instance with no assigned engine (Device ID: %u).", &__str, 0x18u);
      }
    }

    else
    {
      v14 = *(v8 + 8);
    }

    v15 = *(a4 + 232);
    v16 = *(a4 + 12);
    v17 = a1[1];
    v18 = a1[2];
    v19 = *a2;
    v20 = *(a2 + 8);
    if (*a2 != v20)
    {
      while (*v19 != a3 || v19[1] != v14 || v19[2] != v16)
      {
        v19 += 6;
        if (v19 == v20)
        {
          goto LABEL_21;
        }
      }
    }

    if (v20 == v19)
    {
LABEL_21:
      std::string::basic_string[abi:ne200100]<0>(&v46, "");
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      v42[0] = 0;
      v42[1] = 0;
      HALS_System::GetInstance(&__str, 0, v42);
      v21 = HALS_System::CopyClientByObjectID(__str.__r_.__value_.__l.__data_, v17);
      if (__str.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
      }

      if (v21)
      {
        if (*(v21 + 759) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *(v21 + 736), *(v21 + 744));
        }

        else
        {
          __str = *(v21 + 736);
        }

        std::string::operator=(&v46, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__str, v18);
      std::to_string(&v48, v14);
      std::to_string(&v50, v16);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v39, size + 1);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v39;
      }

      else
      {
        v23 = v39.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v23, p_str, size);
      }

      *(&v23->__r_.__value_.__l.__data_ + size) = 46;
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v48;
      }

      else
      {
        v25 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v48.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v39, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&v40, ".", 1uLL);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v50;
      }

      else
      {
        v31 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v50.__r_.__value_.__l.__size_;
      }

      v33 = std::string::append(&v41, v31, v32);
      v35 = v33->__r_.__value_.__r.__words[0];
      v47[0] = v33->__r_.__value_.__l.__size_;
      *(v47 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
      v36 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v45 < 0)
      {
        operator delete(__p);
      }

      __p = v35;
      *v44 = v47[0];
      *&v44[7] = *(v47 + 7);
      v45 = v36;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      HALS_ObjectMap::ReleaseObject(v21, v34);
      LODWORD(__str.__r_.__value_.__l.__data_) = a3;
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = v14;
      LODWORD(__str.__r_.__value_.__r.__words[1]) = v16;
      operator new();
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_1DE643000(_Unwind_Exception *exception_object, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v55, a2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6427F8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE6431CC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE6431D4);
  }

  JUMPOUT(0x1DE64307CLL);
}

void sub_1DE6431F4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(v2 - 200);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1DE6431B4);
  }

  JUMPOUT(0x1DE64307CLL);
}

void sub_1DE64320C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE64307CLL);
  }

  JUMPOUT(0x1DE6431B4);
}

void sub_1DE643218(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE64307CLL);
  }

  JUMPOUT(0x1DE643264);
}

void sub_1DE643230(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    std::unique_ptr<HALS_IOContextHostedDSP::DSPStreamInstance>::reset[abi:ne200100]((v38 - 192), 0);
    if (a32 < 0)
    {
      operator delete(a27);
    }

    if (a38 < 0)
    {
      operator delete(a33);
    }

    v40 = __cxa_begin_catch(a1);
    v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v41 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v40);
    }

    v43 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      v44 = *v43;
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    else
    {
      v44 = *v43;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *(v38 - 208) = 136315394;
      *(v38 - 196) = 1024;
      _os_log_error_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Initialize/create encountered an unknown error.", (v38 - 208), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE642FA4);
  }

  JUMPOUT(0x1DE64307CLL);
}

void sub_1DE64324C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE643254);
  }

  JUMPOUT(0x1DE64307CLL);
}

void HALS_IOContextHostedDSP::Remove(HALS_IOContextHostedDSP *this, HALS_IOContextDescription *a2, int a3, int a4, int a5, HALS_MutationChangeSynchronizer *a6, HALS_MutationChangeSynchronizer *a7)
{
  v11[0] = 0;
  v11[1] = 0;
  v7 = v8;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v10 = v11;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (a6)
  {
    v7 = a6;
  }

  v15 = a4;
  v16 = a5;
  HALS_IOContextHostedDSP::Remove_Internal(this, a2, a3, v7);
  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(v8);
}

uint64_t HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextHostedDSP *this, HALS_IOContextDescription *a2, int a3, HALS_MutationChangeSynchronizer *a4)
{
  result = HALS_IOContextHostedDSP::Negotiate_Internal(this, a2, a3, a4, 0);
  if (result != 1685286515)
  {
    HALS_IOContextDescription::HostedDSPDescription::ResetRequests((a2 + 296));
    v9 = this;
    *&v11 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &)::$_0>;
    *(&v11 + 1) = &v9;
    VisitableVector<HALS_IOStreamInfo>::apply<>(*(a2 + 7), *(a2 + 8), &v11);
    v7[1] = a2;
    v8 = this;
    v7[0] = &unk_1F5987768;
    v10[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &)::$_1>;
    v10[1] = &v8;
    *&v11 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
    *(&v11 + 1) = v10;
    return VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a2 + 10), *(a2 + 11), &v11, v7);
  }

  return result;
}

uint64_t HALS_IOContextHostedDSP::Negotiate_Internal(_BYTE *a1, uint64_t *a2, int a3, uint64_t a4, char a5)
{
  v24[0] = a5 & 1;
  v25 = xmmword_1DE758180;
  v22[0] = a5 & 1;
  v10 = 1685286515;
  v23 = xmmword_1DE758190;
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = a5;
  v18 = 0;
  v17 = 0;
  v19 = v24;
  LODWORD(v20) = a3;
  v21 = a1;
  v26 = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_0>;
  v27 = &v13;
  *&v28 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *(&v28 + 1) = &v26;
  VisitableVector<HALS_IOStreamInfo>::apply<>(a2[7], a2[8], &v28);
  if (!(DWORD1(v25) | HIDWORD(v25)))
  {
    HIDWORD(v25) = 1685286515;
  }

  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = a5;
  v18 = 0;
  v17 = 0;
  v19 = v22;
  v20 = a1;
  LODWORD(v21) = a3;
  v26 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_1>;
  v27 = &v13;
  *&v28 = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *(&v28 + 1) = &v26;
  VisitableVector<HALS_IOStackDescription>::apply<>(a2[10], a2[11], &v28);
  if (!(DWORD1(v23) | HIDWORD(v23)))
  {
    HIDWORD(v23) = 1685286515;
  }

  v11 = 0;
  v13 = v24;
  v14 = v22;
  do
  {
    if (*((&v13)[v11] + 4) != 1685286515 && (v10 == 1685286515 || !v10))
    {
      v10 = *((&v13)[v11] + 4);
    }

    ++v11;
  }

  while (v11 != 2);
  return v10;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &)::$_1>(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  *(a6 + 464) = 0;
  if (*(a6 + 108))
  {
    v7 = *(a6 + 112);
    if (*(a6 + 120) != v7 && v7 != 0)
    {
      v9 = *(v7 + 96);
      if (v9 != *(a6 + 12))
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
          v16 = 136315650;
          v17 = "HALS_IOContextHostedDSP.cpp";
          v18 = 1024;
          v19 = 1428;
          v20 = 2080;
          v21 = "kDeviceStreamIndex == ioStreamInfo.mStreamIndex";
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Primary DSP engine and stream device indicies do not match!", &v16, 0x1Cu);
        }

        abort();
      }

      HALS_IOContextHostedDSP::HostedDSPList::remove_at(*v6, (*(v7 + 8) << 32) | 0x6F757470, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE6437B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6436D0);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &)::$_0>(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  *(v3 + 464) = 0;
  if (*(v3 + 108))
  {
    v4 = *(v3 + 112);
    if (*(v3 + 120) != v4 && v4 != 0)
    {
      v6 = *(v4 + 96);
      if (v6 != *(v3 + 12))
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
          v13 = 136315650;
          v14 = "HALS_IOContextHostedDSP.cpp";
          v15 = 1024;
          v16 = 1412;
          v17 = 2080;
          v18 = "kDeviceStreamIndex == item.m_item.mStreamIndex";
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Primary DSP engine and stream device indicies do not match!", &v13, 0x1Cu);
        }

        abort();
      }

      HALS_IOContextHostedDSP::HostedDSPList::remove_at(*v2, (*(v4 + 8) << 32) | 0x696E7074, v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE643924(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE64383CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_1>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  result = HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_2::operator()(*a1, *(*a1 + 32), *(*a1 + 40), a6, *(*a1 + 48));
  *(*(v6 + 32) + 16) = result;
  return result;
}

uint64_t HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_2::operator()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = 1685286515;
  v11 = *(a2 + 4);
  NumberActiveStreams = HALS_IOContextDescription::GetNumberActiveStreams(*(a1 + 8), v11 == 1768845428);
  v13 = *a2 == 1 && NumberActiveStreams == 0;
  if (v13 || ((v14 = *(a4 + 112), *(a4 + 120) != v14) ? (v15 = v14 == 0) : (v15 = 1), v15))
  {
    v16 = 1685286515;
  }

  else
  {
    v17 = *(a4 + 108);
    v18 = *(a2 + 12);
    if (v17)
    {
      ++v18;
    }

    *(a2 + 12) = v18;
    if (!v17)
    {
      goto LABEL_20;
    }

    v19 = *a3;
    v20 = a3[1];
    if (*a3 == v20)
    {
      goto LABEL_20;
    }

    v21 = *(v14 + 8);
    v22 = *(v14 + 96);
    v23 = *a3;
    while (*v23 != v11 || v23[1] != v21 || v23[2] != v22)
    {
      v23 += 6;
      if (v23 == v20)
      {
        goto LABEL_20;
      }
    }

    if (v20 == v23)
    {
      goto LABEL_20;
    }

    LOWORD(v30[0]) = 0;
    v31[0] = 0;
    v31[1] = 0;
    v30[1] = v31;
    v32 = 0u;
    *__p = 0u;
    v34 = 0u;
    ++*(a2 + 8);
    while (*v19 != v11 || v19[1] != v21 || v19[2] != v22)
    {
      v19 += 6;
      if (v19 == v20)
      {
        goto LABEL_28;
      }
    }

    if (v20 == v19 || (v27 = *(v19 + 2)) == 0)
    {
LABEL_28:
      HALS_MutationChangeSynchronizer::SetItinerary(*(a1 + 16), v30);
      v26 = 0;
      v16 = 1685286515;
      goto LABEL_29;
    }

    v16 = HALS_IOContextHostedDSP::DSPStreamInstance::Negotiate_NP(*(v19 + 2), (a4 + 112), a5, *(a1 + 24), v30);
    v10 = 1685283698;
    if (v16 == 1685283698)
    {
      v26 = 0;
      v16 = 0;
    }

    else
    {
      if ((*(a1 + 24) & 4) == 0 && *(a2 + 4) == 1768845428)
      {
        HALS_IOContextHostedDSP::UpdateDSPReferenceRequestInDescription((v27 + 544), v30, *(a1 + 8), v28);
      }

      if (v16)
      {
        v26 = 1;
        v10 = v16;
      }

      else
      {
        HALS_MutationChangeSynchronizer::SetItinerary(*(a1 + 16), v30);
        v10 = 0;
        v26 = 1;
      }
    }

LABEL_29:
    if (__p[1])
    {
      *&v34 = __p[1];
      operator delete(__p[1]);
    }

    v29 = &v32;
    std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v29);
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(v31[0]);
    if (v26)
    {
LABEL_20:
      v16 = v10;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

void HALS_IOContextHostedDSP::UpdateDSPReferenceRequestInDescription(HALS_IOContextHostedDSP *this, const __CFString ***a2, const MutationItinerary *a3, HALS_IOContextDescription *a4)
{
  v30 = 0;
  MutationItinerary::AreChangesReconciled(a2, this, &v30);
  v6 = v30;
  std::map<applesauce::CF::StringRef,BOOL>::map[abi:ne200100](&v28, a2 + 1);
  v8 = *(a3 + 37);
  v7 = *(a3 + 38);
  if (v7 != v8)
  {
    do
    {
      v9 = v7 - 16;
      std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(*(v7 - 8));
      v7 = v9;
    }

    while (v9 != v8);
  }

  *(a3 + 38) = v8;
  if (v29[1])
  {
    v10 = v28;
    if (v28 != v29)
    {
      v11 = ((v6 >> 2) & 1) == 0;
      do
      {
        LOBYTE(v31) = *(v10 + 40);
        HIDWORD(v31) = v11;
        v12 = v10[4];
        if (v12)
        {
          CFRetain(v10[4]);
        }

        cf = v12;
        v14 = *(a3 + 38);
        v13 = *(a3 + 39);
        if (v14 >= v13)
        {
          v15 = *(a3 + 37);
          v16 = (v14 - v15) >> 4;
          v17 = v16 + 1;
          if ((v16 + 1) >> 60)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v18 = v13 - v15;
          if (v18 >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v20 = (16 * v16);
          *v20 = v31;
          v20[1] = v12;
          cf = 0;
          v21 = &v20[-2 * ((v14 - v15) >> 4)];
          if (v15 != v14)
          {
            v22 = v15;
            v23 = &v20[-2 * ((v14 - v15) >> 4)];
            do
            {
              *v23 = *v22;
              v23[1] = v22[1];
              v22[1] = 0;
              v22 += 2;
              v23 += 2;
            }

            while (v22 != v14);
            do
            {
              std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(v15[1]);
              v15 += 2;
            }

            while (v15 != v14);
            v15 = *(a3 + 37);
          }

          *(a3 + 37) = v21;
          *(a3 + 38) = v20 + 2;
          *(a3 + 39) = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v24 = cf;
          *(a3 + 38) = v20 + 2;
          if (v24)
          {
            CFRelease(v24);
          }
        }

        else
        {
          *v14 = v31;
          *(v14 + 1) = v12;
          *(a3 + 38) = v14 + 16;
        }

        v25 = v10[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v10[2];
            v27 = *v26 == v10;
            v10 = v26;
          }

          while (!v27);
        }

        v10 = v26;
      }

      while (v26 != v29);
    }
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(v29[0]);
}

void sub_1DE643F8C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest::~ReferenceStreamRequest(va);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(a3);
  _Unwind_Resume(a1);
}

void *std::map<applesauce::CF::StringRef,BOOL>::map[abi:ne200100](void *a1, const __CFString ***a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v6 = a1[1];
      if (*a1 == v3)
      {
        v8 = v3;
        if (!v6)
        {
LABEL_9:
          v14 = v3;
LABEL_14:
          operator new();
        }
      }

      else
      {
        v7 = v3;
        if (v6)
        {
          do
          {
            v8 = v6;
            v6 = *(v6 + 8);
          }

          while (v6);
        }

        else
        {
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (v9);
        }

        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v8[4], v5 + 4) < 2)
        {
          v10 = std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__find_equal<applesauce::CF::StringRef>(a1, &v14, v5 + 4);
          goto LABEL_13;
        }

        if (!*v3)
        {
          goto LABEL_9;
        }
      }

      v14 = v8;
      v10 = v8 + 1;
LABEL_13:
      if (!*v10)
      {
        goto LABEL_14;
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = v11->isa;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v9 = *v12 == v5;
          v5 = v12;
        }

        while (!v9);
      }

      v5 = v12;
    }

    while (v12 != v4);
  }

  return a1;
}

const __CFString **std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__find_equal<applesauce::CF::StringRef>(uint64_t a1, const __CFString ***a2, const __CFString **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a3, v4 + 4) < 2)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7[4], a3) < 2)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_0>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  result = HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_2::operator()(*a1, *(*a1 + 32), *(*a1 + 48), a3, *(*a1 + 40));
  *(*(v3 + 32) + 16) = result;
  return result;
}

uint64_t HALS_IOContextHostedDSP::util_Negotiate_WithFlags(_BYTE *a1, uint64_t *a2, int a3, char a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v20[1] = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v19 = v20;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v8 = HALS_IOContextHostedDSP::Negotiate_Internal(a1, a2, a3, v17, a4);
  v9 = v8;
  if (v8 == 1685287013)
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

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextHostedDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1033;
      _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Attempting to negotiate 'bypass' with hosted DSP.", buf, 0x12u);
    }

    v14 = HALS_IOContextHostedDSP::Negotiate_Internal(a1, a2, a3, v17, a4 | 4u);
    *buf = 0;
    *&buf[16] = 0u;
    v27 = 0u;
    *&buf[8] = &buf[16];
    v28 = 0u;
    v29 = 0u;
    HALS_MutationChangeSynchronizer::SetItinerary(v17, buf);
    if (v14)
    {
      v9 = v14;
    }

    else
    {
      v9 = 1685283449;
    }

    if (*(&v28 + 1))
    {
      *&v29 = *(&v28 + 1);
      operator delete(*(&v28 + 1));
    }

    v25 = &v27;
    std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v25);
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&buf[16]);
  }

  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(v17);
  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1DE64440C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContextHostedDSP::Adapt(HALS_IOContextHostedDSP *this, HALS_IOContextDescription *a2, int a3, HALS_MutationChangeSynchronizer *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v27 = 0;
  v23[0] = &v28;
  v23[1] = &v27;
  v24 = 1;
  v25 = a3;
  v26 = this;
  *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextHostedDSP::Adapt_Internal(HALS_IOContextDescription &,unsigned int,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_0>;
  *&buf[8] = v23;
  active = VisitableVector<HALS_IOStreamInfo>::apply<>(*(a2 + 7), *(a2 + 8), buf);
  if (!v28 || (v9 = active, !active))
  {
    *buf = &v28;
    *&buf[8] = &v27;
    *&buf[16] = 1;
    v33 = this;
    v34 = a3;
    v22[0] = &unk_1F5987768;
    v22[1] = a2;
    v29[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Adapt_Internal(HALS_IOContextDescription &,unsigned int,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_1>;
    v29[1] = buf;
    v30[0] = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
    v30[1] = v29;
    active = VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a2 + 10), *(a2 + 11), v30, v22);
    v9 = active;
  }

  v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v10 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(active);
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

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOContextHostedDSP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1368;
    *&buf[18] = 1024;
    v32 = v28;
    _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] %u streams with DSP adapted.", buf, 0x18u);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v9)
  {
LABEL_11:
    if (a4 && v9 == 1685287013)
    {
      HALS_IOContextHostedDSP::Remove_Internal(this, a2, a3, a4);
      v9 = 1685287013;
    }

    goto LABEL_29;
  }

  if (v27 == 1)
  {
    v14 = *this;
    v15 = *(this + 1);
    if (*this == v15)
    {
LABEL_24:
      v19 = 0;
    }

    else
    {
      v16 = *this;
      do
      {
        if (*v16 == 1768845428)
        {
          v17 = *(v16 + 16);
          if (v17)
          {
            v19 = *(v17 + 312);
            goto LABEL_28;
          }
        }

        v16 += 24;
      }

      while (v16 != v15);
      while (1)
      {
        if (*v14 == 1869968496)
        {
          v18 = *(v14 + 16);
          if (v18)
          {
            break;
          }
        }

        v14 += 24;
        if (v14 == v15)
        {
          goto LABEL_24;
        }
      }

      v19 = *(v18 + 312);
    }

LABEL_28:
    *(a2 + 120) = v19;
    *(a2 + 484) = 1;
    *buf = &unk_1F5987AB0;
    *&buf[8] = v19;
    v33 = buf;
    HALS_IOContextDescription::DiscoverDSPStreams(a2, buf);
    std::__function::__value_func<void ()(HALS_DSPStream *)>::~__value_func[abi:ne200100](buf);
    v9 = 1685285985;
  }

  else
  {
    v9 = 0;
  }

LABEL_29:
  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t HALS_IOContextHostedDSP::Adapt_Internal(HALS_IOContextDescription &,unsigned int,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_2::operator()(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t *a2, int a3, uint64_t a4, int a5)
{
  v114[3] = *MEMORY[0x1E69E9840];
  if (!*(a4 + 108))
  {
    v9 = 0;
    goto LABEL_29;
  }

  v6 = *(a4 + 112);
  v7 = (a4 + 112);
  v8 = *(a4 + 120) == v6 || v6 == 0;
  if (v8)
  {
    v9 = 1685287013;
LABEL_28:
    *(a4 + 464) = 0;
    goto LABEL_29;
  }

  v11 = a1;
  v9 = 1685287013;
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = *(v6 + 8);
    v15 = *(v6 + 96);
    while (*v12 != a3 || *(v12 + 4) != v14 || *(v12 + 8) != v15)
    {
      v12 += 24;
      if (v12 == v13)
      {
        goto LABEL_28;
      }
    }
  }

  if (v13 == v12)
  {
    goto LABEL_28;
  }

  v16 = *(v12 + 16);
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = *(a1 + 4);
  v100 = v17;
  v18 = 1685287013;
  if (v17)
  {
    v19 = *(a4 + 176);
    if (v19)
    {
      v20 = a4 + 176;
      do
      {
        v21 = *(v19 + 28);
        v22 = v21 >= 9;
        v23 = v21 < 9;
        if (v22)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * v23);
      }

      while (v19);
      if (v20 != a4 + 176 && *(v20 + 28) <= 9u)
      {
        DSP_Host_Types::AdaptRequest::AdaptRequest(v109, (v16 + 544));
        HALS_IOContextHostedDSP::DSPStreamInstance::MaybeConfigureHALBypass();
      }
    }

    if ((*(v16 + 1240) & 1) == 0)
    {
      v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v38 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        v41 = *v40;
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      else
      {
        v41 = *v40;
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *v109 = 136315394;
        *&v109[4] = "HALS_IOContextHostedDSP.cpp";
        *&v109[12] = 1024;
        *&v109[14] = 335;
        _os_log_debug_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing adapt, previous negotiate failed or was never performed.", v109, 0x12u);
      }

      DSP_Host_Types::AdaptRequest::AdaptRequest(v109, (v16 + 544));
      HALS_IOContextHostedDSP::DSPStreamInstance::MaybeConfigureHALBypass();
    }

    v26 = v16 + 648;
    v27 = *(v16 + 648);
    if (!v27)
    {
      goto LABEL_38;
    }

    v28 = v16 + 648;
    do
    {
      if (*(v27 + 28))
      {
        v28 = v27;
      }

      v27 = *(v27 + 8 * (*(v27 + 28) == 0));
    }

    while (v27);
    if (v28 == v26 || *(v28 + 28) >= 2u)
    {
LABEL_38:
      v28 = v16 + 648;
    }

    v8 = v26 == v28;
    v29 = (v17 >> 2) & 1;
    if (!v8)
    {
      v29 = 1;
    }

    if (v29)
    {
      v30 = 4;
    }

    else
    {
      v30 = 0;
    }

    LOBYTE(v100) = v30 | v17 & 0xFB;
    HALS_IOContextHostedDSP::DSPStreamInstance::CreateRequest(buf, *(v16 + 12), 0, (a4 + 112), a5, &v100);
    DSP_Host_Types::AdaptRequest::AdaptRequest(v109, buf);
    *buf = &unk_1F598DC40;
    v92.__r_.__value_.__r.__words[0] = v108;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v92);
    DSP_Host_Types::IOContextDescription::~IOContextDescription(v107);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v106);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((&p_data + 4));
    *buf = &unk_1F598DC90;
    if (buf[16] == 1 && *&buf[8])
    {
      CFRelease(*&buf[8]);
    }

    v31 = DSP_Host_Types::ConfigurationChangeRequest::util_compare_request((v16 + 544), v109, 0);
    v32 = MutationItinerary::AreChangesReconciled((v16 + 1240), v109, (v16 + 1320));
    if (!v32)
    {
      v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v42 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v32);
      }

      v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        v45 = *v44;
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      else
      {
        v45 = *v44;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        MutationItinerary::util_ChangeBitmaskToString(&v92, *(v16 + 1320));
        v81 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
        v89 = v92.__r_.__value_.__r.__words[0];
        DSP_Host_Types::ConfigurationChangeRequest::debug_stringify_compare_result(v98, v31);
        v82 = &v92;
        if (v81 < 0)
        {
          v82 = v89;
        }

        if (v99 >= 0)
        {
          v83 = v98;
        }

        else
        {
          v83 = v98[0];
        }

        *buf = 136315906;
        *&buf[4] = "HALS_IOContextHostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 359;
        v102 = 2080;
        p_data = &v82->__r_.__value_.__l.__data_;
        v104 = 2080;
        v105 = v83;
        _os_log_debug_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing adapt, changes are incomplete (%s) or incompatible (%s).", buf, 0x26u);
        if (v99 < 0)
        {
          operator delete(v98[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }
      }

      HALS_IOContextHostedDSP::DSPStreamInstance::MaybeConfigureHALBypass();
    }

    v33 = DSP_Host_Types::ConfigurationChangeRequest::hash_equal((v16 + 1328), v109);
    if (v33)
    {
      v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v34 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v33);
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

      v18 = 1685287789;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextHostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 369;
        _os_log_debug_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing adapt, request is identical.", buf, 0x12u);
      }
    }

    else
    {
      v46 = (*(**(v16 + 136) + 32))(&v92);
      v47 = v97;
      if (v97)
      {
        DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(buf);
        *buf = &unk_1F598AC58;
        DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(v16 + 1328, buf);
        *buf = &unk_1F598DC40;
        v98[0] = v108;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](v98);
        DSP_Host_Types::IOContextDescription::~IOContextDescription(v107);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v106);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((&p_data + 4));
        *buf = &unk_1F598DC90;
        if (buf[16] == 1)
        {
          v48 = *&buf[8];
          if (*&buf[8])
          {
            CFRelease(*&buf[8]);
          }
        }

        *(v16 + 312) = 0;
        v49 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v49 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v48);
        }

        v51 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v50 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          v52 = *v51;
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        else
        {
          v52 = *v51;
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v57.i32[0] = bswap32(v47);
          v84 = vzip1_s8(v57, v57);
          v85.i64[0] = 0x1F0000001FLL;
          v85.i64[1] = 0x1F0000001FLL;
          v86.i64[0] = 0x5F0000005FLL;
          v86.i64[1] = 0x5F0000005FLL;
          v87 = vbsl_s8(vmovn_s32(vcgtq_u32(v86, vsraq_n_s32(v85, vshlq_n_s32(vmovl_u16(v84), 0x18uLL), 0x18uLL))), v84, 0x2E002E002E002ELL);
          v99 = 4;
          LODWORD(v98[0]) = vuzp1_s8(v87, v87).u32[0];
          BYTE4(v98[0]) = 0;
          DSP_Host_Types::ConfigurationChangeRequest::debug_device_list(v109, v90);
          if (v91 >= 0)
          {
            v88 = v90;
          }

          else
          {
            v88 = v90[0];
          }

          *buf = 136315906;
          *&buf[4] = "HALS_IOContextHostedDSP.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 409;
          v102 = 2080;
          p_data = v98;
          v104 = 2080;
          v105 = v88;
          _os_log_error_impl(&dword_1DE1F9000, v52, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Adapt_NP : DSP was unable to Adapt to IO configuration (%s) using %s.", buf, 0x26u);
          if (v91 < 0)
          {
            operator delete(v90[0]);
          }

          if (v99 < 0)
          {
            operator delete(v98[0]);
          }
        }

        HALS_IOContextHostedDSP::DSPStreamInstance::MaybeConfigureHALBypass();
      }

      v53 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v53 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v46);
      }

      v55 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        v56 = *v55;
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      }

      else
      {
        v56 = *v55;
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextHostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 381;
        _os_log_debug_impl(&dword_1DE1F9000, v56, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Adapt allowed, and succeeded.", buf, 0x12u);
      }

      v58 = *(v16 + 376);
      *(v16 + 368) = 0;
      *(v16 + 376) = 0;
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v58);
      }

      DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(v16 + 1328, v109);
      v59 = *(v16 + 312);
      if (v94)
      {
        v60 = v93[4];
      }

      else
      {
        v60 = 0;
      }

      *(v16 + 312) = v60;
      if ((*(v16 + 1772) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v61 = HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(v16, *(v16 + 1768), 1);
      if (HALS_DSPCaptureFiles::isDSPCaptureEnabled(v61))
      {
        HALS_IOContextHostedDSP::DSPStreamInstance::ConfigureCaptureFiles(v16, v7, v100);
      }

      v62 = *(v16 + 176);
      if (v62)
      {
        std::function<void ()>::operator()(v62, *(v16 + 316));
      }

      if (v59 == v60)
      {
        v18 = 0;
      }

      else
      {
        v18 = 1685285985;
      }

      v92.__r_.__value_.__r.__words[0] = &unk_1F598EAC8;
      if (__p)
      {
        v96 = __p;
        operator delete(__p);
      }

      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v93);
      v92.__r_.__value_.__r.__words[0] = &unk_1F598EB08;
      if (v92.__r_.__value_.__s.__data_[16] == 1 && v92.__r_.__value_.__l.__size_)
      {
        CFRelease(v92.__r_.__value_.__l.__size_);
      }
    }

    *v109 = &unk_1F598DC40;
    *buf = v114;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
    DSP_Host_Types::IOContextDescription::~IOContextDescription(&v113);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v112);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((&v111 + 4));
    *v109 = &unk_1F598DC90;
    if (v109[16] == 1)
    {
      a1 = *&v109[8];
      if (*&v109[8])
      {
        CFRelease(*&v109[8]);
      }
    }
  }

  v63 = v16 + 648;
  v64 = *(v16 + 648);
  if (!v64)
  {
    goto LABEL_125;
  }

  v65 = v16 + 648;
  v66 = *(v16 + 648);
  do
  {
    if (*(v66 + 28))
    {
      v65 = v66;
    }

    v66 = *(v66 + 8 * (*(v66 + 28) == 0));
  }

  while (v66);
  if (v65 != v63 && *(v65 + 28) < 2u)
  {
    v67 = 1;
    goto LABEL_127;
  }

  v68 = v16 + 648;
  do
  {
    v69 = *(v64 + 28);
    v22 = v69 >= 9;
    v70 = v69 < 9;
    if (v22)
    {
      v68 = v64;
    }

    v64 = *(v64 + 8 * v70);
  }

  while (v64);
  if (v68 == v63 || *(v68 + 28) >= 0xAu)
  {
LABEL_125:
    v68 = v16 + 648;
  }

  v67 = v63 != v68;
LABEL_127:
  if (!v18 || v18 == 1685285985 || v18 == 1685287789)
  {
    **(v11 + 1) |= v18 == 1685285985;
    ++**v11;
    v71 = 1;
    *(a4 + 464) = 1;
    v9 = 0;
    *(a4 + 160) = *(v16 + 312);
    *(a4 + 164) = 1;
  }

  else
  {
    v72 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v72 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      v76.i32[0] = bswap32(v18);
      v77 = vzip1_s8(v76, v76);
      v78.i64[0] = 0x1F0000001FLL;
      v78.i64[1] = 0x1F0000001FLL;
      v79.i64[0] = 0x5F0000005FLL;
      v79.i64[1] = 0x5F0000005FLL;
      v80 = vbsl_s8(vmovn_s32(vcgtq_u32(v79, vsraq_n_s32(v78, vshlq_n_s32(vmovl_u16(v77), 0x18uLL), 0x18uLL))), v77, 0x2E002E002E002ELL);
      BYTE3(p_data) = 4;
      *buf = vuzp1_s8(v80, v80).u32[0];
      buf[4] = 0;
      *v109 = 136315650;
      *&v109[4] = "HALS_IOContextHostedDSP.cpp";
      *&v109[12] = 1024;
      *&v109[14] = 1308;
      v110 = 2080;
      v111 = buf;
      _os_log_debug_impl(&dword_1DE1F9000, v75, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Hosted DSP Adapt is unfinished, with status '%s'.", v109, 0x1Cu);
      if (SBYTE3(p_data) < 0)
      {
        operator delete(*buf);
      }
    }

    v71 = 0;
    v9 = v18;
  }

  *(a4 + 272) = v71;
  *(a4 + 273) = v67;
  *(a4 + 276) = a5;
LABEL_29:
  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1DE645544(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(__p, a6);
  if (a2)
  {
    DSP_Host_Types::AdaptResponse::~AdaptResponse(__p);
    DSP_Host_Types::AdaptRequest::~AdaptRequest(&STACK[0x350]);
    __cxa_begin_catch(a1);
    *(v6 + 464) = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE644974);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContextHostedDSP::ProcessStream(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int *a6, unsigned int *a7, _OWORD *a8, _OWORD *a9)
{
  v14 = HALS_IOContextHostedDSP::HostedDSPList::find(a1, a2, a3, a4);
  if (v14 != a2)
  {
    v15 = *(v14 + 2);
    if (v15)
    {
      isDSPCaptureEnabled = HALS_DSPCaptureFiles::isDSPCaptureEnabled(v14);
      if (isDSPCaptureEnabled)
      {
        v17 = *(v15 + 328);
        if (v17)
        {
          if (HALS_DSPCaptureFiles::isDSPCaptureEnabled(isDSPCaptureEnabled))
          {
            HALS_DSPCaptureFiles::WriteBufferToCaptureFile(v17, a5, a6, a8, a9, v17);
          }
        }
      }

      for (i = 0; i != 240; i += 80)
      {
        v19 = &v39[i];
        *(v19 + 18) = 0;
        *(v19 + 72) = 0uLL;
        *(v19 + 88) = 0uLL;
        *(v19 + 104) = 0uLL;
        *(v19 + 120) = 0uLL;
        *(v19 + 133) = 0;
      }

      v47 = vdupq_n_s64(1uLL);
      v45 = 0;
      v20 = a8[1];
      v43[0] = *a8;
      v43[1] = v20;
      v21 = a8[3];
      v43[2] = a8[2];
      v43[3] = v21;
      v44 = a5;
      v46 = a7;
      if (*a6 - 1 > 2)
      {
        v31 = a8[1];
        v40[0] = *a8;
        v40[1] = v31;
        v32 = a8[3];
        v40[2] = a8[2];
        v40[3] = v32;
        v41 = a5;
        v42 = a6;
        v29 = 1;
      }

      else
      {
        v22 = 0;
        v47.i64[0] = *a6;
        v23 = 1;
        do
        {
          v24 = &v39[24 * v22];
          v25 = *&a6[4 * v22 + 2];
          *v24 = 1;
          *(v24 + 8) = v25;
          v26 = &v40[5 * v22];
          v27 = a8[3];
          v26[2] = a8[2];
          v26[3] = v27;
          v28 = a8[1];
          *v26 = *a8;
          v26[1] = v28;
          *(v26 + 16) = a5;
          *(v26 + 9) = v24;
          v22 = v23;
          v29 = v47.i64[0];
        }

        while (v47.i64[0] > v23++);
      }

      v38 = 0;
      memset(v37, 0, sizeof(v37));
      if (*(v15 + 368))
      {
        v33 = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v15 + 440), *(v15 + 316), v37, v29, v40, v47.i64[1], v43);
      }

      else
      {
        v33 = HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(v15, a5, 0);
        if ((v33 & 1) == 0)
        {
          HALB_InstrumentedEvent_RealtimeDuration::markBeginTime(*(v15 + 352));
          std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v15 + 208), *(v15 + 316), v37, v47.i64[0], v40, v47.i64[1], v43);
          v34 = *(v15 + 352);
          v33 = mach_absolute_time();
          *(v34 + 32) = v33;
        }
      }

      v35 = HALS_DSPCaptureFiles::isDSPCaptureEnabled(v33);
      if (v35)
      {
        v36 = *(v15 + 328);
        if (v36)
        {
          if (HALS_DSPCaptureFiles::isDSPCaptureEnabled(v35))
          {

            HALS_DSPCaptureFiles::WriteBufferToCaptureFile(v36, a5, a7, a8, a9, v36 + 24);
          }
        }
      }
    }
  }
}

void sub_1DE6458E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int128 a34)
{
  __cxa_begin_catch(a1);
  v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = *(v34 + 8);
  a9 = 2;
  *&a34 = "HALS_IOContextHostedDSP.cpp";
  *(&a34 + 1) = 713;
  caulk::concurrent::messenger::enqueue_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>(v36, &a9, &a34);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE645868);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_2,std::tuple<char const*,int,int,int,long long,long long>>::perform(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = 136316418;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp][overload] (Context ID: %d) Input Hosted DSP Processing used more than %d%% of the IO cycle (Budgeted Time: %lld) (Processing Time: %lld).", &v14, 0x32u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_2,std::tuple<char const*,int,int,int,long long,long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_1,std::tuple<char const*,int,int,unsigned long long,long long,long long>>::perform(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = 136316418;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp][overload] (Context ID: %d) (%llu) Hosted DSP processing overloaded the IO cycle (Budgeted Time: %lld) (Processing Time: %lld).", &v14, 0x36u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_1,std::tuple<char const*,int,int,unsigned long long,long long,long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0,std::allocator<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0>,void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK23HALS_IOContextHostedDSP29CheckForDSPProcessingOverloadExE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0,std::allocator<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0>,void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = __udivti3();
  if (v6 >= v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  v9 = *(a1 + 16);
  if (v8 > *v9)
  {
    *v9 = v8;
    v10 = *(a1 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v10[1];
    *v10 = v4;
    v10[1] = v3;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 std::__function::__func<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0,std::allocator<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0>,void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5985708;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*&>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::StringRef::from_get(a1, v4);
}

CFTypeID applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*&>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = v4;
  CFRetain(v4);
  *a1 = v5;
  v6 = CFGetTypeID(v5);
  result = CFNumberGetTypeID();
  if (v6 != result)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1DE645FC8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::StringRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void Aggregate_Device_Description::fill_out_optional_strings(void *a1, CFDictionaryRef *a2)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*&>(&v10, *a2, @"name");
  if (v11)
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[1];
  a1[1] = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*&>(&v10, *a2, @"master");
  if (v11)
  {
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  a1[5] = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*&>(&v10, *a2, @"clock");
  if (v11)
  {
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[6];
  a1[6] = v8;
  if (v9)
  {
    CFRelease(v9);
  }
}

void Aggregate_Device_Description::fill_out_optional_BOOLeans(Aggregate_Device_Description *this, const __CFString *a2)
{
  if (applesauce::CF::details::has_key<__CFString const*&>(a2->isa, @"private"))
  {
    Aggregate_Description_Dictionary::get_BOOLean(&v7, a2, @"private");
    v4 = *(this + 7);
    *(this + 7) = v7;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v5 = *(this + 7);
    *(this + 7) = 0;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (applesauce::CF::details::has_key<__CFString const*&>(a2->isa, @"stacked"))
  {
    Aggregate_Description_Dictionary::get_BOOLean(&v7, a2, @"stacked");
    v6 = *(this + 8);
    *(this + 8) = v7;
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *(this + 8);
    *(this + 8) = *MEMORY[0x1E695E4B8];
    if (!v6)
    {
      return;
    }
  }

  CFRelease(v6);
}

void sub_1DE646AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void Aggregate_Description_Dictionary::~Aggregate_Description_Dictionary(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

Audio_Sub_Device_Description *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Audio_Sub_Device_Description>,Audio_Sub_Device_Description*>(Audio_Sub_Device_Description *result, Audio_Sub_Device_Description *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *v4 = 0;
      *(a3 + 8) = *(v4 + 8);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *(a3 + 24) = *(v4 + 3);
      *(v4 + 3) = 0;
      v5 = *(v4 + 2);
      *(a3 + 48) = *(v4 + 48);
      *(a3 + 32) = v5;
      v4 = (v4 + 56);
      a3 += 56;
    }

    while (v4 != a2);
    do
    {
      Audio_Sub_Device_Description::~Audio_Sub_Device_Description(result);
      result = (v6 + 56);
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<Audio_Sub_Device_Description>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    Audio_Sub_Device_Description::~Audio_Sub_Device_Description((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void Aggregate_Description_Dictionary::get_BOOLean(Aggregate_Description_Dictionary *this, const __CFString *a2, const void *a3)
{
  if (!a2->isa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = applesauce::CF::details::at_key<__CFString const*&>(a2->isa, a3);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      cf = v7;
      v18 = 1;
      v9 = applesauce::CF::convert_to<BOOL,0>(v7);
      CFRelease(v7);
      goto LABEL_12;
    }

    CFRelease(v7);
  }

  LOBYTE(cf) = 0;
  v18 = 0;
  if (!a2->isa)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*&>(&v15, a2->isa, a3);
  if (v16 == 1)
  {
    v10 = v15;
    if (!v15)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v9 = applesauce::CF::convert_to<BOOL,0>(v15);
    CFRelease(v10);
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  v11 = MEMORY[0x1E695E4C8];
  if (!v9)
  {
    v11 = MEMORY[0x1E695E4B8];
  }

  *this = *v11;
}

void sub_1DE646FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v11);
  std::optional<applesauce::CF::NumberRef>::~optional(&a9);
  std::optional<applesauce::CF::BooleanRef>::~optional(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Audio_Sub_Device_Description>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    if ((v7 + 1) > 0x492492492492492)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::allocator<Audio_Sub_Device_Description>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 56 * v7;
    Audio_Sub_Device_Description::Audio_Sub_Device_Description(v11, a2);
    v18 = (v11 + 56);
    v12 = *(a1 + 8);
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Audio_Sub_Device_Description>,Audio_Sub_Device_Description*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    v16 = v18;
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v17[0] = v14;
    v17[1] = v14;
    result = std::__split_buffer<Audio_Sub_Device_Description>::~__split_buffer(v17);
    v6 = v16;
  }

  else
  {
    result = Audio_Sub_Device_Description::Audio_Sub_Device_Description(v3, a2);
    v6 = result + 56;
  }

  *(a1 + 8) = v6;
  return result;
}

void Aggregate_Device_Description::get_composition_dictionary(Aggregate_Device_Description *this, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v5 = Mutable;
  v38 = Mutable;
  if (!*a2)
  {
    *this = 0;
    if (!Mutable)
    {
      return;
    }

    goto LABEL_45;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(Mutable, @"uid", *a2);
  v6 = *(a2 + 8);
  if (v6)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(v5, @"name", v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(v5, @"master", v7);
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(v5, @"clock", v8);
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(v5, @"private", v9);
  }

  v10 = *(a2 + 64);
  if (v10)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(v5, @"stacked", v10);
  }

  v26 = this;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v37 = v11;
  v12 = *(a2 + 16);
  for (i = *(a2 + 24); v12 != i; v12 += 56)
  {
    Audio_Sub_Device_Description::Audio_Sub_Device_Description(&v28, v12);
    v14 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v15 = v14;
    v40 = v14;
    if (!v28)
    {
      __assert_rtn("get_composition_dictionary", "Aggregate_Device_Description.cpp", 74, "m_real_device_uid.is_valid()");
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::StringRef>(v14, @"uid", v28);
    if (v29)
    {
      mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::StringRef>(v15, @"name", v29);
    }

    if (v30)
    {
      mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"channels-in", v30);
    }

    if (v31)
    {
      mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"channels-out", v31);
    }

    valuePtr = v32;
    v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v16;
    if (!v16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"latency-in", v16);
    CFRelease(v16);
    valuePtr = v33;
    v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v17;
    if (!v17)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v22, "Could not construct");
      __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"latency-out", v17);
    CFRelease(v17);
    valuePtr = v34;
    v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v18;
    if (!v18)
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v23, "Could not construct");
      __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"drift", v18);
    CFRelease(v18);
    valuePtr = v35;
    v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v19;
    if (!v19)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v24, "Could not construct");
      __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"drift quality", v19);
    CFRelease(v19);
    valuePtr = v36 ^ 1;
    v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v20;
    if (!v20)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Could not construct");
      __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"don't pad", v20);
    CFRelease(v20);
    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, v15);
    if (v15)
    {
      CFRelease(v15);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(v11, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&v28, v11);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(v5, @"subdevices", v28);
  if (v28)
  {
    CFRelease(v28);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(v26, v5);
  if (v5)
  {
LABEL_45:
    CFRelease(v5);
  }
}

void sub_1DE647744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void DSP_Host_Types::StreamConfiguration::add_to(DSP_Host_Types::StreamConfiguration *this, __CFArray **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*this + 24))(this, &Mutable);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE647904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::StreamConfiguration::load_from(DSP_Host_Types::StreamConfiguration *this, CFDictionaryRef *a2)
{
  v4 = DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::load_from(this + 24, a2);
  DSP_Host_Types::FormatDescription::init_set((this + 112));
  v5 = DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(this + 30, a2, this + 120);
  v6 = *(this + 30);
  v7 = *(this + 31);
  if (v6 != v7)
  {
    while (!*v6 || ((*(**v6 + 32))(*v6) & 1) == 0)
    {
      if (++v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(this + 31);
  }

  if (v6 == v7)
  {
    DSP_Host_Types::FormatDescription::FormatDescription(&v31, "current format");
    DSP_Host_Types::FormatDescription::operator=(this + 112, &v31);
    v31 = &unk_1F598DDD8;
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v37);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v36);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v35);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v34);
    v31 = &unk_1F598DE18;
    if (v33 == 1 && cf)
    {
      CFRelease(cf);
    }
  }

  v26 = v4 & v5;
  v9 = *(this + 42);
  v8 = *(this + 43);
  if (v8 != v9)
  {
    v10 = v8 - 19;
    v11 = v8 - 19;
    v12 = v8 - 19;
    do
    {
      v13 = *v12;
      v12 -= 19;
      (*v13)(v11);
      v10 -= 19;
      v14 = v11 == v9;
      v11 = v12;
    }

    while (!v14);
  }

  *(this + 43) = v9;
  v29[0] = &unk_1F598EC08;
  v29[1] = 0;
  v29[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"supported formats");
  v15 = v28;
  if (v28 == 1)
  {
    v16 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v18 = CFArrayGetCount(v16);
      for (i = 0; Count != i && v18 != i; ++i)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v30, v16, i);
        DSP_Host_Types::FormatDescription::FormatDescription(&v31, "");
        DSP_Host_Types::FormatDescription::init_set(&v31);
        DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(&__p, &v30, &cf);
        v20 = *(this + 43);
        if (v20 >= *(this + 44))
        {
          v21 = std::vector<DSP_Host_Types::FormatDescription>::__emplace_back_slow_path<DSP_Host_Types::FormatDescription const&>(this + 336, &v31);
        }

        else
        {
          DSP_Host_Types::FormatDescription::FormatDescription(*(this + 43), &v31);
          v21 = v20 + 152;
          *(this + 43) = v20 + 152;
        }

        *(this + 43) = v21;
        v31 = &unk_1F598DDD8;
        if (__p)
        {
          v39 = __p;
          operator delete(__p);
        }

        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v37);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v36);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v35);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v34);
        v31 = &unk_1F598DE18;
        if (v33 == 1 && cf)
        {
          CFRelease(cf);
        }

        if (v30)
        {
          CFRelease(v30);
        }
      }

      v22 = *(this + 42) != *(this + 43);
    }

    else
    {
      v22 = 0;
    }

    v26 &= v22;
  }

  v23 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(this + 312, a2);
  v24 = DSP_Dictionariable::SingleKvp<std::string>::load_from(this + 264, a2);
  if (v15 && theArray)
  {
    CFRelease(theArray);
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v29);
  return v26 & v23 & v24;
}

void sub_1DE647CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va1);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::FormatDescription::init_set(DSP_Host_Types::FormatDescription *this)
{
  v1 = (this + 128);
  if (*(this + 16) == *(this + 17))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 128), (this + 24));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 56));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 80));

    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 104));
  }
}

void DSP_Host_Types::FormatDescription::add_to(DSP_Host_Types::FormatDescription *this, __CFArray **a2)
{
  DSP_Host_Types::FormatDescription::init_set(this);

  DSP_Dictionariable::DictionarySet::add_to((this + 128), a2);
}

uint64_t DSP_Host_Types::FormatDescription::load_from(uint64_t **this, CFDictionaryRef *a2)
{
  DSP_Host_Types::FormatDescription::init_set(this);

  return DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(this + 16, a2, (this + 1));
}

void DSP_Host_Types::FormatDescription::add_to(uint64_t **this, __CFDictionary **a2)
{
  DSP_Host_Types::FormatDescription::init_set(this);

  DSP_Dictionariable::DictionarySet::maybe_add_under_key(this + 16, a2, (this + 1));
}

void DSP_Dictionariable::DictionarySet::add_kvp(DSP_Dictionariable::DictionarySet *this, DSP_Dictionariable::DictionariableKvp *a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = *this;
    v7 = v4 - *this;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v8) = a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *this = 0;
    *(this + 1) = v5;
    *(this + 2) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(this + 1) = v5;
}

void DSP_Host_Types::StreamConfiguration::add_to(DSP_Host_Types::StreamConfiguration *this, __CFDictionary **a2)
{
  DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::add_to(this + 24, a2);
  v4 = CFStringCreateWithBytes(0, "current format", 14, 0x8000100u, 0);
  v14 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = v4;
  if (*(this + 128) == 1)
  {
    v6 = *(this + 15);
    *(this + 15) = v4;
    CFRetain(v4);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(this + 15, v4);
    *(this + 128) = 1;
  }

  CFRelease(v5);
  DSP_Host_Types::FormatDescription::init_set((this + 112));
  DSP_Dictionariable::DictionarySet::maybe_add_under_key(this + 30, a2, this + 120);
  if (*(this + 42) != *(this + 43))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v14 = Mutable;
    v8 = *(this + 42);
    v9 = *(this + 43);
    if (v8 == v9)
    {
      v11 = Mutable;
    }

    else
    {
      v10 = *(this + 42);
      do
      {
        (*(*v10 + 40))(v10, &v14);
        v10 += 152;
        v8 += 152;
      }

      while (v10 != v9);
      v11 = v14;
    }

    mcp_applesauce::CF::Array_Builder::get_array(&cf, v11);
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"supported formats", cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(this + 312, a2);
  DSP_Dictionariable::SingleKvp<std::string>::add_to(this + 264, a2);
}

void sub_1DE64820C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::StreamConfiguration::~StreamConfiguration(DSP_Host_Types::StreamConfiguration *this)
{
  DSP_Host_Types::StreamConfiguration::~StreamConfiguration(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985848;
  v5 = (this + 336);
  std::vector<DSP_Host_Types::FormatDescription>::__destroy_vector::operator()[abi:ne200100](&v5);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 312));
  *(this + 33) = &unk_1F5985C78;
  if (*(this + 304) == 1 && *(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 264));
  *(this + 14) = &unk_1F598DDD8;
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 216));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 192));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 168));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 136));
  *(this + 14) = &unk_1F598DE18;
  if (*(this + 128) == 1)
  {
    v3 = *(this + 15);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  *(this + 3) = &unk_1F5985CD0;
  std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::~__value_func[abi:ne200100](this + 80);
  std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::~__value_func[abi:ne200100](this + 48);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985C38;
  if (*(this + 16) == 1)
  {
    v4 = *(this + 1);
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void std::vector<DSP_Host_Types::FormatDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 152;
      v7 = v4 - 152;
      v8 = v4 - 152;
      do
      {
        v9 = *v8;
        v8 -= 152;
        (*v9)(v7);
        v6 -= 152;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::load_from(DSP_Host_Types::AudioChannelConfiguration *this, CFDictionaryRef *a2)
{
  if (*(this + 16) == 1 && (v3 = *(this + 1)) != 0)
  {
    v10[0] = &unk_1F598EC08;
    v10[1] = 0;
    v10[2] = a2;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, v3);
    if (v9 == 1)
    {
      v4 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v7 = v4;
      v5 = DSP_Host_Types::AudioChannelConfiguration::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(this, &v7);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(v10);
    return v5;
  }

  else
  {

    return DSP_Host_Types::AudioChannelConfiguration::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(this, a2);
  }
}

void sub_1DE6485D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  std::optional<applesauce::CF::DictionaryRef>::~optional(&a10);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&a12);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(uint64_t a1, CFDictionaryRef *a2)
{
  v4 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 24, a2);
  v5 = v4 & DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 48, a2);
  v6 = v5 & DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 72, a2);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((a1 + 96));
  v13[0] = &unk_1F598EC08;
  v13[1] = 0;
  v13[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"channel descriptions");
  if (v12 == 1)
  {
    v7 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v9 = CFArrayGetCount(v7);
      if (Count && v9)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v7, 0);
        operator new();
      }

      if (*(a1 + 96) == *(a1 + 104))
      {
        v6 = 0;
      }

      else
      {
        v6 = v6;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v13);
  return v6;
}

void sub_1DE648934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v25);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a15);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a10);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&a12);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985D78;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void DSP_Host_Types::AudioChannelConfiguration::ChannelDescription::add_to(DSP_Host_Types::AudioChannelConfiguration::ChannelDescription *this, __CFArray **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*this + 24))(this, &Mutable);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE648B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::ChannelDescription::load_from(DSP_Host_Types::AudioChannelConfiguration::ChannelDescription *this, CFDictionaryRef *a2)
{
  v4 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(this + 24, a2);
  v5 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(this + 48, a2);
  *(this + 10) = *(this + 9);
  v30[0] = &unk_1F598EC08;
  v30[1] = 0;
  v30[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"coordinates");
  if (v29 == 1)
  {
    v6 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    v9 = 0;
    if (v6)
    {
      while (1)
      {
        v10 = CFArrayGetCount(v6);
        if (Count == v9 || v9 == v10)
        {
          break;
        }

        if (CFArrayGetCount(v6) <= v9 || (ValueAtIndex = CFArrayGetValueAtIndex(v6, v9)) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not find item");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v12 = applesauce::CF::convert_to<float,0>(ValueAtIndex);
        v14 = *(this + 10);
        v13 = *(this + 11);
        if (v14 >= v13)
        {
          v16 = *(this + 9);
          v17 = v14 - v16;
          v18 = (v14 - v16) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v20 = v13 - v16;
          if (v20 >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v21);
          }

          v22 = (v14 - v16) >> 2;
          v23 = (4 * v18);
          v24 = (4 * v18 - 4 * v22);
          *v23 = v12;
          v15 = v23 + 1;
          memcpy(v24, v16, v17);
          v25 = *(this + 9);
          *(this + 9) = v24;
          *(this + 10) = v15;
          *(this + 11) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v14 = v12;
          v15 = v14 + 1;
        }

        *(this + 10) = v15;
        ++v9;
      }

      v8 = v9 == 3;
      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v30);
  return v4 & v5 & v8;
}

void sub_1DE648D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va1);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::AudioChannelConfiguration::ChannelDescription::add_to(DSP_Host_Types::AudioChannelConfiguration::ChannelDescription *this, __CFDictionary **a2)
{
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(this + 24, a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(this + 48, a2);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  cf[1] = Mutable;
  v5 = *(this + 9);
  v6 = *(this + 10);
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    cf[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::get_array(cf, Mutable);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"coordinates", cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE648EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void DSP_Host_Types::AudioChannelConfiguration::ChannelDescription::~ChannelDescription(DSP_Host_Types::AudioChannelConfiguration::ChannelDescription *this)
{
  *this = &unk_1F5985888;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985D78;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985888;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985D78;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE6492A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void DSP_Host_Types::AudioChannelConfiguration::add_to(DSP_Host_Types::AudioChannelConfiguration *this, __CFDictionary **a2)
{
  if (*(this + 16) == 1 && *(this + 1))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v6 = Mutable;
    DSP_Host_Types::AudioChannelConfiguration::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(this, &v6);
    if ((*(this + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(*a2, *(this + 1), cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {

    DSP_Host_Types::AudioChannelConfiguration::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(this, a2);
  }
}

void sub_1DE64944C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::AudioChannelConfiguration::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(uint64_t a1, __CFDictionary **a2)
{
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 24, a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 48, a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 72, a2);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9 = Mutable;
  v6 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (v6 == v5)
  {
    v7 = Mutable;
  }

  else
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 40))(*v6, &v9);
      }

      v6 += 2;
    }

    while (v6 != v5);
    v7 = v9;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, v7);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"channel descriptions", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1DE64955C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::CreateProcessorConfiguration::add_to(DSP_Host_Types::CreateProcessorConfiguration *this, __CFDictionary **a2)
{
  DSP_Dictionariable::SingleKvp<std::string>::add_to(this + 24, a2);

  DSP_Dictionariable::SingleKvp<std::string>::add_to(this + 72, a2);
}

void DSP_Host_Types::DeviceDescription::add_to(DSP_Host_Types::DeviceDescription *this, __CFArray **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*this + 24))(this, &Mutable);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE649B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::DeviceDescription::load_from(DSP_Host_Types::DeviceDescription *this, CFDictionaryRef *a2)
{
  DSP_Host_Types::DeviceDescription::init_set(this);
  v4 = *(this + 92);
  v5 = *(this + 93);
  v6 = 1;
  while (v4 != v5)
  {
    v7 = *v4++;
    v6 &= (*(*v7 + 24))(v7, a2);
  }

  v8 = DSP_Host_Types::AudioChannelConfiguration::load_from((this + 424), a2);
  v9 = DSP_Host_Types::AudioChannelConfiguration::load_from((this + 544), a2);
  v10 = *a2;
  if (v10)
  {
    CFRetain(v10);
  }

  v23 = v10;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 83);
  v26 = &unk_1F598EC08;
  v27 = 0;
  v28 = &v23;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v10, @"hw streams input");
  if (v25 == 1)
  {
    v11 = DSP_Host_Types::load_list_from<DSP_Host_Types::StreamConfiguration>(this + 83, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v11 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v26);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 89);
  v12 = *(this + 83);
  v13 = *(this + 84);
  while (v12 != v13)
  {
    v14 = *v12;
    if (*v12 && *(v14 + 44) == 1 && *(v14 + 40) == 2)
    {
      std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](this + 712, v12);
      v15 = *(this + 84);
      if (v12 + 1 == v15)
      {
        v13 = v12;
      }

      else
      {
        v16 = v12;
        do
        {
          v17 = v16[1];
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          v18 = *(v16 + 1);
          *v16 = v17;
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }

          v13 = v16 + 1;
          v19 = v16 + 2;
          ++v16;
        }

        while (v19 != v15);
        v15 = *(this + 84);
      }

      while (v15 != v13)
      {
        v20 = *(v15 - 1);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        --v15;
      }

      *(this + 84) = v13;
    }

    else
    {
      ++v12;
    }
  }

  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 86);
  v26 = &unk_1F598EC08;
  v27 = 0;
  v28 = &v23;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v23, @"hw streams output");
  if (v25 == 1)
  {
    v21 = DSP_Host_Types::load_list_from<DSP_Host_Types::StreamConfiguration>(this + 86, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v21 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v26);
  if (v23)
  {
    CFRelease(v23);
  }

  return v6 & v8 & v9 & v11 & v21;
}

void sub_1DE649DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10, uint64_t a11, char a12)
{
  std::optional<applesauce::CF::ArrayRef>::~optional(&a10);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&a12);
  DSP_Host_Types::DeviceDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::~$_0(&a9);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DeviceDescription::init_set(DSP_Host_Types::DeviceDescription *this)
{
  if (*(this + 92) == *(this + 93))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 24));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 72));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 120));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 144));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 168));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 192));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 216));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 248));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 280));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 304));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 328));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 352));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 376));

    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 400));
  }
}

BOOL DSP_Host_Types::load_list_from<DSP_Host_Types::StreamConfiguration>(void *a1, CFArrayRef *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*a2);
  v6 = *a2;
  if (*a2)
  {
    v7 = CFArrayGetCount(*a2);
  }

  else
  {
    v7 = 0;
  }

  v10 = v2 == v6 && v7 == 0;
  if (Count)
  {
    if (!v10)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v2, 0);
      operator new();
    }
  }

  return *a1 != a1[1];
}

void sub_1DE64A210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

const void **DSP_Host_Types::DeviceDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::~$_0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void DSP_Host_Types::DeviceDescription::add_to(uint64_t **this, __CFDictionary **a2)
{
  DSP_Host_Types::DeviceDescription::init_set(this);
  v4 = this[92];
  v5 = this[93];
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(*v6 + 16))(v6, a2);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v7 = this[83];
  v8 = this[84];
  while (v7 != v8)
  {
    if (*v7)
    {
      (*(**v7 + 40))(*v7, &Mutable);
    }

    v7 += 2;
  }

  v9 = this[89];
  v10 = this[90];
  while (v9 != v10)
  {
    if (*v9)
    {
      (*(**v9 + 40))(*v9, &Mutable);
    }

    v9 += 2;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, Mutable);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"hw streams input", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  cf = v11;
  v12 = this[86];
  v13 = this[87];
  if (v12 != v13)
  {
    do
    {
      if (*v12)
      {
        (*(**v12 + 40))(*v12, &cf);
      }

      v12 += 2;
    }

    while (v12 != v13);
    v11 = cf;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&v14, v11);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"hw streams output", v14);
  if (v14)
  {
    CFRelease(v14);
  }

  if (this[86] != this[87])
  {
    DSP_Host_Types::AudioChannelConfiguration::add_to((this + 53), a2);
    DSP_Host_Types::AudioChannelConfiguration::add_to((this + 68), a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE64A55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DeviceDescription::~DeviceDescription(DSP_Host_Types::DeviceDescription *this)
{
  DSP_Host_Types::DeviceDescription::~DeviceDescription(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985A20;
  v2 = *(this + 92);
  if (v2)
  {
    *(this + 93) = v2;
    operator delete(v2);
  }

  v6 = (this + 712);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 688);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 664);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  *(this + 68) = &unk_1F598DEC8;
  v6 = (this + 640);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 616));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 592));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 568));
  *(this + 68) = &unk_1F598DF08;
  if (*(this + 560) == 1)
  {
    v3 = *(this + 69);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  *(this + 53) = &unk_1F598DEC8;
  v6 = (this + 520);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 496));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 472));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 448));
  *(this + 53) = &unk_1F598DF08;
  if (*(this + 440) == 1)
  {
    v4 = *(this + 54);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 400));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 376));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 352));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 328));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 304));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 280));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 248));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 216));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 192));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 168));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 144));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 120));
  *(this + 9) = &unk_1F5985C78;
  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 72));
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985ED8;
  if (*(this + 16) == 1)
  {
    v5 = *(this + 1);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t DSP_Host_Types::IOContextDescription::load_from(DSP_Host_Types::IOContextDescription *this, CFDictionaryRef *a2)
{
  if (*(this + 16) == 1 && (v3 = *(this + 1)) != 0)
  {
    v10[0] = &unk_1F598EC08;
    v10[1] = 0;
    v10[2] = a2;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, v3);
    if (v9 == 1)
    {
      v4 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v7 = v4;
      v5 = DSP_Host_Types::IOContextDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(this, &v7);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(v10);
    return v5;
  }

  else
  {

    return DSP_Host_Types::IOContextDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(this, a2);
  }
}

void sub_1DE64A968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  std::optional<applesauce::CF::DictionaryRef>::~optional(&a10);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&a12);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::IOContextDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(uint64_t a1, CFDictionaryRef *a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v4 = a1 + 568;
  DSP_Host_Types::FormatDescription::init_set((a1 + 48));
  v5 = DSP_Dictionariable::DictionarySet::maybe_load_from_under_key((a1 + 176), a2, a1 + 56);
  DSP_Host_Types::FormatDescription::init_set((a1 + 200));
  v6 = DSP_Dictionariable::DictionarySet::maybe_load_from_under_key((a1 + 328), a2, a1 + 208);
  v7 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 352, a2);
  v8 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 376, a2);
  v9 = DSP_Host_Types::AudioChannelConfiguration::load_from((a1 + 400), a2);
  v10 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 544, a2);
  v11 = *(a1 + 576);
  *v4 = 0u;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(&v47, *a2, @"dsp offload description");
  if (v48 == 1)
  {
    _ZNSt3__115allocate_sharedB8ne200100I26DSP_Host_OffloadDictionaryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v12 = *(a1 + 592);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!*a2)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(&cf, *a2, @"dsp generic settings");
  if (v46 == 1)
  {
    _ZNSt3__115allocate_sharedB8ne200100I26DSP_Host_OffloadDictionaryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v13 = v5 & v6 & v7 & v8 & v9 & v10;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(a1 + 32));
  *(a1 + 24) = a1 + 32;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v44[0] = &unk_1F598EC08;
  v44[1] = 0;
  v44[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"io context semantic list");
  if (v43 == 1)
  {
    if (!theArray)
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v32, "Could not construct");
      __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Count = CFArrayGetCount(theArray);
    v34 = v13;
    DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(&v49);
    v15 = 0;
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        if ((v43 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (!theArray)
        {
          v20 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v20, "Could not construct");
          __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::details::at_as<std::string>(v37, theArray, i);
        v17 = v39;
        if (v39 == 1)
        {
          *__p = *v37;
          v41 = v38;
          v37[1] = 0;
          v38 = 0;
          v37[0] = 0;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "");
        }

        if (SHIBYTE(v41) >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        v19 = std::function<DSP_Host_Types::AudioProcessingType ()(char const*)>::operator()(v51, v18);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

        if (v17 && SHIBYTE(v38) < 0)
        {
          operator delete(v37[0]);
        }

        LODWORD(v35) = v19;
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(a1 + 24, v19);
        ++v15;
      }
    }

    if (Count == v15)
    {
      v13 = v34;
    }

    else
    {
      v13 = 0;
    }

    std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](v52);
    std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](&v49);
  }

  std::vector<std::string>::clear[abi:ne200100]((a1 + 520));
  v37[0] = &unk_1F598EC08;
  v37[1] = 0;
  v38 = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&v35, *a2, @"io context stream id list");
  if (v36 == 1)
  {
    if (!v35)
    {
      v33 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v33, "Could not construct");
      __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v21 = CFArrayGetCount(v35);
    if (!v21)
    {
      goto LABEL_59;
    }

    v22 = 0;
    v23 = 0;
    v24 = MEMORY[0x1E69E5408];
    do
    {
      if ((v36 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (!v35)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v27, "Could not construct");
        __cxa_throw(v27, v24, MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::at_as<std::string>(&v49, v35, v22);
      if (v51 == 1)
      {
        *__p = v49;
        v41 = v50;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "");
      }

      v25 = HIBYTE(v41);
      v26 = HIBYTE(v41);
      if (SHIBYTE(v41) < 0)
      {
        v25 = __p[1];
      }

      if (v25)
      {
        std::vector<std::string>::push_back[abi:ne200100](a1 + 520, __p);
        v26 = HIBYTE(v41);
      }

      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      ++v23;
      ++v22;
    }

    while (v21 != v22);
    v13 = v21 == v23 ? v13 : 0;
    if (v36)
    {
LABEL_59:
      if (v35)
      {
        CFRelease(v35);
      }
    }
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v37);
  if (v43 == 1 && theArray)
  {
    CFRelease(theArray);
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v44);
  if (v46 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (v48 == 1 && v47)
  {
    CFRelease(v47);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1DE64B0A8()
{
  std::optional<applesauce::CF::ArrayRef>::~optional(&v0);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v1);
  JUMPOUT(0x1DE64B0E4);
}

void sub_1DE64B0D0()
{
  std::optional<applesauce::CF::ArrayRef>::~optional(&v0);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v1);
  JUMPOUT(0x1DE64B120);
}

void sub_1DE64B108(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE64B150);
}

uint64_t std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void applesauce::CF::details::at_as<std::string>(_BYTE *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) > a3 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) != 0)
  {

    applesauce::CF::convert_as<std::string,0>(a1, ValueAtIndex);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

uint64_t std::function<DSP_Host_Types::AudioProcessingType ()(char const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void DSP_Host_Types::IOContextDescription::add_to(DSP_Host_Types::IOContextDescription *this, __CFDictionary **a2)
{
  if (*(this + 16) == 1 && *(this + 1))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    DSP_Host_Types::IOContextDescription::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(this, &Mutable);
    if ((*(this + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(*a2, *(this + 1), cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {

    DSP_Host_Types::IOContextDescription::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(this, a2);
  }
}

void sub_1DE64B420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::IOContextDescription::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(uint64_t a1, __CFDictionary **a2)
{
  v31[4] = *MEMORY[0x1E69E9840];
  DSP_Host_Types::FormatDescription::init_set((a1 + 48));
  DSP_Dictionariable::DictionarySet::maybe_add_under_key((a1 + 176), a2, a1 + 56);
  DSP_Host_Types::FormatDescription::init_set((a1 + 200));
  DSP_Dictionariable::DictionarySet::maybe_add_under_key((a1 + 328), a2, a1 + 208);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 352, a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 376, a2);
  DSP_Host_Types::AudioChannelConfiguration::add_to((a1 + 400), a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 544, a2);
  v4 = *(a1 + 568);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      if (CFDictionaryGetCount(v5))
      {
        cf[0] = 0;
        DSP_Host_OffloadDictionary::create_into(*(a1 + 568), cf);
      }
    }
  }

  v6 = *(a1 + 584);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      if (CFDictionaryGetCount(v7))
      {
        cf[0] = 0;
        DSP_Host_OffloadDictionary::create_into(*(a1 + 584), cf);
      }
    }
  }

  if (*(a1 + 40))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v26 = Mutable;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    DSP_Dictionariable::DictionariableKvp::DictionariableKvp(cf, __p);
    LOBYTE(v28) = 0;
    v29 = 0;
    cf[0] = &unk_1F5987978;
    DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(v30);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(a1 + 24);
    if (v9 != (a1 + 32))
    {
      do
      {
        v28 = *(v9 + 7);
        v29 = 1;
        DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(__p, cf);
        if ((v25 & 0x80u) == 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        if (v10)
        {
          if ((v25 & 0x80u) == 0)
          {
            v11 = v25;
          }

          else
          {
            v11 = __p[1];
          }

          v12 = CFStringCreateWithBytes(0, v10, v11, 0x8000100u, 0);
          if (!v12)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          if ((v25 & 0x80) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v12 = 0;
          if ((v25 & 0x80) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(__p[0]);
LABEL_23:
        mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(Mutable, v12);
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = v9[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v9[2];
            v15 = *v14 == v9;
            v9 = v14;
          }

          while (!v15);
        }

        v9 = v14;
      }

      while (v14 != (a1 + 32));
    }

    mcp_applesauce::CF::Array_Builder::get_array(__p, Mutable);
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"io context semantic list", __p[0]);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    cf[0] = &unk_1F5987978;
    std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](v31);
    std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](v30);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(cf);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (*(a1 + 520) == *(a1 + 528))
  {
    goto LABEL_56;
  }

  v16 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  cf[0] = v16;
  v17 = *(a1 + 520);
  v18 = *(a1 + 528);
  if (v17 == v18)
  {
    goto LABEL_52;
  }

  do
  {
    v19 = *(v17 + 23);
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (!*(v17 + 23))
      {
        goto LABEL_49;
      }

      v20 = v17;
LABEL_45:
      v20 = CFStringCreateWithBytes(0, v20, v19, 0x8000100u, 0);
      __p[0] = v20;
      if (!v20)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v23, "Could not construct");
        __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v16 = cf[0];
      goto LABEL_47;
    }

    v19 = *(v17 + 8);
    if (!v19)
    {
      goto LABEL_49;
    }

    v20 = *v17;
    if (*v17)
    {
      goto LABEL_45;
    }

    __p[0] = 0;
LABEL_47:
    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v16, v20);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }

LABEL_49:
    v17 += 24;
  }

  while (v17 != v18);
  v16 = cf[0];
LABEL_52:
  mcp_applesauce::CF::Array_Builder::get_array(__p, v16);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"io context stream id list", __p[0]);
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_56:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE64B9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&__p);
  _Unwind_Resume(a1);
}

_BYTE *DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(_BYTE *a1, uint64_t a2)
{
  if ((*(a2 + 20) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v3 = std::function<char const* ()(DSP_Host_Types::AudioProcessingType)>::operator()(*(a2 + 80), *(a2 + 16));

  return std::string::basic_string[abi:ne200100]<0>(a1, v3);
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::~StringifiedKvp(DSP_Dictionariable::DictionariableKvp *a1)
{
  *a1 = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);
}

{
  *a1 = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);
}

uint64_t std::function<char const* ()(DSP_Host_Types::AudioProcessingType)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::load_from(uint64_t a1, CFDictionaryRef *a2)
{
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
  }

  v8[0] = &unk_1F598EC08;
  v8[1] = 0;
  v9 = a2;
  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, *(a1 + 8)))
  {
    applesauce::CF::details::find_at_key<std::string,__CFString const*&>(__p, *v9, *(a1 + 8));
    if (v7 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *(a1 + 16) = std::function<DSP_Host_Types::AudioProcessingType ()(char const*)>::operator()(*(a1 + 48), v3);
    *(a1 + 20) = 1;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v8);
  return v4;
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::add_to(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 20) != 1)
  {
    return;
  }

  v4 = std::function<char const* ()(DSP_Host_Types::AudioProcessingType)>::operator()(*(a1 + 80), *(a1 + 16));
  std::string::basic_string[abi:ne200100]<0>(&bytes, v4);
  v5 = v12;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v5 = numBytes;
    if (!numBytes)
    {
LABEL_11:
      operator delete(bytes);
      return;
    }

    p_bytes = bytes;
    v6 = (a1 + 8);
    if (!bytes)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (!v12)
    {
      return;
    }

    v6 = (a1 + 8);
    p_bytes = &bytes;
  }

  v8 = CFStringCreateWithBytes(0, p_bytes, v5, 0x8000100u, 0);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_8:
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(*a2, *v6, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v12 < 0)
  {
    goto LABEL_11;
  }
}

void sub_1DE64BDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(DSP_Host_Types::ConfigurationChangeRequest *this, const char *a2)
{
  v167[19] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v149);
  if (a2 && *a2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n[hal_dsp] ", 11);
    v4 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, a2, v4);
    v5 = " - debug_log_device_summary\n";
    v6 = 28;
  }

  else
  {
    v5 = "\n[hal_dsp] ConfigurationChangeRequest::debug_log_device_summary\n";
    v6 = 64;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t", 11);
  v7 = "DEACTIVATION\n";
  if (*(this + 41) == 1 && *(this + 40))
  {
    v7 = "ACTIVATION\n";
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \tIO Context Frame Size: ", 34);
  if (*(this + 444) == 1)
  {
    v9 = *(this + 110);
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1E12C1210](&v150, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \tIO Context Channel Count (in/out): ", 46);
  if (*(this + 196) == 1)
  {
    v11 = *(this + 48);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E12C1210](&v150, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " / ", 3);
  if (*(this + 348) == 1)
  {
    v14 = *(this + 86);
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x1E12C1210](v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \tIO Context Sample Rate (in/out): ", 44);
  v16.n128_u64[0] = 0;
  if (*(this + 168) == 1)
  {
    v16.n128_u64[0] = *(this + 20);
  }

  v17 = MEMORY[0x1E12C11E0](&v150, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " / ", 3);
  v19.n128_u64[0] = 0;
  if (*(this + 320) == 1)
  {
    v19.n128_u64[0] = *(this + 39);
  }

  v20 = MEMORY[0x1E12C11E0](v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \tIO Context Processing Type(s): ", 42);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(v158, __p);
  LOBYTE(v159) = 0;
  v160 = 0;
  v158[0] = &unk_1F5987978;
  DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(v161);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v21 = *(this + 12);
  v22 = this + 104;
  if (v21 == this + 104)
  {
    if ((*(this + 636) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v23 = 0;
    do
    {
      v159 = *(v21 + 7);
      v160 = 1;
      v24 = v159 == 7;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, " [ ", 3);
      DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(__p, v158);
      if (__p[23] >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = *__p;
      }

      if (__p[23] >= 0)
      {
        v26 = __p[23];
      }

      else
      {
        v26 = *&__p[8];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v25, v26);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v27 = *(v21 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v21 + 2);
          v29 = *v28 == v21;
          v21 = v28;
        }

        while (!v29);
      }

      v23 |= v24;
      v21 = v28;
    }

    while (v28 != v22);
    if ((*(this + 636) & 1) == 0)
    {
      if (v23)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, " | use case id: n/a", 19);
      }

      goto LABEL_46;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, " | use case id: ", 16);
  if ((*(this + 636) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v30.i32[0] = bswap32(*(this + 158));
  v31 = vzip1_s8(v30, v30);
  v32.i64[0] = 0x1F0000001FLL;
  v32.i64[1] = 0x1F0000001FLL;
  v33.i64[0] = 0x5F0000005FLL;
  v33.i64[1] = 0x5F0000005FLL;
  v34 = vbsl_s8(vmovn_s32(vcgtq_u32(v33, vsraq_n_s32(v32, vshlq_n_s32(vmovl_u16(v31), 0x18uLL), 0x18uLL))), v31, 0x2E002E002E002ELL);
  __p[23] = 4;
  *__p = vuzp1_s8(v34, v34).u32[0];
  __p[4] = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, __p, 4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_46:
  if (*(this + 80))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, " | offload ids: ", 16);
    DSP_Host_OffloadDictionary::get_debug_string(__p, *(this + 80));
    if (__p[23] >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = *__p;
    }

    if (__p[23] >= 0)
    {
      v36 = __p[23];
    }

    else
    {
      v36 = *&__p[8];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v35, v36);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v37 = *v22;
    if (*v22)
    {
      v38 = this + 104;
      do
      {
        v39 = *(v37 + 7);
        v40 = v39 >= 8;
        v41 = v39 < 8;
        if (v40)
        {
          v38 = v37;
        }

        v37 = *&v37[8 * v41];
      }

      while (v37);
      if (v38 != v22 && *(v38 + 7) <= 8u)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, " | offload ids: <null>", 22);
      }
    }
  }

  if (*(this + 82))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, " | generic settings: ", 21);
    DSP_Host_OffloadDictionary::get_debug_string(__p, *(this + 82));
    if (__p[23] >= 0)
    {
      v42 = __p;
    }

    else
    {
      v42 = *__p;
    }

    if (__p[23] >= 0)
    {
      v43 = __p[23];
    }

    else
    {
      v43 = *&__p[8];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v42, v43);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v44 = *v22;
    if (*v22)
    {
      v45 = this + 104;
      do
      {
        v46 = *(v44 + 7);
        v40 = v46 >= 0xA;
        v47 = v46 < 0xA;
        if (v40)
        {
          v45 = v44;
        }

        v44 = *&v44[8 * v47];
      }

      while (v44);
      if (v45 != v22 && *(v45 + 7) <= 0xAu)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, " | content creation recording: <null>", 37);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \tIO Context Client-Supplied Virtual Layout: ", 54);
  DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(__p, this + 472, "");
  if (__p[23] >= 0)
  {
    v48 = __p;
  }

  else
  {
    v48 = *__p;
  }

  if (__p[23] >= 0)
  {
    v49 = __p[23];
  }

  else
  {
    v49 = *&__p[8];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v48, v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n", 1);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v50 = *(this + 75);
  v51 = *(this + 74);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp} \tIO Context Stream Order (", 36);
  v52 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v51) >> 3);
  v53 = MEMORY[0x1E12C1220](&v150, v52);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "): ", 3);
  v54 = 0;
  for (i = 1; i - v52 != 1; ++i)
  {
    v56 = *(this + 74) + v54;
    v57 = *(v56 + 23);
    if (v57 >= 0)
    {
      v58 = *(this + 74) + v54;
    }

    else
    {
      v58 = *v56;
    }

    if (v57 >= 0)
    {
      v59 = *(v56 + 23);
    }

    else
    {
      v59 = *(v56 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v58, v59);
    if (i >= v52)
    {
      v60 = "\n";
    }

    else
    {
      v60 = ", ";
    }

    if (i >= v52)
    {
      v61 = 1;
    }

    else
    {
      v61 = 2;
    }

    v54 += 24;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v60, v61);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t", 11);
  v62 = MEMORY[0x1E12C1220](&v150, (*(this + 85) - *(this + 84)) >> 4);
  v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " devices described...\n", 22);
  v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v64 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v63);
  }

  v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v65)
  {
    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
    v67 = *v66;
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  else
  {
    v67 = *v66;
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v157, v149);
    v68 = (v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v157 : v157.__r_.__value_.__r.__words[0];
    *__p = 136315651;
    *&__p[4] = "DSP_Host_API_MethodTypes.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 1084;
    *&__p[18] = 2081;
    *&__p[20] = v68;
    _os_log_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %{private}s", __p, 0x1Cu);
    if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v157.__r_.__value_.__l.__data_);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=();
  *__p = *MEMORY[0x1E69E54D8];
  v144 = *__p;
  v69 = *(MEMORY[0x1E69E54D8] + 72);
  v70 = *(MEMORY[0x1E69E54D8] + 64);
  *&__p[*(*__p - 24)] = v70;
  v142 = v69;
  v143 = v70;
  *&__p[16] = v69;
  *&__p[24] = MEMORY[0x1E69E5548] + 16;
  if (v166 < 0)
  {
    operator delete(v165);
  }

  *&__p[24] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v164);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12C15F0](v167);
  v141 = this;
  if (*(this + 85) != *(this + 84))
  {
    v71 = 0;
    v72 = 0;
    while (1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \tIndex ", 17);
      v73 = MEMORY[0x1E12C1220](&v150, v72);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ":\n", 2);
      v74 = *(v141 + 84);
      v75 = *(v74 + v71);
      v76 = "";
      if (*(v75 + 137) == 1)
      {
        if (*(v75 + 136))
        {
          v76 = "[hal_dsp] \t\tIs Default: YES\n";
        }

        else
        {
          v76 = "";
        }
      }

      v77 = v74 + v71;
      v78 = *(v74 + v71 + 8);
      v140 = v78;
      if (!v78)
      {
        break;
      }

      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      v79 = *(v77 + 8);
      v80 = *(v74 + v71);
      v137 = v80;
      if (!v79)
      {
        v138 = 1;
        v135 = 0;
        v136 = 0;
        goto LABEL_130;
      }

      v136 = *(v77 + 8);
      atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
      v81 = *(v77 + 8);
      v80 = *(v74 + v71);
      if (v81)
      {
        v138 = 0;
        v139 = 0;
        v135 = v81;
        atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v139 = 0;
        v135 = 0;
        v138 = 1;
      }

LABEL_131:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t\t", 12);
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(__p, *(v74 + v71) + 40);
      if (__p[23] >= 0)
      {
        v82 = __p;
      }

      else
      {
        v82 = *__p;
      }

      if (__p[23] >= 0)
      {
        v83 = __p[23];
      }

      else
      {
        v83 = *&__p[8];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v82, v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, " [", 2);
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(&v157, *(v74 + v71) + 88);
      if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v157;
      }

      else
      {
        v84 = v157.__r_.__value_.__r.__words[0];
      }

      if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v157.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v157.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v84, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "]\n", 2);
      v86 = strlen(v76);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v76, v86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t\tSample Rate: ", 25);
      v87 = *(v74 + v71);
      v88.n128_u64[0] = -1.0;
      if (*(v87 + 240) == 1)
      {
        v88.n128_u64[0] = *(v87 + 232);
      }

      v89 = MEMORY[0x1E12C11E0](&v150, v88);
      v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, " (", 2);
      v91 = *(v74 + v71);
      v92.n128_u64[0] = -1.0;
      if (*(v91 + 272) == 1)
      {
        v92.n128_u64[0] = *(v91 + 264);
      }

      v93 = MEMORY[0x1E12C11E0](v90, v92);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ")\n", 2);
      if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v157.__r_.__value_.__l.__data_);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
      if (*(v75 + 188) == 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], " IN: ", 5);
        v95 = 774778414;
        if (*(v75 + 188) == 1)
        {
          v95 = *(v75 + 184);
        }

        v94.i32[0] = bswap32(v95);
        v96 = vzip1_s8(v94, v94);
        v97.i64[0] = 0x1F0000001FLL;
        v97.i64[1] = 0x1F0000001FLL;
        v98.i64[0] = 0x5F0000005FLL;
        v98.i64[1] = 0x5F0000005FLL;
        v99 = vbsl_s8(vmovn_s32(vcgtq_u32(v98, vsraq_n_s32(v97, vshlq_n_s32(vmovl_u16(v96), 0x18uLL), 0x18uLL))), v96, 0x2E002E002E002ELL);
        *(&v157.__r_.__value_.__s + 23) = 4;
        LODWORD(v157.__r_.__value_.__l.__data_) = vuzp1_s8(v99, v99).u32[0];
        v157.__r_.__value_.__s.__data_[4] = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], &v157, 4);
        if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v157.__r_.__value_.__l.__data_);
        }
      }

      if (*(v75 + 212) == 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], " OUT: ", 6);
        v101 = 774778414;
        if (*(v75 + 212) == 1)
        {
          v101 = *(v75 + 208);
        }

        v100.i32[0] = bswap32(v101);
        v102 = vzip1_s8(v100, v100);
        v103.i64[0] = 0x1F0000001FLL;
        v103.i64[1] = 0x1F0000001FLL;
        v104.i64[0] = 0x5F0000005FLL;
        v104.i64[1] = 0x5F0000005FLL;
        v105 = vbsl_s8(vmovn_s32(vcgtq_u32(v104, vsraq_n_s32(v103, vshlq_n_s32(vmovl_u16(v102), 0x18uLL), 0x18uLL))), v102, 0x2E002E002E002ELL);
        *(&v157.__r_.__value_.__s + 23) = 4;
        LODWORD(v157.__r_.__value_.__l.__data_) = vuzp1_s8(v105, v105).u32[0];
        v157.__r_.__value_.__s.__data_[4] = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], &v157, 4);
        if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v157.__r_.__value_.__l.__data_);
        }
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v147, __p);
      *__p = v144;
      *&__p[*(v144 - 24)] = v143;
      *&__p[16] = v142;
      *&__p[24] = MEMORY[0x1E69E5548] + 16;
      if (v166 < 0)
      {
        operator delete(v165);
      }

      *&__p[24] = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v164);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12C15F0](v167);
      v106 = HIBYTE(v148);
      if (v148 < 0)
      {
        v106 = v147[1];
      }

      if (v106)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t\tData Source Type: ", 30);
        if (v148 >= 0)
        {
          v107 = v147;
        }

        else
        {
          v107 = v147[0];
        }

        if (v148 >= 0)
        {
          v108 = HIBYTE(v148);
        }

        else
        {
          v108 = v147[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v107, v108);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n", 1);
      }

      v109 = "";
      if (*(v80 + 417) == 1)
      {
        if (*(v80 + 416))
        {
          v109 = "encr on";
        }

        else
        {
          v109 = "encr off";
        }
      }

      v110 = std::string::basic_string[abi:ne200100]<0>(__p, v109);
      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147[0]);
      }

      v148 = *&__p[16];
      *v147 = *__p;
      v111 = __p[23];
      if (__p[23] < 0)
      {
        v111 = *&__p[8];
      }

      if (v111)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t\tBT ECNR: ", 21);
        if (v148 >= 0)
        {
          v112 = v147;
        }

        else
        {
          v112 = v147[0];
        }

        if (v148 >= 0)
        {
          v113 = HIBYTE(v148);
        }

        else
        {
          v113 = v147[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v112, v113);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n", 1);
      }

      v114 = *(v74 + v71);
      if (v114[83] != v114[84])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t\tInput Streams: ", 27);
        DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(char const*)const::$_3::operator()(__p, (*(v74 + v71) + 664));
        if (__p[23] >= 0)
        {
          v115 = __p;
        }

        else
        {
          v115 = *__p;
        }

        if (__p[23] >= 0)
        {
          v116 = __p[23];
        }

        else
        {
          v116 = *&__p[8];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v115, v116);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n", 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v114 = *(v74 + v71);
      }

      if (v114[89] != v114[90])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t\tReference Streams: ", 31);
        DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(char const*)const::$_3::operator()(__p, (*(v74 + v71) + 712));
        if (__p[23] >= 0)
        {
          v117 = __p;
        }

        else
        {
          v117 = *__p;
        }

        if (__p[23] >= 0)
        {
          v118 = __p[23];
        }

        else
        {
          v118 = *&__p[8];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v117, v118);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n", 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v114 = *(v74 + v71);
      }

      if (v114[86] != v114[87])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t\tOutput Streams: ", 28);
        DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(char const*)const::$_3::operator()(__p, (*(v74 + v71) + 688));
        if (__p[23] >= 0)
        {
          v119 = __p;
        }

        else
        {
          v119 = *__p;
        }

        if (__p[23] >= 0)
        {
          v120 = __p[23];
        }

        else
        {
          v120 = *&__p[8];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v119, v120);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n", 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "[hal_dsp] \t\tDevice AC Layouts: ", 31);
        if (*(v137 + 688) == *(v137 + 696))
        {
          std::string::basic_string[abi:ne200100]<0>(v145, "N/A");
        }

        else
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
          DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(&v157, (v137 + 424), "pref - ");
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v121 = &v157;
          }

          else
          {
            v121 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v122 = v157.__r_.__value_.__l.__size_;
          }

          v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], v121, v122);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, " | ", 3);
          DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(v155, (v137 + 544), "dflt - ");
          if ((v156 & 0x80u) == 0)
          {
            v124 = v155;
          }

          else
          {
            v124 = v155[0];
          }

          if ((v156 & 0x80u) == 0)
          {
            v125 = v156;
          }

          else
          {
            v125 = v155[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], v124, v125);
          if (v156 < 0)
          {
            operator delete(v155[0]);
          }

          if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v157.__r_.__value_.__l.__data_);
          }

          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v145, __p);
          *__p = v144;
          *&__p[*(v144 - 24)] = v143;
          *&__p[16] = v142;
          *&__p[24] = MEMORY[0x1E69E5548] + 16;
          if (v166 < 0)
          {
            operator delete(v165);
          }

          *&__p[24] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v164);
          std::iostream::~basic_iostream();
          MEMORY[0x1E12C15F0](v167);
        }

        if ((v146 & 0x80u) == 0)
        {
          v126 = v145;
        }

        else
        {
          v126 = v145[0];
        }

        if ((v146 & 0x80u) == 0)
        {
          v127 = v146;
        }

        else
        {
          v127 = v145[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, v126, v127);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v150, "\n", 1);
        if (v146 < 0)
        {
          operator delete(v145[0]);
        }
      }

      v128 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v128 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v110);
      }

      v130 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v129 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v129)
      {
        atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
        v131 = *v130;
        std::__shared_weak_count::__release_shared[abi:ne200100](v129);
      }

      else
      {
        v131 = *v130;
      }

      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v157, v149);
        v132 = &v157;
        if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v132 = v157.__r_.__value_.__r.__words[0];
        }

        *__p = 136315651;
        *&__p[4] = "DSP_Host_API_MethodTypes.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 1171;
        *&__p[18] = 2081;
        *&__p[20] = v132;
        _os_log_impl(&dword_1DE1F9000, v131, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %{private}s", __p, 0x1Cu);
        if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v157.__r_.__value_.__l.__data_);
        }
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=();
      *__p = v144;
      *&__p[*(v144 - 24)] = v143;
      *&__p[16] = v142;
      *&__p[24] = MEMORY[0x1E69E5548] + 16;
      if (v166 < 0)
      {
        operator delete(v165);
      }

      *&__p[24] = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v164);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12C15F0](v167);
      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147[0]);
      }

      if ((v138 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v135);
      }

      if ((v139 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v136);
      }

      if (v140)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v140);
      }

      ++v72;
      v71 += 16;
      if (v72 >= (*(v141 + 85) - *(v141 + 84)) >> 4)
      {
        goto LABEL_270;
      }
    }

    v135 = 0;
    v136 = 0;
    v137 = *(v74 + v71);
    v138 = 1;
    v80 = v137;
LABEL_130:
    v139 = 1;
    goto LABEL_131;
  }

LABEL_270:
  v158[0] = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](&v162);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](v161);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v158);
  v149[0] = v144;
  *(v149 + *(v144 - 24)) = v143;
  v150 = v142;
  v151 = MEMORY[0x1E69E5548] + 16;
  if (v153 < 0)
  {
    operator delete(v152[7].__locale_);
  }

  v151 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v152);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1E12C15F0](&v154);
  v134 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE64D44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::~StringifiedKvp(&STACK[0x208]);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a33);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(DSP_Host_Types::AudioChannelConfiguration *this, const char *a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  if (a3 && *a3)
  {
    v6 = strlen(a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, a3, v6);
  }

  if (a2[44] == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " tag: ", 6);
    DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(char const*)const::$_0::operator()(&__p, *(a2 + 5));
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = v16;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, p_p, v8);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " bit: ", 6);
    if (a2[68] == 1)
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1E12C1210](&v19, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " num: ", 6);
    if (a2[92] == 1)
    {
      v12 = *(a2 + 22);
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1E12C1210](&v19, v12);
  }

  else
  {
    DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(char const*)const::$_0::operator()(&__p, *(a2 + 5));
    if ((v17 & 0x80u) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = v16;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v10, v11);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](this, v18);
  v18[0] = *MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v19 = v13;
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v23);
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(std::string *a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a2;
      a1->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "<missing>");
  }
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(char const*)const::$_3::operator()(_BYTE *a1, uint64_t **a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Count ", 6);
  v4 = MEMORY[0x1E12C1220](&v24, (a2[1] - *a2) >> 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  ", 2);
  v20 = a1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "{", 1);
      if (*(v8 + 188) == 1)
      {
        v9 = *(v8 + 184);
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      v10 = MEMORY[0x1E12C1210](&v24, v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ",", 1);
      v12.n128_u64[0] = -1.0;
      if (*(v8 + 160) == 1)
      {
        v12.n128_u64[0] = *(v8 + 152);
      }

      v13 = MEMORY[0x1E12C11E0](v11, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ",", 1);
      if (*(v8 + 332) == 1)
      {
        std::to_string(&v22, *(v8 + 328));
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v22, "<n/a>");
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v22;
      }

      else
      {
        v14 = v22.__r_.__value_.__r.__words[0];
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v22.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ",", 1);
      if (*(v8 + 304) == 1)
      {
        DSP_Dictionariable::SingleKvp<std::string>::value(&__p, v8 + 264);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "<n/a>");
      }

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
        v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_p, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "}", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_31;
      }

LABEL_32:
      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_36;
      }
    }

    operator delete(v22.__r_.__value_.__l.__data_);
    if (!v7)
    {
      goto LABEL_32;
    }

LABEL_31:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_32;
  }

LABEL_36:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v20, v23);
  v23[0] = *MEMORY[0x1E69E54D8];
  v18 = *(MEMORY[0x1E69E54D8] + 72);
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v24 = v18;
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v28);
}

_BYTE *DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(char const*)const::$_0::operator()(_BYTE *a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0)
  {
    v3 = "<none>";
LABEL_7:

    return std::string::basic_string[abi:ne200100]<0>(a1, v3);
  }

  if (a2 == 0x10000)
  {
    v3 = "'bitmap'";
    goto LABEL_7;
  }

  if (!a2)
  {
    v3 = "'ch desc'";
    goto LABEL_7;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "0x", 2);
  v6 = v12;
  v7 = v12;
  *(&v12 + *(v12 - 24) + 8) |= 0x4000u;
  v8 = (&v12 + *(v7 - 24));
  if (v8[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v8);
    v9 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v17);
    v6 = v12;
  }

  v8[1].__fmtflags_ = 48;
  *(&v14[1].__locale_ + *(v6 - 24)) = 8;
  *(&v12 + *(v6 - 24) + 8) = *(&v12 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x1E12C1210](&v12, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a1, v11);
  v11[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v10;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v16);
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::debug_device_list@<X0>(DSP_Host_Types::ConfigurationChangeRequest *this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v4 = *(this + 84);
  for (i = *(this + 85); v4 != i; v4 += 2)
  {
    v6 = *v4;
    if (*(*v4 + 64) == 1)
    {
      if (*(v6 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 40), *(v6 + 48));
      }

      else
      {
        __p = *(v6 + 40);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "<no id>");
    }

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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, p_p, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "  ", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a2, v12);
  v12[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v13 = v9;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v17);
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::load_from(DSP_Host_Types::ConfigurationChangeRequest *this, CFDictionaryRef *a2)
{
  v4 = DSP_Dictionariable::SingleKvp<BOOL>::load_from(this + 24, a2);
  v5 = v4 & DSP_Dictionariable::SingleKvp<BOOL>::load_from(this + 48, a2);
  v6 = v5 & DSP_Host_Types::IOContextDescription::load_from((this + 72), a2);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 84);
  v13[0] = &unk_1F598EC08;
  v13[1] = 0;
  v13[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"device descriptions");
  if (v12 == 1)
  {
    v7 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v9 = CFArrayGetCount(v7);
      if (Count && v9)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v14, v7, 0);
        operator new();
      }

      if (*(this + 84) == *(this + 85))
      {
        v6 = 0;
      }

      else
      {
        v6 = v6;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v13);
  return v6;
}