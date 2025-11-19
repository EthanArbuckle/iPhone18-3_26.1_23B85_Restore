void sub_1DE5B6C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, void *a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a23);
  if (a25)
  {
    operator delete(a25);
  }

  HALS_ObjectMap::ReleaseObject(v25, v27);
  caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::rt_cleanup::~rt_cleanup(&a9);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContext::RemoveTap(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v3 = a2;
  v4 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 800))(a1, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE5B6E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext::SignalOverloadToClient(std::__shared_weak_count **this)
{
  v2 = AMCP::Utility::configure_syscall_mask_for_normal_priority(this);
  v3 = MEMORY[0x1E69E3C08];
  if (v2)
  {
    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*v3)
    {
      goto LABEL_38;
    }

    v6 = *(v4 + 8);
    v7 = (v2 << 32) | 0x6CALL;
    v8 = caulk::rt_safe_memory_resource::rt_allocate(*v3);
    *(v8 + 16) = 0;
    *(v8 + 20) = 16;
    *(v8 + 24) = "HALS_IOContext.cpp";
    *(v8 + 32) = v7;
    *v8 = &unk_1F597F7D8;
    *(v8 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v6, v8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v9 = ((*this)[8].__shared_weak_owners_)(this);
  if (!v9 || (platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v9), ((*(*platform_behaviors + 104))(platform_behaviors) & 1) != 0))
  {
    v11 = *(this + 20);
    if (!v11)
    {
      v11 = *(this + 4);
    }

    *&v30.mSelector = 0x676C6F626F766572;
    v30.mElement = 0;
    HALS_Object::PropertiesChanged_Sync(this, v11, 0, 1, &v30);
    goto LABEL_31;
  }

  v13 = this[11];
  v14 = this[12];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v13)
  {
    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*v3)
    {
      goto LABEL_38;
    }

    v18 = *(v23 + 8);
    v20 = caulk::rt_safe_memory_resource::rt_allocate(*v3);
    v21 = v20;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 20) = 16;
    *(v20 + 24) = "HALS_IOContext.cpp";
    *(v20 + 32) = 1745;
    v22 = &unk_1F597F830;
LABEL_27:
    *v20 = v22;
    v12 = caulk::concurrent::messenger::enqueue(v18, v21);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    goto LABEL_29;
  }

  v12 = (v13->__vftable[2].~__shared_weak_count)(v13);
  if (v12)
  {
    v15 = v12 == 268451843;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*v3)
    {
      goto LABEL_38;
    }

    v18 = *(v16 + 8);
    v19 = (v12 << 32) | 0x6D7;
    v20 = caulk::rt_safe_memory_resource::rt_allocate(*v3);
    v21 = v20;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 20) = 16;
    *(v20 + 24) = "HALS_IOContext.cpp";
    *(v20 + 32) = v19;
    v22 = &unk_1F597F888;
    goto LABEL_27;
  }

LABEL_29:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_31:
  v24 = AMCP::Utility::configure_syscall_mask_for_realtime_priority(v12);
  if (!v24)
  {
    return;
  }

  v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*v3)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v27 = *(v25 + 8);
  v28 = (v24 << 32) | 0x6E5;
  v29 = caulk::rt_safe_memory_resource::rt_allocate(*v3);
  *(v29 + 16) = 0;
  *(v29 + 20) = 16;
  *(v29 + 24) = "HALS_IOContext.cpp";
  *(v29 + 32) = v28;
  *v29 = &unk_1F597F8E0;
  *(v29 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v27, v29);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_1DE5B7188(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_3,std::tuple<char const*,int,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::SignalOverloadToClient - Failed to set the syscall mask back to realtime priority: %d", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_3,std::tuple<char const*,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_2,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::SignalOverloadToClient: failed to receive the client message for overload notification, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_2,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::SignalOverloadToClient: no client connection", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_0,std::tuple<char const*,int,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::SignalOverloadToClient - Failed to set the syscall mask to normal priority: %d", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_0,std::tuple<char const*,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext::WaitForClientToBeginTransport(HALS_IOContext *this)
{
  v2 = (*(*this + 208))(this);
  if (!v2)
  {
    return 1;
  }

  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v2);
  if ((*(*platform_behaviors + 104))(platform_behaviors))
  {
    return 1;
  }

  v12 = 0;
  do
  {
    v11[0] = this;
    v11[1] = &v12;
    (*(**(this + 13) + 368))(*(this + 13), caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext::WaitForClientToBeginTransport(void)::$_0>, v11);
  }

  while (((*(**(this + 13) + 392))() & 1) == 0 && v12 == 268451843);
  if ((*(**(this + 13) + 392))(*(this + 13)))
  {
    return 1;
  }

  v5 = v12;
  if (!v12)
  {
    return 1;
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v8 = *(v6 + 8);
    v9 = (v5 << 32) | 0x700;
    v10 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v10 + 16) = 0;
    *(v10 + 20) = 16;
    *(v10 + 24) = "HALS_IOContext.cpp";
    *(v10 + 32) = v9;
    *v10 = &unk_1F597F990;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v8, v10);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::WaitForClientToBeginTransport(void)::$_1,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::IOWorkLoop: did not receive the first poke from the client, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::WaitForClientToBeginTransport(void)::$_1,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext::WaitForClientToBeginTransport(void)::$_0>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    *v1[1] = (*(*v3 + 112))(v3);
  }

  else
  {
    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
      return;
    }

    v7 = *(v5 + 8);
    v8 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v8 + 16) = 0;
    *(v8 + 20) = 16;
    *(v8 + 24) = "HALS_IOContext.cpp";
    *(v8 + 32) = 1781;
    *v8 = &unk_1F597F938;
    *(v8 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v7, v8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE5B7B8C(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __clang_call_terminate(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::WaitForClientToBeginTransport(void)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::PerformIO: no client connection", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::WaitForClientToBeginTransport(void)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *HALS_IOContext::CallClientIOProc(HALS_IOContext *this, int a2, int a3, int a4, char a5)
{
  v67 = a2;
  v66 = a5;
  *&v65[1] = 0;
  v8 = (*(**(this + 13) + 48))(*(this + 13), 0);
  *v65 = v8 != 0;
  v9 = (*(*this + 208))(this);
  if (v9 && (platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v9), ((*(*platform_behaviors + 104))(platform_behaviors) & 1) == 0))
  {
    if (!a4)
    {
      v49 = (*(**(this + 13) + 288))(*(this + 13));
      v50 = v49[8];
      v51 = v49[9];
      v52 = v49[16];
      v53 = v49[17];
      kdebug_trace();
      v54 = *(this + 13);
      v55 = *(this + 14);
      block = v54;
      v69 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        v54 = *(this + 13);
      }

      v64 = *(this + 11);
      *&v58 = &block;
      *(&v58 + 1) = &v64;
      *&v59 = &v67;
      *(&v59 + 1) = v65;
      *&v60 = &v65[1];
      *(&v60 + 1) = &v66;
      (*(*v54 + 368))(v54, caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0>, &v58);
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      if ((v65[0] & 1) == 0)
      {
        return *&v65[1];
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 = *(this + 15);
    if (v11 && *(v11 + 32) == 1 && (a4 & 1) == 0)
    {
      v12 = (*(**(this + 13) + 32))(*(this + 13), 1);
      **(this + 16) = v12;
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          (*(**(this + 13) + 72))(*(this + 13), 1, v14, &v58);
          v15 = *(this + 16) + v13 * 4;
          *(v15 + 8) = HIDWORD(v60);
          v16 = DWORD2(v60) * a3;
          if (DWORD2(v59) != 1819304813)
          {
            v16 = v60;
          }

          *(v15 + 12) = v16;
          v17 = (*(**(this + 13) + 312))();
          v18 = *(this + 16);
          *&v18[v13 + 4] = v17;
          ++v14;
          v13 += 4;
        }

        while (v14 < *v18);
      }

      v19 = (*(**(this + 13) + 32))(*(this + 13), 0);
      **(this + 17) = v19;
      if (v19)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          (*(**(this + 13) + 72))(*(this + 13), 0, v21, &v58);
          v22 = *(this + 17) + v20 * 4;
          *(v22 + 8) = HIDWORD(v60);
          v23 = DWORD2(v60) * a3;
          if (DWORD2(v59) != 1819304813)
          {
            v23 = v60;
          }

          *(v22 + 12) = v23;
          v24 = (*(**(this + 13) + 312))();
          v25 = *(this + 17);
          *&v25[v20 + 4] = v24;
          ++v21;
          v20 += 4;
        }

        while (v21 < *v25);
      }

      v26 = (*(**(this + 13) + 288))(*(this + 13));
      v27 = v26[3];
      v29 = *v26;
      v28 = v26[1];
      v60 = v26[2];
      v61 = v27;
      v58 = v29;
      v59 = v28;
      v30 = v26[7];
      v32 = v26[4];
      v31 = v26[5];
      v62[2] = v26[6];
      v62[3] = v30;
      v62[0] = v32;
      v62[1] = v31;
      v33 = v26[11];
      v35 = v26[8];
      v34 = v26[9];
      v63[2] = v26[10];
      v63[3] = v33;
      v63[0] = v35;
      v63[1] = v34;
      kdebug_trace();
      v37 = *(this + 15);
      v36 = *(this + 16);
      v38 = *(this + 17);
      if (*v37)
      {
        (*v37)(*(this + 20), &v58, v36, v62, v38, v63, *(v37 + 8));
      }

      else
      {
        v56 = *(v37 + 24);
        if (v56)
        {
          v57 = *(v37 + 16);
          if (v57)
          {
            block = MEMORY[0x1E69E9820];
            v69 = 0x40000000;
            v70 = ___ZN11HALS_IOProc4CallEjPK14AudioTimeStampPK15AudioBufferListS2_PS3_S2__block_invoke;
            v71 = &__block_descriptor_tmp_18498;
            v72 = v37;
            v73 = &v58;
            v74 = v36;
            v75 = v62;
            v76 = v38;
            v77 = v63;
            dispatch_sync(v57, &block);
          }

          else
          {
            (*(v56 + 16))(v56, &v58, v36, v62, v38, v63);
          }
        }
      }

      kdebug_trace();
      if (!v8)
      {
        return *&v65[1];
      }

      goto LABEL_23;
    }
  }

  if (!v8)
  {
    return *&v65[1];
  }

  (*(**(this + 13) + 256))(*(this + 13));
LABEL_23:
  if ((*(**(this + 13) + 280))(*(this + 13)))
  {
    v39 = *(this + 4);
    v40 = *(this + 27);
    kdebug_trace();
    ++*(this + 27);
    *(this + 28) = 0;
    v41 = *(this + 25);
    if ((*(v41 + 40) & 1) == 0)
    {
      *(v41 + 32) = mach_absolute_time();
      *(v41 + 40) = 1;
    }

    return *&v65[1];
  }

  v42 = *(this + 28) + 1;
  *(this + 27) = 0;
  *(this + 28) = v42;
  v43 = *(this + 25);
  if (*(v43 + 56))
  {
    return *&v65[1];
  }

  Interval::PostEnd((v43 + 32));
  v44 = *(this + 25);
  v45 = *(this + 4);
  v58 = *v44;
  v59 = v44[1];
  v60 = v44[2];
  v61 = v44[3];
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v47 = *(v44 + 8);
    v48 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v48 + 8) = 0;
    *(v48 + 16) = 0;
    *(v48 + 24) = v58;
    *(v48 + 40) = v59;
    *(v48 + 56) = v60;
    *(v48 + 72) = v61;
    *(v48 + 88) = v45;
    *v48 = &unk_1F597F688;
    caulk::concurrent::messenger::enqueue(v47, v48);
    return *&v65[1];
  }

  __break(1u);
  return result;
}

void sub_1DE5B83E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0>(uint64_t a1)
{
  v1 = *a1;
  if (!**(*a1 + 8))
  {
    v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    result = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_29;
    }

    v5 = *(v2 + 8);
    v6 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v6 + 16) = 0;
    *(v6 + 20) = 16;
    *(v6 + 24) = "HALS_IOContext.cpp";
    *(v6 + 32) = 1822;
    *v6 = &unk_1F597F9E8;
    *(v6 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v5, v6);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v7 = *v1[1];
  if (!v7)
  {
    (*(***v1 + 256))(**v1);
    return kdebug_trace();
  }

  v8 = (*(*v7 + 88))(v7, *v1[2], *v1[3], *v1[5]);
  v10 = v9;
  if (v8)
  {
    (*(***v1 + 256))(**v1);
LABEL_27:
    (*(***v1 + 856))(**v1, v10 & 1);
    return kdebug_trace();
  }

  if ((v9 & 0x100) != 0)
  {
    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v20 = *(v18 + 8);
      v21 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v21 + 16) = 0;
      *(v21 + 20) = 2;
      *(v21 + 24) = "HALS_IOContext.cpp";
      *(v21 + 32) = 1834;
      *v21 = &unk_1F597FA40;
      *(v21 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v20, v21);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      *v1[4] = 1;
      goto LABEL_27;
    }
  }

  else
  {
    v11 = HIDWORD(v8);
    if (HIDWORD(v8))
    {
      v12 = *v1[2] == HIDWORD(v8);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_27;
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v15 = *(v13 + 8);
      v16 = *v1[2] + 1;
      v17 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v17 + 16) = 0;
      *(v17 + 20) = 2;
      *(v17 + 24) = "HALS_IOContext.cpp";
      *(v17 + 32) = 1839;
      *(v17 + 36) = v11;
      *(v17 + 40) = v16;
      *v17 = &unk_1F597FA98;
      *(v17 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v15, v17);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      goto LABEL_27;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int,int,int> &)#1},std::tuple<char const*,int,int,int>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::CallClientIOProc: received an out of order message (got %d want: %d)", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int,int,int> &)#1},std::tuple<char const*,int,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#2},std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::CallClientIOProc: client io proc is stopping", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#2},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::PerformIO: no client connection", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContext::GetIssueReporters(HALS_IOContext *this, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4002000000;
  v9 = __Block_byref_object_copy__49_12194;
  v10 = __Block_byref_object_dispose__50_12195;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK14HALS_IOContext17GetIssueReportersEv_block_invoke;
  v5[3] = &unk_1E8677078;
  v5[4] = &v6;
  v5[5] = a2;
  v3 = (*(*a2 + 64))(a2);
  HALB_CommandGate::ExecuteCommand(v3, v5);
  v4 = v7;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this, v4[5], v4[6], (v4[6] - v4[5]) >> 3);
  _Block_object_dispose(&v6, 8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1DE5B8C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__49_12194(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__50_12195(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZNK14HALS_IOContext17GetIssueReportersEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = (*(*(a1 + 32) + 8) + 40);
  if (result != (v1 + 168))
  {
    return std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(result, *(v1 + 168), *(v1 + 176), (*(v1 + 176) - *(v1 + 168)) >> 3);
  }

  return result;
}

uint64_t HALS_IOContext::IncludesDevice(HALS_IOContext *this, int a2)
{
  if ((*(**(this + 13) + 768))(*(this + 13)) == a2)
  {
    v4 = 1;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___ZNK14HALS_IOContext14IncludesDeviceEj_block_invoke;
    v7[3] = &unk_1E86770A0;
    v8 = a2;
    v7[4] = &v9;
    v7[5] = this;
    v5 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v5, v7);
    v4 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return v4 & 1;
}

uint64_t ___ZNK14HALS_IOContext14IncludesDeviceEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = (*(**(v2 + 104) + 32))(*(v2 + 104), 0);
  if (result)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 104) + 72))(*(v2 + 104), 0, v5, v6);
      if (v6[0] == *(a1 + 48))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }

  return result;
}

void DSP_Host_PropertySet::getHostedDSPPropertyInfo(DSP_Host_PropertySet *this, const AudioObjectPropertyAddress *a2, _DWORD *a3)
{
  if (!(*(*&a2->mSelector + 24))(a2, a3))
  {
    goto LABEL_18;
  }

  (*(*&a2->mSelector + 16))(&v11, a2);
  v10 = v14;
  v16 = v14;
  v17 = v15;
  v15 = 0;
  v14 = 0uLL;
  v11 = &unk_1F598E988;
  v18 = &v14;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v11 = &unk_1F598E9C8;
  if (v13 == 1 && cf)
  {
    CFRelease(cf);
  }

  v6 = v10;
  if (v10 != *(&v10 + 1))
  {
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v7 + 44) == 1 ? *(v7 + 40) : 0;
        if (v8 == *a3)
        {
          break;
        }
      }

      v6 += 2;
      if (v6 == *(&v10 + 1))
      {
        goto LABEL_17;
      }
    }
  }

  if (*(&v10 + 1) == v6)
  {
LABEL_17:
    v11 = &v16;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v11);
LABEL_18:
    *this = 0;
    *(this + 1) = 0;
    return;
  }

  *this = *v6;
  v9 = v6[1];
  *(this + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = &v16;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

uint64_t DSP_Host_PropertySet::getHostedDSPPropertyDataType(AudioObjectPropertyAddress *this, AudioObjectPropertyAddress *a2)
{
  DSP_Host_PropertySet::getHostedDSPPropertyInfo(&v4, this, a2);
  if (v4 && *(v4 + 140) == 1)
  {
    v2 = *(v4 + 136);
  }

  else
  {
    v2 = 1;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_meta_stream_property_traits_list(void)::$_0 &&>>()
{
  v25[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1935960434, 1, 0, 0, &AMCP::Property_Traits<1935960434u>::k_valid_scopes, &AMCP::Property_Traits<1935894638u>::k_valid_scopes, 0, 1935960434, 8);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1935894638, 1, 0, 0, &AMCP::Property_Traits<1935894638u>::k_valid_scopes, &AMCP::Property_Traits<1952542835u>::k_valid_scopes, 0, 1935894638, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1952542835, 1, 0, 0, &AMCP::Property_Traits<1952542835u>::k_valid_scopes, &AMCP::Property_Traits<1952805485u>::k_valid_scopes, 0, 1952542835, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1952805485, 1, 0, 0, &AMCP::Property_Traits<1952805485u>::k_valid_scopes, &AMCP::Property_Traits<1936487523u>::k_valid_scopes, 0, 1952805485, 22);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1936487523, 1, 0, 0, &AMCP::Property_Traits<1936487523u>::k_valid_scopes, &AMCP::Property_Traits<1718444404u>::k_valid_scopes, 0, 1819569763, 12);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v23, 1718444404, 1, 0, 1, &AMCP::Property_Traits<1718444404u>::k_valid_scopes, &AMCP::Property_Traits<1718449187u>::k_valid_scopes, 0, 1885762592, 11);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v24, 1718449187, 1, 0, 0, &AMCP::Property_Traits<1718449187u>::k_valid_scopes, &AMCP::Property_Traits<1735554416u>::k_valid_scopes, 0, 1885762657, 1);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v25, 1919246700, 0, 0, 0, &AMCP::Property_Traits<1919246700u>::k_valid_scopes, "N4AMCP3DAL16Ring_Buffer_BaseE", 0, 0, 15);
  operator new();
}

void sub_1DE5B97F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1248;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t HALB_Info::IsStandardClass(HALB_Info *this)
{
  v1 = this;
  result = 0;
  if (v1 <= 1768907635)
  {
    if (v1 <= 1651273578)
    {
      if (v1 > 1634757734)
      {
        if (v1 > 1634957682)
        {
          if (v1 == 1634957683 || v1 == 1635017576)
          {
            return 1;
          }

          v3 = 1650602615;
        }

        else
        {
          if (v1 == 1634757735 || v1 == 1634956402)
          {
            return 1;
          }

          v3 = 1634956642;
        }
      }

      else if (v1 > 1633907819)
      {
        if (v1 == 1633907820 || v1 == 1633969526)
        {
          return 1;
        }

        v3 = 1634689642;
      }

      else
      {
        if (v1 == 1633773415 || v1 == 1633841016)
        {
          return 1;
        }

        v3 = 1633905771;
      }
    }

    else if (v1 <= 1685287522)
    {
      if (v1 > 1668050547)
      {
        if (v1 == 1668050548 || v1 == 1684370292)
        {
          return 1;
        }

        v3 = 1684895092;
      }

      else
      {
        if (v1 == 1651273579 || v1 == 1668047723)
        {
          return 1;
        }

        v3 = 1668049264;
      }
    }

    else if (v1 <= 1701734253)
    {
      if (v1 == 1685287523 || v1 == 1701078390)
      {
        return 1;
      }

      v3 = 1701733488;
    }

    else if (v1 > 1718432369)
    {
      if (v1 == 1718432370)
      {
        return 1;
      }

      v3 = 1751740518;
    }

    else
    {
      if (v1 == 1701734254)
      {
        return 1;
      }

      v3 = 1702259059;
    }

LABEL_70:
    if (v1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (v1 > 1936483187)
  {
    if (v1 <= 1937072757)
    {
      if (v1 > 1936744813)
      {
        if (v1 == 1936744814 || v1 == 1937006960)
        {
          return 1;
        }

        v3 = 1937072749;
      }

      else
      {
        if (v1 == 1936483188 || v1 == 1936483442)
        {
          return 1;
        }

        v3 = 1936682095;
      }
    }

    else if (v1 <= 1953458027)
    {
      if (v1 == 1937072758 || v1 == 1952541794)
      {
        return 1;
      }

      v3 = 1952672883;
    }

    else if (v1 > 1986817380)
    {
      if (v1 == 1999790690)
      {
        return 1;
      }

      v3 = 1986817381;
    }

    else
    {
      if (v1 == 1953458028)
      {
        return 1;
      }

      v3 = 1953656941;
    }

    goto LABEL_70;
  }

  if (v1 <= 1852601963)
  {
    if (v1 > 1818588779)
    {
      if (v1 == 1818588780 || v1 == 1819504226)
      {
        return 1;
      }

      v3 = 1836414053;
    }

    else
    {
      if (v1 == 1768907636 || v1 == 1784767339)
      {
        return 1;
      }

      v3 = 1815241314;
    }

    goto LABEL_70;
  }

  if (v1 <= 1886544236)
  {
    if (v1 == 1852601964 || v1 == 1885888878)
    {
      return 1;
    }

    v3 = 1885893481;
    goto LABEL_70;
  }

  if (v1 > 1936028001)
  {
    if (v1 == 1936028002)
    {
      return 1;
    }

    v3 = 1936028007;
    goto LABEL_70;
  }

  if (v1 != 1886544237)
  {
    v3 = 1919182198;
    goto LABEL_70;
  }

  return 1;
}

uint64_t HALB_Info::GetBaseClass(HALB_Info *this)
{
  if (this <= 1768907635)
  {
    if (this <= 1651273578)
    {
      if (this > 1634757734)
      {
        if (this > 1634957682)
        {
          if (this == 1634957683)
          {
            return 1634689642;
          }

          if (this == 1635017576)
          {
            return 1953458028;
          }

          v2 = 1650602615;
LABEL_74:
          if (this == v2)
          {
            return 1953458028;
          }

          return 1634689642;
        }

        if (this == 1634757735 || this == 1634956402)
        {
          return 1634689642;
        }

        v1 = 1634956642;
LABEL_43:
        if (this == v1)
        {
          return 1633969526;
        }

        return 1634689642;
      }

      if (this > 1633907819)
      {
        if (this == 1634689642)
        {
          return 0;
        }

        return 1634689642;
      }

      if (this != 1633773415)
      {
        return 1634689642;
      }
    }

    else
    {
      if (this <= 1685287522)
      {
        if (this > 1668050547)
        {
          if (this == 1668050548)
          {
            return 1634689642;
          }

          if (this != 1684370292)
          {
            v2 = 1684895092;
            goto LABEL_74;
          }

          return 1936483188;
        }

        if (this != 1651273579)
        {
          if (this != 1668047723)
          {
            v2 = 1668049264;
            goto LABEL_74;
          }

          return 1936483188;
        }

        return 1633907820;
      }

      if (this > 1701734253)
      {
        if (this <= 1718432369)
        {
          if (this == 1701734254)
          {
            return 1634689642;
          }

          v2 = 1702259059;
          goto LABEL_74;
        }

        if (this == 1718432370)
        {
          return 1953458028;
        }

        if (this != 1751740518)
        {
          return 1634689642;
        }

        return 1936483188;
      }

      if (this == 1685287523)
      {
        return 1936483188;
      }

      if (this != 1701078390)
      {
        v1 = 1701733488;
        goto LABEL_43;
      }
    }

    return 1633969526;
  }

  if (this > 1936483187)
  {
    if (this <= 1937072757)
    {
      if (this > 1936744813)
      {
        if (this != 1936744814)
        {
          if (this == 1937006960)
          {
            return 1634689642;
          }

          v2 = 1937072749;
          goto LABEL_74;
        }
      }

      else if (this != 1936483188 && this != 1936483442)
      {
        v2 = 1936682095;
        goto LABEL_74;
      }
    }

    else
    {
      if (this <= 1953458027)
      {
        if (this == 1937072758)
        {
          return 1818588780;
        }

        if (this != 1952541794)
        {
          return 1634689642;
        }

        return 1953458028;
      }

      if (this > 1986817380)
      {
        if (this == 1986817381)
        {
          return 1818588780;
        }

        v2 = 1999790690;
        goto LABEL_74;
      }

      if (this != 1953458028)
      {
        if (this == 1953656941)
        {
          return 1634757735;
        }

        return 1634689642;
      }
    }

    return 1633907820;
  }

  if (this <= 1852601963)
  {
    if (this <= 1818588779)
    {
      if (this == 1768907636)
      {
        return 1634689642;
      }

      if (this != 1784767339)
      {
        v2 = 1815241314;
        goto LABEL_74;
      }

      return 1953458028;
    }

    if (this != 1818588780)
    {
      if (this == 1819504226)
      {
        return 1953458028;
      }

      v2 = 1836414053;
      goto LABEL_74;
    }

    return 1633907820;
  }

  if (this <= 1886544236)
  {
    if (this != 1852601964)
    {
      if (this != 1885888878)
      {
        v2 = 1885893481;
        goto LABEL_74;
      }

      return 1953458028;
    }

    return 1936483188;
  }

  if (this <= 1936028001)
  {
    if (this != 1886544237)
    {
      v1 = 1919182198;
      goto LABEL_43;
    }

    return 1818588780;
  }

  if (this != 1936028002)
  {
    if (this != 1936028007)
    {
      return 1634689642;
    }

    return 1818588780;
  }

  return 1651273579;
}

BOOL HALB_Info::IsSubClass(HALB_Info *this, int a2)
{
  if (a2 > 1768907635)
  {
    if (a2 <= 1936483187)
    {
      if (a2 > 1852601963 || a2 <= 1818588779 || a2 != 1818588780)
      {
        return this == a2;
      }

      v2 = 0;
      if (this <= 1936028006)
      {
        if (this == 1818588780)
        {
          return 1;
        }

        v3 = 1886544237;
        goto LABEL_125;
      }

      if (this == 1936028007 || this == 1986817381)
      {
        return 1;
      }

      v8 = 25206;
      goto LABEL_115;
    }

    if (a2 > 1937072757)
    {
      if (a2 != 1953458028)
      {
        return this == a2;
      }

      goto LABEL_31;
    }

    if (a2 != 1936483188)
    {
      return this == a2;
    }

    v2 = 0;
    if (this <= 1751740517)
    {
      if (this == 1668047723 || this == 1684370292)
      {
        return 1;
      }

      v3 = 1685287523;
      goto LABEL_125;
    }

    if (this == 1751740518)
    {
      return 1;
    }

    v9 = 1936483188;
LABEL_72:
    if (this == v9)
    {
      return 1;
    }

    v3 = 1852601964;
    goto LABEL_125;
  }

  if (a2 > 1651273578)
  {
    if (a2 >= 1668050548 || a2 != 1651273579)
    {
      return this == a2;
    }

    v6 = this == 1651273579;
    v7 = 1936028002;
    return v6 || this == v7;
  }

  if (a2 <= 1634757734)
  {
    if (a2 <= 1633907819)
    {
      return this == a2;
    }

    if (a2 != 1633907820)
    {
      if (a2 != 1633969526)
      {
        if (a2 != 1634689642)
        {
          return this == a2;
        }

        return 1;
      }

      v2 = 0;
      if (this <= 1701078389)
      {
        if (this == 1633773415)
        {
          return 1;
        }

        v3 = 1633969526;
      }

      else
      {
        if (this == 1701078390 || this == 1919182198)
        {
          return 1;
        }

        v3 = 1701733488;
      }

LABEL_125:
      if (this != v3)
      {
        return v2;
      }

      return 1;
    }

    v2 = 0;
    if (this <= 1836414052)
    {
      if (this <= 1685287522)
      {
        if (this <= 1668047722)
        {
          if (this > 1650602614)
          {
            if (this == 1650602615)
            {
              return 1;
            }

            v3 = 1651273579;
          }

          else
          {
            if (this == 1633907820)
            {
              return 1;
            }

            v3 = 1635017576;
          }

          goto LABEL_125;
        }

        if (this <= 1684370291)
        {
          if (this == 1668047723)
          {
            return 1;
          }

          v3 = 1668049264;
          goto LABEL_125;
        }

        v10 = 1684370292;
        goto LABEL_123;
      }

      if (this <= 1784767338)
      {
        if (this > 1718432369)
        {
          if (this == 1718432370)
          {
            return 1;
          }

          v3 = 1751740518;
        }

        else
        {
          if (this == 1685287523)
          {
            return 1;
          }

          v3 = 1702259059;
        }

        goto LABEL_125;
      }

      if (this > 1818588779)
      {
        if (this == 1818588780)
        {
          return 1;
        }

        v3 = 1819504226;
        goto LABEL_125;
      }

LABEL_107:
      if (this == 1784767339)
      {
        return 1;
      }

      v3 = 1815241314;
      goto LABEL_125;
    }

    if (this > 1936483441)
    {
      if (this > 1937072757)
      {
        if (this <= 1953458027)
        {
          if (this == 1937072758)
          {
            return 1;
          }

          v3 = 1952541794;
        }

        else
        {
          if (this == 1953458028 || this == 1999790690)
          {
            return 1;
          }

          v3 = 1986817381;
        }

        goto LABEL_125;
      }

      if (this <= 1936744813)
      {
        if (this == 1936483442)
        {
          return 1;
        }

        v3 = 1936682095;
        goto LABEL_125;
      }

      v11 = 1936744814;
LABEL_113:
      if (this == v11)
      {
        return 1;
      }

      v8 = 25197;
LABEL_115:
      v3 = v8 | 0x73750000;
      goto LABEL_125;
    }

    if (this > 1886544236)
    {
      if (this > 1936028006)
      {
        if (this == 1936028007)
        {
          return 1;
        }

        v3 = 1936483188;
      }

      else
      {
        if (this == 1886544237)
        {
          return 1;
        }

        v3 = 1936028002;
      }

      goto LABEL_125;
    }

    if (this > 1885888877)
    {
LABEL_96:
      if (this == 1885888878)
      {
        return 1;
      }

      v3 = 1885893481;
      goto LABEL_125;
    }

    v9 = 1836414053;
    goto LABEL_72;
  }

  if (a2 <= 1634957682)
  {
    if (a2 != 1634757735)
    {
      return this == a2;
    }

    v6 = this == 1634757735;
    v7 = 1953656941;
    return v6 || this == v7;
  }

  if (a2 == 1650685548)
  {
LABEL_31:
    v2 = 0;
    if (this > 1819504225)
    {
      if (this > 1936682094)
      {
        if (this > 1952541793)
        {
          if (this == 1952541794 || this == 1999790690)
          {
            return 1;
          }

          v3 = 1953458028;
          goto LABEL_125;
        }

        v11 = 1936682095;
        goto LABEL_113;
      }

      if (this <= 1885888877)
      {
        if (this == 1819504226)
        {
          return 1;
        }

        v3 = 1836414053;
        goto LABEL_125;
      }

      goto LABEL_96;
    }

    if (this <= 1702259058)
    {
      if (this <= 1668049263)
      {
        if (this == 1635017576)
        {
          return 1;
        }

        v3 = 1650602615;
        goto LABEL_125;
      }

      v10 = 1668049264;
LABEL_123:
      if (this == v10)
      {
        return 1;
      }

      v3 = 1684895092;
      goto LABEL_125;
    }

    if (this <= 1784767338)
    {
      if (this == 1702259059)
      {
        return 1;
      }

      v3 = 1718432370;
      goto LABEL_125;
    }

    goto LABEL_107;
  }

  return this == a2;
}

uint64_t HALB_Info::GetPropertyDataType(HALB_Info *this, _BYTE *a2, BOOL *a3)
{
  if (a2)
  {
    *a2 = 1;
  }

  v3 = 1969828658;
  if (this > 1836281965)
  {
    if (this > 1936092450)
    {
      if (this > 1937140844)
      {
        if (this > 1969841249)
        {
          if (this <= 1986229349)
          {
            if (this <= 1970170979)
            {
              if ((this - 1969841250) <= 0x12 && ((1 << (this - 98)) & 0x4000F) != 0)
              {
                return v3;
              }

              goto LABEL_457;
            }

            if (this <= 1983013985)
            {
              if (this == 1970170980)
              {
                return v3;
              }

              v4 = 1970496882;
              goto LABEL_438;
            }

            if (this != 1983013986)
            {
              if (this == 1983996971)
              {
                return v3;
              }

              v4 = 1983997011;
              goto LABEL_438;
            }

            return 1718367026;
          }

          if (this <= 1986880098)
          {
            if (this > 1986359922)
            {
              if (this == 1986359923 || this == 1986425722)
              {
                return v3;
              }

              v4 = 1986622324;
              goto LABEL_438;
            }

            if (this == 1986229350)
            {
              return v3;
            }

            v12 = 1986290211;
            goto LABEL_452;
          }

          if (this <= 1987013740)
          {
            if (this == 1986880099 || this == 1986885219)
            {
              return 1718367026;
            }

            v5 = 1987013732;
            goto LABEL_399;
          }

          if (this == 1987013741)
          {
            return 1718367026;
          }

          if (this == 2003136116)
          {
            return v3;
          }

          if (this != 2020373603)
          {
            goto LABEL_457;
          }

          goto LABEL_362;
        }

        if (this > 1953002098)
        {
          if (this <= 1953526562)
          {
            if (this <= 1953325672)
            {
              if (this == 1953002099)
              {
                return v3;
              }

              v4 = 1953002101;
              goto LABEL_438;
            }

            if (this == 1953325673)
            {
              return v3;
            }

            v8 = 1953326883;
            goto LABEL_444;
          }

          if (this <= 1953851747)
          {
            if (this != 1953526563)
            {
              v4 = 1953653102;
              goto LABEL_438;
            }

            return 1634284338;
          }

          if (this != 1953851748)
          {
            if (this == 1969514100)
            {
              return v3;
            }

            v9 = 1969841184;
            goto LABEL_423;
          }

          return 1667658612;
        }

        if (this <= 1952542834)
        {
          if (this > 1952542754)
          {
            if (this != 1952542755)
            {
              v4 = 1952542820;
              goto LABEL_438;
            }

            return 1886155636;
          }

          if (this != 1937140845)
          {
            v4 = 1937142886;
            goto LABEL_438;
          }

          return 1718367026;
        }

        if (this <= 1952805484)
        {
          if (this == 1952542835)
          {
            return v3;
          }

          v17 = 1952740195;
          goto LABEL_386;
        }

        if (this == 1952805485)
        {
          return v3;
        }

        v20 = 1952869748;
        goto LABEL_409;
      }

      if (this > 1936811875)
      {
        if (this <= 1936941933)
        {
          if (this <= 1936876643)
          {
            if ((this - 1936811876) > 0x10)
            {
              goto LABEL_457;
            }

            if (((1 << (this - 100)) & 0x18005) == 0)
            {
              if (this != 1936811890)
              {
                goto LABEL_457;
              }

              return 1634088500;
            }

            return 1718367026;
          }

          if (this > 1936941858)
          {
            if (this != 1936941859)
            {
              v4 = 1936941931;
              goto LABEL_438;
            }

            return 1634284338;
          }

          if (this == 1936876644)
          {
            return 1918990199;
          }

          v18 = 1936879204;
        }

        else
        {
          if (this <= 1937010787)
          {
            if (this > 1937007733)
            {
              if (this == 1937007734)
              {
                return v3;
              }

              if (this != 1937009955)
              {
                v4 = 1937010031;
                goto LABEL_438;
              }

              return 1634284338;
            }

            if (this != 1936941934)
            {
              v8 = 1936945763;
              goto LABEL_444;
            }

            return 1668510834;
          }

          if (this > 1937125987)
          {
            if (this == 1937125988)
            {
              return 1718367026;
            }

            if (this == 1937138723)
            {
              return 1634088500;
            }

            v5 = 1937140836;
            goto LABEL_399;
          }

          if (this == 1937010788)
          {
            return v3;
          }

          v18 = 1937077093;
        }

LABEL_448:
        if (this == v18)
        {
          return 1918990199;
        }

        goto LABEL_457;
      }

      if (this > 1936553331)
      {
        if (this <= 1936745314)
        {
          if (this <= 1936682094)
          {
            if (this == 1936553332)
            {
              return v3;
            }

            v9 = 1936618861;
            goto LABEL_423;
          }

          if (this == 1936682095)
          {
            return v3;
          }

          v22 = 24942;
        }

        else
        {
          if (this > 1936748066)
          {
            if (this == 1936748067)
            {
              return 1634284338;
            }

            if (this == 1936811108)
            {
              return 1918990199;
            }

            v17 = 1936811109;
            goto LABEL_386;
          }

          if (this == 1936745315)
          {
            return 1634284338;
          }

          v22 = 25462;
        }

        v5 = v22 | 0x73700000;
        goto LABEL_399;
      }

      if (this > 1936092531)
      {
        if (this > 1936290670)
        {
          if (this == 1936290671)
          {
            return v3;
          }

          if (this == 1936482681)
          {
            return 1918990199;
          }

          v4 = 1936483696;
          goto LABEL_438;
        }

        if (this != 1936092532)
        {
          v4 = 1936224868;
          goto LABEL_438;
        }

        return 1634951780;
      }

      if (this > 1936092512)
      {
        if (this == 1936092513)
        {
          return 1936876641;
        }

        v19 = 28013;
      }

      else
      {
        if (this == 1936092451)
        {
          return 1935828065;
        }

        v19 = 27967;
      }

      v20 = v19 | 0x73660000;
      goto LABEL_409;
    }

    if (this <= 1886156134)
    {
      if (this <= 1853059699)
      {
        if (this <= 1836479589)
        {
          if (this > 1836462691)
          {
            if (this <= 1836475426)
            {
              if (this == 1836462692)
              {
                return 1718367026;
              }

              v11 = 12915;
            }

            else
            {
              if (this == 1836475427)
              {
                return 1634088500;
              }

              if (this == 1836475490)
              {
                return 1718367026;
              }

              v11 = 29539;
            }

            v5 = v11 | 0x6D760000;
            goto LABEL_399;
          }

          if (this > 1836411235)
          {
            if (this != 1836411236)
            {
              v4 = 1836414053;
              goto LABEL_438;
            }

            return 1667658612;
          }

          if (this != 1836281966)
          {
            v4 = 1836282994;
            goto LABEL_438;
          }

          return 1718367026;
        }

        if (this > 1852400498)
        {
          if (this <= 1852601963)
          {
            if (this == 1852400499)
            {
              return 1667658612;
            }

            v8 = 1852601891;
            goto LABEL_444;
          }

          if (this == 1852601964)
          {
            return 1634284338;
          }

          if (this == 1852793963)
          {
            return v3;
          }

          v12 = 1853059619;
          goto LABEL_452;
        }

        if (this > 1851878763)
        {
          if (this == 1851878764)
          {
            return 1667658612;
          }

          if (this == 1851878770)
          {
            return v3;
          }

          v5 = 1852012899;
          goto LABEL_399;
        }

        if (this == 1836479590)
        {
          return v3;
        }

        v6 = 1851878757;
        goto LABEL_395;
      }

      if (this <= 1885762594)
      {
        if (this <= 1870098019)
        {
          if (this > 1869638758)
          {
            if (this != 1869638759)
            {
              v4 = 1870030194;
              goto LABEL_438;
            }

            return 1667658612;
          }

          if (this != 1853059700)
          {
            v4 = 1869180523;
            goto LABEL_438;
          }

          goto LABEL_362;
        }

        if (this <= 1885497699)
        {
          if (this == 1870098020)
          {
            return 1634284338;
          }

          v18 = 1885434987;
          goto LABEL_448;
        }

        if (this == 1885497700)
        {
          return 1667658612;
        }

        if (this == 1885632035)
        {
          return 1634284338;
        }

        v14 = 29728;
        goto LABEL_408;
      }

      if (this > 1885956451)
      {
        if ((this - 1885958719) <= 0x30 && ((1 << (this - 63)) & 0x1040000000001) != 0)
        {
          return v3;
        }

        if (this == 1885956452)
        {
          return 1667658612;
        }

        v8 = 1886152483;
        goto LABEL_444;
      }

      if (this > 1885762656)
      {
        if (this != 1885762657)
        {
          if (this != 1885762669)
          {
            v4 = 1885954665;
            goto LABEL_438;
          }

          return 1634951780;
        }

        return 1936876641;
      }

      if (this != 1885762595)
      {
        v14 = 29759;
LABEL_408:
        v20 = v14 | 0x70660000;
LABEL_409:
        if (this != v20)
        {
          goto LABEL_457;
        }

        return 1634951780;
      }

      return 1935828065;
    }

    if (this > 1920168546)
    {
      if (this > 1935894893)
      {
        if (this > 1935960433)
        {
          if (this > 1935962741)
          {
            if (this == 1935962742)
            {
              return v3;
            }

            v4 = 1936092276;
            goto LABEL_438;
          }

          if (this == 1935960434)
          {
            return v3;
          }

          v8 = 1935962738;
          goto LABEL_444;
        }

        if (this <= 1935946357)
        {
          if ((this - 1935896178) >= 2)
          {
            v9 = 1935894894;
            goto LABEL_423;
          }

          return 1667658612;
        }

        if (this != 1935946358)
        {
          v4 = 1935959154;
          goto LABEL_438;
        }

        return 1718367026;
      }

      if (this > 1935762291)
      {
        if (this <= 1935892840)
        {
          if (this == 1935762292)
          {
            return v3;
          }

          v4 = 1935763060;
          goto LABEL_438;
        }

        if (this != 1935892841 && this != 1935893353)
        {
          v4 = 1935894638;
          goto LABEL_438;
        }

        return 1634284338;
      }

      if (this <= 1934587251)
      {
        if (this != 1920168547)
        {
          v4 = 1920297316;
          goto LABEL_438;
        }

        return 1667658612;
      }

      if (this == 1934587252)
      {
        return v3;
      }

      if (this == 1934647619)
      {
        return 1918990199;
      }

      v4 = 1934647636;
      goto LABEL_438;
    }

    if (this > 1886548770)
    {
      if (this > 1919251298)
      {
        if (this <= 1919512166)
        {
          if (this == 1919251299)
          {
            return v3;
          }

          v4 = 1919251302;
          goto LABEL_438;
        }

        if (this == 1919512167)
        {
          return v3;
        }

        if (this != 1919773028)
        {
          v18 = 1919839344;
          goto LABEL_448;
        }

        goto LABEL_356;
      }

      if (this > 1902539641)
      {
        if (this == 1902539642)
        {
          return v3;
        }

        if (this == 1919055206)
        {
          return 1918990199;
        }

        v8 = 1919186467;
        goto LABEL_444;
      }

      if (this == 1886548771)
      {
        return 1634284338;
      }

      v13 = 29801;
LABEL_403:
      v4 = v13 | 0x70720000;
      goto LABEL_438;
    }

    if (this <= 1886353255)
    {
      if (this <= 1886221683)
      {
        if (this == 1886156135)
        {
          return v3;
        }

        v4 = 1886218606;
        goto LABEL_438;
      }

      if (this == 1886221684)
      {
        return v3;
      }

      v21 = 28020;
    }

    else
    {
      if (this > 1886415203)
      {
        if (this == 1886415204 || this == 1886545001)
        {
          return v3;
        }

        v13 = 26998;
        goto LABEL_403;
      }

      if (this == 1886353256)
      {
        return v3;
      }

      v21 = 30578;
    }

    v4 = v21 | 0x706F0000;
    goto LABEL_438;
  }

  if (this <= 1685089382)
  {
    if (this > 1667658617)
    {
      if (this <= 1668702577)
      {
        if (this > 1668181612)
        {
          if (this > 1668506479)
          {
            if (this <= 1668575851)
            {
              if (this == 1668506480)
              {
                return v3;
              }

              v8 = 1668510307;
            }

            else
            {
              if (this == 1668575852)
              {
                return 1634284338;
              }

              if (this == 1668639076)
              {
                return 1667658612;
              }

              v8 = 1668641652;
            }

            goto LABEL_444;
          }

          if (this <= 1668506402)
          {
            if (this == 1668181613)
            {
              return 1668510834;
            }

            v4 = 1668311396;
            goto LABEL_438;
          }

          if (this == 1668506403)
          {
            return 1634284338;
          }

          if (this == 1668506475)
          {
            return v3;
          }

          v6 = 1668506478;
LABEL_395:
          if (this != v6)
          {
            goto LABEL_457;
          }

          return 1668510834;
        }

        if (this > 1668047218)
        {
          if (this <= 1668049763)
          {
            if (this == 1668047219)
            {
              return v3;
            }

            v8 = 1668049699;
            goto LABEL_444;
          }

          if (this == 1668049764 || this == 1668049771)
          {
            return v3;
          }

          v6 = 1668181110;
          goto LABEL_395;
        }

        if (this <= 1667788396)
        {
          if (this == 1667658618)
          {
            return v3;
          }

          v6 = 1667787120;
          goto LABEL_395;
        }

        if (this != 1667788397)
        {
          v17 = 1667851118;
          goto LABEL_386;
        }

        return 1668510834;
      }

      if (this <= 1684301173)
      {
        if (this <= 1684107363)
        {
          if (this <= 1682929011)
          {
            if (this == 1668702578)
            {
              return v3;
            }

            v4 = 1682533920;
            goto LABEL_438;
          }

          if (this == 1682929012)
          {
            return v3;
          }

          v24 = 26471;
        }

        else
        {
          if (this > 1684157045)
          {
            if (this != 1684157046)
            {
              if (this == 1684236338)
              {
                return 1634284338;
              }

              v17 = 1684301171;
              goto LABEL_386;
            }

            return 1718367026;
          }

          if (this == 1684107364)
          {
            return v3;
          }

          v24 = 29795;
        }

        v4 = v24 | 0x64610000;
        goto LABEL_438;
      }

      if (this <= 1684500588)
      {
        if (this > 1684434035)
        {
          if (this == 1684434036 || this == 1684498541)
          {
            return v3;
          }

          v4 = 1684498544;
          goto LABEL_438;
        }

        if (this == 1684301174)
        {
          return v3;
        }

        v8 = 1684370979;
        goto LABEL_444;
      }

      if (this > 1684629093)
      {
        if (this == 1684629094 || this == 1684893796)
        {
          return v3;
        }

        v4 = 1685087596;
        goto LABEL_438;
      }

      if (this == 1684500589)
      {
        return 1718367026;
      }

      v18 = 1684500594;
      goto LABEL_448;
    }

    if (this > 1651010920)
    {
      if (this > 1652060005)
      {
        if (this > 1667461732)
        {
          if (this > 1667523954)
          {
            if (this != 1667523955)
            {
              if (this == 1667523958)
              {
                return v3;
              }

              v4 = 1667591277;
              goto LABEL_438;
            }

            return 1886155636;
          }

          if (this == 1667461733)
          {
            return v3;
          }

          v17 = 1667461737;
          goto LABEL_386;
        }

        if (this <= 1667327846)
        {
          if (this == 1652060006)
          {
            return v3;
          }

          v4 = 1652060014;
          goto LABEL_438;
        }

        if (this == 1667327847)
        {
          return v3;
        }

        if (this == 1667330160)
        {
          return 1667658612;
        }

        v6 = 1667460717;
        goto LABEL_395;
      }

      if (this > 1651272547)
      {
        if (this > 1651730809)
        {
          if (this == 1651730810)
          {
            return v3;
          }

          if (this != 1651735075)
          {
            v9 = 1651861860;
            goto LABEL_423;
          }

          return 1634088500;
        }

        if (this != 1651272548)
        {
          v8 = 1651472419;
          goto LABEL_444;
        }

        return 1886155636;
      }

      if (this > 1651074159)
      {
        if (this == 1651074160)
        {
          return v3;
        }

        v18 = 1651272546;
        goto LABEL_448;
      }

      if (this == 1651010921)
      {
        return v3;
      }

      v16 = 30313;
LABEL_253:
      v4 = v16 | 0x62680000;
      goto LABEL_438;
    }

    if (this <= 1634758764)
    {
      if (this <= 1634300530)
      {
        if (this <= 1633970531)
        {
          if (this == 1346585414)
          {
            return v3;
          }

          v17 = 1633906541;
          goto LABEL_386;
        }

        if (this != 1633970532)
        {
          v8 = 1634169456;
          goto LABEL_444;
        }
      }

      else
      {
        if (this > 1634496614)
        {
          if (this == 1634496615)
          {
            return v3;
          }

          if (this != 1634562932)
          {
            v9 = 1634755428;
            goto LABEL_423;
          }

          return 1667658612;
        }

        if (this != 1634300531)
        {
          v8 = 1634429294;
          goto LABEL_444;
        }
      }

LABEL_356:
      v23 = 1634284338;
      return (v23 + 770);
    }

    if (this > 1650682914)
    {
      if (this <= 1650685547)
      {
        if (this != 1650682915)
        {
          v4 = 1650682995;
          goto LABEL_438;
        }

        return 1634284338;
      }

      if (this == 1650685548)
      {
        return v3;
      }

      if (this == 1650751011)
      {
        return 1634284338;
      }

      v16 = 24949;
      goto LABEL_253;
    }

    if (this <= 1634955891)
    {
      if (this == 1634758765)
      {
        return v3;
      }

      v5 = 1634758774;
LABEL_399:
      if (this != v5)
      {
        goto LABEL_457;
      }

      return 1718367026;
    }

    if (this != 1634955892)
    {
      v4 = 1635087471;
      goto LABEL_438;
    }

LABEL_362:
    v23 = 1718367026;
    return (v23 + 770);
  }

  if (this > 1768845171)
  {
    if (this <= 1818850161)
    {
      if (this > 1818453106)
      {
        if (this > 1818456931)
        {
          if (this <= 1818456949)
          {
            if (this != 1818456932)
            {
              v7 = 29550;
LABEL_422:
              v9 = v7 | 0x6C630000;
              goto LABEL_423;
            }
          }

          else if (this != 1818456950)
          {
            if (this == 1818457190)
            {
              return v3;
            }

            v8 = 1818850145;
            goto LABEL_444;
          }
        }

        else
        {
          if (this > 1818454125)
          {
            if (this == 1818454126 || this == 1818455660)
            {
              return 1667658612;
            }

            v7 = 28270;
            goto LABEL_422;
          }

          if (this != 1818453107)
          {
            v5 = 1818453110;
            goto LABEL_399;
          }
        }

        return 1718367026;
      }

      if (this <= 1769174369)
      {
        if (this > 1768973154)
        {
          if (this == 1768973155)
          {
            return v3;
          }

          v4 = 1769173113;
          goto LABEL_438;
        }

        if (this == 1768845172)
        {
          return v3;
        }

        v17 = 1768907636;
        goto LABEL_386;
      }

      if (this <= 1784767338)
      {
        if (this == 1769174370)
        {
          return v3;
        }

        v4 = 1769302372;
        goto LABEL_438;
      }

      if (this == 1784767339)
      {
        return v3;
      }

      if (this == 1818452846)
      {
        return 1667658612;
      }

      v12 = 1818453106;
LABEL_452:
      if (this != v12)
      {
        goto LABEL_457;
      }

      return 1634088500;
    }

    if (this > 1835101041)
    {
      if (this <= 1835295858)
      {
        if (this > 1835295778)
        {
          if (this == 1835295779)
          {
            return 1634284338;
          }

          if (this == 1835295843)
          {
            return 1667658612;
          }

          v6 = 1835295854;
          goto LABEL_395;
        }

        if (this == 1835101042)
        {
          return 1668510834;
        }

        v15 = 29556;
LABEL_413:
        v4 = v15 | 0x6D610000;
        goto LABEL_438;
      }

      if (this > 1835758703)
      {
        if (this == 1835758704)
        {
          return 1886155636;
        }

        if (this == 1835821926)
        {
          return v3;
        }

        v8 = 1836281891;
        goto LABEL_444;
      }

      if (this == 1835295859)
      {
        return 1634284338;
      }

      v4 = 1835628607;
LABEL_438:
      if (this == v4)
      {
        return v3;
      }

      goto LABEL_457;
    }

    if (this <= 1819173228)
    {
      if (this <= 1819107690)
      {
        if (this != 1818850162)
        {
          v4 = 1818850926;
          goto LABEL_438;
        }

        return 1634284338;
      }

      if (this != 1819107691)
      {
        v9 = 1819111268;
        goto LABEL_423;
      }
    }

    else
    {
      if (this > 1819569762)
      {
        if (this == 1819569763)
        {
          return v3;
        }

        if (this == 1819634020)
        {
          return 1886155636;
        }

        v15 = 26990;
        goto LABEL_413;
      }

      if (this != 1819173229)
      {
        v9 = 1819501422;
        goto LABEL_423;
      }
    }

    return 1667658612;
  }

  if (this > 1735354733)
  {
    if (this > 1751740450)
    {
      if (this <= 1752135522)
      {
        if (this > 1751740523)
        {
          if (this != 1751740524)
          {
            if (this != 1752122448)
            {
              v4 = 1752131442;
              goto LABEL_438;
            }

            return 1886155636;
          }

          return 1667658612;
        }

        if (this == 1751740451)
        {
          return 1634284338;
        }

        v8 = 1751740518;
LABEL_444:
        if (this != v8)
        {
          goto LABEL_457;
        }

        return 1634284338;
      }

      if (this <= 1768174191)
      {
        if (this == 1752135523)
        {
          return v3;
        }

        if (this == 1768124270)
        {
          return 1668641388;
        }

        goto LABEL_457;
      }

      if (this == 1768174192 || this == 1768187246)
      {
        return v3;
      }

      v17 = 1768777573;
      goto LABEL_386;
    }

    if (this > 1735750500)
    {
      if (this <= 1751413615)
      {
        if (this != 1735750501)
        {
          v4 = 1751412337;
          goto LABEL_438;
        }

        return 1634284338;
      }

      if (this != 1751413616 && this != 1751474532)
      {
        v4 = 1751737454;
        goto LABEL_438;
      }

      return 1886155636;
    }

    if (this <= 1735551331)
    {
      if (this == 1735354734)
      {
        return v3;
      }

      v4 = 1735356005;
      goto LABEL_438;
    }

    if (this == 1735551332)
    {
      return 1918990199;
    }

    v17 = 1735554416;
LABEL_386:
    if (this != v17)
    {
      goto LABEL_457;
    }

    return 1886155636;
  }

  if (this > 1685287011)
  {
    if (this <= 1701733410)
    {
      if (this > 1685414762)
      {
        if (this != 1685414763)
        {
          if (this == 1685416292)
          {
            return v3;
          }

          v4 = 1698776147;
          goto LABEL_438;
        }

        return 1918990199;
      }

      if (this == 1685287012)
      {
        return v3;
      }

      v10 = 29808;
      goto LABEL_392;
    }

    if (this > 1718839673)
    {
      if (this == 1718839674)
      {
        return v3;
      }

      if (this != 1718843939)
      {
        v9 = 1719105134;
        goto LABEL_423;
      }

      return 1634088500;
    }

    if (this != 1701733411)
    {
      v4 = 1702193508;
      goto LABEL_438;
    }

    return 1634284338;
  }

  if (this > 1685222500)
  {
    if ((this - 1685278561) > 0x11 || ((1 << (this - 97)) & 0x20003) == 0)
    {
      if (this == 1685222501)
      {
        return v3;
      }

      v10 = 18515;
LABEL_392:
      v4 = v10 | 0x64730000;
      goto LABEL_438;
    }

    return 1886155636;
  }

  if ((this - 1685218913) <= 0x13 && ((1 << (this - 97)) & 0x90001) != 0)
  {
    return v3;
  }

  v9 = 1685089383;
LABEL_423:
  if (this == v9)
  {
    return 1667658612;
  }

LABEL_457:
  v3 = 1918990199;
  if (a2)
  {
    *a2 = 0;
  }

  return v3;
}

uint64_t HALB_Info::GetPropertyQualifierDataType(HALB_Info *this, _BYTE *a2, BOOL *a3)
{
  v3 = this;
  if (a2)
  {
    *a2 = 1;
  }

  result = 0;
  if (v3 <= 1836281965)
  {
    if (v3 > 1685218912)
    {
      if (v3 <= 1768845171)
      {
        if (v3 > 1735354733)
        {
          if (v3 <= 1751740450)
          {
            if (v3 <= 1735750500)
            {
              if (v3 > 1735551331)
              {
                if (v3 == 1735551332)
                {
                  return result;
                }

                v5 = 1735554416;
              }

              else
              {
                if (v3 == 1735354734)
                {
                  return result;
                }

                v5 = 1735356005;
              }

              goto LABEL_435;
            }

            if (v3 <= 1751413615)
            {
              if (v3 == 1735750501)
              {
                return result;
              }

              v5 = 1751412337;
              goto LABEL_435;
            }

            if (v3 == 1751413616 || v3 == 1751474532)
            {
              return result;
            }

            v13 = 25710;
          }

          else
          {
            if (v3 > 1752135522)
            {
              if (v3 <= 1768174191)
              {
                if (v3 == 1752135523)
                {
                  return result;
                }

                v5 = 1768124270;
                goto LABEL_435;
              }

              if (v3 != 1768174192)
              {
                if (v3 == 1768187246)
                {
                  return result;
                }

                v5 = 1768777573;
                goto LABEL_435;
              }

              return 1969828658;
            }

            if (v3 > 1751740523)
            {
              if (v3 != 1751740524)
              {
                if (v3 == 1752122448)
                {
                  return result;
                }

                v5 = 1752131442;
                goto LABEL_435;
              }

              return 1969828658;
            }

            if (v3 == 1751740451)
            {
              return result;
            }

            v13 = 28774;
          }

          v5 = v13 | 0x68690000;
          goto LABEL_435;
        }

        if (v3 > 1685288047)
        {
          if (v3 <= 1701733410)
          {
            if (v3 <= 1685416291)
            {
              if (v3 == 1685288048)
              {
                return result;
              }

              v5 = 1685414763;
              goto LABEL_435;
            }

            if (v3 != 1685416292)
            {
              v5 = 1698776147;
              goto LABEL_435;
            }

            return 1667658612;
          }

          if (v3 <= 1718839673)
          {
            if (v3 == 1701733411)
            {
              return result;
            }

            v5 = 1702193508;
          }

          else
          {
            if (v3 == 1718839674 || v3 == 1718843939)
            {
              return result;
            }

            v5 = 1719105134;
          }
        }

        else if (v3 <= 1685276754)
        {
          if ((v3 - 1685218913) <= 0x13 && ((1 << (v3 - 97)) & 0x90001) != 0)
          {
            return result;
          }

          v5 = 1685222501;
        }

        else
        {
          if ((v3 - 1685278561) <= 0x11 && ((1 << (v3 - 97)) & 0x20003) != 0 || v3 == 1685276755)
          {
            return result;
          }

          v5 = 1685287012;
        }

        goto LABEL_435;
      }

      if (v3 <= 1818850161)
      {
        if (v3 <= 1818453106)
        {
          if (v3 <= 1769174369)
          {
            if (v3 > 1768973154)
            {
              if (v3 == 1768973155)
              {
                return result;
              }

              v5 = 1769173113;
            }

            else
            {
              if (v3 == 1768845172)
              {
                return result;
              }

              v5 = 1768907636;
            }

            goto LABEL_435;
          }

          if (v3 <= 1784767338)
          {
            if (v3 == 1769174370)
            {
              return result;
            }

            v9 = 1769302372;
            goto LABEL_347;
          }

          if (v3 == 1784767339 || v3 == 1818452846)
          {
            return result;
          }

          v6 = 25714;
LABEL_333:
          v5 = v6 | 0x6C630000;
          goto LABEL_435;
        }

        if (v3 <= 1818456931)
        {
          if (v3 <= 1818454125)
          {
            if (v3 == 1818453107)
            {
              return 1718367026;
            }

            v6 = 25718;
          }

          else
          {
            if (v3 == 1818454126)
            {
              return result;
            }

            if (v3 == 1818455660)
            {
              return 1969828658;
            }

            v6 = 28270;
          }

          goto LABEL_333;
        }

        if (v3 <= 1818456949)
        {
          if (v3 == 1818456932)
          {
            return 1718367026;
          }

          v9 = 1818456942;
          goto LABEL_347;
        }

        if (v3 == 1818456950 || v3 == 1818457190)
        {
          return result;
        }

        v17 = 29537;
LABEL_256:
        v5 = v17 | 0x6C690000;
        goto LABEL_435;
      }

      if (v3 <= 1835101041)
      {
        if (v3 <= 1819173228)
        {
          if (v3 > 1819107690)
          {
            if (v3 == 1819107691)
            {
              return result;
            }

            v5 = 1819111268;
            goto LABEL_435;
          }

          if (v3 == 1818850162)
          {
            return result;
          }

          v17 = 30318;
          goto LABEL_256;
        }

        if (v3 <= 1819569762)
        {
          if (v3 == 1819173229)
          {
            return result;
          }

          v9 = 1819501422;
          goto LABEL_347;
        }

        if (v3 == 1819569763 || v3 == 1819634020)
        {
          return result;
        }

        v14 = 26990;
LABEL_336:
        v5 = v14 | 0x6D610000;
        goto LABEL_435;
      }

      if (v3 <= 1835295858)
      {
        if (v3 > 1835295778)
        {
          if (v3 == 1835295779)
          {
            return result;
          }

          if (v3 == 1835295843)
          {
            return 1969828658;
          }

          v9 = 1835295854;
          goto LABEL_347;
        }

        if (v3 == 1835101042)
        {
          return result;
        }

        v14 = 29556;
        goto LABEL_336;
      }

      if (v3 <= 1835758703)
      {
        if (v3 == 1835295859)
        {
          return result;
        }

        v5 = 1835628607;
        goto LABEL_435;
      }

      if (v3 != 1835758704)
      {
        if (v3 == 1835821926)
        {
          return 1969828658;
        }

        v18 = 28707;
        goto LABEL_303;
      }

      return 1886155636;
    }

    if (v3 > 1667788396)
    {
      if (v3 <= 1682533919)
      {
        if (v3 <= 1668506402)
        {
          if (v3 <= 1668049763)
          {
            if (v3 > 1668047218)
            {
              if (v3 == 1668047219)
              {
                return result;
              }

              v5 = 1668049699;
            }

            else
            {
              if (v3 == 1667788397)
              {
                return result;
              }

              v5 = 1667851118;
            }

            goto LABEL_435;
          }

          if (v3 > 1668181109)
          {
            if (v3 != 1668181110)
            {
              if (v3 == 1668181613)
              {
                return result;
              }

              v5 = 1668311396;
              goto LABEL_435;
            }

            return 1969828658;
          }

          if (v3 == 1668049764)
          {
            return result;
          }

          v9 = 1668049771;
          goto LABEL_347;
        }

        if (v3 <= 1668510306)
        {
          if (v3 > 1668506477)
          {
            if (v3 != 1668506478)
            {
              v5 = 1668506480;
              goto LABEL_435;
            }

            return 1969828658;
          }

          if (v3 == 1668506403)
          {
            return result;
          }

          v9 = 1668506475;
          goto LABEL_347;
        }

        if (v3 <= 1668639075)
        {
          if (v3 == 1668510307)
          {
            return result;
          }

          v5 = 1668575852;
        }

        else
        {
          if (v3 == 1668639076 || v3 == 1668641652)
          {
            return result;
          }

          v5 = 1668702578;
        }
      }

      else if (v3 <= 1684370978)
      {
        if (v3 <= 1684108386)
        {
          if (v3 > 1684105062)
          {
            if (v3 == 1684105063)
            {
              return result;
            }

            v5 = 1684107364;
            goto LABEL_435;
          }

          if (v3 == 1682533920)
          {
            return 1969828658;
          }

          v9 = 1682929012;
          goto LABEL_347;
        }

        if (v3 <= 1684236337)
        {
          if (v3 == 1684108387)
          {
            return result;
          }

          v16 = 1684157046;
          goto LABEL_385;
        }

        if (v3 == 1684236338 || v3 == 1684301171)
        {
          return result;
        }

        v5 = 1684301174;
      }

      else
      {
        if (v3 <= 1684500593)
        {
          if (v3 <= 1684498540)
          {
            if (v3 == 1684370979)
            {
              return result;
            }

            v5 = 1684434036;
            goto LABEL_435;
          }

          if (v3 == 1684498541 || v3 == 1684498544)
          {
            return 1969828658;
          }

          v9 = 1684500589;
          goto LABEL_347;
        }

        if (v3 <= 1684893795)
        {
          if (v3 != 1684500594)
          {
            v5 = 1684629094;
            goto LABEL_435;
          }

          return 1969828658;
        }

        if (v3 == 1684893796 || v3 == 1685087596)
        {
          return result;
        }

        v5 = 1685089383;
      }

      goto LABEL_435;
    }

    if (v3 > 1651013224)
    {
      if (v3 <= 1652060013)
      {
        if (v3 <= 1651472418)
        {
          if (v3 > 1651272545)
          {
            if (v3 == 1651272546)
            {
              return result;
            }

            v5 = 1651272548;
            goto LABEL_435;
          }

          if (v3 == 1651013225)
          {
            return result;
          }

          v19 = 1651074160;
          goto LABEL_263;
        }

        if (v3 <= 1651735074)
        {
          if (v3 == 1651472419)
          {
            return result;
          }

          v5 = 1651730810;
        }

        else
        {
          if (v3 == 1651735075 || v3 == 1651861860)
          {
            return result;
          }

          v5 = 1652060006;
        }

        goto LABEL_435;
      }

      if (v3 > 1667523954)
      {
        if (v3 > 1667591276)
        {
          if (v3 == 1667591277)
          {
            return result;
          }

          if (v3 == 1667658618)
          {
            return 1969828658;
          }

          v9 = 1667787120;
          goto LABEL_347;
        }

        if (v3 == 1667523955)
        {
          return result;
        }

        v8 = 1667523958;
      }

      else if (v3 <= 1667330159)
      {
        if (v3 == 1652060014)
        {
          return result;
        }

        v8 = 1667327847;
      }

      else
      {
        if (v3 == 1667330160 || v3 == 1667460717)
        {
          return result;
        }

        v8 = 1667461733;
      }

      if (v3 != v8)
      {
        goto LABEL_438;
      }

      return 1886155636;
    }

    if (v3 <= 1634758764)
    {
      if (v3 <= 1634300530)
      {
        if (v3 > 1633970531)
        {
          if (v3 == 1633970532)
          {
            return result;
          }

          v5 = 1634169456;
        }

        else
        {
          if (v3 == 1346585414)
          {
            return result;
          }

          v5 = 1633906541;
        }

        goto LABEL_435;
      }

      if (v3 <= 1634496614)
      {
        if (v3 == 1634300531)
        {
          return result;
        }

        v5 = 1634429294;
        goto LABEL_435;
      }

      if (v3 == 1634496615 || v3 == 1634562932)
      {
        return result;
      }

      v10 = 25444;
LABEL_287:
      v5 = v10 | 0x61700000;
      goto LABEL_435;
    }

    if (v3 <= 1650682994)
    {
      if (v3 <= 1634955891)
      {
        if (v3 == 1634758765)
        {
          return result;
        }

        v10 = 28790;
        goto LABEL_287;
      }

      if (v3 == 1634955892)
      {
        return result;
      }

      v25 = 27683;
    }

    else
    {
      if (v3 > 1650751010)
      {
        if (v3 == 1650751011 || v3 == 1651007861)
        {
          return result;
        }

        v5 = 1651010921;
        goto LABEL_435;
      }

      if (v3 == 1650682995)
      {
        return result;
      }

      v25 = 30316;
    }

    v5 = v25 | 0x62630000;
    goto LABEL_435;
  }

  if (v3 > 1936092478)
  {
    if (v3 > 1952542754)
    {
      if (v3 > 1970170979)
      {
        if (v3 <= 1986425721)
        {
          if (v3 > 1983997010)
          {
            if (v3 > 1986290210)
            {
              if (v3 == 1986290211)
              {
                return result;
              }

              v5 = 1986359923;
            }

            else
            {
              if (v3 == 1983997011)
              {
                return result;
              }

              v5 = 1986229350;
            }

            goto LABEL_435;
          }

          if (v3 <= 1983013985)
          {
            if (v3 == 1970170980)
            {
              return result;
            }

            v5 = 1970496882;
            goto LABEL_435;
          }

          if (v3 != 1983013986)
          {
            v5 = 1983996971;
            goto LABEL_435;
          }

          return 1718367026;
        }

        if (v3 <= 1987013731)
        {
          if (v3 > 1986880098)
          {
            if (v3 == 1986880099)
            {
              return result;
            }

            v5 = 1986885219;
          }

          else
          {
            if (v3 == 1986425722)
            {
              return result;
            }

            v5 = 1986622324;
          }
        }

        else if (v3 <= 2003136115)
        {
          if (v3 == 1987013732)
          {
            return result;
          }

          v5 = 1987013741;
        }

        else
        {
          if (v3 == 2003136116 || v3 == 2003398256)
          {
            return result;
          }

          v5 = 2020373603;
        }
      }

      else if (v3 > 1953526562)
      {
        if (v3 > 1969514099)
        {
          if ((v3 - 1969841250) > 0x12 || ((1 << (v3 - 98)) & 0x4000F) == 0)
          {
            if (v3 == 1969514100)
            {
              return result;
            }

            v5 = 1969841184;
            goto LABEL_435;
          }

          return 1667658612;
        }

        if (v3 == 1953526563 || v3 == 1953653102)
        {
          return result;
        }

        v5 = 1953851748;
      }

      else
      {
        if (v3 > 1952869747)
        {
          if (v3 <= 1953002100)
          {
            if (v3 == 1952869748)
            {
              return result;
            }

            v5 = 1953002099;
            goto LABEL_435;
          }

          if (v3 == 1953002101)
          {
            return result;
          }

          if (v3 != 1953325673)
          {
            v5 = 1953326883;
            goto LABEL_435;
          }

          return 1667658612;
        }

        if (v3 <= 1952542834)
        {
          if (v3 == 1952542755)
          {
            return result;
          }

          v5 = 1952542820;
        }

        else
        {
          if (v3 == 1952542835 || v3 == 1952740195)
          {
            return result;
          }

          v5 = 1952805485;
        }
      }
    }

    else if (v3 <= 1936811875)
    {
      if (v3 > 1936618860)
      {
        if (v3 > 1936745333)
        {
          if ((v3 - 1936811108) < 2 || v3 == 1936745334)
          {
            return result;
          }

          v21 = 28195;
        }

        else
        {
          if (v3 <= 1936744813)
          {
            if (v3 == 1936618861)
            {
              return result;
            }

            v5 = 1936682095;
            goto LABEL_435;
          }

          if (v3 == 1936744814)
          {
            return result;
          }

          v21 = 25443;
        }

        v5 = v21 | 0x73700000;
        goto LABEL_435;
      }

      if (v3 <= 1936224867)
      {
        if (v3 > 1936092524)
        {
          if (v3 == 1936092525)
          {
            return 1634951780;
          }

          v23 = 28020;
        }

        else
        {
          if (v3 == 1936092479)
          {
            return result;
          }

          v23 = 28001;
        }

        goto LABEL_426;
      }

      if (v3 <= 1936482680)
      {
        if (v3 != 1936224868)
        {
          v5 = 1936290671;
          goto LABEL_435;
        }

        return 1969828658;
      }

      if (v3 == 1936482681 || v3 == 1936483696)
      {
        return result;
      }

      v5 = 1936553332;
    }

    else
    {
      if (v3 <= 1936945762)
      {
        if (v3 <= 1936876643)
        {
          v11 = v3 - 1936811876;
          if (v11 > 0x10)
          {
            goto LABEL_438;
          }

          v12 = 1 << v11;
          if ((v12 & 0xC001) != 0)
          {
            return result;
          }

          if ((v12 & 0x10004) == 0)
          {
            goto LABEL_438;
          }

          return 1718367026;
        }

        if (v3 <= 1936941858)
        {
          if (v3 == 1936876644)
          {
            return result;
          }

          v5 = 1936879204;
          goto LABEL_435;
        }

        if (v3 == 1936941859)
        {
          return result;
        }

        if (v3 == 1936941931)
        {
          return 1969828658;
        }

        v9 = 1936941934;
        goto LABEL_347;
      }

      if (v3 > 1937077092)
      {
        if (v3 > 1937140835)
        {
          if (v3 == 1937140836 || v3 == 1937140845)
          {
            return result;
          }

          v7 = 29798;
        }

        else
        {
          if (v3 == 1937077093)
          {
            return result;
          }

          if (v3 == 1937125988)
          {
            return 1718367026;
          }

          v7 = 25635;
        }

        v5 = v7 | 0x73760000;
        goto LABEL_435;
      }

      if (v3 <= 1937009954)
      {
        if (v3 == 1936945763)
        {
          return result;
        }

        v20 = 25718;
      }

      else
      {
        if (v3 == 1937009955 || v3 == 1937010031)
        {
          return result;
        }

        v20 = 28772;
      }

      v5 = v20 | 0x73740000;
    }

LABEL_435:
    if (v3 == v5)
    {
      return result;
    }

    goto LABEL_438;
  }

  if (v3 > 1886156134)
  {
    if (v3 <= 1934587251)
    {
      if (v3 > 1886548770)
      {
        if (v3 <= 1919512166)
        {
          if (v3 > 1902539641)
          {
            if (v3 == 1902539642 || v3 == 1919055206)
            {
              return result;
            }

            v5 = 1919186467;
            goto LABEL_435;
          }

          if (v3 == 1886548771)
          {
            return result;
          }

          v15 = 29801;
LABEL_370:
          v5 = v15 | 0x70720000;
          goto LABEL_435;
        }

        if (v3 <= 1919839343)
        {
          if (v3 == 1919512167)
          {
            return result;
          }

          v5 = 1919773028;
          goto LABEL_435;
        }

        if (v3 == 1919839344 || v3 == 1920168547)
        {
          return result;
        }

        v19 = 1920297316;
LABEL_263:
        if (v3 != v19)
        {
          goto LABEL_438;
        }

        return 1667658612;
      }

      if (v3 > 1886353255)
      {
        if (v3 > 1886415203)
        {
          if (v3 == 1886415204 || v3 == 1886545001)
          {
            return result;
          }

          v15 = 26998;
          goto LABEL_370;
        }

        if (v3 == 1886353256)
        {
          return result;
        }

        v24 = 30578;
LABEL_401:
        v5 = v24 | 0x706F0000;
        goto LABEL_435;
      }

      if (v3 > 1886221683)
      {
        if (v3 == 1886221684)
        {
          return result;
        }

        v24 = 28020;
        goto LABEL_401;
      }

      if (v3 == 1886156135)
      {
        return result;
      }

      v9 = 1886218606;
LABEL_347:
      if (v3 == v9)
      {
        return 1969828658;
      }

      goto LABEL_438;
    }

    if (v3 <= 1935896177)
    {
      if (v3 <= 1935763059)
      {
        if (v3 > 1934647635)
        {
          if (v3 == 1934647636)
          {
            return result;
          }

          v5 = 1935762292;
          goto LABEL_435;
        }

        if (v3 != 1934587252)
        {
          v5 = 1934647619;
          goto LABEL_435;
        }

        return 1969828658;
      }

      if (v3 <= 1935893352)
      {
        if (v3 == 1935763060)
        {
          return result;
        }

        v5 = 1935892841;
        goto LABEL_435;
      }

      if (v3 == 1935893353 || v3 == 1935894638)
      {
        return result;
      }

      v9 = 1935894894;
      goto LABEL_347;
    }

    if (v3 <= 1935962737)
    {
      if (v3 <= 1935959153)
      {
        if ((v3 - 1935896178) < 2)
        {
          return 1969828658;
        }

        v16 = 1935946358;
LABEL_385:
        if (v3 == v16)
        {
          return 1718367026;
        }

LABEL_438:
        result = 0;
        if (a2)
        {
          *a2 = 0;
        }

        return result;
      }

      if (v3 == 1935959154)
      {
        return result;
      }

      v22 = 26994;
LABEL_367:
      v5 = v22 | 0x73640000;
      goto LABEL_435;
    }

    if (v3 <= 1936092275)
    {
      if (v3 == 1935962738)
      {
        return result;
      }

      v22 = 29302;
      goto LABEL_367;
    }

    if (v3 == 1936092276)
    {
      return result;
    }

    v23 = 27939;
LABEL_426:
    v5 = v23 | 0x73660000;
    goto LABEL_435;
  }

  if (v3 > 1853059699)
  {
    if (v3 <= 1885762591)
    {
      if (v3 <= 1870030193)
      {
        if (v3 > 1869638758)
        {
          if (v3 == 1869638759)
          {
            return result;
          }

          v5 = 1869838183;
        }

        else
        {
          if (v3 == 1853059700)
          {
            return result;
          }

          v5 = 1869180523;
        }

        goto LABEL_435;
      }

      if (v3 > 1885497699)
      {
        if (v3 == 1885497700)
        {
          return result;
        }

        v5 = 1885632035;
        goto LABEL_435;
      }

      if (v3 == 1870030194)
      {
        return result;
      }

      if (v3 == 1870098020)
      {
        return 1634284338;
      }

      goto LABEL_438;
    }

    if (v3 > 1885954664)
    {
      if (v3 > 1885958718)
      {
        if ((v3 - 1885958719) <= 0x30 && ((1 << (v3 - 63)) & 0x1040000000001) != 0)
        {
          return result;
        }

        v5 = 1886152483;
        goto LABEL_435;
      }

      if (v3 != 1885954665)
      {
        v5 = 1885956452;
        goto LABEL_435;
      }

      return 1667658612;
    }

    if ((v3 - 1885762592) <= 0x1F && ((1 << (v3 - 32)) & 0x80000009) != 0 || v3 == 1885762657)
    {
      return result;
    }

    if (v3 != 1885762669)
    {
      goto LABEL_438;
    }

    return 1634951780;
  }

  if (v3 <= 1836479589)
  {
    if (v3 > 1836462691)
    {
      if (v3 > 1836475426)
      {
        if (v3 == 1836475427 || v3 == 1836475490)
        {
          return result;
        }

        v5 = 1836479331;
        goto LABEL_435;
      }

      if (v3 != 1836462692)
      {
        v16 = 1836462707;
        goto LABEL_385;
      }

      return 1718367026;
    }

    if (v3 > 1836411235)
    {
      if (v3 == 1836411236)
      {
        return result;
      }

      v5 = 1836414053;
      goto LABEL_435;
    }

    if (v3 == 1836281966)
    {
      return result;
    }

    v18 = 29810;
LABEL_303:
    v5 = v18 | 0x6D730000;
    goto LABEL_435;
  }

  if (v3 > 1852400498)
  {
    if (v3 > 1852601963)
    {
      if (v3 == 1852601964 || v3 == 1852793963)
      {
        return result;
      }

      v5 = 1853059619;
      goto LABEL_435;
    }

    if (v3 != 1852400499)
    {
      v5 = 1852601891;
      goto LABEL_435;
    }

    return 1969828658;
  }

  if (((v3 - 1851878757) > 0xD || ((1 << (v3 - 101)) & 0x2081) == 0) && v3 != 1836479590)
  {
    v5 = 1852012899;
    goto LABEL_435;
  }

  return result;
}

uint64_t HALB_Info::IsAVTProperty(HALB_Info *this)
{
  v1 = this;
  result = 0;
  if (v1 > 1819501421)
  {
    if (v1 > 1935896177)
    {
      if ((v1 - 1935896178) < 2 || v1 == 1936941934)
      {
        return 1;
      }

      v3 = 1936941931;
    }

    else if (v1 > 1835295853)
    {
      if (v1 == 1835295854)
      {
        return 1;
      }

      v3 = 1885954665;
    }

    else
    {
      if (v1 == 1819501422)
      {
        return 1;
      }

      v3 = 1835295843;
    }

LABEL_22:
    if (v1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (v1 > 1685416291)
  {
    if (v1 > 1818455659)
    {
      if (v1 == 1818455660)
      {
        return 1;
      }

      v3 = 1818456942;
    }

    else
    {
      if (v1 == 1685416292)
      {
        return 1;
      }

      v3 = 1751740524;
    }

    goto LABEL_22;
  }

  if (v1 > 1668506474)
  {
    if (v1 == 1668506475)
    {
      return 1;
    }

    v3 = 1668506478;
    goto LABEL_22;
  }

  if (v1 != 1667787120)
  {
    v3 = 1668181110;
    goto LABEL_22;
  }

  return 1;
}

uint64_t HALB_Info::PropertyRequiresHogMode(HALB_Info *this, const AudioObjectPropertyAddress *a2)
{
  v2 = this;
  result = 1;
  if (v2 > 1735750500)
  {
    if (v2 <= 1818850161)
    {
      if (v2 == 1735750501)
      {
        return 0;
      }

      v4 = 1818850145;
    }

    else
    {
      if (v2 == 1818850162 || v2 == 1937077093)
      {
        return 0;
      }

      v4 = 1919512167;
    }

    goto LABEL_14;
  }

  if (v2 <= 1634758773)
  {
    if (v2 == 1634755428)
    {
      return 0;
    }

    v4 = 1634758765;
LABEL_14:
    if (v2 != v4)
    {
      return result;
    }

    return 0;
  }

  if (v2 != 1634758774 && v2 != 1651730810)
  {
    v4 = 1718839674;
    goto LABEL_14;
  }

  return 0;
}

uint64_t HALB_Info::IsIOContextProperty(HALB_Info *this, const AudioObjectPropertyAddress *a2)
{
  v2 = this;
  result = 0;
  if (v2 <= 1852012898)
  {
    if (v2 <= 1684108386)
    {
      if (v2 <= 1634955891)
      {
        if (v2 == 1633970532)
        {
          return 1;
        }

        v4 = 1634300531;
      }

      else
      {
        if (v2 == 1634955892 || v2 == 1651730810)
        {
          return 1;
        }

        v4 = 1651735075;
      }
    }

    else if (v2 > 1735354733)
    {
      if (v2 == 1735354734 || v2 == 1735750501)
      {
        return 1;
      }

      v4 = 1752135523;
    }

    else
    {
      if (v2 == 1684108387 || v2 == 1718839674)
      {
        return 1;
      }

      v4 = 1718843939;
    }

LABEL_31:
    if (v2 != v4)
    {
      return result;
    }

    return 1;
  }

  if (v2 > 1935959153)
  {
    if (v2 > 1937077092)
    {
      if (v2 == 1937077093 || v2 == 2003398256)
      {
        return 1;
      }

      v4 = 1986425722;
    }

    else
    {
      if (v2 == 1935959154 || v2 == 1936482681)
      {
        return 1;
      }

      v4 = 1937010788;
    }

    goto LABEL_31;
  }

  if (v2 > 1902539641)
  {
    if (v2 == 1902539642 || v2 == 1919773028)
    {
      return 1;
    }

    v4 = 1935763060;
    goto LABEL_31;
  }

  if (v2 != 1852012899 && v2 != 1869838183)
  {
    v4 = 1870030194;
    goto LABEL_31;
  }

  return 1;
}

uint64_t HALB_Info::IsReallyGlobalDeviceProperty(HALB_Info *this, const AudioObjectPropertyAddress *a2)
{
  v2 = this;
  result = 0;
  if (v2 <= 1768777572)
  {
    if (v2 <= 1684301170)
    {
      if (v2 > 1667330159)
      {
        if (v2 <= 1668049763)
        {
          if (v2 > 1667658617)
          {
            if (v2 == 1667658618)
            {
              return 1;
            }

            v4 = 1668047219;
          }

          else
          {
            if (v2 == 1667330160)
            {
              return 1;
            }

            v4 = 1667523955;
          }
        }

        else if (v2 <= 1668639075)
        {
          if (v2 == 1668049764)
          {
            return 1;
          }

          v4 = 1668575852;
        }

        else
        {
          if (v2 == 1668639076 || v2 == 1684107364)
          {
            return 1;
          }

          v4 = 1684108387;
        }
      }

      else if (v2 <= 1634429293)
      {
        if (v2 > 1634169455)
        {
          if (v2 == 1634169456)
          {
            return 1;
          }

          v4 = 1634300531;
        }

        else
        {
          if (v2 == 1633906541)
          {
            return 1;
          }

          v4 = 1633970532;
        }
      }

      else if (v2 <= 1634955891)
      {
        if (v2 == 1634429294)
        {
          return 1;
        }

        v4 = 1634496615;
      }

      else
      {
        if (v2 == 1634955892 || v2 == 1635087471)
        {
          return 1;
        }

        v4 = 1650682995;
      }
    }

    else if (v2 <= 1718843938)
    {
      if (v2 <= 1685089382)
      {
        if (v2 > 1684893795)
        {
          if (v2 == 1684893796)
          {
            return 1;
          }

          v4 = 1685087596;
        }

        else
        {
          if (v2 == 1684301171)
          {
            return 1;
          }

          v4 = 1684629094;
        }
      }

      else if (v2 <= 1685276754)
      {
        if (v2 == 1685089383)
        {
          return 1;
        }

        v4 = 1685222501;
      }

      else
      {
        if (v2 == 1685276755 || v2 == 1685287012)
        {
          return 1;
        }

        v4 = 1718839674;
      }
    }

    else if (v2 > 1751474531)
    {
      if (v2 <= 1752135522)
      {
        if (v2 == 1751474532)
        {
          return 1;
        }

        v4 = 1751737454;
      }

      else
      {
        if (v2 == 1752135523 || v2 == 1768124270)
        {
          return 1;
        }

        v4 = 1768187246;
      }
    }

    else if (v2 <= 1735354733)
    {
      if (v2 == 1718843939)
      {
        return 1;
      }

      v4 = 1719105134;
    }

    else
    {
      if (v2 == 1735354734 || v2 == 1735356005)
      {
        return 1;
      }

      v4 = 1751412337;
    }

LABEL_107:
    if (v2 != v4)
    {
      return result;
    }

    return 1;
  }

  if (v2 > 1886156134)
  {
    if (v2 <= 1936618860)
    {
      if (v2 <= 1919251298)
      {
        if (v2 > 1886546293)
        {
          if (v2 == 1886546294)
          {
            return 1;
          }

          v4 = 1902539642;
        }

        else
        {
          if (v2 == 1886156135)
          {
            return 1;
          }

          v4 = 1886353266;
        }
      }

      else if (v2 <= 1919773027)
      {
        if (v2 == 1919251299)
        {
          return 1;
        }

        v4 = 1919251302;
      }

      else
      {
        if (v2 == 1919773028 || v2 == 1920168547)
        {
          return 1;
        }

        v4 = 1935959154;
      }
    }

    else if (v2 > 1953653101)
    {
      if (v2 <= 1986425721)
      {
        if (v2 == 1953653102)
        {
          return 1;
        }

        v4 = 1969841184;
      }

      else
      {
        if (v2 == 1986425722 || v2 == 2003398256)
        {
          return 1;
        }

        v4 = 2003136116;
      }
    }

    else if (v2 <= 1937010787)
    {
      if (v2 == 1936618861)
      {
        return 1;
      }

      v4 = 1937007734;
    }

    else
    {
      if (v2 == 1937010788 || v2 == 1937077093)
      {
        return 1;
      }

      v4 = 1952542820;
    }

    goto LABEL_107;
  }

  if (v2 <= 1851878763)
  {
    if (v2 <= 1819111267)
    {
      if (v2 > 1818850925)
      {
        if (v2 == 1818850926)
        {
          return 1;
        }

        v4 = 1819107691;
      }

      else
      {
        if (v2 == 1768777573)
        {
          return 1;
        }

        v4 = 1768907636;
      }
    }

    else if (v2 <= 1819569762)
    {
      if (v2 == 1819111268)
      {
        return 1;
      }

      v4 = 1819173229;
    }

    else
    {
      if (v2 == 1819569763 || v2 == 1819634020)
      {
        return 1;
      }

      v4 = 1836411236;
    }

    goto LABEL_107;
  }

  if (v2 > 1869180522)
  {
    if (v2 <= 1869838182)
    {
      if (v2 == 1869180523)
      {
        return 1;
      }

      v4 = 1869638759;
    }

    else
    {
      if (v2 == 1869838183 || v2 == 1870030194)
      {
        return 1;
      }

      v4 = 1870098020;
    }

    goto LABEL_107;
  }

  if (v2 <= 1852012898)
  {
    if (v2 == 1851878764)
    {
      return 1;
    }

    v4 = 1851878770;
    goto LABEL_107;
  }

  if (v2 != 1852012899 && v2 != 1853059619)
  {
    v4 = 1853059700;
    goto LABEL_107;
  }

  return 1;
}

uint64_t HALB_Info::IsLocalizedStringProperty(HALB_Info *this, const AudioObjectPropertyAddress *a2)
{
  v2 = this;
  result = 0;
  if (v2 > 1818456941)
  {
    if (v2 <= 1835101041)
    {
      if (v2 > 1819111267)
      {
        if (v2 != 1819111268 && v2 != 1819173229)
        {
          v5 = 1819501422;
          goto LABEL_31;
        }

        return 1;
      }

      if (v2 == 1818456942)
      {
        return 1;
      }

      v5 = 1819107691;
    }

    else
    {
      if (v2 <= 1851878756)
      {
        if (v2 != 1835101042 && v2 != 1835295843)
        {
          v5 = 1835295854;
          goto LABEL_31;
        }

        return 1;
      }

      if (v2 == 1851878757 || v2 == 1936941934)
      {
        return 1;
      }

      v5 = 1935894894;
    }

LABEL_31:
    if (v2 != v5)
    {
      return result;
    }

    return 1;
  }

  if (v2 <= 1668506477)
  {
    if (v2 > 1667788396)
    {
      if (v2 != 1667788397 && v2 != 1668181110)
      {
        v5 = 1668181613;
        goto LABEL_31;
      }

      return 1;
    }

    if (v2 == 1667460717)
    {
      return 1;
    }

    v5 = 1667787120;
    goto LABEL_31;
  }

  if (v2 > 1818454125)
  {
    if (v2 != 1818454126 && v2 != 1818455660)
    {
      v4 = 28270;
      goto LABEL_23;
    }
  }

  else if (v2 != 1668506478 && v2 != 1751740524)
  {
    v4 = 25454;
LABEL_23:
    v5 = v4 | 0x6C630000;
    goto LABEL_31;
  }

  return 1;
}

int *HALB_Info::TranslateDeviceAddressToControlAddress(int *this, const AudioObjectPropertyAddress *a2, unsigned int *a3, unsigned int *a4, AudioObjectPropertyAddress *a5)
{
  a2->mSelector = 0;
  *a3 = this[1];
  *(a4 + 1) = 1735159650;
  v5 = *this;
  if (*this <= 1852601890)
  {
    if (v5 > 1818455659)
    {
      if (v5 > 1836281890)
      {
        if (v5 <= 1836462706)
        {
          if (v5 > 1836414052)
          {
            v6 = 1836414053;
            if (v5 != 1836414053)
            {
              if (v5 != 1836462692)
              {
                return this;
              }

              a2->mSelector = 1986817381;
              *a3 = 1886679669;
              goto LABEL_149;
            }

            goto LABEL_117;
          }

          if (v5 != 1836281891)
          {
            if (v5 != 1836281966)
            {
              return this;
            }

            a2->mSelector = 1936744814;
            *a3 = 1886679669;
            v7 = 1936745334;
            goto LABEL_119;
          }

          a2->mSelector = 1936744814;
          *a3 = 1886679669;
          goto LABEL_171;
        }

        if (v5 > 1836475489)
        {
          if (v5 != 1836475490)
          {
            if (v5 != 1836479331)
            {
              if (v5 != 1836479590)
              {
                return this;
              }

              a2->mSelector = 1986817381;
              *a3 = 1886679669;
              goto LABEL_158;
            }

            a2->mSelector = 1986817381;
            *a3 = 1886679669;
LABEL_169:
            v7 = 1818456950;
            goto LABEL_119;
          }

          a2->mSelector = 1986817381;
          *a3 = 1886679669;
LABEL_152:
          v7 = 1818453110;
          goto LABEL_119;
        }

        if (v5 == 1836462707)
        {
          a2->mSelector = 1986817381;
          *a3 = 1886679669;
LABEL_178:
          v7 = 1818453107;
          goto LABEL_119;
        }

        if (v5 == 1836475427)
        {
          v7 = 1818453106;
          v11 = 1986817381;
          goto LABEL_146;
        }

        return this;
      }

      if (v5 <= 1835295778)
      {
        if (v5 > 1819501421)
        {
          if (v5 != 1819501422)
          {
            v6 = 1819504226;
            goto LABEL_116;
          }

          v9 = 1685287523;
        }

        else if (v5 == 1818455660)
        {
          v9 = 1852601964;
        }

        else
        {
          if (v5 != 1818456942)
          {
            return this;
          }

          v9 = 1668047723;
        }

        goto LABEL_164;
      }

      if (v5 <= 1835295853)
      {
        if (v5 == 1835295779)
        {
          v7 = 1935892841;
          v6 = 1684370292;
          goto LABEL_118;
        }

        if (v5 != 1835295843)
        {
          return this;
        }

        v9 = 1684370292;
        goto LABEL_164;
      }

      if (v5 == 1835295854)
      {
        a2->mSelector = 1684370292;
        v7 = 1835295854;
        goto LABEL_119;
      }

      if (v5 != 1835295859)
      {
        return this;
      }

      v14 = 1684370292;
    }

    else
    {
      if (v5 > 1684157045)
      {
        if (v5 <= 1751740517)
        {
          if (v5 > 1718432369)
          {
            v6 = 1718432370;
            if (v5 != 1718432370)
            {
              if (v5 != 1751740451)
              {
                return this;
              }

              v7 = 1935892841;
              v6 = 1751740518;
              goto LABEL_118;
            }

            goto LABEL_117;
          }

          if (v5 != 1684157046)
          {
            v6 = 1684895092;
            goto LABEL_116;
          }

          v16 = 1986817381;
LABEL_177:
          a2->mSelector = v16;
          goto LABEL_178;
        }

        if (v5 > 1769174369)
        {
          if (v5 == 1769174370)
          {
            v7 = 1650685548;
            v6 = 1635017576;
            goto LABEL_118;
          }

          v6 = 1784767339;
          if (v5 == 1784767339)
          {
            goto LABEL_117;
          }

          v6 = 1815241314;
          goto LABEL_116;
        }

        v10 = 1751740518;
        if (v5 == 1751740518)
        {
          goto LABEL_133;
        }

        if (v5 != 1751740524)
        {
          return this;
        }

        v9 = 1751740518;
LABEL_164:
        a2->mSelector = v9;
        v7 = 1935894894;
        goto LABEL_119;
      }

      if (v5 <= 1668506402)
      {
        if (v5 > 1668049263)
        {
          if (v5 != 1668049264)
          {
            if (v5 != 1668181110)
            {
              return this;
            }

            a2->mSelector = 1852601964;
            v7 = 1668181110;
            goto LABEL_119;
          }

          v7 = 1650685548;
          v6 = 1668049264;
          goto LABEL_118;
        }

        v6 = 1650602615;
        if (v5 != 1650602615)
        {
          if (v5 != 1667787120)
          {
            return this;
          }

          a2->mSelector = 1751740518;
          v7 = 1667787120;
          goto LABEL_119;
        }

        goto LABEL_117;
      }

      if (v5 <= 1668506477)
      {
        if (v5 == 1668506403)
        {
          v7 = 1935892841;
          v6 = 1668047723;
          goto LABEL_118;
        }

        if (v5 != 1668506475)
        {
          return this;
        }

        a2->mSelector = 1668047723;
LABEL_140:
        v7 = 1668049771;
        goto LABEL_119;
      }

      if (v5 == 1668506478)
      {
        a2->mSelector = 1668047723;
        v7 = 1668506478;
        goto LABEL_119;
      }

      if (v5 != 1668510307)
      {
        return this;
      }

      v14 = 1668047723;
    }

LABEL_143:
    a2->mSelector = v14;
    goto LABEL_144;
  }

  if (v5 > 1936941930)
  {
    if (v5 <= 1952542819)
    {
      if (v5 > 1937138722)
      {
        if (v5 > 1937140844)
        {
          if (v5 != 1937140845)
          {
            if (v5 != 1937142886)
            {
              v6 = 1952541794;
              goto LABEL_116;
            }

            v15 = 1937072758;
            goto LABEL_157;
          }

          v8 = 1937072758;
          goto LABEL_168;
        }

        if (v5 == 1937138723)
        {
          v7 = 1818453106;
          v6 = 1937072758;
          goto LABEL_118;
        }

        if (v5 != 1937140836)
        {
          return this;
        }

        v13 = 1937072758;
        goto LABEL_138;
      }

      if (v5 <= 1936945762)
      {
        if (v5 != 1936941931)
        {
          if (v5 != 1936941934)
          {
            return this;
          }

          a2->mSelector = 1685287523;
          v7 = 1936941934;
          goto LABEL_119;
        }

        a2->mSelector = 1685287523;
        goto LABEL_140;
      }

      if (v5 != 1936945763)
      {
        if (v5 != 1937125988)
        {
          return this;
        }

        v12 = 1937072758;
LABEL_148:
        a2->mSelector = v12;
LABEL_149:
        v7 = 1818456932;
        goto LABEL_119;
      }

      v14 = 1685287523;
      goto LABEL_143;
    }

    if (v5 > 1986229349)
    {
      if (v5 <= 1987013731)
      {
        if (v5 != 1986229350)
        {
          if (v5 != 1986290211)
          {
            return this;
          }

          v7 = 1818453106;
          v6 = 1986817381;
          goto LABEL_118;
        }

        v15 = 1986817381;
LABEL_157:
        a2->mSelector = v15;
LABEL_158:
        v7 = 1818457190;
        goto LABEL_119;
      }

      if (v5 != 1987013732)
      {
        v6 = 1999790690;
        if (v5 != 1999790690)
        {
          if (v5 != 1987013741)
          {
            return this;
          }

          v8 = 1986817381;
          goto LABEL_168;
        }

LABEL_117:
        v7 = 1650685548;
LABEL_118:
        a2->mSelector = v6;
LABEL_119:
        *a4 = v7;
        return this;
      }

      v13 = 1986817381;
LABEL_138:
      a2->mSelector = v13;
      goto LABEL_152;
    }

    if (v5 > 1953002100)
    {
      if (v5 != 1953002101)
      {
        if (v5 != 1983013986)
        {
          return this;
        }

        v12 = 1986817381;
        goto LABEL_148;
      }

      v7 = 1650685548;
      v11 = 1836414053;
    }

    else
    {
      if (v5 == 1952542820)
      {
        v7 = 1650685548;
        v6 = 1702259059;
        goto LABEL_118;
      }

      if (v5 != 1953002099)
      {
        return this;
      }

      v7 = 1650685548;
      v11 = 1936682095;
    }

LABEL_146:
    a2->mSelector = v11;
    *a3 = 1886679669;
    goto LABEL_119;
  }

  if (v5 > 1936748066)
  {
    if (v5 > 1936811877)
    {
      if (v5 > 1936811890)
      {
        if (v5 != 1936811891)
        {
          if (v5 != 1936811892)
          {
            if (v5 != 1936941859)
            {
              return this;
            }

            v7 = 1935892841;
            v6 = 1685287523;
            goto LABEL_118;
          }

          v12 = 1936028007;
          goto LABEL_148;
        }

        v8 = 1936028007;
LABEL_168:
        a2->mSelector = v8;
        goto LABEL_169;
      }

      if (v5 != 1936811878)
      {
        if (v5 == 1936811890)
        {
          v7 = 1818453106;
          v6 = 1936028007;
          goto LABEL_118;
        }

        return this;
      }

      v16 = 1936028007;
      goto LABEL_177;
    }

    if (v5 > 1936811108)
    {
      if (v5 == 1936811109)
      {
        a2->mSelector = 1936028002;
        v7 = 1651272548;
        goto LABEL_119;
      }

      if (v5 != 1936811876)
      {
        return this;
      }

      v13 = 1936028007;
      goto LABEL_138;
    }

    if (v5 != 1936748067)
    {
      if (v5 != 1936811108)
      {
        return this;
      }

      v7 = 1651272546;
      v6 = 1936028002;
      goto LABEL_118;
    }

    a2->mSelector = 1936744814;
LABEL_171:
    v7 = 1936745315;
    goto LABEL_119;
  }

  if (v5 <= 1935946357)
  {
    if (v5 <= 1885888877)
    {
      if (v5 == 1852601891)
      {
        v7 = 1935892841;
        v6 = 1852601964;
        goto LABEL_118;
      }

      v10 = 1852601964;
      if (v5 != 1852601964)
      {
        return this;
      }

LABEL_133:
      a2->mSelector = v10;
LABEL_144:
      v7 = 1935893353;
      goto LABEL_119;
    }

    v6 = 1885888878;
    if (v5 == 1885888878)
    {
      goto LABEL_117;
    }

    v6 = 1885893481;
LABEL_116:
    if (v5 != v6)
    {
      return this;
    }

    goto LABEL_117;
  }

  if (v5 <= 1936682094)
  {
    if (v5 != 1935946358)
    {
      if (v5 != 1936553332)
      {
        return this;
      }

      v7 = 1650685548;
      v6 = 1937072749;
      goto LABEL_118;
    }

    v16 = 1937072758;
    goto LABEL_177;
  }

  v6 = 1936682095;
  if (v5 == 1936682095)
  {
    goto LABEL_117;
  }

  if (v5 == 1936744814)
  {
    a2->mSelector = 1936744814;
    v7 = 1936745334;
    goto LABEL_119;
  }

  return this;
}

void AMCP::DAL::Ring_Buffer_Base::commit_direct_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(&v21, (a1 + 8), (a3 + 16));
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(v27, &v21);
  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(v15, a1);
  boost::operators_impl::operator-(&v21, v29, v15);
  v4 = AMCP::DAL::DAL_Time::operator<(v27, &v21);
  v5 = !v4;
  if (v4)
  {
    v6 = &v21;
  }

  else
  {
    v6 = v27;
  }

  v17 = *v6;
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v18 = v8;
  v19 = v7;
  v9 = *(&v23 + 1);
  if (v5)
  {
    v10 = v28;
  }

  else
  {
    v10 = *(&v23 + 1);
  }

  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *(&v23 + 1);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v21, &v17, v29);
  *(a1 + 8) = v21;
  *(a1 + 24) = v22;
  v11 = v23;
  v23 = 0uLL;
  v12 = *(a1 + 40);
  *(a1 + 32) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(a1 + 48) = v24;
  *(a1 + 64) = v25;
  v13 = v26;
  v26 = 0uLL;
  v14 = *(a1 + 80);
  *(a1 + 72) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_1DE5BF430(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v2 - 128));
  _Unwind_Resume(a1);
}

BOOL caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(uint64_t a1, AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time *a3)
{
  v6 = (this + 40);
  result = AMCP::DAL::DAL_Time::operator<(this, (this + 40));
  if (result)
  {
    v8 = (a3 + 40);
    result = AMCP::DAL::DAL_Time::operator<(a3, (a3 + 40));
    if (result)
    {
      if (!AMCP::DAL::DAL_Time::operator<(a3, this))
      {
        a3 = this;
      }

      result = AMCP::DAL::DAL_Time::operator<(v6, v8);
      if (result)
      {
        v9 = v8;
      }

      else
      {
        v9 = v6;
      }

      *a1 = *a3;
      v10 = *(a3 + 3);
      *(a1 + 16) = *(a3 + 2);
      *(a1 + 24) = v10;
      v11 = *(a3 + 4);
      *(a1 + 32) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 40) = *v9;
      v12 = *(v9 + 3);
      *(a1 + 56) = *(v9 + 2);
      *(a1 + 64) = v12;
      v13 = *(v9 + 4);
    }

    else
    {
      *a1 = *this;
      v17 = *(this + 3);
      *(a1 + 16) = *(this + 2);
      *(a1 + 24) = v17;
      v18 = *(this + 4);
      *(a1 + 32) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 40) = *v6;
      v19 = *(this + 8);
      v13 = *(this + 9);
      *(a1 + 56) = *(v6 + 2);
      *(a1 + 64) = v19;
    }
  }

  else
  {
    *a1 = *a3;
    v14 = *(a3 + 3);
    *(a1 + 16) = *(a3 + 2);
    *(a1 + 24) = v14;
    v15 = *(a3 + 4);
    *(a1 + 32) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) = *(a3 + 40);
    v16 = *(a3 + 8);
    *(a1 + 56) = *(a3 + 7);
    *(a1 + 64) = v16;
    v13 = *(a3 + 9);
  }

  *(a1 + 72) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void AMCP::DAL::Ring_Buffer_Base::create_writable_range(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  AMCP::DAL::DAL_Time::operator-(buf, (a2 + 5), a2);
  AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v32, a1);
  v6 = AMCP::DAL::DAL_Time_Delta::operator<(&v32, buf);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v7 = *&v49[2];
  if (*&v49[2])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v49[2]);
  }

  if (v6)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      AMCP::DAL::DAL_Time::operator-(&v32, (a2 + 5), a2);
      if ((v32.__vftable & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(&v32);
      }

      imp = v32.__imp_.__imp_;
      AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(v39, a1);
      if ((v39[0] & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(v39);
      }

      *buf = 136316162;
      v43 = "Ring_Buffer.cpp";
      v44 = 1024;
      v45 = 255;
      v46 = 2080;
      v47 = "not (range.length() <= get_length_in_frames())";
      v48 = 2048;
      *v49 = vcvtmd_s64_f64(*&imp);
      *&v49[8] = 2048;
      v50 = vcvtmd_s64_f64(v40);
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s range too large for ring buffer: range size: %lld  ring buffer size: %lld", buf, 0x30u);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    AMCP::DAL::DAL_Time::operator-(v39, (a2 + 5), a2);
    if ((v39[0] & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(v39);
    }

    v18 = v40;
    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(v28, a1);
    if ((v28[0] & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(v28);
    }

    caulk::make_string("range too large for ring buffer: range size: %lld  ring buffer size: %lld", &v30, vcvtmd_s64_f64(v18), vcvtmd_s64_f64(v29));
    std::logic_error::logic_error(&v31, &v30);
    v31.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v32, &v31);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    v32.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v32);
    *&v49[2] = "virtual Writable_Range AMCP::DAL::Ring_Buffer_Base::create_writable_range(DAL_Time_Range) const";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v51 = 255;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v19 = *a2;
  v8 = a2[3];
  v20 = a2[2];
  v21 = v8;
  v9 = a2[4];
  v22 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *(a2 + 5);
  v10 = a2[8];
  v24 = a2[7];
  v25 = v10;
  v11 = a2[9];
  v26 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Readable_Range::Readable_Range(a3, &v19, a1);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE5BF9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45)
{
  v47 = *(v45 - 152);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Ring_Buffer_Base::create_writable_range(AMCP::DAL::Ring_Buffer_Base *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v16 = "Ring_Buffer.cpp";
    v17 = 1024;
    v18 = 235;
    v19 = 2080;
    v20 = "not (false)";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s A range is required when writing to a ring buffer", buf, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v14);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string("A range is required when writing to a ring buffer", &v6);
  std::logic_error::logic_error(&v7, &v6);
  v7.__vftable = (MEMORY[0x1E69E55A8] + 16);
  std::logic_error::logic_error(&v8, &v7);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  v8.__vftable = &unk_1F5991430;
  v9 = &unk_1F5991458;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v8);
  v21 = "virtual Writable_Range AMCP::DAL::Ring_Buffer_Base::create_writable_range() const";
  v22 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
  v23 = 235;
  std::vector<void *>::vector[abi:ne200100](&v5);
}

void AMCP::DAL::Ring_Buffer_Base::create_readable_range(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  (*(*a1 + 72))(v44);
  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(v44, a2);
  if (!v6)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      range = AMCP::DAL::DAL_Time_Range::get_range(v44);
      AMCP::DAL::DAL_Time_Range::get_range(v44);
      v18 = v17;
      v19 = AMCP::DAL::DAL_Time_Range::get_range(a2);
      AMCP::DAL::DAL_Time_Range::get_range(a2);
      *buf = 136316930;
      v48 = "Ring_Buffer.cpp";
      v49 = 1024;
      v50 = 244;
      v51 = 2080;
      v52 = "not (valid_range.encompasses(range))";
      v53 = 2048;
      *v54 = a1;
      *&v54[8] = 2048;
      v55 = vcvtmd_s64_f64(range);
      *v56 = 2048;
      *&v56[2] = vcvtmd_s64_f64(v18);
      v57 = 2048;
      v58 = vcvtmd_s64_f64(v19);
      v59 = 2048;
      v60 = vcvtmd_s64_f64(v20);
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring Buffer %p: valid range [%lld %lld] does not encompass requested range [%lld %lld]", buf, 0x4Eu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    v21 = AMCP::DAL::DAL_Time_Range::get_range(v44);
    AMCP::DAL::DAL_Time_Range::get_range(v44);
    v23 = v22;
    v24 = AMCP::DAL::DAL_Time_Range::get_range(a2);
    AMCP::DAL::DAL_Time_Range::get_range(a2);
    caulk::make_string("Ring Buffer %p: valid range [%lld %lld] does not encompass requested range [%lld %lld]", &v35, a1, vcvtmd_s64_f64(v21), vcvtmd_s64_f64(v23), vcvtmd_s64_f64(v24), vcvtmd_s64_f64(v25));
    std::logic_error::logic_error(&v36, &v35);
    v36.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5991430;
    v38 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v37);
    *&v54[2] = "virtual Readable_Range AMCP::DAL::Ring_Buffer_Base::create_readable_range(DAL_Time_Range) const";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    *v56 = 244;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v26 = *a2;
  v7 = *(a2 + 24);
  v27 = *(a2 + 16);
  v28 = v7;
  v8 = *(a2 + 32);
  v29 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *(a2 + 40);
  v9 = *(a2 + 64);
  v31 = *(a2 + 56);
  v32 = v9;
  v10 = *(a2 + 72);
  v33 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Readable_Range::Readable_Range(a3, &v26, a1);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void AMCP::DAL::Ring_Buffer_Base::create_readable_range(AMCP::DAL::Ring_Buffer_Base *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v16 = "Ring_Buffer.cpp";
    v17 = 1024;
    v18 = 227;
    v19 = 2080;
    v20 = "not (false)";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s A range is required when reading from a ring buffer", buf, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v14);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string("A range is required when reading from a ring buffer", &v6);
  std::logic_error::logic_error(&v7, &v6);
  v7.__vftable = (MEMORY[0x1E69E55A8] + 16);
  std::logic_error::logic_error(&v8, &v7);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  v8.__vftable = &unk_1F5991430;
  v9 = &unk_1F5991458;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v8);
  v21 = "virtual Readable_Range AMCP::DAL::Ring_Buffer_Base::create_readable_range() const";
  v22 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
  v23 = 227;
  std::vector<void *>::vector[abi:ne200100](&v5);
}

void AMCP::DAL::Ring_Buffer_Base::reset_time(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v9, &v7, 0.0, 0.0);
  *(a1 + 8) = v9;
  *(a1 + 24) = v10;
  v3 = v11;
  v11 = 0uLL;
  v4 = *(a1 + 40);
  *(a1 + 32) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  v5 = v14;
  v14 = 0uLL;
  v6 = *(a1 + 80);
  *(a1 + 72) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
    }
  }

  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void AMCP::DAL::Ring_Buffer_Base::set_anchor_time_and_nominal_buffer_size(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v9 = *(a3 + 24);
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v11, &v9, 0.0, 0.0);
  *(a1 + 8) = v11;
  *(a1 + 24) = v12;
  v5 = v13;
  v13 = 0uLL;
  v6 = *(a1 + 40);
  *(a1 + 32) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  v7 = v16;
  v16 = 0uLL;
  v8 = *(a1 + 80);
  *(a1 + 72) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }
  }

  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void AMCP::DAL::Ring_Buffer_Base::receive_zeros(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v41 = *a3;
  v5 = *(a3 + 3);
  v42 = *(a3 + 2);
  v43 = v5;
  v6 = *(a3 + 4);
  v44 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v45 = *(a3 + 40);
  v7 = *(a3 + 8);
  v46 = *(a3 + 7);
  v47 = v7;
  v8 = *(a3 + 9);
  v48 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Ring_Buffer_Base::create_writable_range(a1, &v41, v49);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(v40, v52, v49);
  v9 = v40[0];
  v10 = v40[1];
  while (v9 != v10)
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    AMCP::DAL::Container::erase_range(*(a1 + 88));
    v9 += 12;
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(&v30, (a1 + 8), a3);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(v36, &v30);
  if (*(&v35 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
  }

  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
  }

  AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(v24, a1);
  boost::operators_impl::operator-(&v30, v38, v24);
  v13 = AMCP::DAL::DAL_Time::operator<(v36, &v30);
  v14 = !v13;
  if (v13)
  {
    v15 = &v30;
  }

  else
  {
    v15 = v36;
  }

  v26 = *v15;
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  v27 = v17;
  v28 = v16;
  v18 = *(&v32 + 1);
  if (v14)
  {
    v19 = v37;
  }

  else
  {
    v19 = *(&v32 + 1);
  }

  v29 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = *(&v32 + 1);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v30, &v26, v38);
  *(a1 + 8) = v30;
  *(a1 + 24) = v31;
  v20 = v32;
  v32 = 0uLL;
  v21 = *(a1 + 40);
  *(a1 + 32) = v20;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  *(a1 + 48) = v33;
  *(a1 + 64) = v34;
  v22 = v35;
  v35 = 0uLL;
  v23 = *(a1 + 80);
  *(a1 + 72) = v22;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    if (*(&v35 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
    }
  }

  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v36[0] = v40;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](v36);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }
}

void sub_1DE5C0CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a30);
  a30 = &a40;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&a30);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v41 - 136));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Ring_Buffer_Base::translate_range(AMCP::DAL::Ring_Buffer_Base *this, const AMCP::DAL::DAL_Time_Range *a2)
{
  v4 = (*(**(this + 11) + 104))(*(this + 11));
  v5 = *(this + 11);
  if (v5)
  {
    v6 = (*(*v5 + 48))(v5);
  }

  else
  {
    v6 = 0.0;
  }

  AMCP::DAL::DAL_Buffer::get_timebase(&v7, this);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(v9, &v7, 0.0, v6);
  (*(*v4 + 16))(v4, v9, a2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1DE5C0E6C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void AMCP::DAL::Ring_Buffer::get_direct_write_ranges(AMCP::DAL::Ring_Buffer *this@<X0>, const AMCP::DAL::DAL_Time_Range *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  AMCP::DAL::Ring_Buffer_Base::translate_range(this, a2);
  v5 = v27;
  for (i = v28; v5 != i; v5 += 6)
  {
    v7 = v5[1];
    v18 = *v5;
    v19 = v7;
    v8 = *(v5 + 5);
    v20 = *(v5 + 4);
    v9 = *(v5 + 6);
    v21 = v8;
    v22 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v5 + 56);
    v10 = *(v5 + 10);
    v24 = *(v5 + 9);
    v11 = *(v5 + 11);
    v25 = v10;
    v26 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 12);
    *&v17 = *(this + 11);
    *(&v17 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = a3[1];
    if (v13 >= a3[2])
    {
      v15 = std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range&,AMCP::DAL::Container>(a3, &v18, &v17);
      v16 = *(&v17 + 1);
      a3[1] = v15;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    else
    {
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v13 + 56) = v23;
      *(v13 + 72) = v24;
      *(v13 + 80) = v10;
      *(v13 + 88) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v13 + 96) = v17;
      a3[1] = v13 + 112;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  *&v18 = &v27;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_1DE5C1018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(i))
    {
      i -= 14;
    }

    v1[1] = v2;
    v5 = **a1;
    if ((0x6DB6DB6DB6DB6DB7 * (((*a1)[2] - v5) >> 4)) < 0x24924924924924ALL && (v6 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v6, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range&,AMCP::DAL::Container>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x249249249249249)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v8 = 0x249249249249249;
  }

  else
  {
    v8 = v4;
  }

  v24 = a1;
  if (v8)
  {
    v8 = std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = (v8 + 112 * v3);
  v21 = v8;
  v22 = v10;
  *(&v23 + 1) = v8 + 112 * v9;
  *v10 = *a2;
  v11 = *(a2 + 16);
  *(v10 + 4) = *(a2 + 32);
  *(v10 + 1) = v11;
  v12 = *(a2 + 48);
  *(v10 + 5) = *(a2 + 40);
  *(v10 + 6) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 56);
  *(v10 + 9) = *(a2 + 72);
  *(v10 + 56) = v13;
  v14 = *(a2 + 88);
  *(v10 + 10) = *(a2 + 80);
  *(v10 + 11) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(v10 + 6) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *&v23 = v10 + 112;
  v15 = *(a1 + 8);
  v16 = &v10[*a1 - v15];
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>,std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>> &>::~__split_buffer(&v21);
  return v20;
}

void AMCP::DAL::Ring_Buffer::receive_data_at_range(uint64_t a1, uint64_t a2, uint64_t a3, AMCP::DAL::DAL_Time *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  (*(*a1 + 64))(buf);
  if (AMCP::DAL::DAL_Time::operator<(buf, &v33))
  {
    (*(*a1 + 64))(&v19, a1);
    v7 = AMCP::DAL::DAL_Time::operator<(a4, &v23);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v8 = !v7;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  else
  {
    v8 = 1;
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v9 = v32;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if ((v8 & 1) == 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *buf = 136315650;
      v27 = "Ring_Buffer.cpp";
      v28 = 1024;
      v29 = 308;
      v30 = 2080;
      v31 = "not (get_time_range().is_empty() or write_range.start() >= get_time_range().end())";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::Write only allows writes at or after the end of the ring buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::Write only allows writes at or after the end of the ring buffer", &v16);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v17);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual void AMCP::DAL::Ring_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v34 = 308;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(a1, a3, a4);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE5C15D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a29);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v29 - 144));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(uint64_t a1, uint64_t a2, void *a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = AMCP::DAL::DAL_Time::operator<((a2 + 40), a2);
  if (v6)
  {
    v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v48 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 76;
      v104 = 2080;
      v105 = "not (new_audio.get_time_range().end() >= new_audio.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::receive_data_write_at_range: Bad time range (start > end)", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::receive_data_write_at_range: Bad time range (start > end)", &v72);
    std::logic_error::logic_error(&v102, &v72);
    v102.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v94, &v102);
    v96 = 0uLL;
    *&v97 = 0;
    DWORD2(v97) = -1;
    v94.__vftable = &unk_1F5991430;
    v95 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v94);
    v106 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(const Readable_Range &, const DAL_Time_Range &)";
    v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v108 = 76;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v100);
  }

  (*(**(a2 + 80) + 56))(buf);
  is_compatible = AMCP::DAL::Container::container_is_compatible(*(a1 + 88), *buf);
  v8 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (!is_compatible)
  {
    v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v52 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      v55 = *v54;
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    else
    {
      v55 = *v54;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 77;
      v104 = 2080;
      v105 = "not (m_container.container_is_compatible(new_audio.get_container()))";
      _os_log_error_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::receive_data_write_at_range: Containers Are Not Compatible", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::receive_data_write_at_range: Containers Are Not Compatible", &v72);
    std::logic_error::logic_error(&v102, &v72);
    v102.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v94, &v102);
    v96 = 0uLL;
    *&v97 = 0;
    DWORD2(v97) = -1;
    v94.__vftable = &unk_1F5991430;
    v95 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v94);
    v106 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(const Readable_Range &, const DAL_Time_Range &)";
    v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v108 = 77;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v100);
  }

  v9 = AMCP::DAL::DAL_Time::operator<(a2, (a2 + 40));
  if (!v9)
  {
    v56 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v56 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      v59 = *v58;
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    else
    {
      v59 = *v58;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 78;
      v104 = 2080;
      v105 = "not (not new_audio.get_time_range().is_empty())";
      _os_log_error_impl(&dword_1DE1F9000, v59, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::receive_data_write_at_range: doesnt allow writes of zero length data", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::receive_data_write_at_range: doesnt allow writes of zero length data", &v72);
    std::logic_error::logic_error(&v102, &v72);
    v102.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v94, &v102);
    v96 = 0uLL;
    *&v97 = 0;
    DWORD2(v97) = -1;
    v94.__vftable = &unk_1F5991430;
    v95 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v94);
    v106 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(const Readable_Range &, const DAL_Time_Range &)";
    v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v108 = 78;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v100);
  }

  AMCP::DAL::DAL_Time::operator-(buf, (a2 + 40), a2);
  AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v94, a1);
  v10 = AMCP::DAL::DAL_Time_Delta::operator<(&v94, buf);
  if (*(&v96 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
  }

  v11 = v106;
  if (v106)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
  }

  if (v10)
  {
    v60 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v60 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v62 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v61 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      v63 = *v62;
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    else
    {
      v63 = *v62;
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 79;
      v104 = 2080;
      v105 = "not (new_audio.get_time_range().length() <= get_length_in_frames())";
      _os_log_error_impl(&dword_1DE1F9000, v63, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::receive_data_write_at_range: doesnt allow writes that are larger than the ring buffer's size", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::receive_data_write_at_range: doesnt allow writes that are larger than the ring buffer's size", &v72);
    std::logic_error::logic_error(&v102, &v72);
    v102.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v94, &v102);
    v96 = 0uLL;
    *&v97 = 0;
    DWORD2(v97) = -1;
    v94.__vftable = &unk_1F5991430;
    v95 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v94);
    v106 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(const Readable_Range &, const DAL_Time_Range &)";
    v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v108 = 79;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v100);
  }

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v13 != v15)
  {
    v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v64 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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

    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 80;
      v104 = 2080;
      v105 = "not (m_valid_range.start().get_clock() == new_audio.get_time_range().start().get_clock())";
      _os_log_error_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::receive_data_write_at_range: All times must use the same clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::receive_data_write_at_range: All times must use the same clock", &v72);
    std::logic_error::logic_error(&v102, &v72);
    v102.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v94, &v102);
    v96 = 0uLL;
    *&v97 = 0;
    DWORD2(v97) = -1;
    v94.__vftable = &unk_1F5991430;
    v95 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v94);
    v106 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(const Readable_Range &, const DAL_Time_Range &)";
    v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v108 = 80;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v100);
  }

  AMCP::DAL::DAL_Time::operator-(buf, (a3 + 5), a3);
  AMCP::DAL::DAL_Time::operator-(&v94, (a2 + 40), a2);
  v16 = AMCP::DAL::DAL_Time_Delta::operator==(buf, &v94);
  if (*(&v96 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
  }

  v17 = v106;
  if (v106)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
  }

  if (!v16)
  {
    v68 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v68 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v70 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v69 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v69)
    {
      atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      v71 = *v70;
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

    else
    {
      v71 = *v70;
    }

    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 81;
      v104 = 2080;
      v105 = "not (write_range.length() == new_audio.get_time_range().length())";
      _os_log_error_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::receive_data_write_at_range: source audio data length must match write range length", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::receive_data_write_at_range: source audio data length must match write range length", &v72);
    std::logic_error::logic_error(&v102, &v72);
    v102.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v94, &v102);
    v96 = 0uLL;
    *&v97 = 0;
    DWORD2(v97) = -1;
    v94.__vftable = &unk_1F5991430;
    v95 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v94);
    v106 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(const Readable_Range &, const DAL_Time_Range &)";
    v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v108 = 81;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v100);
  }

  if (AMCP::DAL::DAL_Time::operator<((a1 + 8), (a1 + 48)) && AMCP::DAL::DAL_Time::operator<((a1 + 48), a3))
  {
    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v90, a1);
    boost::operators_impl::operator-(buf, a3, &v90);
    if (AMCP::DAL::DAL_Time::operator<((a1 + 48), buf))
    {
      v18 = buf;
    }

    else
    {
      v18 = (a1 + 48);
    }

    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v94, v18, a3);
    if (v106)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v106);
    }

    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93);
    }

    v84 = v94;
    v85 = v95;
    v86 = v96;
    if (*(&v96 + 1))
    {
      atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v87 = v97;
    v88 = v98;
    v89 = v99;
    if (*(&v99 + 1))
    {
      atomic_fetch_add_explicit((*(&v99 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_writable_range(a1, &v84, buf);
    if (*(&v89 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v89 + 1));
    }

    if (*(&v86 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v86 + 1));
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(&v90, v110, buf);
    imp = v90.__imp_.__imp_;
    for (i = v90.__vftable; i != imp; i += 4)
    {
      v21 = i->~logic_error;
      v22 = i->~logic_error_0;
      AMCP::DAL::Container::erase_range(*(a1 + 88));
    }

    v72.__r_.__value_.__r.__words[0] = &v90;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v72);
    if (v109)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v109);
    }

    if (v106)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v106);
    }

    if (*(&v99 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v99 + 1));
    }

    if (*(&v96 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
    }
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(&v100, *(a2 + 80), a2);
  v23 = v100;
  v24 = v101;
  if (v100 != v101)
  {
    v25 = 0.0;
    do
    {
      sample_time = AMCP::DAL::DAL_Time::get_sample_time(a3);
      v28 = *v23;
      v27 = v23[1];
      v29 = a3[4];
      v82 = a3[3];
      v83 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v94, &v82, v25 + sample_time, v25 + sample_time + v27 - v28);
      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      v76 = v94;
      v77 = v95;
      v78 = v96;
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v79 = v97;
      v80 = v98;
      v81 = v99;
      if (*(&v99 + 1))
      {
        atomic_fetch_add_explicit((*(&v99 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::Ring_Buffer_Base::create_writable_range(a1, &v76, buf);
      if (*(&v81 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v81 + 1));
      }

      if (*(&v78 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v78 + 1));
      }

      AMCP::DAL::DAL_Timed_Segment::translate_range(&v90, v110, buf);
      v31 = v90.__imp_.__imp_;
      v30 = v90.__vftable;
      v32 = 0.0;
      while (v30 != v31)
      {
        v33 = v32 + *v23;
        if (round(*&v30->~logic_error_0 - *&v30->~logic_error) >= round(v23[1] - v33))
        {
          v34 = v23[1] - v33;
        }

        else
        {
          v34 = *&v30->~logic_error_0 - *&v30->~logic_error;
        }

        *&v72.__r_.__value_.__l.__data_ = v32 + *v23;
        *&v72.__r_.__value_.__l.__size_ = v33 + v34;
        v35 = v34 + *&v30->~logic_error;
        v102.__vftable = v30->~logic_error;
        *&v102.__imp_.__imp_ = v35;
        (*(**(a2 + 80) + 56))(&v74);
        AMCP::DAL::Container::copy_from_this_container(&v74, &v72, (a1 + 88), &v102);
        if (v75)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        }

        v32 = v32 + v34;
        v30 += 4;
      }

      v72.__r_.__value_.__r.__words[0] = &v90;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v72);
      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v109);
      }

      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v106);
      }

      if (*(&v99 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v99 + 1));
      }

      if (*(&v96 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
      }

      v25 = v25 + v32;
      v23 += 12;
    }

    while (v23 != v24);
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(&v94, (a1 + 8), a3);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v94);
  if (*(&v99 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v99 + 1));
  }

  if (*(&v96 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
  }

  AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v72, a1);
  boost::operators_impl::operator-(&v94, &v107, &v72);
  v36 = AMCP::DAL::DAL_Time::operator<(buf, &v94);
  v37 = !v36;
  if (v36)
  {
    v38 = &v94;
  }

  else
  {
    v38 = buf;
  }

  v90 = *v38;
  v40 = v38[1].__vftable;
  v39 = v38[1].__imp_.__imp_;
  v91 = v40;
  v92 = v39;
  v41 = *(&v96 + 1);
  if (v37)
  {
    v42 = v106;
  }

  else
  {
    v42 = *(&v96 + 1);
  }

  v93 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    v41 = *(&v96 + 1);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v94, &v90, &v107);
  *(a1 + 8) = v94;
  *(a1 + 24) = v95;
  v43 = v96;
  v96 = 0uLL;
  v44 = *(a1 + 40);
  *(a1 + 32) = v43;
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  *(a1 + 48) = v97;
  *(a1 + 64) = v98;
  v45 = v99;
  v99 = 0uLL;
  v46 = *(a1 + 80);
  *(a1 + 72) = v45;
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    if (*(&v99 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v99 + 1));
    }
  }

  if (*(&v96 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v109)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v109);
  }

  if (v106)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
  }

  *buf = &v100;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
  v47 = *MEMORY[0x1E69E9840];
}

void sub_1DE5C2990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v59 - 224));
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a48);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Ring_Buffer::receive_data(uint64_t a1, uint64_t a2, AMCP::DAL::DAL_Time *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  (*(*a1 + 64))(buf);
  if (AMCP::DAL::DAL_Time::operator<(buf, &v31))
  {
    (*(*a1 + 64))(&v17, a1);
    v5 = AMCP::DAL::DAL_Time::operator<(a3, &v21);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v6 = !v5;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
    v6 = 1;
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v7 = v30;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if ((v6 & 1) == 0)
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
      v25 = "Ring_Buffer.cpp";
      v26 = 1024;
      v27 = 300;
      v28 = 2080;
      v29 = "not (get_time_range().is_empty() or new_audio.get_time_range().start() >= get_time_range().end())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::Write only allows writes at or after the end of the ring buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::Write only allows writes at or after the end of the ring buffer", &v14);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v15);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    v30 = "virtual void AMCP::DAL::Ring_Buffer::receive_data(const Source_ID &, const Readable_Range &)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v32 = 300;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  AMCP::DAL::Ring_Buffer_Base::receive_data_write(a1, a3);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE5C2EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a32);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v32 - 128));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Ring_Buffer_Base::receive_data_write(uint64_t a1, uint64_t a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v4 = AMCP::DAL::DAL_Time::operator<((a2 + 40), a2);
  if (v4)
  {
    v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v43 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v45 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v44 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      v46 = *v45;
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    else
    {
      v46 = *v45;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 30;
      v94 = 2080;
      v95 = "not (new_audio.get_time_range().end() >= new_audio.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::RecieveData: Bad time range (start > end)", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v92);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::RecieveData: Bad time range (start > end)", &v63);
    std::logic_error::logic_error(&v91, &v63);
    v91.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v83, &v91);
    v85 = 0uLL;
    *&v86 = 0;
    DWORD2(v86) = -1;
    v83.__vftable = &unk_1F5991430;
    v84 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v83);
    v96 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write(const Readable_Range &)";
    v97 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v98 = 30;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v89);
  }

  (*(**(a2 + 80) + 56))(buf);
  is_compatible = AMCP::DAL::Container::container_is_compatible(*(a1 + 88), *buf);
  v6 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (!is_compatible)
  {
    v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v47 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = *v49;
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    else
    {
      v50 = *v49;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 31;
      v94 = 2080;
      v95 = "not (m_container.container_is_compatible(new_audio.get_container()))";
      _os_log_error_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::WriteTo: Containers Are Not Compatible", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v92);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::WriteTo: Containers Are Not Compatible", &v63);
    std::logic_error::logic_error(&v91, &v63);
    v91.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v83, &v91);
    v85 = 0uLL;
    *&v86 = 0;
    DWORD2(v86) = -1;
    v83.__vftable = &unk_1F5991430;
    v84 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v83);
    v96 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write(const Readable_Range &)";
    v97 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v98 = 31;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v89);
  }

  v7 = AMCP::DAL::DAL_Time::operator<(a2, (a2 + 40));
  if (!v7)
  {
    v51 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v51 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 32;
      v94 = 2080;
      v95 = "not (not new_audio.get_time_range().is_empty())";
      _os_log_error_impl(&dword_1DE1F9000, v54, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::Write doesnt allow writes of zero length data", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v92);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::Write doesnt allow writes of zero length data", &v63);
    std::logic_error::logic_error(&v91, &v63);
    v91.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v83, &v91);
    v85 = 0uLL;
    *&v86 = 0;
    DWORD2(v86) = -1;
    v83.__vftable = &unk_1F5991430;
    v84 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v83);
    v96 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write(const Readable_Range &)";
    v97 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v98 = 32;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v89);
  }

  AMCP::DAL::DAL_Time::operator-(buf, (a2 + 40), a2);
  AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v83, a1);
  v8 = AMCP::DAL::DAL_Time_Delta::operator<(&v83, buf);
  if (*(&v85 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v85 + 1));
  }

  v9 = v96;
  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  if (v8)
  {
    v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v55 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 33;
      v94 = 2080;
      v95 = "not (new_audio.get_time_range().length() <= get_length_in_frames())";
      _os_log_error_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::Write doesnt allow writes that are larger than the ring buffer's size", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v92);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::Write doesnt allow writes that are larger than the ring buffer's size", &v63);
    std::logic_error::logic_error(&v91, &v63);
    v91.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v83, &v91);
    v85 = 0uLL;
    *&v86 = 0;
    DWORD2(v86) = -1;
    v83.__vftable = &unk_1F5991430;
    v84 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v83);
    v96 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write(const Readable_Range &)";
    v97 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v98 = 33;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v89);
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v11 != v13)
  {
    v59 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v59 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      *buf = 136315650;
      *&buf[4] = "Ring_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 34;
      v94 = 2080;
      v95 = "not (m_valid_range.start().get_clock() == new_audio.get_time_range().start().get_clock())";
      _os_log_error_impl(&dword_1DE1F9000, v62, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::Write: All times must use the same clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v92);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::Write: All times must use the same clock", &v63);
    std::logic_error::logic_error(&v91, &v63);
    v91.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v83, &v91);
    v85 = 0uLL;
    *&v86 = 0;
    DWORD2(v86) = -1;
    v83.__vftable = &unk_1F5991430;
    v84 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v83);
    v96 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_write(const Readable_Range &)";
    v97 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v98 = 34;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v89);
  }

  if (AMCP::DAL::DAL_Time::operator<((a1 + 8), (a1 + 48)) && AMCP::DAL::DAL_Time::operator<((a1 + 48), a2))
  {
    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v79, a1);
    boost::operators_impl::operator-(buf, a2, &v79);
    if (AMCP::DAL::DAL_Time::operator<((a1 + 48), buf))
    {
      v14 = buf;
    }

    else
    {
      v14 = (a1 + 48);
    }

    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v83, v14, a2);
    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
    }

    v73 = v83;
    v74 = v84;
    v75 = v85;
    if (*(&v85 + 1))
    {
      atomic_fetch_add_explicit((*(&v85 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v76 = v86;
    v77 = v87;
    v78 = v88;
    if (*(&v88 + 1))
    {
      atomic_fetch_add_explicit((*(&v88 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_writable_range(a1, &v73, buf);
    if (*(&v78 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v78 + 1));
    }

    if (*(&v75 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v75 + 1));
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(&v79, v100, buf);
    imp = v79.__imp_.__imp_;
    for (i = v79.__vftable; i != imp; i += 4)
    {
      v17 = i->~logic_error;
      v18 = i->~logic_error_0;
      AMCP::DAL::Container::erase_range(*(a1 + 88));
    }

    v63.__r_.__value_.__r.__words[0] = &v79;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v63);
    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    if (*(&v88 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v88 + 1));
    }

    if (*(&v85 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v85 + 1));
    }
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(&v89, *(a2 + 80), a2);
  v19 = v89;
  for (j = v90; v19 != j; v19 += 12)
  {
    v65 = *(v19 + 1);
    v21 = *(v19 + 5);
    v66 = *(v19 + 4);
    v67 = v21;
    v22 = *(v19 + 6);
    v68 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v69 = *(v19 + 7);
    v23 = *(v19 + 10);
    v70 = *(v19 + 9);
    v24 = *(v19 + 11);
    v71 = v23;
    v72 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_writable_range(a1, &v65, buf);
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(&v83, v100, buf);
    v25 = v83.__vftable;
    v26 = v83.__imp_.__imp_;
    if (v83.__vftable != v83.__imp_.__imp_)
    {
      v27 = 0.0;
      do
      {
        *&v28 = v27 + *v19 + v25[1] - *v25;
        *&v79.__vftable = v27 + *v19;
        v79.__imp_.__imp_ = v28;
        (*(**(a2 + 80) + 56))(&v63);
        AMCP::DAL::Container::copy_from_this_container(&v63, &v79, (a1 + 88), v25);
        if (v63.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63.__r_.__value_.__l.__size_);
        }

        v30 = *v25;
        v29 = v25[1];
        v25 += 12;
        v27 = v27 + v29 - v30;
      }

      while (v25 != v26);
    }

    v79.__vftable = &v83;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v79);
    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(&v83, (a1 + 8), a2);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v83);
  if (*(&v88 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v88 + 1));
  }

  if (*(&v85 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v85 + 1));
  }

  AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v63, a1);
  boost::operators_impl::operator-(&v83, &v97, &v63);
  v31 = AMCP::DAL::DAL_Time::operator<(buf, &v83);
  v32 = !v31;
  if (v31)
  {
    v33 = &v83;
  }

  else
  {
    v33 = buf;
  }

  v79 = *v33;
  v35 = v33[1].__vftable;
  v34 = v33[1].__imp_.__imp_;
  v80 = v35;
  v81 = v34;
  v36 = *(&v85 + 1);
  if (v32)
  {
    v37 = v96;
  }

  else
  {
    v37 = *(&v85 + 1);
  }

  v82 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    v36 = *(&v85 + 1);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v83, &v79, &v97);
  *(a1 + 8) = v83;
  *(a1 + 24) = v84;
  v38 = v85;
  v85 = 0uLL;
  v39 = *(a1 + 40);
  *(a1 + 32) = v38;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  *(a1 + 48) = v86;
  *(a1 + 64) = v87;
  v40 = v88;
  v88 = 0uLL;
  v41 = *(a1 + 80);
  *(a1 + 72) = v40;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    if (*(&v88 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v88 + 1));
    }
  }

  if (*(&v85 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v85 + 1));
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v99)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v99);
  }

  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  *buf = &v89;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
  v42 = *MEMORY[0x1E69E9840];
}

void sub_1DE5C3F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v48 - 208));
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a44);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Ring_Buffer::~Ring_Buffer(AMCP::DAL::Ring_Buffer *this)
{
  *this = &unk_1F5984D48;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984D48;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

AMCP::DAL::Ring_Buffer_Base *AMCP::DAL::Ring_Buffer_Base::Ring_Buffer_Base(AMCP::DAL::Ring_Buffer_Base *this, const CA::StreamDescription *a2, const AMCP::DAL::DAL_Time_Delta *a3)
{
  *this = &unk_1F5984D48;
  v6 = *(a3 + 4);
  v8 = *(a3 + 3);
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(this + 8, &v8, 0.0, 0.0);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((*a3 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a3);
  }

  AMCP::DAL::Container::Container(this + 11, a2, *(a3 + 1));
  return this;
}

void AMCP::DAL::Ring_Buffer_Base::receive_data_mix(void *a1, uint64_t a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = AMCP::DAL::DAL_Time::operator<((a2 + 40), a2);
  if (v4)
  {
    v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v47 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = *v49;
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    else
    {
      v50 = *v49;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *v100 = 136315650;
      *&v100[4] = "Ring_Buffer.cpp";
      *&v100[12] = 1024;
      *&v100[14] = 130;
      v101 = 2080;
      v102 = "not (new_audio.get_time_range().end() >= new_audio.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::RecieveData: Bad time range (start > end)", v100, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::RecieveData: Bad time range (start > end)", &v90);
    std::logic_error::logic_error(&v89, &v90);
    v89.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v89);
    *&buf[24] = 0;
    v109 = 0;
    v110 = 0;
    v111 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v100, buf);
    v103 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_mix(const Readable_Range &)";
    v104 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v105 = 130;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v91);
  }

  (*(**(a2 + 80) + 56))(v100);
  is_compatible = AMCP::DAL::Container::container_is_compatible(a1[11], *v100);
  v6 = *&v100[8];
  if (*&v100[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v100[8]);
  }

  if (!is_compatible)
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
      *v100 = 136315650;
      *&v100[4] = "Ring_Buffer.cpp";
      *&v100[12] = 1024;
      *&v100[14] = 131;
      v101 = 2080;
      v102 = "not (m_container.container_is_compatible(new_audio.get_container()))";
      _os_log_error_impl(&dword_1DE1F9000, v54, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::WriteTo: Containers Are Not Compatible", v100, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::WriteTo: Containers Are Not Compatible", &v90);
    std::logic_error::logic_error(&v89, &v90);
    v89.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v89);
    *&buf[24] = 0;
    v109 = 0;
    v110 = 0;
    v111 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v100, buf);
    v103 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_mix(const Readable_Range &)";
    v104 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v105 = 131;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v91);
  }

  v7 = AMCP::DAL::DAL_Time::operator<(a2, (a2 + 40));
  if (!v7)
  {
    v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v55 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *v100 = 136315650;
      *&v100[4] = "Ring_Buffer.cpp";
      *&v100[12] = 1024;
      *&v100[14] = 132;
      v101 = 2080;
      v102 = "not (not new_audio.get_time_range().is_empty())";
      _os_log_error_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::Write doesnt allow writes of zero length data", v100, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::Write doesnt allow writes of zero length data", &v90);
    std::logic_error::logic_error(&v89, &v90);
    v89.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v89);
    *&buf[24] = 0;
    v109 = 0;
    v110 = 0;
    v111 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v100, buf);
    v103 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_mix(const Readable_Range &)";
    v104 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v105 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v91);
  }

  AMCP::DAL::DAL_Time::operator-(v100, (a2 + 40), a2);
  AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(buf, a1);
  v8 = AMCP::DAL::DAL_Time_Delta::operator<(buf, v100);
  if (v109)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v109);
  }

  v9 = v103;
  if (v103)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v103);
  }

  if (v8)
  {
    v59 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v59 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *v100 = 136315650;
      *&v100[4] = "Ring_Buffer.cpp";
      *&v100[12] = 1024;
      *&v100[14] = 133;
      v101 = 2080;
      v102 = "not (new_audio.get_time_range().length() <= get_length_in_frames())";
      _os_log_error_impl(&dword_1DE1F9000, v62, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::Write doesnt allow writes that are larger than the ring buffer's size", v100, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::Write doesnt allow writes that are larger than the ring buffer's size", &v90);
    std::logic_error::logic_error(&v89, &v90);
    v89.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v89);
    *&buf[24] = 0;
    v109 = 0;
    v110 = 0;
    v111 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v100, buf);
    v103 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_mix(const Readable_Range &)";
    v104 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v105 = 133;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v91);
  }

  v11 = a1[4];
  v10 = a1[5];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v11 != v13)
  {
    v63 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v63 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      *v100 = 136315650;
      *&v100[4] = "Ring_Buffer.cpp";
      *&v100[12] = 1024;
      *&v100[14] = 134;
      v101 = 2080;
      v102 = "not (m_valid_range.start().get_clock() == new_audio.get_time_range().start().get_clock())";
      _os_log_error_impl(&dword_1DE1F9000, v66, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::Write: All times must use the same clock", v100, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::Write: All times must use the same clock", &v90);
    std::logic_error::logic_error(&v89, &v90);
    v89.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v89);
    *&buf[24] = 0;
    v109 = 0;
    v110 = 0;
    v111 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v100, buf);
    v103 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_mix(const Readable_Range &)";
    v104 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v105 = 134;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v91);
  }

  (*(*a1 + 64))(v100, a1);
  v14 = AMCP::DAL::DAL_Time::operator<(v100, &v104);
  if (v106)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
  }

  v15 = v103;
  if (v103)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v103);
  }

  if (!v14)
  {
    v67 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v67 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v15);
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

    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *v100 = 136315650;
      *&v100[4] = "Ring_Buffer.cpp";
      *&v100[12] = 1024;
      *&v100[14] = 136;
      v101 = 2080;
      v102 = "not (not get_time_range().is_empty())";
      _os_log_error_impl(&dword_1DE1F9000, v70, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::mix only allows writes within the range of existing dat in the ring buffer", v100, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::mix only allows writes within the range of existing dat in the ring buffer", &v90);
    std::logic_error::logic_error(&v89, &v90);
    v89.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v89);
    *&buf[24] = 0;
    v109 = 0;
    v110 = 0;
    v111 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v100, buf);
    v103 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_mix(const Readable_Range &)";
    v104 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v105 = 136;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v91);
  }

  (*(*a1 + 64))(v100, a1);
  v16 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(v100, a2);
  if (v106)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
  }

  v17 = v103;
  if (v103)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v103);
  }

  if (!v16)
  {
    v71 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v71 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v73 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v72 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      v74 = *v73;
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    else
    {
      v74 = *v73;
    }

    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *v100 = 136315650;
      *&v100[4] = "Ring_Buffer.cpp";
      *&v100[12] = 1024;
      *&v100[14] = 137;
      v101 = 2080;
      v102 = "not (get_time_range().encompasses(new_audio.get_time_range()))";
      _os_log_error_impl(&dword_1DE1F9000, v74, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Ring_Buffer::mix only allows writes within the range of existing dat in the ring buffer", v100, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Ring_Buffer::mix only allows writes within the range of existing dat in the ring buffer", &v90);
    std::logic_error::logic_error(&v89, &v90);
    v89.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v89);
    *&buf[24] = 0;
    v109 = 0;
    v110 = 0;
    v111 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v100, buf);
    v103 = "void AMCP::DAL::Ring_Buffer_Base::receive_data_mix(const Readable_Range &)";
    v104 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ring_Buffer.cpp";
    v105 = 137;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v91);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(&v87, *(a2 + 80), a2);
  v18 = v87;
  for (i = v88; v18 != i; v18 += 12)
  {
    v79 = *(v18 + 1);
    v20 = *(v18 + 5);
    v80 = *(v18 + 4);
    v81 = v20;
    v21 = *(v18 + 6);
    v82 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v83 = *(v18 + 7);
    v22 = *(v18 + 10);
    v84 = *(v18 + 9);
    v23 = *(v18 + 11);
    v85 = v22;
    v86 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_writable_range(a1, &v79, v100);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(&v77, v107, v100);
    v24 = v77;
    v25 = v78;
    if (v77 != v78)
    {
      v26 = 0.0;
      do
      {
        v27 = *v18;
        v29 = *v24;
        v28 = v24[1];
        (*(**(a2 + 80) + 56))(&v75);
        v30 = *v24;
        v31 = AMCP::DAL::Container::container_is_compatible(v75, a1[11]);
        if (!v31)
        {
          v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v39 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v31);
          }

          v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            v42 = *v41;
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }

          else
          {
            v42 = *v41;
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Container.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 153;
            *&buf[18] = 2080;
            *&buf[20] = "not (container_is_compatible(dest_container))";
            _os_log_error_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container::mix: Containers Are Not Compatible", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v99);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Container::mix: Containers Are Not Compatible", &v91);
          std::logic_error::logic_error(&v92, &v91);
          v92.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v93, &v92);
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v98 = -1;
          v93.__vftable = &unk_1F5991430;
          v94 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v93);
          v109 = "void AMCP::DAL::Container::mix(const Sample_Time_Range &, Container &, Sample_Time, DAL_Operation_Context_Ref)";
          v110 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.cpp";
          v111 = 153;
          std::vector<void *>::vector[abi:ne200100](&v89);
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "mix");
        v32 = v75;
        if (v75)
        {
          v32 = (*(*v75 + 16))(v75, buf);
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if ((v33 & 1) == 0)
        {
          v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v43 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v32);
          }

          v45 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v44 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            v46 = *v45;
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }

          else
          {
            v46 = *v45;
          }

          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Container.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 154;
            *&buf[18] = 2080;
            *&buf[20] = "not (dal_operation_is_supported(kDALOperationSettings_Mix))";
            _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container::mix: container type does not support mixing", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v99);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Container::mix: container type does not support mixing", &v91);
          std::logic_error::logic_error(&v92, &v91);
          v92.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v93, &v92);
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v98 = -1;
          v93.__vftable = &unk_1F5991430;
          v94 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v93);
          v109 = "void AMCP::DAL::Container::mix(const Sample_Time_Range &, Container &, Sample_Time, DAL_Operation_Context_Ref)";
          v110 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.cpp";
          v111 = 154;
          std::vector<void *>::vector[abi:ne200100](&v89);
        }

        v34 = v75;
        v35 = a1[12];
        *buf = a1[11];
        *&buf[8] = v35;
        if (v35)
        {
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
        }

        v93.__vftable = 0;
        v93.__imp_.__imp_ = 0;
        (*(*v34 + 88))(v34, buf, &v93, v26 + v27, v26 + v27 + v28 - v29, v30);
        if (v93.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v93.__imp_.__imp_);
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        v37 = *v24;
        v36 = v24[1];
        v24 += 12;
        v26 = v26 + v36 - v37;
      }

      while (v24 != v25);
    }

    *buf = &v77;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v106)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v106);
    }

    if (v103)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }
  }

  *v100 = &v87;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](v100);
  v38 = *MEMORY[0x1E69E9840];
}