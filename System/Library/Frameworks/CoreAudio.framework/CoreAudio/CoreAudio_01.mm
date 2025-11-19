uint64_t AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[382];
}

uint64_t AMCP::Device::get_stream(AMCP::Device *a1, int a2, unsigned int a3)
{
  v4 = *(a1 + 4);
  v6 = *v4;
  v5 = v4[1];
  v21[0] = v6;
  v21[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    v7 = 1768845428;
  }

  else
  {
    v7 = 1869968496;
  }

  AMCP::Device::get_stream_list(a1, v7, &v19);
  v8 = v19;
  v9 = v20;
  if (v19 == v20)
  {
LABEL_12:
    v12 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v19;
    while (1)
    {
      AMCP::Stream::Stream(&v16, v21, *v11);
      AMCP::Stream::get_current_format(&v16, v14);
      v10 += v15;
      if (v10 >= a3)
      {
        break;
      }

      v16 = &unk_1F5964268;
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      if (++v11 == v9)
      {
        goto LABEL_12;
      }
    }

    v12 = v17;
    v16 = &unk_1F5964268;
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }
  }

  if (v8)
  {
    operator delete(v8);
  }

  AMCP::System_Context::~System_Context(v21);
  return v12;
}

uint64_t AMCP::Device::count_channels(AMCP::Device *this, unsigned int a2)
{
  AMCP::Device::get_stream_list(this, a2, &v13);
  v3 = v13;
  v4 = v14;
  if (v13 == v14)
  {
    v5 = 0;
    if (!v13)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v5 = 0;
  v6 = v13;
  do
  {
    AMCP::Stream::Stream(v11, *(this + 4), *v6);
    AMCP::Stream::get_current_format(v11, v9);
    v7 = v10;
    v11[0] = &unk_1F5964268;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    v5 += v7;
    ++v6;
  }

  while (v6 != v4);
  if (v3)
  {
LABEL_7:
    operator delete(v3);
  }

  return v5;
}

uint64_t AMCP::Device::can_be_default_input_device(AMCP::Device *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1684434036u>(v5, 0x696E7074u);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

uint64_t AMCP::Core::Core::get_simple_required_property<1684434036u>(AMCP::Core::Core *a1, unsigned int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *buf = 1684434036;
  v13 = a2;
  v3 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(a1, buf);
  if (v3 <= 0xFFu)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v11 = 4;
      strcpy(__p, "dflt");
      *buf = 136316418;
      v13 = "Core.h";
      v14 = 1024;
      v15 = 391;
      v16 = 2080;
      v17 = "optional_value.operator BOOL() == true";
      v18 = 2080;
      v19 = __p;
      v20 = 1024;
      v21 = a2;
      v22 = 1024;
      v23 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

void sub_1DE20B738(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
    goto LABEL_13;
  }

  AMCP::Core::Core::find_operation(&v12, a1, a2);
  v4 = v12;
  if (v12)
  {
    v5 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
    {
      LOBYTE(v4) = AMCP::Core::Operation::call_function<BOOL>(v4);
LABEL_5:
      v6 = 0;
      goto LABEL_10;
    }

    v7 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v10, v4);
      LOBYTE(v4) = AMCP::Thing::convert_to<BOOL>(v10);
      if (v11)
      {
        v11(0, v10, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v6 = 1;
LABEL_10:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (!v6)
  {
    v8 = 1;
    return v4 | (v8 << 8);
  }

LABEL_13:
  LOBYTE(v4) = 0;
  v8 = 0;
  return v4 | (v8 << 8);
}

uint64_t AMCP::Core::Operation::call_function<BOOL>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>();
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
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
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
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <>]";
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

void sub_1DE20BCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Thing::convert_to<BOOL>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<BOOL>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      v5 = *v4;
      return v5 & 1;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<BOOL>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
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

  return v5 & 1;
}

void sub_1DE20BEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<BOOL>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<BOOL>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5448], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[397];
}

uint64_t AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[299];
}

uint64_t AMCP::Device::can_be_default_output_device(AMCP::Device *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1684434036u>(v5, 0x6F757470u);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

uint64_t AMCP::Device::can_be_default_system_output_device(AMCP::Device *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "tlfsptuo");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
          v15 = 4;
          strcpy(__p, "sflt");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1869968496;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE20C20C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Device::wants_display_routing(AMCP::Device *this)
{
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      v10 = 0x676C6F6264727465;
      v11 = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, &v10);
      v7 = v6;
      v8 = HIBYTE(v6);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v7 | (v8 << 8);
}

uint64_t AMCP::Device::wants_display_routing(AMCP::Device *this, char a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return a2 & 1;
      }

      v13 = 0x676C6F6264727465;
      v14 = 0;
      if (!AMCP::Core::Core::has_property(v7, &v13))
      {
LABEL_16:
        LOBYTE(v8) = a2;
LABEL_17:
        a2 = v8;
        goto LABEL_18;
      }

      AMCP::Core::Core::find_operation(&v17, v7, &v13);
      v8 = v17;
      if (v17)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          LOBYTE(v8) = AMCP::Core::Operation::call_function<BOOL>(v8);
LABEL_8:
          v10 = 0;
          goto LABEL_13;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(v15, v8);
          LOBYTE(v8) = AMCP::Thing::convert_to<BOOL>(v15);
          if (v16)
          {
            v16(0, v15, 0, 0);
          }

          goto LABEL_8;
        }
      }

      v10 = 1;
LABEL_13:
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  return a2 & 1;
}

void AMCP::Device::get_channel_layout(AMCP::Device *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(this + 3);
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    return;
  }

  v8 = v7;
  v9 = *(this + 2);
  if (v9)
  {
    v14[0] = 1936879204;
    v14[1] = a2;
    v14[2] = 0;
    if (AMCP::Core::Core::has_property(v9, v14))
    {
      AMCP::Core::Core::find_operation(&v20, v9, v14);
      v10 = v20;
      if (!v20)
      {
        goto LABEL_13;
      }

      v11 = AMCP::Implementation::get_type_marker<std::function<CA::ChannelLayout ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v11))
      {
        AMCP::Core::Operation::call_function<CA::ChannelLayout>(&v17, v10);
        v12 = 0;
        *a3 = v17;
        *(a3 + 16) = v18;
        *(a3 + 24) = 1;
        goto LABEL_14;
      }

      v13 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v13))
      {
        AMCP::Core::Operation::call_function<AMCP::Thing>(&v17, v10);
        AMCP::Thing::convert_to<CA::ChannelLayout>(&v15, &v17);
        *a3 = v15;
        *(a3 + 16) = v16;
        *(a3 + 24) = 1;
        if (v19)
        {
          v19(0, &v17, 0, 0);
        }

        v12 = 0;
      }

      else
      {
LABEL_13:
        v12 = 1;
      }

LABEL_14:
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (!v12)
      {
        goto LABEL_18;
      }
    }
  }

  *a3 = 0;
  *(a3 + 24) = 0;
LABEL_18:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

uint64_t AMCP::Core::Operation::call_function<CA::ChannelLayout>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<CA::ChannelLayout ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::ChannelLayout, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<CA::ChannelLayout ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::ChannelLayout, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE20C9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Thing::convert_to<CA::ChannelLayout>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<CA::ChannelLayout>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *v6, v6[1], v6[1] - *v6);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<CA::ChannelLayout>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *v8, v8[1], v8[1] - *v8);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE20CC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<CA::ChannelLayout>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[457];
}

uint64_t std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE20CD24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t AMCP::Implementation::get_type_marker<std::function<CA::ChannelLayout ()(void)>>()
{
  v0 = &HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = &HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = &HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return v0[53];
}

void AMCP::Device::get_channel_layout(AMCP::Device *this@<X0>, const CA::ChannelLayout *a2@<X2>, unsigned int a3@<W1>, void *a4@<X8>)
{
  v7 = *(this + 3);
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = *(this + 2);
      if (v10)
      {
        v15[0] = 1936879204;
        v15[1] = a3;
        v15[2] = 0;
        if (!AMCP::Core::Core::has_property(v10, v15))
        {
LABEL_19:
          *a4 = 0;
          a4[1] = 0;
          a4[2] = 0;
          std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a4, *a2, *(a2 + 1), *(a2 + 1) - *a2);
          goto LABEL_20;
        }

        AMCP::Core::Core::find_operation(&v18, v10, v15);
        v11 = v18;
        if (v18)
        {
          v12 = AMCP::Implementation::get_type_marker<std::function<CA::ChannelLayout ()(void)>>();
          if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v11, v12))
          {
            AMCP::Core::Operation::call_function<CA::ChannelLayout>(a4, v11);
LABEL_8:
            v13 = 0;
            goto LABEL_16;
          }

          v14 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
          if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v11, v14))
          {
            AMCP::Core::Operation::call_function<AMCP::Thing>(v16, v11);
            AMCP::Thing::convert_to<CA::ChannelLayout>(a4, v16);
            if (v17)
            {
              v17(0, v16, 0, 0);
            }

            goto LABEL_8;
          }
        }

        v13 = 1;
LABEL_16:
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (!v13)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a4, *a2, *(a2 + 1), *(a2 + 1) - *a2);
  if (v9)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void LogVolumeChangeForServerSideControl(uint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4, int a5, unsigned int *a6, HALS_ObjectMap *a7, unsigned int a8, unsigned int a9, uint64_t a10)
{
  if (a5 == 4 && a6)
  {
    v16 = a3 == 1650685548;
    if (a3 == 1650685548)
    {
      v17 = *a6;
    }

    else
    {
      v17 = *a6;
    }

    std::to_string(&v46, v17);
    v18 = HALS_ObjectMap::CopyObjectByObjectID(a7);
    v20 = v18;
    if (!v18)
    {
      goto LABEL_42;
    }

    v27 = v16;
    v21 = (*(*v18 + 224))(v18);
    v22 = strlen(v21);
    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v23 = v22;
    if (v22 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v22;
    if (v22)
    {
      memmove(&__dst, v21, v22);
    }

    __dst.__r_.__value_.__s.__data_[v23] = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___Z35LogVolumeChangeForServerSideControlNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj26AudioObjectPropertyAddressjPKvjjjS5__block_invoke;
    block[3] = &__block_descriptor_tmp_11;
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *a1, *(a1 + 8));
    }

    else
    {
      v29 = *a1;
    }

    v30 = a2;
    v31 = bswap32(a3);
    *v32 = v48[0];
    *&v32[3] = *(v48 + 3);
    v33 = 5;
    v34 = ((a3 >> 8) & 0xFF000000 | (a3 >> 24) & 0xFF0000 | (HIDWORD(a3) >> 8) & 0xFF00 | HIBYTE(a3));
    *v35 = v47[0];
    *&v35[3] = *(v47 + 3);
    v36 = 5;
    v37 = a4;
    v24 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = __dst;
    }

    if (*(a10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, *a10, *(a10 + 8));
    }

    else
    {
      *&v39.__r_.__value_.__l.__data_ = *a10;
      v39.__r_.__value_.__r.__words[2] = *(a10 + 16);
    }

    v40 = bswap32(a8);
    v41 = 5;
    v42 = a9;
    v44 = v27;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v46;
    }

    global_queue = dispatch_get_global_queue(-2, 0);
    if (global_queue)
    {
      v26 = global_queue;
      dispatch_retain(global_queue);
      dispatch_async(v26, block);
      dispatch_release(v26);
    }

    else
    {
      dispatch_async(0, block);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }

    if (v33 < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
    HALS_ObjectMap::ReleaseObject(v20, v19);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DE20D308(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v53 < 0)
  {
    operator delete(*(v54 - 152));
  }

  HALS_ObjectMap::ReleaseObject(v52, a2);
  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  _Unwind_Resume(a1);
}

void ___Z35LogVolumeChangeForServerSideControlNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj26AudioObjectPropertyAddressjPKvjjjS5__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v6 = *v6;
    }

    v7 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v7 = *v7;
    }

    v8 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v8 = *v8;
    }

    v9 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v9 = *v9;
    }

    v10 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v10 = *v10;
    }

    v11 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v11 = *v11;
    }

    v12 = *(a1 + 56);
    v13 = *(a1 + 112);
    v14 = *(a1 + 192);
    v15 = "volume";
    if (*(a1 + 224))
    {
      v15 = "mute";
    }

    v16 = (a1 + 200);
    if (*(a1 + 223) < 0)
    {
      v16 = *v16;
    }

    v18 = 136318210;
    v19 = "HALB_Logging.cpp";
    v20 = 1024;
    v21 = 100;
    v22 = 2082;
    v23 = v6;
    v24 = 2048;
    v25 = v12;
    v26 = 2082;
    v27 = v7;
    v28 = 2082;
    v29 = v8;
    v30 = 2048;
    v31 = v13;
    v32 = 2082;
    v33 = v9;
    v34 = 2082;
    v35 = v10;
    v36 = 2082;
    v37 = v11;
    v38 = 2048;
    v39 = v14;
    v40 = 2082;
    v41 = v15;
    v42 = 2082;
    v43 = v16;
    _os_log_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEFAULT, "%32s:%-5d LogVolumeChangeForServerSideControl from %{public}s: control id %lu, property address ['%{public}s', '%{public}s', %lu], owning device UID %{public}s, control type %{public}s, control scope '%{public}s', control element %lu, %{public}s: %{public}s", &v18, 0x80u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_e8_32c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE120c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE144c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE168c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE200c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void __copy_helper_block_e8_32c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE120c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE144c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE168c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE200c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v8 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v8;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 168), *(a2 + 168), *(a2 + 176));
  }

  else
  {
    v9 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v9;
  }

  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 200), *(a2 + 200), *(a2 + 208));
  }

  else
  {
    v10 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v10;
  }
}

void sub_1DE20D79C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Meta_Timebase::get_private_transport_state(AMCP::Graph::Meta_Timebase *this)
{
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
    v5 = 136315650;
    v6 = "Meta_Timebase.cpp";
    v7 = 1024;
    v8 = 300;
    v9 = 2080;
    v10 = "false";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s This should not be called outside of tests", &v5, 0x1Cu);
  }

  abort();
}

double AMCP::Graph::Meta_Timebase::get_max_io_buffer_frame_size(AMCP::Graph::Meta_Timebase *this)
{
  v2 = floor((*(**(this + 5) + 224))(*(this + 5)));
  v3 = *(this + 4);
  return v3 / (*(**(this + 5) + 152))(*(this + 5)) * v2;
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Graph::Meta_Timebase::wait_for_time_to_start(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (*(**(a1 + 40) + 200))(*(a1 + 40));
  v3 = v2;
  if (v2 == 1)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      (*(**(a1 + 40) + 24))(__p);
      if (v12 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315650;
      v14 = "Meta_Timebase.cpp";
      v15 = 1024;
      v16 = 143;
      v17 = 2080;
      v18 = v10;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Failure to start underlying hardware for Meta_Timebase: %s", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t AMCP::Graph::Meta_Timebase::available_past_data(AMCP::Graph::Meta_Timebase *this)
{
  v2 = (*(**(this + 5) + 184))(*(this + 5));
  v3 = *(this + 4);
  return (v3 / (*(**(this + 5) + 152))(*(this + 5)) * v2);
}

unint64_t AMCP::Graph::Meta_Timebase::get_engine_info(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 144))(*(a1 + 40));
  v3 = HIDWORD(v2);
  v4 = *(a1 + 32);
  v5 = (v4 / (*(**(a1 + 40) + 152))(*(a1 + 40)) * v2);
  v6 = *(a1 + 32);
  return v5 | ((v6 / (*(**(a1 + 40) + 152))(*(a1 + 40)) * v3) << 32);
}

uint64_t AMCP::Graph::Meta_Timebase::get_anchor_time(AMCP::Graph::Meta_Timebase *this)
{
  (*(**(this + 5) + 136))(*(this + 5));
  if (v2)
  {
    v3 = COERCE_DOUBLE((*(**(this + 5) + 136))(*(this + 5)));
    if ((v4 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v5 = *(this + 4);
    *&result = v5 / (*(**(this + 5) + 152))(*(this + 5)) * floor(v3);
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t AMCP::Graph::Meta_Timebase::advance_to_time(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  v3.n128_f64[0] = (*(*v2 + 152))(v2) / *(a1 + 32) * floor(a2);
  v4 = *(*v2 + 104);

  return v4(v2, v3);
}

uint64_t AMCP::Graph::Meta_Timebase::advance(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  v3.n128_f64[0] = (*(*v2 + 152))(v2) / *(a1 + 32) * floor(a2);
  v4 = *(*v2 + 96);

  return v4(v2, v3);
}

double AMCP::Graph::Meta_Timebase::convert_host_to_sample_time(AMCP::Graph::Meta_Timebase *this)
{
  v2 = (*(**(this + 5) + 64))(*(this + 5));
  v3 = *(this + 4);
  return v2 * (v3 / (*(**(this + 5) + 152))(*(this + 5)));
}

uint64_t AMCP::Graph::Meta_Timebase::convert_sample_to_host_time(AMCP::Graph::Meta_Timebase *this, double a2)
{
  v2 = *(this + 5);
  v3.n128_f64[0] = (*(*v2 + 152))(v2) / *(this + 4) * a2;
  v4 = *(*v2 + 56);

  return v4(v2, v3);
}

double AMCP::Graph::Meta_Timebase::get_last_zero_time_stamp@<D0>(AMCP::Graph::Meta_Timebase *this@<X0>, double *a2@<X8>)
{
  (*(**(this + 5) + 40))(*(this + 5));
  v4 = *a2;
  v5 = *(this + 4);
  *a2 = v4 * (v5 / (*(**(this + 5) + 152))(*(this + 5)));
  v6 = *(this + 4);
  result = a2[2] * (v6 / (*(**(this + 5) + 152))(*(this + 5)));
  a2[2] = result;
  return result;
}

double AMCP::Graph::Meta_Timebase::get_current_time@<D0>(AMCP::Graph::Meta_Timebase *this@<X0>, double *a2@<X8>)
{
  (*(**(this + 5) + 32))(*(this + 5));
  v4 = *a2;
  v5 = *(this + 4);
  *a2 = v4 * (v5 / (*(**(this + 5) + 152))(*(this + 5)));
  v6 = *(this + 4);
  result = a2[2] * (v6 / (*(**(this + 5) + 152))(*(this + 5)));
  a2[2] = result;
  return result;
}

void AMCP::Graph::Meta_Timebase::~Meta_Timebase(AMCP::Graph::Meta_Timebase *this)
{
  AMCP::Graph::Meta_Timebase::~Meta_Timebase(this);

  JUMPOUT(0x1E12C1730);
}

{
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::pair<std::pair<double,std::string> const,std::shared_ptr<AMCP::Graph::Timebase>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

unint64_t std::hash<std::pair<double,std::string>>::operator()(double *a1)
{
  v2 = *a1;
  v1 = (a1 + 1);
  v3 = 0xC6A4A7935BD1E995 * *&v2;
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  v4 = 0x35A98F4D286A90B9 * (v3 ^ (v3 >> 47)) + 3864292196u;
  v5 = boost::hash<std::string>::operator()(v1);
  return 3864292196u - 0x395B586CA42E166BLL * (v4 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))));
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<double,std::string>,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<double,std::string>,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<double,std::string> const,std::shared_ptr<AMCP::Graph::Timebase>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<double,std::string> const,std::shared_ptr<AMCP::Graph::Timebase>>,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

unint64_t boost::hash<std::string>::operator()(char *a1)
{
  v1 = a1[23];
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = 0;
  if ((v1 & 0x80u) != 0)
  {
    v1 = v2;
  }

  for (; v1; --v1)
  {
    v5 = *v3++;
    result = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ result);
  }

  return result;
}

AMCP::Graph::Meta_Timebase **std::unique_ptr<AMCP::Graph::Meta_Timebase>::~unique_ptr[abi:ne200100](AMCP::Graph::Meta_Timebase **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AMCP::Graph::Meta_Timebase::~Meta_Timebase(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AMCP::Graph::Meta_Timebase *,std::shared_ptr<AMCP::Graph::Meta_Timebase>::__shared_ptr_default_delete<AMCP::Graph::Meta_Timebase,AMCP::Graph::Meta_Timebase>,std::allocator<AMCP::Graph::Meta_Timebase>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP5Graph13Meta_TimebaseEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

AMCP::Graph::Meta_Timebase *std::__shared_ptr_pointer<AMCP::Graph::Meta_Timebase *,std::shared_ptr<AMCP::Graph::Meta_Timebase>::__shared_ptr_default_delete<AMCP::Graph::Meta_Timebase,AMCP::Graph::Meta_Timebase>,std::allocator<AMCP::Graph::Meta_Timebase>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AMCP::Graph::Meta_Timebase::~Meta_Timebase(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::Graph::Meta_Timebase *,std::shared_ptr<AMCP::Graph::Meta_Timebase>::__shared_ptr_default_delete<AMCP::Graph::Meta_Timebase,AMCP::Graph::Meta_Timebase>,std::allocator<AMCP::Graph::Meta_Timebase>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

AMCP::Utility::Dispatch_Queue *AMCP::Utility::Dispatch_Queue::Dispatch_Queue(AMCP::Utility::Dispatch_Queue *this, id *a2)
{
  v4 = *a2;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = v4;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 7) = 0;
  *(this + 8) = 850045863;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 850045863;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 248) = 0u;
  *(this + 30) = 850045863;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 39) = dispatch_semaphore_create(0);
  *(this + 320) = 0;
  *(this + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    *(this + 40) = a2[40];
    *(this + 328) = 1;
  }

  return this;
}

void __destroy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrI19HALS_UCRemotePlugInEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrI19HALS_UCRemotePlugInEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c47_ZTSNSt3__110shared_ptrI19HALS_UCRemotePlugInEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_48c47_ZTSNSt3__110shared_ptrI19HALS_UCRemotePlugInEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DE20EFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::PropertyListRef::~PropertyListRef(va);
  _Unwind_Resume(a1);
}

mcp_applesauce::CF::PropertyListRef *mcp_applesauce::CF::PropertyListRef::PropertyListRef(mcp_applesauce::CF::PropertyListRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFStringGetTypeID() && v3 != CFDataGetTypeID() && v3 != CFNumberGetTypeID() && v3 != CFBooleanGetTypeID() && v3 != CFDateGetTypeID() && v3 != CFArrayGetTypeID() && v3 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return this;
}

void mcp_applesauce::CF::PropertyListRef::~PropertyListRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1DE20F34C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE20F3E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[Remote_Driver_Host_Delegate request_config_change:change_action:change_token:]::$_8>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<unsigned long long>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5960B88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void __destroy_helper_block_ea8_32c92_ZTSZ80__Remote_Driver_Host_Delegate_request_config_change_change_action_change_token__E3__8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 __copy_helper_block_ea8_32c92_ZTSZ80__Remote_Driver_Host_Delegate_request_config_change_change_action_change_token__E3__8(__n128 *a1, __n128 *a2)
{
  v2 = a2[2].n128_u64[1];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a1[2].n128_u64[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_1DE20FA48(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE20FB08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[Remote_Driver_Host_Delegate object_properties_changed:data:]::$_7>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c74_ZTSZ62__Remote_Driver_Host_Delegate_object_properties_changed_data__E3__7(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

id __copy_helper_block_ea8_32c74_ZTSZ62__Remote_Driver_Host_Delegate_object_properties_changed_data__E3__7(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

void sub_1DE20FD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_UCRemotePlugIn::ObjectSetPropertyData(HALS_UCRemotePlugIn *this, int a2, int a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = *(this + 93);
  *buf = a2;
  LODWORD(v27) = a3;
  *(&v27 + 4) = *a4;
  result = [v10 set_property_data:buf qualifier_data_size:a5 qualifier_data:a6 data_size:a7 data:a8];
  v13 = result;
  if (result)
  {
    if (result == 1768911973)
    {
      v15 = [*(this + 93) connection_to_driver];
      [v15 invalidate];
    }

    v12.i32[0] = a4->mSelector;
    v16 = vrev64_s16(*&vmovl_u8(v12));
    v17 = vuzp1_s8(v16, v16);
    v24 = v17.i32[0];
    v25 = 0;
    v17.i32[0] = a4->mScope;
    v18 = vrev64_s16(*&vmovl_u8(v17));
    v22 = vuzp1_s8(v18, v18).u32[0];
    v23 = 0;
    v21[0] = HIBYTE(v13);
    v21[1] = BYTE2(v13);
    v21[2] = BYTE1(v13);
    v21[3] = v13;
    v21[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a4->mElement;
      *buf = 136316674;
      *&v27 = "HALS_UCRemotePlugIn.mm";
      WORD4(v27) = 1024;
      *(&v27 + 10) = 1362;
      HIWORD(v27) = 2080;
      v28 = &v24;
      v29 = 2080;
      v30 = &v22;
      v31 = 2048;
      v32 = mElement;
      v33 = 1024;
      v34 = v13;
      v35 = 2080;
      v36 = v21;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCRemotePlugIn::ObjectSetPropertyData: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v13;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::ObjectGetPropertyData(HALS_UCRemotePlugIn *this, int a2, int a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, uint64_t a7, unsigned int *a8, void *a9)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = *(this + 93);
  *buf = a2;
  LODWORD(v28) = a3;
  *(&v28 + 4) = *a4;
  result = [v11 get_property_data:buf qualifier_data_size:a5 qualifier_data:a6 data_size:a7 out_data_size:a8 out_data:a9];
  v14 = result;
  if (result)
  {
    if (result == 1768911973)
    {
      v16 = [*(this + 93) connection_to_driver];
      [v16 invalidate];
    }

    v13.i32[0] = a4->mSelector;
    v17 = vrev64_s16(*&vmovl_u8(v13));
    v18 = vuzp1_s8(v17, v17);
    v25 = v18.i32[0];
    v26 = 0;
    v18.i32[0] = a4->mScope;
    v19 = vrev64_s16(*&vmovl_u8(v18));
    v23 = vuzp1_s8(v19, v19).u32[0];
    v24 = 0;
    v22[0] = HIBYTE(v14);
    v22[1] = BYTE2(v14);
    v22[2] = BYTE1(v14);
    v22[3] = v14;
    v22[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a4->mElement;
      *buf = 136316674;
      *&v28 = "HALS_UCRemotePlugIn.mm";
      WORD4(v28) = 1024;
      *(&v28 + 10) = 1352;
      HIWORD(v28) = 2080;
      v29 = &v25;
      v30 = 2080;
      v31 = &v23;
      v32 = 2048;
      v33 = mElement;
      v34 = 1024;
      v35 = v14;
      v36 = 2080;
      v37 = v22;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCRemotePlugIn::ObjectGetPropertyData: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v14;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::ObjectGetPropertyDataSize(HALS_UCRemotePlugIn *this, int a2, int a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = 0;
  *buf = a2;
  v8 = *(this + 93);
  LODWORD(v27) = a3;
  *(&v27 + 4) = *a4;
  v9 = [v8 get_property_data_size:buf qualifier_data_size:a5 qualifier_data:a6 out_size:&v25];
  v11 = v9;
  if (v9)
  {
    if (v9 == 1768911973)
    {
      v14 = [*(this + 93) connection_to_driver];
      [v14 invalidate];
    }

    v10.i32[0] = a4->mSelector;
    v15 = vrev64_s16(*&vmovl_u8(v10));
    v16 = vuzp1_s8(v15, v15);
    v23 = v16.i32[0];
    v24 = 0;
    v16.i32[0] = a4->mScope;
    v17 = vrev64_s16(*&vmovl_u8(v16));
    v21 = vuzp1_s8(v17, v17).u32[0];
    v22 = 0;
    v20[0] = HIBYTE(v11);
    v20[1] = BYTE2(v11);
    v20[2] = BYTE1(v11);
    v20[3] = v11;
    v20[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a4->mElement;
      *buf = 136316674;
      *&v27 = "HALS_UCRemotePlugIn.mm";
      WORD4(v27) = 1024;
      *(&v27 + 10) = 1341;
      HIWORD(v27) = 2080;
      v28 = &v23;
      v29 = 2080;
      v30 = &v21;
      v31 = 2048;
      v32 = mElement;
      v33 = 1024;
      v34 = v11;
      v35 = 2080;
      v36 = v20;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCRemotePlugIn::ObjectGetPropertyDataSize: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v11;
  }

  result = v25;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL HALS_UCRemotePlugIn::ObjectIsPropertySettable(HALS_UCRemotePlugIn *this, int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v6 = *(this + 93);
  *buf = a2;
  LODWORD(v25) = a3;
  *(&v25 + 4) = *a4;
  v7 = [v6 is_property_settable:buf out_settable:&v23];
  v9 = v7;
  if (v7)
  {
    if (v7 == 1768911973)
    {
      v12 = [*(this + 93) connection_to_driver];
      [v12 invalidate];
    }

    v8.i32[0] = a4->mSelector;
    v13 = vrev64_s16(*&vmovl_u8(v8));
    v14 = vuzp1_s8(v13, v13);
    v21 = v14.i32[0];
    v22 = 0;
    v14.i32[0] = a4->mScope;
    v15 = vrev64_s16(*&vmovl_u8(v14));
    v19 = vuzp1_s8(v15, v15).u32[0];
    v20 = 0;
    v18[0] = HIBYTE(v9);
    v18[1] = BYTE2(v9);
    v18[2] = BYTE1(v9);
    v18[3] = v9;
    v18[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a4->mElement;
      *buf = 136316674;
      *&v25 = "HALS_UCRemotePlugIn.mm";
      WORD4(v25) = 1024;
      *(&v25 + 10) = 1329;
      HIWORD(v25) = 2080;
      v26 = &v21;
      v27 = 2080;
      v28 = &v19;
      v29 = 2048;
      v30 = mElement;
      v31 = 1024;
      v32 = v9;
      v33 = 2080;
      v34 = v18;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCRemotePlugIn::ObjectIsPropertySettable: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v9;
  }

  result = v23 != 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL HALS_UCRemotePlugIn::ObjectHasProperty(HALS_UCRemotePlugIn *this, int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  v10 = 0;
  v4 = *(this + 93);
  v8[0] = a2;
  v8[1] = a3;
  v9 = *a4;
  v5 = [v4 has_property:v8 out_has_property:&v10];
  return v10 && v5 == 0;
}

uint64_t HALS_UCRemotePlugIn::Do_WriteMix(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, AMCP::Portal::IPC::IO_Sender *a6, uint64_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>((a1 + 832), a2, a4);
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "HALS_UCRemotePlugIn.mm";
      v22 = 1024;
      v23 = 1289;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = v14;
  buffer_type = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a7);
  result = AMCP::Portal::IPC::IO_Sender::do_io_operation(v15[3], a3, 0x72697465, a6, a5, buffer_type, *(a7 + 8), 0, 0);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a3) ^ ((0xC6A4A7935BD1E995 * a3) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47)) + 3864292196u)) + 3864292196u;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a3) ^ ((0xC6A4A7935BD1E995 * a3) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47)) + 3864292196u)) + 3864292196u;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (*(result + 4) == a2 && *(result + 5) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t HALS_UCRemotePlugIn::get_buffer_type(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v7 = 0;
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a2;
  v11[1] = a4;
  v11[2] = a3;
  v11[3] = 1;
  v11[4] = a2;
  v11[5] = 0;
  v11[6] = a3;
  v11[7] = 2;
  v11[8] = a2;
  v12 = 0;
  v13 = 3;
  v14 = a2;
  v15 = 0;
  v16 = 4;
  while (1)
  {
    v8 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>((a1 + 872), &v11[v7]);
    if (v8)
    {
      if (v8[7] == a5)
      {
        break;
      }
    }

    v7 += 4;
    if (v7 == 16)
    {
      result = 0;
      goto LABEL_7;
    }
  }

  result = v11[v7 + 3];
LABEL_7:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>(void *a1, unsigned int *a2)
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
      if (v9 == v4)
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

uint64_t HALS_UCRemotePlugIn::WillDo_WriteMix(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_UCRemotePlugIn.mm";
      v11 = 1024;
      v12 = 1264;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v5[3], kAudioServerPlugInIOOperationWriteMix, a4, &v9);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Do_ConvertMix(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, AMCP::Portal::IPC::IO_Sender *a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>((a1 + 832), a2, a4);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_UCRemotePlugIn.mm";
      v25 = 1024;
      v26 = 1237;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = v16;
  buffer_type = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a7);
  v19 = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a8);
  result = AMCP::Portal::IPC::IO_Sender::do_io_operation(v17[3], a3, 0x636D6978, a6, a5, buffer_type, *(a7 + 8), v19, *(a8 + 8));
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_ConvertMix(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4, BOOL *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_UCRemotePlugIn.mm";
      v13 = 1024;
      v14 = 1213;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v7[3], kAudioServerPlugInIOOperationConvertMix, a4, a5);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Do_ProcessMix(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, AMCP::Portal::IPC::IO_Sender *a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>((a1 + 832), a2, a4);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_UCRemotePlugIn.mm";
      v25 = 1024;
      v26 = 1186;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = v16;
  buffer_type = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a7);
  v19 = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a8);
  result = AMCP::Portal::IPC::IO_Sender::do_io_operation(v17[3], a3, 0x706D6978, a6, a5, buffer_type, *(a7 + 8), v19, *(a8 + 8));
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_ProcessMix(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4, BOOL *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_UCRemotePlugIn.mm";
      v13 = 1024;
      v14 = 1162;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v7[3], kAudioServerPlugInIOOperationProcessMix, a4, a5);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Do_MixOutput(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, AMCP::Portal::IPC::IO_Sender *a6, uint64_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>((a1 + 832), a2, a4);
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "HALS_UCRemotePlugIn.mm";
      v22 = 1024;
      v23 = 1136;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = v14;
  buffer_type = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a7);
  result = AMCP::Portal::IPC::IO_Sender::do_io_operation(v15[3], a3, 0x6D69786F, a6, a5, buffer_type, *(a7 + 8), 0, 0);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_MixOutput(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_UCRemotePlugIn.mm";
      v11 = 1024;
      v12 = 1111;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v5[3], kAudioServerPlugInIOOperationMixOutput, a4, &v9);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Do_ProcessOutput(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, AMCP::Portal::IPC::IO_Sender *a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>((a1 + 832), a2, a4);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_UCRemotePlugIn.mm";
      v25 = 1024;
      v26 = 1084;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = v16;
  buffer_type = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a7);
  v19 = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a8);
  result = AMCP::Portal::IPC::IO_Sender::do_io_operation(v17[3], a3, 0x706F7574, a6, a5, buffer_type, *(a7 + 8), v19, *(a8 + 8));
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_ProcessOutput(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4, BOOL *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_UCRemotePlugIn.mm";
      v13 = 1024;
      v14 = 1060;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v7[3], kAudioServerPlugInIOOperationProcessOutput, a4, a5);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Do_ProcessInput(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, AMCP::Portal::IPC::IO_Sender *a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>((a1 + 832), a2, a4);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_UCRemotePlugIn.mm";
      v25 = 1024;
      v26 = 1033;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = v16;
  buffer_type = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a7);
  v19 = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a8);
  result = AMCP::Portal::IPC::IO_Sender::do_io_operation(v17[3], a3, 0x70696E70, a6, a5, buffer_type, *(a7 + 8), v19, *(a8 + 8));
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_ProcessInput(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4, BOOL *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_UCRemotePlugIn.mm";
      v13 = 1024;
      v14 = 1009;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v7[3], kAudioServerPlugInIOOperationProcessInput, a4, a5);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Do_ConvertInput(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, AMCP::Portal::IPC::IO_Sender *a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>((a1 + 832), a2, a4);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_UCRemotePlugIn.mm";
      v25 = 1024;
      v26 = 982;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = v16;
  buffer_type = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a7);
  v19 = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a8);
  result = AMCP::Portal::IPC::IO_Sender::do_io_operation(v17[3], a3, 0x63696E70, a6, a5, buffer_type, *(a7 + 8), v19, *(a8 + 8));
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_ConvertInput(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4, BOOL *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_UCRemotePlugIn.mm";
      v13 = 1024;
      v14 = 958;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v7[3], kAudioServerPlugInIOOperationConvertInput, a4, a5);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Do_ReadInput(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, AMCP::Portal::IPC::IO_Sender *a6, uint64_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>((a1 + 832), a2, a4);
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "HALS_UCRemotePlugIn.mm";
      v22 = 1024;
      v23 = 911;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = v14;
  buffer_type = HALS_UCRemotePlugIn::get_buffer_type(a1, a2, a3, a4, *a7);
  result = AMCP::Portal::IPC::IO_Sender::do_io_operation(v15[3], a3, 0x72656164, a6, a5, buffer_type, *(a7 + 8), 0, 0);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_ReadInput(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_UCRemotePlugIn.mm";
      v11 = 1024;
      v12 = 886;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v5[3], kAudioServerPlugInIOOperationReadInput, a4, &v9);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::End_IOCycle(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, AudioServerPlugInIOCycleInfo *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_UCRemotePlugIn.mm";
      v12 = 1024;
      v13 = 868;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::end_io_operation(v5[3], 1668899692, a4, v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Begin_IOCycle(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, AudioServerPlugInIOCycleInfo *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_UCRemotePlugIn.mm";
      v12 = 1024;
      v13 = 850;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::begin_io_operation(v5[3], 1668899692, a4, v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_IOCycle(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_UCRemotePlugIn.mm";
      v11 = 1024;
      v12 = 831;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v5[3], kAudioServerPlugInIOOperationCycle, a4, &v9);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::End_IOThread(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, AudioServerPlugInIOCycleInfo *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_UCRemotePlugIn.mm";
      v12 = 1024;
      v13 = 813;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::end_io_operation(v5[3], 1953002084, a4, v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Begin_IOThread(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, AudioServerPlugInIOCycleInfo *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_UCRemotePlugIn.mm";
      v12 = 1024;
      v13 = 795;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::begin_io_operation(v5[3], 1953002084, a4, v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::WillDo_IOThread(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, BOOL *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_UCRemotePlugIn.mm";
      v11 = 1024;
      v12 = 776;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = AMCP::Portal::IPC::IO_Sender::will_do_io_operation(v5[3], kAudioServerPlugInIOOperationThread, a4, &v9);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::GetZeroTimeStamp(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, double *a4, unint64_t *a5, unint64_t *a6)
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v45 = 136315394;
      *&v45[4] = "HALS_UCRemotePlugIn.mm";
      v46 = 1024;
      *v47 = 758;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Could not find io sender for device id", v45, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "could not find io sender");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = 1768911973;
  v11 = v9[3];
  v12 = atomic_load((v11 + 65));
  if ((v12 & 1) == 0)
  {
    *&v45[8] = 0;
    *&v47[2] = 0;
    v48 = 0;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    *v45 = 3;
    *(&v62 + 4) = *(v11 + 48);
    LODWORD(v31) = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    *(&v31 + 1) = 0;
    v34 = 0;
    v13 = AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(v11, v45, &v31, &AMCP::Portal::IPC::k_default_timeout);
    if (v13 == 1768911973)
    {
      v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v17 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v13);
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
        *buf = 136315650;
        v37 = "IO_Sender.cpp";
        v38 = 1024;
        v39 = 335;
        v40 = 2080;
        v41 = "status == k_io_message_terminate_error";
        _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO Sender timed out sending message", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v23, "IO Sender timed out sending message");
      std::runtime_error::runtime_error(&v24, &v23);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = -1;
      v24.__vftable = &unk_1F5992170;
      v25 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v24);
      v42 = "OSStatus AMCP::Portal::IPC::IO_Sender::get_zero_time_stamp(Float64 &, UInt64 &, UInt64 &)";
      v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/IO_Sender.cpp";
      v44 = 335;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
    }

    *a4 = *(&v31 + 1);
    v14 = v33;
    *a5 = v32;
    *a6 = v14;
    v10 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1DE213AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint8_t buf, int a44, int a45, __int16 a46, __int16 a47, __int16 a48, __int16 a49, int a50)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *v52 = 0;
    *v51 = 0;
    *v50 = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE213830);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_UCRemotePlugIn::Stop(HALS_UCRemotePlugIn *this, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = [*(this + 93) stop_io:a2 client_info:a3];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::Start(HALS_UCRemotePlugIn *this, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(this + 93) start_io:a2 client_info:a3])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "HALS_UCRemotePlugIn.mm";
      v9 = 1024;
      v10 = 722;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Failed calling start_io on remote driver", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed calling start_io on remote driver");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  [*(this + 93) retain_reply_for_process_boost];
  result = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE213E58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE213D8CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_UCRemotePlugIn::Unregister_IOThread(HALS_UCRemotePlugIn *this, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 196);
  v6 = (this + 832);
  v7 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (v7)
  {
    v9 = v7;
    v10 = v7[3];
    v11 = atomic_load((v10 + 65));
    if ((v11 & 1) == 0)
    {
      if (AMCP::Feature_Flags::access_event_link_oop_io(0, v8))
      {
        caulk::ipc::synchronous_messenger::eventlink_sender::stop(*(v10 + 8), 5.0);
      }

      else
      {
        caulk::ipc::synchronous_messenger::semaphore_sender::stop(*(v10 + 24), 5.0);
      }

      if (AMCP::Feature_Flags::access_collect_io_perfdata(0, v12))
      {
        v17 = *(v10 + 40);
        if (*v17)
        {
          v18 = atomic_load(v17 + 8);
          if ((v18 & 1) == 0)
          {
            v32 = atomic_load(v17 + 2);
            if (MEMORY[0x1EEE98798])
            {
              if (MEMORY[0x1EEE98788])
              {
                if (v32 <= 0x1000)
                {
                  if (atomic_load(v17 + 2))
                  {
                    v34 = 0;
                    v35 = *MEMORY[0x1E69E48A0];
                    v36 = v17 + 4099;
                    do
                    {
                      v37 = *v17;
                      v38 = v36[v34 - 4096];
                      pdwriter_new_value();
                      v39 = *v17;
                      v40 = *(v36 + v34);
                      pdwriter_record_variable_dbl();
                      v41 = atomic_load(v17 + 2);
                      if (v34 > 0xFFE)
                      {
                        break;
                      }

                      ++v34;
                    }

                    while (v34 < v41);
                  }
                }
              }
            }
          }
        }

        v19 = *(v10 + 40);
        if (*v19)
        {
          if (MEMORY[0x1EEE98778])
          {
            pdwriter_close();
          }

          *v19 = 0;
        }

        atomic_store(1u, (v19 + 8));
      }
    }

    v20 = [*(this + 93) stop_synchronous_messenger:a2 client_id:a3];
    v21 = *(this + 840);
    v22 = v9[1];
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = *(*v6 + 8 * v22);
    do
    {
      v25 = v24;
      v24 = *v24;
    }

    while (v24 != v9);
    if (v25 == (this + 848))
    {
      goto LABEL_40;
    }

    v26 = v25[1];
    if (v23.u32[0] > 1uLL)
    {
      if (v26 >= *&v21)
      {
        v26 %= *&v21;
      }
    }

    else
    {
      v26 &= *&v21 - 1;
    }

    if (v26 != v22)
    {
LABEL_40:
      if (!*v9)
      {
        goto LABEL_41;
      }

      v27 = *(*v9 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v27 >= *&v21)
        {
          v27 %= *&v21;
        }
      }

      else
      {
        v27 &= *&v21 - 1;
      }

      if (v27 != v22)
      {
LABEL_41:
        *(*v6 + 8 * v22) = 0;
      }
    }

    v28 = *v9;
    if (*v9)
    {
      v29 = *(v28 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v29 >= *&v21)
        {
          v29 %= *&v21;
        }
      }

      else
      {
        v29 &= *&v21 - 1;
      }

      if (v29 != v22)
      {
        *(*v6 + 8 * v29) = v25;
        v28 = *v9;
      }
    }

    *v25 = v28;
    *v9 = 0;
    --*(this + 107);
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v9);
    os_unfair_lock_unlock(this + 196);
  }

  else
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v14;
      AMCP::Log::Scope::get_os_log_t(*v14);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v16 = *v14;
      AMCP::Log::Scope::get_os_log_t(*v14);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v42 = 136315906;
      v43 = "HALS_UCRemotePlugIn.mm";
      v44 = 1024;
      v45 = 699;
      v46 = 1024;
      v47 = a2;
      v48 = 1024;
      v49 = a3;
      _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_INFO, "%32s:%-5d Could not find io sender for device id %u, clientID %u", &v42, 0x1Eu);
    }

    else
    {
    }

    os_unfair_lock_unlock(this + 196);
    v20 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1DE2142A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, int a12, __int16 a13, int a14, __int16 a15, int a16)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE213FD8);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t HALS_UCRemotePlugIn::Register_IOThread(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, double a4)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 196);
  v7 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(this + 104, a2, a3);
  if (!v7)
  {
    operator new();
  }

  v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v8 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v7);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *v9;
    AMCP::Log::Scope::get_os_log_t(*v9);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    v11 = *v9;
    AMCP::Log::Scope::get_os_log_t(*v9);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "HALS_UCRemotePlugIn.mm";
    *&buf[12] = 1024;
    *&buf[14] = 665;
    v15 = 1024;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_INFO, "%32s:%-5d io sender already exists for deviceID %u, clientID %u", buf, 0x1Eu);
  }

  else
  {
  }

  os_unfair_lock_unlock(this + 196);
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE215680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, int a12, int a13, uint64_t a14, std::runtime_error a15, uint64_t a16, std::runtime_error a17, int a18, __int16 a19, char a20, char a21, void *__p, void *a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint8_t buf, int a37, int a38, __int16 a39, int a40, __int16 a41, __int16 a42, char a43, char a44, __int16 a45)
{
  if (a2)
  {
    if (a27 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE215004);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Portal::IPC::IO_Sender>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5960BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_UCRemotePlugIn::UnregisterIOBuffer(HALS_UCRemotePlugIn *this, unsigned int a2, unsigned int a3, unsigned int a4, BOOL a5, unsigned int a6, void *a7)
{
  v8 = *MEMORY[0x1E69E9840];
  HALS_UCRemotePlugIn::unregister_shared_buffer(this, a2, a4, a3, 1u);
  v7 = *MEMORY[0x1E69E9840];
}

void HALS_UCRemotePlugIn::unregister_shared_buffer(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = __PAIR64__(a3, a2);
  v21 = __PAIR64__(a5, a4);
  os_unfair_lock_lock((a1 + 784));
  v6 = (a1 + 872);
  v7 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>((a1 + 872), &v20);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_UCRemotePlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 553;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Invalid shared buffer", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid shared buffer");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = v7;
  [*(a1 + 744) unregister_buffer:{v7[4], v20, v21}];
  v9 = *(a1 + 880);
  v10 = v8[1];
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    if (v10 >= *&v9)
    {
      v10 %= *&v9;
    }
  }

  else
  {
    v10 &= *&v9 - 1;
  }

  v12 = *(*v6 + 8 * v10);
  do
  {
    v13 = v12;
    v12 = *v12;
  }

  while (v12 != v8);
  if (v13 == (a1 + 888))
  {
    goto LABEL_19;
  }

  v14 = v13[1];
  if (v11.u32[0] > 1uLL)
  {
    if (v14 >= *&v9)
    {
      v14 %= *&v9;
    }
  }

  else
  {
    v14 &= *&v9 - 1;
  }

  if (v14 != v10)
  {
LABEL_19:
    if (!*v8)
    {
      goto LABEL_20;
    }

    v15 = *(*v8 + 8);
    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v10)
    {
LABEL_20:
      *(*v6 + 8 * v10) = 0;
    }
  }

  v16 = *v8;
  if (*v8)
  {
    v17 = *(v16 + 8);
    if (v11.u32[0] > 1uLL)
    {
      if (v17 >= *&v9)
      {
        v17 %= *&v9;
      }
    }

    else
    {
      v17 &= *&v9 - 1;
    }

    if (v17 != v10)
    {
      *(*v6 + 8 * v17) = v13;
      v16 = *v8;
    }
  }

  *v13 = v16;
  *v8 = 0;
  --*(a1 + 896);
  *buf = v8;
  *&buf[8] = a1 + 872;
  buf[16] = 1;
  *&buf[17] = 0;
  *&buf[20] = 0;
  std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
  os_unfair_lock_unlock((a1 + 784));
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t const,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t const,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
}

void HALS_UCRemotePlugIn::register_shared_buffer(os_unfair_lock_s *a1, int64_t a2, int64_t a3, int64_t a4, unsigned int a5, void *region, size_t length)
{
  v49 = *MEMORY[0x1E69E9840];
  v12 = xpc_shmem_create(region, length);
  caulk::mach::details::release_os_object(0, v13);
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (!v14)
  {
    v15 = xpc_null_create();
  }

  v16 = v15;
  v17 = v16;
  v33 = v16;
  if (!v16 || MEMORY[0x1E12C2A30](v16) != MEMORY[0x1E69E9E80])
  {
    v33 = xpc_null_create();
  }

  applesauce::xpc::object::object(&v47, a2);
  *buf = &v33;
  *&buf[8] = "buffer device id";
  applesauce::xpc::dict::object_proxy::operator=(&v32, buf, &v47);
  v18 = v32;
  *&v32 = 0;

  v19 = v47;
  v47 = 0;

  applesauce::xpc::object::object(&v45, a3);
  *buf = &v33;
  *&buf[8] = "buffer client id";
  applesauce::xpc::dict::object_proxy::operator=(&v46, buf, &v45);
  v20 = v46;
  v46 = 0;

  v21 = v45;
  v45 = 0;

  applesauce::xpc::object::object(&v43, a4);
  *buf = &v33;
  *&buf[8] = "buffer stream id";
  applesauce::xpc::dict::object_proxy::operator=(&v44, buf, &v43);
  v22 = v44;
  v44 = 0;

  v23 = v43;
  v43 = 0;

  v24 = xpc_int64_create(a5);
  v41 = v24;
  if (!v24)
  {
    v41 = xpc_null_create();
  }

  *buf = &v33;
  *&buf[8] = "buffer type";
  applesauce::xpc::dict::object_proxy::operator=(&v42, buf, &v41);
  v25 = v42;
  v42 = 0;

  v26 = v41;
  v41 = 0;

  v27 = v12;
  v39 = v27;
  if (!v27)
  {
    v39 = xpc_null_create();
  }

  *buf = &v33;
  *&buf[8] = "buffer shared memory";
  applesauce::xpc::dict::object_proxy::operator=(&v40, buf, &v39);

  applesauce::xpc::object::object(v34, v33);
  v34[1] = caulk::mach::details::retain_os_object(v27, v28);
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v29 = v33;
  v33 = 0;

  caulk::mach::details::release_os_object(v27, v30);
  os_unfair_lock_lock(a1 + 196);
  v31 = v34[0];
  std::allocate_shared[abi:ne200100]<caulk::ipc::mapped_memory,std::allocator<caulk::ipc::mapped_memory>,caulk::mach::xpc_object const&,0>();
}

void sub_1DE216530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  os_unfair_lock_unlock(v8 + 196);
  std::tuple<applesauce::xpc::dict,caulk::mach::xpc_object,AMCP::Portal::IPC::shared_buffer_info_t>::~tuple(va, v10);
  _Unwind_Resume(a1);
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, int64_t value)
{
  v3 = xpc_int64_create(value);
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

void applesauce::xpc::dict::object_proxy::operator=(void *a1, uint64_t a2, id *a3)
{
  v6 = **a2;
  AMCP::Log::Scope::get_os_log_t(v6);
  objc_claimAutoreleasedReturnValue();
  v7 = *(a2 + 8);
  v8 = *a3;
  xpc_dictionary_set_value(v6, v7, v8);

  *a1 = *a3;
  v9 = xpc_null_create();
  v10 = *a3;
  *a3 = v9;
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, const applesauce::xpc::object *a2)
{
  v3 = a2;
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

void sub_1DE216790(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unint64_t std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::__emplace_unique_key_args<AMCP::Portal::IPC::shared_buffer_info_t,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>(void *a1, unsigned int *a2)
{
  result = std::hash<AMCP::Portal::IPC::shared_buffer_info_t>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_21;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = result;
    if (result >= *&v5)
    {
      v7 = result % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & result;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == result)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_21;
    }

LABEL_20:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_21;
    }
  }

  if (*(v9 + 4) != *a2 || *(v9 + 5) != a2[1] || *(v9 + 6) != a2[2] || *(v9 + 7) != a2[3])
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1DE216C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::tuple<applesauce::xpc::dict,caulk::mach::xpc_object,AMCP::Portal::IPC::shared_buffer_info_t>::~tuple(uint64_t a1, void *a2)
{
  caulk::mach::details::release_os_object(*(a1 + 8), a2);
  v3 = *a1;
  *a1 = 0;

  return a1;
}

void std::__shared_ptr_emplace<caulk::ipc::mapped_memory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59850E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_UCRemotePlugIn::create_mcp_engine(HALS_UCRemotePlugIn *this, HALS_PlugIn *a2, const HALS_IODevice *a3, const unsigned int *a4)
{
  obj[42] = *MEMORY[0x1E69E9840];
  v7 = (*(*a3 + 216))(a3);
  cf = v7;
  if (!v7 || (v8 = CFGetTypeID(v7), v8 == CFStringGetTypeID()))
  {
    v19 = (*(*a3 + 272))(a3);
    v18 = (*(*a3 + 304))(a3);
    v17 = (*(*a3 + 328))(a3);
    v16 = (*(*a3 + 320))(a3, 1);
    v15 = (*(*a3 + 320))(a3, 0);
    v14 = (*(*a3 + 312))(a3, 1);
    v13 = (*(*a3 + 312))(a3, 0);
    AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(obj, "ASP::Engine Queue");
    objc_storeStrong(this + 6, obj[0]);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(obj);
    make_stream_list(obj, a3, 1);
    make_stream_list(&__p, a3, 0);
    v9 = *(a2 + 53);
    v11 = *(a2 + 52);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::allocate_shared[abi:ne200100]<AMCP::ASP::Engine,std::allocator<AMCP::ASP::Engine>,std::shared_ptr<AMCP::ASP::PlugIn>,BOOL,std::shared_ptr<HALS_UCPlugInBase>,unsigned int const&,applesauce::CF::StringRef &,double &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> &,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> &,AMCP::Utility::Dispatch_Queue &,0>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE2170C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, void *a34)
{
  __cxa_free_exception(v34);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a33);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void make_stream_list(const HALS_IODevice *a1, HALS_IODevice *this, char a3)
{
  v3 = a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  NumberStreams = HALS_IODevice::GetNumberStreams(this, a3);
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(v3, NumberStreams);
  if (NumberStreams)
  {
    v5 = 0;
    v29 = v3;
    v30 = NumberStreams;
    do
    {
      v6 = HALS_IODevice::CopyStreamByIndex(this, a3, v5);
      v7 = (*(*v6 + 208))(v6);
      v8 = v6[23];
      v9 = v6[4];
      v42 = 0x676C6F6270667420;
      v43 = 0;
      v44 = 0;
      (*(*v6 + 120))(v6, v9, &v42, 40, &v44, &v33, 0, 0, 0);
      v11 = v34;
      v10 = v35;
      v13 = v36;
      v12 = v37;
      v15 = v38;
      v14 = v39;
      v16 = v40;
      if (v34 == 1819304813 && (v35 & 0x40) == 0)
      {
        v13 = 4 * v39;
        v16 = 32;
        v12 = 1;
        v10 = 9;
        v15 = 4 * v39;
      }

      v17 = v33;
      v18 = v41;
      v19 = *(v3 + 1);
      v20 = *(v3 + 2);
      if (v19 >= v20)
      {
        v22 = *v3;
        v23 = v19 - *v3;
        v24 = 0x6DB6DB6DB6DB6DB7 * (v23 >> 3) + 1;
        if (v24 > 0x492492492492492)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v22) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x249249249249249)
        {
          v26 = 0x492492492492492;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](v26);
        }

        v27 = 8 * (v23 >> 3);
        *v27 = v7;
        *(v27 + 4) = v8;
        *(v27 + 8) = 0;
        *(v27 + 16) = v17;
        *(v27 + 24) = v11;
        *(v27 + 28) = v10;
        *(v27 + 32) = v13;
        *(v27 + 36) = v12;
        *(v27 + 40) = v15;
        *(v27 + 44) = v14;
        *(v27 + 48) = v16;
        *(v27 + 52) = v18;
        v21 = v27 + 56;
        v28 = v27 - v23;
        memcpy((v27 - v23), v22, v23);
        v3 = v29;
        *v29 = v28;
        *(v29 + 1) = v21;
        *(v29 + 2) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v19 = v7;
        *(v19 + 4) = v8;
        *(v19 + 8) = 0;
        *(v19 + 16) = v17;
        *(v19 + 24) = v11;
        *(v19 + 28) = v10;
        *(v19 + 32) = v13;
        *(v19 + 36) = v12;
        *(v19 + 40) = v15;
        *(v19 + 44) = v14;
        v21 = v19 + 56;
        *(v19 + 48) = v16;
        *(v19 + 52) = v18;
      }

      *(v3 + 1) = v21;
      ++v5;
    }

    while (v30 != v5);
  }
}

void sub_1DE217440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE21763C(_Unwind_Exception *a1)
{
  applesauce::CF::StringRef::~StringRef((v4 - 136));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::shared_ptr<AMCP::ASP::Engine>::__enable_weak_this[abi:ne200100]<AMCP::Core::Engine,AMCP::ASP::Engine,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_emplace<AMCP::ASP::Engine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597D178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_UCRemotePlugIn::DestroyEngine(HALS_UCRemotePlugIn *this, HALS_Object *a2)
{
  v2 = *(this + 100);
  if (v2)
  {
    v4 = vcnt_s8(v2);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a2;
      if (v2 <= a2)
      {
        v5 = a2 % v2;
      }
    }

    else
    {
      v5 = (v2 - 1) & a2;
    }

    v6 = *(*(this + 99) + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = *(i + 1);
        if (v8 == a2)
        {
          if (i[4] == a2)
          {
            HALS_ObjectMap::ReleaseObject(*(i + 3), a2);
            v9 = *(this + 800);
            v10 = *(i + 1);
            v11 = vcnt_s8(v9);
            v11.i16[0] = vaddlv_u8(v11);
            if (v11.u32[0] > 1uLL)
            {
              if (v10 >= *&v9)
              {
                v10 %= *&v9;
              }
            }

            else
            {
              v10 &= *&v9 - 1;
            }

            v12 = *(this + 99);
            v13 = *(v12 + 8 * v10);
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13 != i);
            if (v14 == (this + 808))
            {
              goto LABEL_35;
            }

            v15 = v14[1];
            if (v11.u32[0] > 1uLL)
            {
              if (v15 >= *&v9)
              {
                v15 %= *&v9;
              }
            }

            else
            {
              v15 &= *&v9 - 1;
            }

            if (v15 != v10)
            {
LABEL_35:
              if (!*i)
              {
                goto LABEL_36;
              }

              v16 = *(*i + 8);
              if (v11.u32[0] > 1uLL)
              {
                if (v16 >= *&v9)
                {
                  v16 %= *&v9;
                }
              }

              else
              {
                v16 &= *&v9 - 1;
              }

              if (v16 != v10)
              {
LABEL_36:
                *(v12 + 8 * v10) = 0;
              }
            }

            v17 = *i;
            if (*i)
            {
              v18 = *(v17 + 8);
              if (v11.u32[0] > 1uLL)
              {
                if (v18 >= *&v9)
                {
                  v18 %= *&v9;
                }
              }

              else
              {
                v18 &= *&v9 - 1;
              }

              if (v18 != v10)
              {
                *(*(this + 99) + 8 * v18) = v14;
                v17 = *i;
              }
            }

            *v14 = v17;
            *i = 0;
            --*(this + 102);

            operator delete(i);
            return;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }
          }

          else
          {
            v8 &= v2 - 1;
          }

          if (v8 != v5)
          {
            return;
          }
        }
      }
    }
  }
}

uint64_t HALS_UCRemotePlugIn::ObjectWasDestroyed(HALS_UCRemotePlugIn *this, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(this + 93) object_was_destroyed:a2];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::DestroyDevice(HALS_UCRemotePlugIn *this, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(this + 93) destroy_device:a2];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::CreateDevice(HALS_UCRemotePlugIn *this, const __CFDictionary *a2, const AudioServerPlugInClientInfo *a3, unsigned int *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = [*(this + 93) create_device:a2 client_info:a3 out_object_id:a4];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::AbortDeviceConfigChange(HALS_UCRemotePlugIn *this, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [*(this + 93) perform_device_configuration_change:a2 action:a3 change:*a4];
  v7 = *(this + 95);
  v8 = *(this + 96);
  if (v7 != v8)
  {
    while (*v7 != a4)
    {
      v7 += 16;
      if (v7 == v8)
      {
        v7 = *(this + 96);
        break;
      }
    }
  }

  if (v8 != v7)
  {
    if (v7 + 16 == v8)
    {
      v11 = v7;
    }

    else
    {
      do
      {
        v9 = *(v7 + 16);
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        v10 = *(v7 + 8);
        *v7 = v9;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v11 = v7 + 16;
        v12 = v7 + 32;
        v7 += 16;
      }

      while (v12 != v8);
      v8 = *(this + 96);
    }

    while (v8 != v11)
    {
      v13 = *(v8 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v8 -= 16;
    }

    *(this + 96) = v11;
  }

  return v6;
}

uint64_t HALS_UCRemotePlugIn::PerformDeviceConfigChange(HALS_UCRemotePlugIn *this, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [*(this + 93) perform_device_configuration_change:a2 action:a3 change:*a4];
  v7 = *(this + 95);
  v8 = *(this + 96);
  if (v7 != v8)
  {
    while (*v7 != a4)
    {
      v7 += 16;
      if (v7 == v8)
      {
        v7 = *(this + 96);
        break;
      }
    }
  }

  if (v8 != v7)
  {
    if (v7 + 16 == v8)
    {
      v11 = v7;
    }

    else
    {
      do
      {
        v9 = *(v7 + 16);
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        v10 = *(v7 + 8);
        *v7 = v9;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v11 = v7 + 16;
        v12 = v7 + 32;
        v7 += 16;
      }

      while (v12 != v8);
      v8 = *(this + 96);
    }

    while (v8 != v11)
    {
      v13 = *(v8 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v8 -= 16;
    }

    *(this + 96) = v11;
  }

  return v6;
}

uint64_t HALS_UCRemotePlugIn::RemoveDeviceClient(HALS_UCRemotePlugIn *this, uint64_t a2, const AudioServerPlugInClientInfo *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = [*(this + 93) remove_device_client:a2 client_info:a3];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_UCRemotePlugIn::AddDeviceClient(HALS_UCRemotePlugIn *this, uint64_t a2, const AudioServerPlugInClientInfo *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = [*(this + 93) add_device_client:a2 client_info:a3];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_UCRemotePlugIn::Teardown(HALS_UCRemotePlugIn *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN19HALS_UCRemotePlugIn8TeardownEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  v1 = atomic_load(this + 424);
  if (v1)
  {
    atomic_store(1u, this + 425);
  }

  dispatch_sync(*(this + 49), block);
}

void ___ZN19HALS_UCRemotePlugIn8TeardownEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 736);
  if (v2)
  {
    [v2 teardown];
    v3 = *(v1 + 736);
    *(v1 + 736) = 0;

    *(v1 + 752) = 0;
  }
}

uint64_t HALS_UCRemotePlugIn::Initialize(HALS_UCRemotePlugIn *this, const AudioServerPlugInHostInterface *a2)
{
  v3 = *(this + 3);
  if (!v3 || (v5 = *(this + 2), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = [Remote_Driver_Host_Delegate alloc];
  v17 = v5;
  v18 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = [(Remote_Driver_Host_Delegate *)v8 init_with_remote_plugin:&v17];
  v10 = *(this + 92);
  *(this + 92) = v9;

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v11 = [[Core_Audio_Driver_Host alloc] init_with_delegate:*(this + 92)];
  v12 = *(this + 93);
  *(this + 93) = v11;

  [*(this + 93) setDriver_endpoint:*(this + 48)];
  *(this + 94) = a2;
  v13 = *(this + 93);
  v14 = [v13 driver_endpoint];
  v15 = [v13 initialize_driver:v14];

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  return v15;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

void HALS_UCRemotePlugIn::~HALS_UCRemotePlugIn(HALS_UCRemotePlugIn *this, HALS_Object *a2)
{
  HALS_UCRemotePlugIn::~HALS_UCRemotePlugIn(this, a2);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59608C0;
  v3 = (this + 792);
  v4 = (this + 808);
  for (i = (this + 808); ; HALS_ObjectMap::ReleaseObject(i[3], a2))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  if (*(this + 102))
  {
    v6 = *v4;
    if (*v4)
    {
      do
      {
        v7 = *v6;
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    *(this + 101) = 0;
    v8 = *(this + 100);
    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        *(*v3 + 8 * j) = 0;
      }
    }

    *(this + 102) = 0;
  }

  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::~__hash_table(this + 872);
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(this + 832);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v3);
  v13 = (this + 760);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v13);

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 392));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 48));
  v10 = *(this + 5);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t const,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

AMCP::Utility::Dispatch_Queue *AMCP::Utility::Dispatch_Queue::Dispatch_Queue(AMCP::Utility::Dispatch_Queue *a1, char *a2)
{
  v5[42] = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(v5, a2);
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(a1, v5);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE218CC0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8672F68, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void ADS::Simulator::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5, const __CFString **a6, int a7, const __CFString **a8, _DWORD *a9, uint64_t a10)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*a4 == 1684371021)
  {
    if (a5 != 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "ADS_Simulator.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 572;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::SetPropertyData: the qualifier is the wrong size for kAudioFakeDevicePropertyManageDevices", &buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    if (!a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "ADS_Simulator.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 573;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::SetPropertyData: no qualifier for kAudioFakeDevicePropertyManageDevices", &buf, 0x12u);
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      *v38 = off_1F5991DD8;
      v38[2] = 561211770;
    }

    v14 = *(a1 + 120);
    v13 = a1 + 120;
    v45[2] = a1 + 120;
    v15 = (*(v14 + 16))(a1 + 120);
    v46 = v15;
    v16 = *a6;
    if (CFStringCompare(v16, @"create", 1uLL))
    {
      if (CFStringCompare(v16, @"destroy", 1uLL))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = "ADS_Simulator.cpp";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = 595;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Simulator::SetPropertyData: Unsupported operation", &buf, 0x12u);
          if (!v15)
          {
            goto LABEL_31;
          }
        }

        else if (!v15)
        {
LABEL_31:
          v28 = *MEMORY[0x1E69E9840];
          return;
        }

LABEL_30:
        (*(*v13 + 24))(v13);
        goto LABEL_31;
      }

      if (a7 == 8)
      {
        v20 = PropertyListDeepImmutableCopy(*a8);
        v45[0] = &unk_1F5991188;
        v45[1] = v20;
        OS::CF::UntypedObject::UntypedObject(v44, v20);
        v44[0] = &unk_1F5991188;
        v21 = ADS::ObjectManager::CopyObjectByObjectID(1);
        if (!v21)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = "ADS_Simulator.cpp";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 787;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  SA_PlugIn::IOServiceInterestHandler: no plug-in object", &buf, 0x12u);
          }

          v42 = __cxa_allocate_exception(0x10uLL);
          *v42 = off_1F5991DD8;
          v42[2] = 1852797029;
        }

        OS::CF::UntypedObject::UntypedObject(&v47, v44[1]);
        v47 = &unk_1F5991188;
        pthread_once(&ADS::ObjectManager::sStaticInitializer, ADS::ObjectManager::StaticInitializer);
        v22 = v48;
        if (v48)
        {
          v23 = ADS::ObjectManager::sMutex;
          *v50 = ADS::ObjectManager::sMutex;
          if (ADS::ObjectManager::sMutex)
          {
            v24 = (*(*ADS::ObjectManager::sMutex + 16))(ADS::ObjectManager::sMutex);
            v22 = v48;
          }

          else
          {
            v24 = 0;
          }

          v50[8] = v24;
          v32 = ADS::ObjectManager::sInstance;
          OS::CF::UntypedObject::UntypedObject(&v49, v22);
          v49 = &unk_1F5991188;
          OS::CF::String::AsStdString(&buf, &v49);
          v30 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>((v32 + 40), &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v30)
          {
            v33 = *(v30 + 40);
            if (*(v30 + 48) == v33)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v30 = ADS::ObjectManager::CopyObjectByObjectID(*v33);
          }

          OS::CF::UntypedObject::~UntypedObject(&v49);
          if (v24)
          {
            (*(*v23 + 24))(v23);
          }

          OS::CF::UntypedObject::~UntypedObject(&v47);
          if (v30)
          {
            if (*(v30 + 12) == 1633905771)
            {
              v34 = 1668049699;
            }

            else
            {
              v34 = 1684370979;
            }

            ADS::Simulator::RemoveDevice(v21, v30);
            (*(*v30 + 8))(v30);
            ADS::ObjectManager::ReleaseObject(v30, v35);
            *a9 = 2;
            strcpy(&buf, "dnwobolg");
            buf.__r_.__value_.__s.__data_[9] = 0;
            WORD1(buf.__r_.__value_.__r.__words[1]) = 0;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &buf);
            LODWORD(buf.__r_.__value_.__l.__data_) = v34;
            *(buf.__r_.__value_.__r.__words + 4) = 1735159650;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &buf);
          }
        }

        else
        {
          OS::CF::UntypedObject::~UntypedObject(&v47);
          v30 = 0;
        }

        ADS::ObjectManager::ReleaseObject(v30, v29);
        ADS::ObjectManager::ReleaseObject(v21, v36);
        OS::CF::UntypedObject::~UntypedObject(v44);
        OS::CF::UntypedObject::~UntypedObject(v45);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_64:
        v41 = __cxa_allocate_exception(0x10uLL);
        *v41 = off_1F5991DD8;
        v41[2] = 561211770;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "ADS_Simulator.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 587;
      v39 = MEMORY[0x1E69E9C10];
LABEL_63:
      _os_log_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::SetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyManageDevices", &buf, 0x12u);
      goto LABEL_64;
    }

    if (a7 != 8)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "ADS_Simulator.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 580;
      v39 = MEMORY[0x1E69E9C10];
      goto LABEL_63;
    }

    v18 = PropertyListDeepImmutableCopy(*a8);
    v47 = &unk_1F5991008;
    v48 = v18;
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "ADS_Simulator.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 680;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::AddDeviceWithProperties: no properties dictionary for device creation", &buf, 0x12u);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      *v40 = off_1F5991DD8;
      v40[2] = 1852797029;
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v50, v18, @"type");
    OS::CF::String::AsStdString(&buf, v50);
    OS::CF::UntypedObject::~UntypedObject(v50);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      if (buf.__r_.__value_.__l.__size_ != 3)
      {
        goto LABEL_28;
      }

      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) != 3)
      {
        goto LABEL_28;
      }

      p_buf = &buf;
    }

    data_low = LOWORD(p_buf->__r_.__value_.__l.__data_);
    v26 = p_buf->__r_.__value_.__s.__data_[2];
    if (data_low == 28514 && v26 == 120)
    {
      v31 = ADS::ObjectManager::CopyObjectByObjectID(1);
      if (v31)
      {
        ADS::ObjectManager::GetNextObjectID(v31);
        operator new();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v50 = 136315394;
        *&v50[4] = "ADS_Simulator.cpp";
        v51 = 1024;
        v52 = 700;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::AddBox: no plug-in object", v50, 0x12u);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      *v43 = off_1F5991DD8;
      v43[2] = 1852797029;
    }

LABEL_28:
    ADS::Simulator::AddDeviceWithProperties(&v47);
  }

  v17 = *MEMORY[0x1E69E9840];

  ADS::BaseObject::SetPropertyData(a1, a2);
}

void sub_1DE219B34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

OS::CF::UntypedObject *OS::CF::UntypedObject::UntypedObject(OS::CF::UntypedObject *this, CFTypeRef cf)
{
  *this = &unk_1F5991080;
  if (cf)
  {
    CFRetain(cf);
  }

  *(this + 1) = cf;
  return this;
}

void CADeprecated::CAMutex::Locker::~Locker(CADeprecated::CAMutex::Locker *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

void ADS::Simulator::RemoveDevice(ADS::Simulator *this, ADS::Device *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = this + 120;
  v5 = (*(*(this + 15) + 16))(this + 120);
  if (a2)
  {
    v6 = *(a2 + 3);
    v7 = v6 == 1633905771 || v6 == 1633969526;
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "ADS_Simulator.cpp";
        v20 = 1024;
        v21 = 866;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::_RemoveDevice: Trying to remove a device that is neither a 'device' nor a 'clockdevice'", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v7 = v6 == 1633969526;
    v8 = 232;
    if (v7)
    {
      v8 = 208;
    }

    v9 = this + v8;
    v11 = *(this + v8);
    v10 = *(v9 + 1);
    if (v11 != v10)
    {
      while (*v11 != *(a2 + 2))
      {
        v11 += 4;
        if (v11 == v10)
        {
          goto LABEL_17;
        }
      }
    }

    if (v11 == v10)
    {
LABEL_17:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "ADS_Simulator.cpp";
        v20 = 1024;
        v21 = 883;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device not found on ADS remove", buf, 0x12u);
      }
    }

    else
    {
      (*(*a2 + 8))(a2);
      ADS::ObjectManager::ReleaseObject(a2, v12);
      *v11 = 0;
      v13 = *(v9 + 1);
      v14 = v13 - (v11 + 4);
      if (v13 != v11 + 4)
      {
        memmove(v11, v11 + 4, v13 - (v11 + 4));
      }

      *(v9 + 1) = &v11[v14];
    }
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DE21A074(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

void std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OS::CF::String::~String(OS::CF::String *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &unk_1F5991188;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value ? CFGetTypeID(value) : 0;
      result = CFStringGetTypeID();
      if (v4 == result)
      {
        v5 = value;
        if (value)
        {
          CFRetain(value);
          v6 = v3;
          v7 = v5;
        }

        else
        {
          v6 = v3;
          v7 = 0;
        }

        return OS::CF::UntypedObject::operator=(v6, v7);
      }
    }
  }

  return result;
}

void OS::CF::String::AsStdString(std::string *this, uint64_t a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
    if (CStringPtr)
    {
      std::string::__assign_external(this, CStringPtr);
    }

    else
    {
      maxBufLen = 0;
      v6 = *(a2 + 8);
      v10.length = CFStringGetLength(v6);
      v10.location = 0;
      CFStringGetBytes(v6, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
      std::vector<char>::vector[abi:ne200100](buffer, maxBufLen + 1);
      v7 = *(a2 + 8);
      v11.length = CFStringGetLength(v7);
      v11.location = 0;
      CFStringGetBytes(v7, v11, 0x8000100u, 0, 0, buffer[0], maxBufLen, &maxBufLen);
      buffer[0][maxBufLen] = 0;
      std::string::__assign_external(this, buffer[0]);
      if (buffer[0])
      {
        buffer[1] = buffer[0];
        operator delete(buffer[0]);
      }
    }
  }
}

void ADS::Simulator::AddDeviceWithProperties(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ADS::ObjectManager::CopyObjectByObjectID(1);
  if (v2)
  {
    if (*(a1 + 8))
    {
      ADS::ObjectManager::GetNextObjectID(v2);
      operator new();
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    buf = 136315394;
    buf_4 = "ADS_Simulator.cpp";
    v8 = 1024;
    v9 = 737;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "%25s:%-5d  ADS::Simulator::AddDeviceWithProperties: no properties dictionary for device creation";
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    buf = 136315394;
    buf_4 = "ADS_Simulator.cpp";
    v8 = 1024;
    v9 = 736;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "%25s:%-5d  ADS::Simulator::AddDeviceWithProperties: no plug-in object";
  }

  _os_log_impl(&dword_1DE1F9000, v3, OS_LOG_TYPE_ERROR, v4, &buf, 0x12u);
  goto LABEL_9;
}

void sub_1DE21A848(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1DE21A8C4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE21A8CCLL);
  }

  JUMPOUT(0x1DE21A8B4);
}

void ADS::Simulator::_RemoveBox(ADS::Simulator *this, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = (this + 120);
  v5 = (*(*(this + 15) + 16))(this + 120);
  v7 = v4[17];
  v6 = v4[18];
  if (v7 != v6)
  {
    while (*v7 != a2)
    {
      v7 += 4;
      if (v7 == v6)
      {
        v7 = v4[18];
        break;
      }
    }
  }

  if (v6 == v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "ADS_Simulator.cpp";
      v12 = 1024;
      v13 = 911;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device not found on ADS remove", &v10, 0x12u);
    }
  }

  else
  {
    v8 = v6 - (v7 + 4);
    if (v6 != v7 + 4)
    {
      memmove(v7, v7 + 4, v6 - (v7 + 4));
    }

    *(this + 33) = &v7[v8];
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE21AAE8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE21AB94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void OS::CF::Dictionary::~Dictionary(OS::CF::Dictionary *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

void ADS::Simulator::GetPropertyData(ADS::Simulator *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, uint64_t *a6, unsigned int a7, unsigned int *a8, char *a9)
{
  v9 = a8;
  v13 = a9;
  v95 = *MEMORY[0x1E69E9840];
  mSelector = a4->mSelector;
  if (a4->mSelector > 1819173228)
  {
    if (mSelector <= 1920168546)
    {
      if (mSelector == 1819173229)
      {
        if (a7 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Simulator.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 361;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: not enough space for the return value of kAudioObjectPropertyName", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = 561211770;
        }

        v15 = @"PluginSimulator";
        goto LABEL_78;
      }

      if (mSelector != 1819569763)
      {
        if (mSelector != 1870098020)
        {
          goto LABEL_87;
        }

        v17 = (this + 120);
        v18 = (*(*(this + 15) + 16))(this + 120);
        v19 = *(this + 26);
        v20 = *(this + 27) - v19;
        v21 = *(this + 32);
        if (((*(this + 30) - *(this + 29)) >> 2) + (v20 >> 2) + ((*(this + 33) - v21) >> 2) >= (a7 >> 2))
        {
          v22 = a7 >> 2;
        }

        else
        {
          v22 = ((v17[15] - v17[14]) >> 2) + (v20 >> 2) + ((v17[18] - v21) >> 2);
        }

        if (v22)
        {
          v23 = v20 >> 2;
          v24 = (v22 - 1);
          if (v23 < v24)
          {
            LODWORD(v24) = v23;
          }

          v25 = v22;
          v26 = a9;
          while (v23)
          {
            v27 = *v19++;
            *v26++ = v27;
            --v23;
            if (!--v25)
            {
              LODWORD(v24) = v24 + 1;
              break;
            }
          }
        }

        else
        {
          v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
          LODWORD(v24) = 0;
          if (v66)
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Simulator.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 378;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Simulator::GetPropertyData: inDataSize too small for any of kAudioObjectPropertyOwnedObjects to be returned", buf, 0x12u);
            LODWORD(v24) = 0;
          }
        }

        v67 = (v22 - v24);
        if (v22 > v24)
        {
          v68 = *(this + 29);
          v69 = &a9[4 * v24];
          do
          {
            v70 = *v68++;
            *v69 = v70;
            v69 += 4;
            --v67;
          }

          while (v67);
          LODWORD(v24) = v22;
        }

        *v9 = 4 * v24;
        if (!v18)
        {
          goto LABEL_123;
        }

        goto LABEL_54;
      }

      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Simulator.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 355;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertyLatency", buf, 0x12u);
        }

        v82 = __cxa_allocate_exception(0x10uLL);
        *v82 = off_1F5991DD8;
        v82[2] = 561211770;
      }

      *a9 = 0;
    }

    else
    {
      if (mSelector <= 1969841250)
      {
        if (mSelector == 1920168547)
        {
          if (a7 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Simulator.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 529;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  SA_GetPlugInPropertyData: not enough space for the return value of kAudioPlugInPropertyResourceBundle", buf, 0x12u);
            }

            v78 = __cxa_allocate_exception(0x10uLL);
            *v78 = off_1F5991DD8;
            v78[2] = 561211770;
          }

          v15 = &stru_1F5992518;
          goto LABEL_78;
        }

        if (mSelector == 1936618861)
        {
          if (a7 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Simulator.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 340;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: not enough space for the return value of kAudioObjectPropertySerialNumber", buf, 0x12u);
            }

            v75 = __cxa_allocate_exception(0x10uLL);
            *v75 = off_1F5991DD8;
            v75[2] = 561211770;
          }

          v15 = @"001";
          goto LABEL_78;
        }

        goto LABEL_87;
      }

      if (mSelector == 1969841251)
      {
        if (a5 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Simulator.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 503;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: the qualifier size is too small for kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
          }

          v80 = __cxa_allocate_exception(0x10uLL);
          *v80 = off_1F5991DD8;
          v80[2] = 561211770;
        }

        if (a7 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Simulator.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 504;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: not enough space for the return value of kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
          }

          v86 = __cxa_allocate_exception(0x10uLL);
          *v86 = off_1F5991DD8;
          v86[2] = 561211770;
        }

        if (!a6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Simulator.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 505;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: no qualifier specified for kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
          }

          v87 = __cxa_allocate_exception(0x10uLL);
          *v87 = off_1F5991DD8;
          v87[2] = 2003332927;
        }

        v28 = this + 120;
        v39 = (*(*(this + 15) + 16))(this + 120);
        v40 = *(this + 29);
        v41 = *(this + 30);
        if (v40 != v41)
        {
          v91 = v39;
          v93 = v9;
          while (1)
          {
            v42 = ADS::ObjectManager::CopyObjectByObjectID(*v40);
            OS::CF::UntypedObject::UntypedObject(buf, v42[20]);
            *buf = &unk_1F5991188;
            v43 = *&buf[8];
            v44 = *a6;
            OS::CF::UntypedObject::~UntypedObject(buf);
            ADS::ObjectManager::ReleaseObject(v42, v45);
            if (v43 == v44)
            {
              break;
            }

            if (++v40 == v41)
            {
              v40 = v41;
              break;
            }
          }

          v41 = *(this + 30);
          v9 = v93;
          v39 = v91;
        }

        if (v40 == v41)
        {
          v46 = 0;
        }

        else
        {
          v46 = *v40;
        }

        *a9 = v46;
        if (!v39)
        {
          goto LABEL_121;
        }

        goto LABEL_120;
      }

      if (mSelector != 1969841252)
      {
        goto LABEL_87;
      }

      if (a5 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Simulator.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 435;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: the qualifier size is too small for kAudioPlugInPropertyTranslateUIDToDevice", buf, 0x12u);
        }

        v77 = __cxa_allocate_exception(0x10uLL);
        *v77 = off_1F5991DD8;
        v77[2] = 561211770;
      }

      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Simulator.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 436;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: not enough space for the return value of kAudioPlugInPropertyTranslateUIDToDevice", buf, 0x12u);
        }

        v85 = __cxa_allocate_exception(0x10uLL);
        *v85 = off_1F5991DD8;
        v85[2] = 561211770;
      }

      if (!a6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Simulator.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 437;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: no qualifier specified for kAudioPlugInPropertyTranslateUIDToDevice", buf, 0x12u);
        }

        v89 = __cxa_allocate_exception(0x10uLL);
        *v89 = off_1F5991DD8;
        v89[2] = 2003332927;
      }

      v28 = this + 120;
      v29 = (*(*(this + 15) + 16))(this + 120);
      v30 = *(this + 26);
      v31 = *(this + 27);
      if (v30 != v31)
      {
        v90 = v29;
        v92 = v9;
        while (1)
        {
          v32 = ADS::ObjectManager::CopyObjectByObjectID(*v30);
          OS::CF::UntypedObject::UntypedObject(buf, v32[20]);
          *buf = &unk_1F5991188;
          v33 = *&buf[8];
          v34 = *a6;
          OS::CF::UntypedObject::~UntypedObject(buf);
          ADS::ObjectManager::ReleaseObject(v32, v35);
          if (v33 == v34)
          {
            break;
          }

          if (++v30 == v31)
          {
            v30 = v31;
            break;
          }
        }

        v31 = *(this + 27);
        v9 = v92;
        v29 = v90;
      }

      if (v30 == v31)
      {
        v36 = 0;
      }

      else
      {
        v36 = *v30;
      }

      *a9 = v36;
      if (v29)
      {
LABEL_120:
        (*(*v28 + 24))(this + 120);
      }
    }

LABEL_121:
    v16 = 4;
    goto LABEL_122;
  }

  if (mSelector <= 1684370978)
  {
    if (mSelector != 1651472419)
    {
      if (mSelector != 1668049699)
      {
        if (mSelector == 1668641652)
        {
          if (a7 <= 0xB)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Simulator.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 539;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: not enough space for the return value of kAudioObjectPropertyCustomPropertyInfoList", buf, 0x12u);
            }

            v83 = __cxa_allocate_exception(0x10uLL);
            *v83 = off_1F5991DD8;
            v83[2] = 561211770;
          }

          qmemcpy(a9, "Mvedtslptsfc", 12);
          *buf = *a8 - 12;
          ADS::BaseObject::GetPropertyData(this, a2, a3, a4, a5, a6, a7, buf, a9 + 24);
          v16 = *buf + 12;
          goto LABEL_122;
        }

        goto LABEL_87;
      }

      v47 = (this + 120);
      v52 = (*(*(this + 15) + 16))(this + 120);
      v53 = a7 >> 2;
      v54 = v47[14];
      if ((v47[15] - v54) >> 2 < v53)
      {
        v53 = (v47[15] - v54) >> 2;
      }

      if (v53)
      {
        v55 = v53;
        do
        {
          v56 = *v54++;
          *v13++ = v56;
          --v55;
        }

        while (v55);
        v57 = 4 * v53;
      }

      else
      {
        v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        v57 = 0;
        if (v65)
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Simulator.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 488;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Simulator::GetPropertyData: inDataSize too small for any of kAudioPlugInPropertyClockDeviceList to be returned", buf, 0x12u);
          v57 = 0;
        }
      }

      *v9 = v57;
      if (!v52)
      {
        goto LABEL_123;
      }

      goto LABEL_102;
    }

    v47 = (this + 120);
    v48 = (*(*(this + 15) + 16))(this + 120);
    v49 = a7 >> 2;
    v50 = v47[17];
    v51 = v47[18];
    if (v51 - v50 < v49)
    {
      v49 = v51 - v50;
    }

    if (v51 == v50 || v49)
    {
      if (v49)
      {
        v62 = v49;
        do
        {
          v63 = *v50++;
          *v13++ = v63;
          --v62;
        }

        while (v62);
        v64 = 4 * v49;
LABEL_101:
        *v9 = v64;
        if (!v48)
        {
          goto LABEL_123;
        }

LABEL_102:
        (*(*v47 + 24))(v47);
        goto LABEL_123;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ADS_Simulator.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 465;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Simulator::GetPropertyData: inDataSize too small for any of kAudioPlugInPropertyBoxList to be returned", buf, 0x12u);
    }

    v64 = 0;
    goto LABEL_101;
  }

  if (mSelector <= 1719105133)
  {
    if (mSelector != 1684370979)
    {
      if (mSelector == 1684371021)
      {
        if (a7 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Simulator.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 552;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyManageDevices", buf, 0x12u);
          }

          v74 = __cxa_allocate_exception(0x10uLL);
          *v74 = off_1F5991DD8;
          v74[2] = 561211770;
        }

        if (a5 != 8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Simulator.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 553;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: the qualifier is the wrong size for kAudioFakeDevicePropertyManageDevices", buf, 0x12u);
          }

          v84 = __cxa_allocate_exception(0x10uLL);
          *v84 = off_1F5991DD8;
          v84[2] = 561211770;
        }

        if (!a6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Simulator.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 554;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: no qualifier for kAudioFakeDevicePropertyManageDevices", buf, 0x12u);
          }

          v88 = __cxa_allocate_exception(0x10uLL);
          *v88 = off_1F5991DD8;
          v88[2] = 561211770;
        }

        v15 = @"PlugIn Custom Property";
LABEL_78:
        *a9 = v15;
        v16 = 8;
LABEL_122:
        *v9 = v16;
        goto LABEL_123;
      }

      goto LABEL_87;
    }

    v17 = (this + 120);
    v37 = (*(*(this + 15) + 16))(this + 120);
    if ((*(this + 280) & 1) == 0)
    {
      v59 = a7 >> 2;
      v60 = *(this + 26);
      v61 = *(this + 27);
      if (v61 - v60 < v59)
      {
        v59 = v61 - v60;
      }

      if (v61 == v60 || v59)
      {
        if (v59)
        {
          v72 = v59;
          do
          {
            v73 = *v60++;
            *v13++ = v73;
            --v72;
          }

          while (v72);
          v38 = 4 * v59;
LABEL_53:
          *v9 = v38;
          if (!v37)
          {
LABEL_123:
            v71 = *MEMORY[0x1E69E9840];
            return;
          }

LABEL_54:
          (*(*v17 + 24))(this + 120);
          goto LABEL_123;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Simulator.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 416;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Simulator::GetPropertyData: inDataSize too small for any of kAudioPlugInPropertyDeviceList to be returned", buf, 0x12u);
      }
    }

    v38 = 0;
    goto LABEL_53;
  }

  if (mSelector == 1719105134)
  {
    if (a7 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Simulator.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 348;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: not enough space for the return value of kAudioObjectPropertyFirmwareVersion", buf, 0x12u);
      }

      v79 = __cxa_allocate_exception(0x10uLL);
      *v79 = off_1F5991DD8;
      v79[2] = 561211770;
    }

    v15 = @"1.0";
    goto LABEL_78;
  }

  if (mSelector == 1819107691)
  {
    if (a7 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Simulator.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 333;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyData: not enough space for the return value of kAudioObjectPropertyManufacturer", buf, 0x12u);
      }

      v76 = __cxa_allocate_exception(0x10uLL);
      *v76 = off_1F5991DD8;
      v76[2] = 561211770;
    }

    v15 = @"Apple Inc.";
    goto LABEL_78;
  }

LABEL_87:
  v58 = *MEMORY[0x1E69E9840];

  ADS::BaseObject::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE21C1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADS::Simulator::GetPropertyDataSize(ADS::Simulator *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, int *a6)
{
  v6 = a6;
  v33 = *MEMORY[0x1E69E9840];
  mSelector = a4->mSelector;
  v10 = 8;
  if (a4->mSelector > 1819173228)
  {
    if (mSelector > 1920168546)
    {
      if (mSelector <= 1969841250)
      {
        if (mSelector == 1920168547)
        {
          goto LABEL_31;
        }

        v12 = 1936618861;
        goto LABEL_26;
      }

      if (mSelector != 1969841251 && mSelector != 1969841252)
      {
        goto LABEL_38;
      }

LABEL_30:
      v10 = 4;
      goto LABEL_31;
    }

    if (mSelector == 1819173229)
    {
      goto LABEL_31;
    }

    if (mSelector == 1819569763)
    {
      goto LABEL_30;
    }

    if (mSelector != 1870098020)
    {
      goto LABEL_38;
    }

    v13 = this + 120;
    v14 = (*(*(this + 15) + 16))(this + 120);
    if (*(this + 280))
    {
      goto LABEL_23;
    }

    if (!a5 || !v6)
    {
      v10 = 4 * (((*(this + 60) - *(this + 58)) >> 2) + ((*(this + 54) - *(this + 52)) >> 2) + ((*(this + 66) - *(this + 64)) >> 2));
LABEL_57:
      if (v14)
      {
        (*(*v13 + 24))(this + 120);
      }

      goto LABEL_31;
    }

    if (a5 < 4)
    {
LABEL_23:
      v10 = 0;
      goto LABEL_57;
    }

    v10 = 0;
    v23 = a5 >> 2;
    while (1)
    {
      v25 = *v6++;
      v24 = v25;
      if (v25 == 1633841016)
      {
        v26 = this + 264;
        v27 = this + 256;
      }

      else
      {
        v26 = this + 216;
        v27 = this + 208;
        if (v24 != 1633969526)
        {
          v26 = this + 240;
          v27 = this + 232;
          if (v24 != 1633905771)
          {
            goto LABEL_54;
          }
        }
      }

      v10 = v10 + ((*v26 - *v27) >> 2);
LABEL_54:
      if (!--v23)
      {
        goto LABEL_57;
      }
    }
  }

  if (mSelector <= 1684370978)
  {
    switch(mSelector)
    {
      case 1651472419:
        v19 = (this + 120);
        v20 = (*(*(this + 15) + 16))(this + 120);
        v10 = (v19[36] - v19[34]) & 0xFFFFFFFC;
        if (!v20)
        {
          goto LABEL_31;
        }

        break;
      case 1668049699:
        v19 = (this + 120);
        v21 = (*(*(this + 15) + 16))(this + 120);
        v10 = (v19[30] - v19[28]) & 0xFFFFFFFC;
        if (!v21)
        {
          goto LABEL_31;
        }

        break;
      case 1668641652:
        v10 = 12 * ADS::PropertyManager::Size((this + 24)) + 12;
LABEL_31:
        v15 = *MEMORY[0x1E69E9840];
        return v10;
      default:
        goto LABEL_38;
    }

    (*(*v19 + 24))(v19);
    goto LABEL_31;
  }

  if (mSelector > 1719105133)
  {
    if (mSelector == 1719105134)
    {
      goto LABEL_31;
    }

    v12 = 1819107691;
LABEL_26:
    if (mSelector != v12)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (mSelector == 1684370979)
  {
    v17 = this + 120;
    v18 = (*(*(this + 15) + 16))(this + 120);
    if (*(this + 280))
    {
      v10 = 0;
    }

    else
    {
      v10 = (*(this + 54) - *(this + 52)) & 0xFFFFFFFC;
    }

    if (v18)
    {
      (*(*v17 + 24))(this + 120);
    }

    goto LABEL_31;
  }

  if (mSelector == 1684371021)
  {
    if (a5 != 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = 136315394;
        v30 = "ADS_Simulator.cpp";
        v31 = 1024;
        v32 = 315;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyDataSize: the qualifier is the wrong size for kAudioFakeDevicePropertyManageDevices", &v29, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    if (!a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = 136315394;
        v30 = "ADS_Simulator.cpp";
        v31 = 1024;
        v32 = 316;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Simulator::GetPropertyDataSize: no qualifier for kAudioFakeDevicePropertyManageDevices", &v29, 0x12u);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      *v11 = off_1F5991DD8;
      v11[2] = 561211770;
    }

    goto LABEL_31;
  }

LABEL_38:
  v22 = *MEMORY[0x1E69E9840];

  return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

void sub_1DE21C820(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ADS::Simulator::IsPropertySettable(ADS::Simulator *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  result = 0;
  mSelector = a4->mSelector;
  if (a4->mSelector > 1819173228)
  {
    if (mSelector > 1969841250)
    {
      if ((mSelector - 1969841251) < 2)
      {
        return result;
      }

      return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
    }

    if (mSelector != 1819173229)
    {
      v7 = mSelector == 1870098020;
      v8 = 1920168547;
      goto LABEL_10;
    }

    return 1;
  }

  if (mSelector > 1684370978)
  {
    if (mSelector == 1684370979)
    {
      return result;
    }

    if (mSelector != 1684371021)
    {
      if (mSelector == 1819107691)
      {
        return result;
      }

      return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
    }

    return 1;
  }

  v7 = mSelector == 1651472419 || mSelector == 1668049699;
  v8 = 1668641652;
LABEL_10:
  if (!v7 && mSelector != v8)
  {
    return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
  }

  return result;
}

uint64_t ADS::Simulator::HasProperty(ADS::Simulator *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  v5 = 1;
  if (a4->mSelector > 1819173228)
  {
    if (mSelector <= 1969841250)
    {
      v6 = mSelector == 1819173229 || mSelector == 1870098020;
      v7 = 1920168547;
LABEL_12:
      if (!v6 && mSelector != v7)
      {
        goto LABEL_22;
      }

      return v5;
    }

    if ((mSelector - 1969841251) < 2)
    {
      return v5;
    }
  }

  else
  {
    if (mSelector <= 1684370978)
    {
      v6 = mSelector == 1651472419 || mSelector == 1668049699;
      v7 = 1668641652;
      goto LABEL_12;
    }

    switch(mSelector)
    {
      case 1684370979:
        return v5;
      case 1684371021:
        v10[0] = 0;
        v10[1] = 0;
        HALS_System::GetInstance(&v11, 0, v10);
        v5 = *(v11 + 1632);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        return v5;
      case 1819107691:
        return v5;
    }
  }

LABEL_22:

  return ADS::BaseObject::HasProperty(this, a2, a3, a4);
}

void ADS::Simulator::~Simulator(ADS::Simulator *this)
{
  ADS::Simulator::~Simulator(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5960C28;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    *(this + 27) = v4;
    operator delete(v4);
  }

  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

uint64_t Simulator_EndIOOperation(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1877;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_EndIOOperation: bad driver reference", &v13, 0x12u);
    }

    v10 = 560947818;
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v10;
  }

  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1878;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_EndIOOperation: no cycle info", &v13, 0x12u);
    }

    v10 = 1852797029;
    goto LABEL_11;
  }

  v6 = ADS::ObjectManager::CopyObjectByObjectID(this);
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1882;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_EndIOOperation: unknown device", &v13, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    *v12 = off_1F5991DD8;
    v12[2] = 560947818;
  }

  ADS::ObjectManager::ReleaseObject(v6, v7);
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE21CD94(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE21CDAC(void *a1, ADS::BaseObject *a2)
{
  if (a2)
  {
    v3 = a2;
    ADS::ObjectManager::ReleaseObject(0, a2);
    v4 = __cxa_begin_catch(a1);
    if (v3 == 2)
    {
      v5 = v4[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE21CB8CLL);
  }

  JUMPOUT(0x1DE21CD9CLL);
}

caulk::rt_safe_memory_resource *Simulator_DoIOOperation(_UNKNOWN **a1, ADS::ObjectManager *this, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 *a8, uint64_t a9)
{
  v163[0] = a3;
  v174 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *outPropertyData = 136315394;
      *&outPropertyData[4] = "ADS_Simulator.cpp";
      *&outPropertyData[12] = 1024;
      *&outPropertyData[14] = 1843;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_DoIOOperation: bad driver reference", outPropertyData, 0x12u);
    }

    v138 = 560947818;
LABEL_189:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v138;
  }

  v9 = a7;
  if (!a7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *outPropertyData = 136315394;
      *&outPropertyData[4] = "ADS_Simulator.cpp";
      *&outPropertyData[12] = 1024;
      *&outPropertyData[14] = 1844;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_DoIOOperation: no cycle info", outPropertyData, 0x12u);
    }

    v138 = 1852797029;
    goto LABEL_189;
  }

  v14 = COERCE_DOUBLE(ADS::ObjectManager::CopyObjectByObjectID(this));
  v17 = v14;
  if (v14 == 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *outPropertyData = 136315394;
      *&outPropertyData[4] = "ADS_Simulator.cpp";
      *&outPropertyData[12] = 1024;
      *&outPropertyData[14] = 1848;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_EndIOOperation: unknown device", outPropertyData, 0x12u);
    }

    v140 = __cxa_allocate_exception(0x10uLL);
    *v140 = off_1F5991DD8;
    v140[2] = 560947818;
  }

  v162 = a4;
  if (a5 == 1919513701)
  {
    v29 = atomic_load((*&v14 + 856));
    if ((v29 & 0x10) != 0)
    {
      *outPropertyData = 0;
      *&ioData.mNumberBuffers = 0;
      ADS::Device::getCurrentZTS(*&v14, outPropertyData, &ioData.mNumberBuffers, __p);
      CalculateSafetyViolation_Write(*outPropertyData, *&ioData.mNumberBuffers, 1.0 / *(*&v17 + 544), *(*&v17 + 744), (v9 + 144));
      v30 = v14;
      v16.n128_f64[0] = v14;
      if (v14 < 0.0)
      {
        v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        result = *MEMORY[0x1E69E3C08];
        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_217;
        }

        v33 = *(v31 + 8);
        v34 = caulk::rt_safe_memory_resource::rt_allocate(result);
        *(v34 + 16) = 0;
        *(v34 + 20) = 16;
        *(v34 + 24) = "ADS_Device.cpp";
        *(v34 + 32) = 3907;
        *(v34 + 40) = v30;
        *v34 = &unk_1F596D270;
        *(v34 + 8) = 0;
        v14 = COERCE_DOUBLE(caulk::concurrent::messenger::enqueue(v33, v34));
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        *(*&v17 + 776) = 1;
      }
    }

    if (*(*&v17 + 504))
    {
      v35 = atomic_load((*&v17 + 856));
      if ((v35 & 0x200) != 0)
      {
        usleep((a6 / *(*&v17 + 720) / 3.0 * 1000.0 * 1000.0));
      }

      if (*(*&v17 + 616) == 1)
      {
        v172 = *&v17 + 272;
        v157 = (*(*(*&v17 + 272) + 16))(*&v17 + 272, v16);
        v173 = v157;
        v36 = *(*&v17 + 576);
        for (i = *(*&v17 + 584); v36 != i; ++v36)
        {
          v38 = *v36;
          v163[1] = 40;
          Property = ExtAudioFileGetProperty(v38, 0x66666D74u, &v163[1], outPropertyData);
          if (Property)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ioData.mNumberBuffers = 136315394;
              *(&ioData.mNumberBuffers + 1) = "ADS_Device.cpp";
              LOWORD(ioData.mBuffers[0].mDataByteSize) = 1024;
              *(&ioData.mBuffers[0].mDataByteSize + 2) = 1818;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::WriteOutputData: could not get the file format for the given audio file", &ioData, 0x12u);
            }

            v137 = __cxa_allocate_exception(0x10uLL);
            *v137 = off_1F5991DD8;
            v137[2] = Property;
          }

          ioData.mNumberBuffers = 1;
          ioData.mBuffers[0].mNumberChannels = v171[0];
          ioData.mBuffers[0].mDataByteSize = *&outPropertyData[24] * a6;
          ioData.mBuffers[0].mData = a8;
          v40 = ExtAudioFileWriteAsync(v38, a6, &ioData);
          if (v40)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              v166 = 1024;
              v167 = 1832;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::WriteOutputData: could not write audio buffer to file", __p, 0x12u);
            }

            v136 = __cxa_allocate_exception(0x10uLL);
            *v136 = off_1F5991DD8;
            v136[2] = v40;
          }
        }

        if (v157)
        {
          (*(*(*&v17 + 272) + 24))(*&v17 + 272);
        }

        a5 = 1919513701;
      }
    }

    else
    {
      v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v41 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(*&v14);
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
        *outPropertyData = 136315394;
        *&outPropertyData[4] = "ADS_Device.cpp";
        *&outPropertyData[12] = 1024;
        *&outPropertyData[14] = 1798;
        _os_log_error_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_ERROR, "%32s:%-5d ADS::Device::WriteOutputData - mStartCount is 0 - this means the device thinks it should not be running!!!", outPropertyData, 0x12u);
      }
    }

    goto LABEL_155;
  }

  if (a5 == 1919246692)
  {
    v18 = atomic_load((*&v14 + 856));
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    *outPropertyData = 0;
    *&ioData.mNumberBuffers = 0;
    ADS::Device::getCurrentZTS(*&v14, outPropertyData, &ioData.mNumberBuffers, __p);
    CalculateSafetyViolation_Read(*outPropertyData, *&ioData.mNumberBuffers, 1.0 / *(*&v17 + 544), *(*&v17 + 744), (v9 + 80), a6);
    v20 = v19;
    if (v19 >= 0.0)
    {
      goto LABEL_14;
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v24 = *(v21 + 8);
      v25 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v25 + 16) = 0;
      *(v25 + 20) = 16;
      *(v25 + 24) = "ADS_Device.cpp";
      *(v25 + 32) = 3926;
      *(v25 + 40) = v20;
      *v25 = &unk_1F596D2C8;
      *(v25 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v24, v25);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      *(*&v17 + 780) = 1;
LABEL_14:
      v26 = *(*&v17 + 680);
      if (!v26)
      {
        goto LABEL_193;
      }

      applesauce::CF::convert_to<std::string,0>(outPropertyData, v26);
      if ((outPropertyData[23] & 0x80000000) != 0)
      {
        v45 = *&outPropertyData[8];
        operator delete(*outPropertyData);
        if (v45)
        {
LABEL_17:
          v27 = *(*&v17 + 680);
          if (v27)
          {
            v28 = applesauce::CF::convert_to<std::string,0>(outPropertyData, v27);
            if ((outPropertyData[23] & 0x80000000) != 0)
            {
              v58 = *&outPropertyData[8];
              operator delete(*outPropertyData);
              if (!v58)
              {
                goto LABEL_121;
              }
            }

            else if (!outPropertyData[23])
            {
              goto LABEL_121;
            }

            if (*(*&v17 + 504))
            {
              v47 = *&v17 + 272;
              *&v163[1] = *&v17 + 272;
              v59 = (*(*(*&v17 + 272) + 16))(*&v17 + 272);
              v164 = v59;
              v60 = ADS::ObjectManager::CopyObjectByObjectID(v163[0]);
              ioData = *(v60 + 120);
              v61 = *(v60 + 144);
              v159 = *(v60 + 148);
              v156 = v60;
              v62 = *(v60 + 152);
              v154 = v61 * a6;
              bzero(a8, (v61 * a6));
              v63 = *&v17 + 688;
              v64 = (*&v17 + 696);
              if (!*(*&v17 + 696))
              {
                v152 = v62;
                v65 = *(*&v17 + 680);
                if (!v65)
                {
                  v145 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v145, "Could not construct");
                  __cxa_throw(v145, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                outExtAudioFile = (*&v17 + 696);
                v151 = v59;
                v161 = v9;
                applesauce::CF::convert_to<std::string,0>(__p, v65);
                v66 = v168;
                v67 = *__p;
                CAExtAudioFile::Close((*&v17 + 688));
                if (v66 >= 0)
                {
                  v68 = __p;
                }

                else
                {
                  v68 = v67;
                }

                v69 = strlen(v68);
                v70 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E478], v68, v69, 0);
                v71 = v70;
                if (!v70)
                {
                  if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
                  {
                    CAX4CCString::CAX4CCString(&v172);
                    *outPropertyData = 136315906;
                    *&outPropertyData[4] = "CAExtAudioFile.h";
                    *&outPropertyData[12] = 1024;
                    *&outPropertyData[14] = 37;
                    *&outPropertyData[18] = 2080;
                    *&outPropertyData[20] = &v172;
                    LOWORD(v171[0]) = 2080;
                    *(v171 + 2) = "couldn't convert path to CFURLRef";
                    _os_log_impl(&dword_1DE1F9000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", outPropertyData, 0x26u);
                  }

                  v146 = __cxa_allocate_exception(0x110uLL);
                  CAXException::CAXException(v146, "couldn't convert path to CFURLRef", -1);
                }

                v72 = ExtAudioFileOpenURL(v70, outExtAudioFile);
                CFRelease(v71);
                (*(*v63 + 16))(*&v17 + 688, v72, "ExtAudioFileOpenURL");
                v9 = v161;
                v59 = v151;
                if (v168 < 0)
                {
                  operator delete(*__p);
                }

                *outPropertyData = ioData;
                *&outPropertyData[24] = v61;
                v171[0] = v159;
                v64 = (*&v17 + 696);
                *&v171[1] = v152;
                v73 = ExtAudioFileSetProperty(*outExtAudioFile, 0x63666D74u, 0x28u, outPropertyData);
                (*(*v63 + 24))(*&v17 + 688, v73, "ExtAudioFileSetProperty", 1667657076);
              }

              v74 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
              v75 = v74;
              a5 = 1919246692;
              if (!v74)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *outPropertyData = 136315394;
                  *&outPropertyData[4] = "ADS_Device.cpp";
                  *&outPropertyData[12] = 1024;
                  *&outPropertyData[14] = 1769;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::inputFileBasedHardwareIOProc: couldn't allocate AudioBufferList", outPropertyData, 0x12u);
                }

                v142 = __cxa_allocate_exception(0x10uLL);
                *v142 = off_1F5991DD8;
                v142[2] = 1852797029;
              }

              *v74 = 1;
              v74[2] = a8;
              *(v74 + 2) = v159;
              *(v74 + 3) = v154;
              *outPropertyData = a6;
              v76 = ExtAudioFileRead(*v64, outPropertyData, v74);
              (*(*v63 + 16))(*&v17 + 688, v76, "ExtAudioFileRead");
              if (!*outPropertyData)
              {
                v77 = ExtAudioFileSeek(*v64, 0);
                (*(*v63 + 16))(*&v17 + 688, v77, "ExtAudioFileSeek");
              }

              MEMORY[0x1E12C1730](v75, 0x1080C404ACF7207);
              ADS::ObjectManager::ReleaseObject(v156, v78);
              if (v59)
              {
LABEL_120:
                (*(*v47 + 24))(*&v17 + 272);
              }
            }

            else
            {
              v79 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v79 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v28);
              }

              v81 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v80 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v80)
              {
                atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                v82 = *v81;
                std::__shared_weak_count::__release_shared[abi:ne200100](v80);
              }

              else
              {
                v82 = *v81;
              }

              if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
              {
                OS::CF::String::AsStdString(&ioData, *&v17 + 152);
                v92 = SHIBYTE(ioData.mBuffers[0].mData) >= 0 ? &ioData : *&ioData.mNumberBuffers;
                *outPropertyData = 136315650;
                *&outPropertyData[4] = "ADS_Device.cpp";
                *&outPropertyData[12] = 1024;
                *&outPropertyData[14] = 1743;
                *&outPropertyData[18] = 2080;
                *&outPropertyData[20] = v92;
                _os_log_error_impl(&dword_1DE1F9000, v82, OS_LOG_TYPE_ERROR, "%32s:%-5d ADS::Device::inputFileBasedHardwareIOProc - mStartCount is 0 - this means the device thinks it should not be running: %s", outPropertyData, 0x1Cu);
                if (SHIBYTE(ioData.mBuffers[0].mData) < 0)
                {
                  operator delete(*&ioData.mNumberBuffers);
                }
              }
            }

LABEL_121:
            *&ioData.mNumberBuffers = *&v17 + 272;
            v105 = (*(*(*&v17 + 272) + 16))(*&v17 + 272);
            LOBYTE(ioData.mBuffers[0].mNumberChannels) = v105;
            v106 = ADS::ObjectManager::CopyObjectByObjectID(v163[0]);
            if (!v106)
            {
LABEL_153:
              ADS::ObjectManager::ReleaseObject(v106, v107);
              if (v105)
              {
                (*(*(*&v17 + 272) + 24))(*&v17 + 272);
              }

              goto LABEL_155;
            }

            v109 = *(*&v17 + 852);
            v110 = *(v106 + 33);
            v111 = *(v106 + 38);
            if (v110)
            {
              if (v111 == 32)
              {
                if (a6)
                {
                  v119 = 4 * a6;
                  v120 = a8;
                  do
                  {
                    *v120 = v109 * *v120;
                    ++v120;
                    v119 -= 4;
                  }

                  while (v119);
                }

                goto LABEL_153;
              }

              if (v111 == 64)
              {
                if (a6)
                {
                  v114 = v109;
                  v115 = 8 * a6;
                  v116 = a8;
                  do
                  {
                    *v116 = *v116 * v114;
                    ++v116;
                    v115 -= 8;
                  }

                  while (v115);
                }

                goto LABEL_153;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *outPropertyData = 136315394;
                *&outPropertyData[4] = "ADS_Device.cpp";
                *&outPropertyData[12] = 1024;
                *&outPropertyData[14] = 1874;
                v143 = MEMORY[0x1E69E9C10];
                v144 = "%25s:%-5d  Applying gain currently only supports 32- and 64-bit floats";
LABEL_207:
                _os_log_impl(&dword_1DE1F9000, v143, OS_LOG_TYPE_ERROR, v144, outPropertyData, 0x12u);
              }
            }

            else if ((v110 & 4) != 0)
            {
              if (v111 == 8)
              {
                if (a6)
                {
                  v123 = a6;
                  v124 = a8;
                  do
                  {
                    *v124 = (v109 * *v124);
                    ++v124;
                    --v123;
                  }

                  while (v123);
                }

                goto LABEL_153;
              }

              if (v111 == 16)
              {
                if (a6)
                {
                  v117 = 2 * a6;
                  v118 = a8;
                  do
                  {
                    *v118 = (v109 * *v118);
                    ++v118;
                    v117 -= 2;
                  }

                  while (v117);
                }

                goto LABEL_153;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *outPropertyData = 136315394;
                *&outPropertyData[4] = "ADS_Device.cpp";
                *&outPropertyData[12] = 1024;
                *&outPropertyData[14] = 1889;
                v143 = MEMORY[0x1E69E9C10];
                v144 = "%25s:%-5d  Applying gain currently only supports 16- and 8-bit SInts";
                goto LABEL_207;
              }
            }

            else
            {
              if (v111 == 8)
              {
                if (a6)
                {
                  v121 = a6;
                  v122 = a8;
                  do
                  {
                    LOBYTE(v108) = *v122;
                    v108 = v109 * LODWORD(v108);
                    *v122++ = v108;
                    --v121;
                  }

                  while (v121);
                }

                goto LABEL_153;
              }

              if (v111 == 16)
              {
                if (a6)
                {
                  v112 = 2 * a6;
                  v113 = a8;
                  do
                  {
                    LOWORD(v108) = *v113;
                    v108 = v109 * LODWORD(v108);
                    *v113++ = v108;
                    v112 -= 2;
                  }

                  while (v112);
                }

                goto LABEL_153;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *outPropertyData = 136315394;
                *&outPropertyData[4] = "ADS_Device.cpp";
                *&outPropertyData[12] = 1024;
                *&outPropertyData[14] = 1904;
                v143 = MEMORY[0x1E69E9C10];
                v144 = "%25s:%-5d  Applying gain currently only supports 16- and 8-bit UInts";
                goto LABEL_207;
              }
            }

            v147 = __cxa_allocate_exception(0x10uLL);
            *v147 = off_1F5991DD8;
            v147[2] = 560226676;
          }

LABEL_193:
          v141 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v141, "Could not construct");
          __cxa_throw(v141, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else if (outPropertyData[23])
      {
        goto LABEL_17;
      }

      v46 = *(v9 + 80);
      v47 = *&v17 + 272;
      *__p = *&v17 + 272;
      v160 = v9;
      v155 = (*(*(*&v17 + 272) + 16))(*&v17 + 272);
      __p[8] = v155;
      v48 = ADS::ObjectManager::CopyObjectByObjectID(v163[0]);
      v158 = v48;
      if (v48)
      {
        if (*(*&v17 + 504))
        {
          v50 = *(v48 + 33);
          v52 = *(v48 + 37);
          v51 = *(v48 + 38);
          bzero(a8, (*(v48 + 36) * a6));
          if (v50)
          {
            if (v51 == 32)
            {
              if (a6)
              {
                v98 = 0;
                v99 = 0;
                v100 = v46;
                do
                {
                  if (v52)
                  {
                    v101 = *(*&v17 + 720);
                    v102 = sin((v100 + v99) * 2764.60154 / v101);
                    v103 = v98;
                    v104 = v52;
                    do
                    {
                      *&a8[2 * v103++] = v102;
                      --v104;
                    }

                    while (v104);
                  }

                  ++v99;
                  v98 += v52;
                }

                while (v99 != a6);
              }
            }

            else
            {
              if (v51 != 64)
              {
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_216;
                }

                *outPropertyData = 136315394;
                *&outPropertyData[4] = "ADS_Device.cpp";
                *&outPropertyData[12] = 1024;
                *&outPropertyData[14] = 1698;
                v148 = MEMORY[0x1E69E9C10];
                v149 = "%25s:%-5d  Reading input currently only supports 32- and 64-bit floats";
                goto LABEL_215;
              }

              if (a6)
              {
                v87 = 0;
                v88 = 0;
                v89 = 0.0;
                do
                {
                  if (v52)
                  {
                    v90 = v87;
                    v91 = v52;
                    do
                    {
                      *&a8[4 * v90++] = sin((v46 + v89) * 2764.60154 / *(*&v17 + 720));
                      --v91;
                    }

                    while (v91);
                  }

                  v89 = v89 + 1.0;
                  ++v88;
                  v87 += v52;
                }

                while (v88 != a6);
              }
            }
          }

          else if ((v50 & 4) != 0)
          {
            if (v51 == 8)
            {
              if (a6)
              {
                v131 = 0;
                v132 = 0;
                do
                {
                  if (v52)
                  {
                    v133 = v131;
                    v134 = v52;
                    do
                    {
                      *(a8 + v133++) = sin((v132 + v46) * 2764.60154 / *(*&v17 + 720));
                      --v134;
                    }

                    while (v134);
                  }

                  ++v132;
                  v131 += v52;
                }

                while (v132 != a6);
              }
            }

            else
            {
              if (v51 != 16)
              {
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_216;
                }

                *outPropertyData = 136315394;
                *&outPropertyData[4] = "ADS_Device.cpp";
                *&outPropertyData[12] = 1024;
                *&outPropertyData[14] = 1713;
                v148 = MEMORY[0x1E69E9C10];
                v149 = "%25s:%-5d  Reading input currently only supports 16- and 8-bit SInts";
                goto LABEL_215;
              }

              if (a6)
              {
                v93 = 0;
                v94 = 0;
                do
                {
                  if (v52)
                  {
                    v95 = sin((v94 + v46) * 2764.60154 / *(*&v17 + 720));
                    v96 = v93;
                    v97 = v52;
                    do
                    {
                      a8[v96++] = v95;
                      --v97;
                    }

                    while (v97);
                  }

                  ++v94;
                  v93 += v52;
                }

                while (v94 != a6);
              }
            }
          }

          else
          {
            if (v51 != 8)
            {
              if (v51 == 16)
              {
                if (a6)
                {
                  v53 = 0;
                  v54 = 0;
                  do
                  {
                    if (v52)
                    {
                      v55 = sin((v54 + v46) * 2764.60154 / *(*&v17 + 720));
                      v56 = v53;
                      v57 = v52;
                      do
                      {
                        a8[v56++] = v55;
                        --v57;
                      }

                      while (v57);
                    }

                    ++v54;
                    v53 += v52;
                  }

                  while (v54 != a6);
                }

                goto LABEL_119;
              }

              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
LABEL_216:
                v150 = __cxa_allocate_exception(0x10uLL);
                *v150 = off_1F5991DD8;
                v150[2] = 560226676;
              }

              *outPropertyData = 136315394;
              *&outPropertyData[4] = "ADS_Device.cpp";
              *&outPropertyData[12] = 1024;
              *&outPropertyData[14] = 1728;
              v148 = MEMORY[0x1E69E9C10];
              v149 = "%25s:%-5d  Reading input currently only supports 16- and 8-bit UInts";
LABEL_215:
              _os_log_impl(&dword_1DE1F9000, v148, OS_LOG_TYPE_ERROR, v149, outPropertyData, 0x12u);
              goto LABEL_216;
            }

            if (a6)
            {
              v127 = 0;
              v128 = 0;
              do
              {
                if (v52)
                {
                  v129 = v127;
                  v130 = v52;
                  do
                  {
                    *(a8 + v129++) = sin((v128 + v46) * 2764.60154 / *(*&v17 + 720));
                    --v130;
                  }

                  while (v130);
                }

                ++v128;
                v127 += v52;
              }

              while (v128 != a6);
            }
          }
        }

        else
        {
          v83 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v83 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v48);
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
            OS::CF::String::AsStdString(&ioData, *&v17 + 152);
            v135 = SHIBYTE(ioData.mBuffers[0].mData) >= 0 ? &ioData : *&ioData.mNumberBuffers;
            *outPropertyData = 136315650;
            *&outPropertyData[4] = "ADS_Device.cpp";
            *&outPropertyData[12] = 1024;
            *&outPropertyData[14] = 1680;
            *&outPropertyData[18] = 2080;
            *&outPropertyData[20] = v135;
            _os_log_error_impl(&dword_1DE1F9000, v86, OS_LOG_TYPE_ERROR, "%32s:%-5d ADS::Device::ReadInputData - mStartCount is 0 - this means the device thinks it should not be running: %s", outPropertyData, 0x1Cu);
            if (SHIBYTE(ioData.mBuffers[0].mData) < 0)
            {
              operator delete(*&ioData.mNumberBuffers);
            }
          }
        }
      }

LABEL_119:
      ADS::ObjectManager::ReleaseObject(v158, v49);
      v9 = v160;
      a5 = 1919246692;
      if (!v155)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

LABEL_217:
    __break(1u);
    return result;
  }

LABEL_155:
  v125 = *(*&v17 + 632);
  if (v125)
  {
    v125(v163[0], v162, a5, a6, v9, a8, a9);
  }

  ADS::ObjectManager::ReleaseObject(*&v17, v15);
  v126 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE21E790(void *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    ADS::ObjectManager::ReleaseObject(v2, v5);
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v7 = v6[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE21DB90);
  }

  JUMPOUT(0x1DE21E7CCLL);
}

void sub_1DE21E7AC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE21E7B8);
  }

  JUMPOUT(0x1DE21E7CCLL);
}

void sub_1DE21E7C4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE21E7DC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE21E830);
  }

  JUMPOUT(0x1DE21E7CCLL);
}

void sub_1DE21E7F0(void *a1, int a2)
{
  if (a2)
  {
    CADeprecated::CAMutex::Locker::~Locker((v3 - 160));
    ADS::ObjectManager::ReleaseObject(v2, v6);
    v7 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v8 = v7[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE21DB90);
  }

  JUMPOUT(0x1DE21E7CCLL);
}

void sub_1DE21E81C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE21E828);
  }

  JUMPOUT(0x1DE21E7CCLL);
}

uint64_t Simulator_BeginIOOperation(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1697;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_BeginIOOperation: bad driver reference", &v13, 0x12u);
    }

    v10 = 560947818;
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v10;
  }

  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1698;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_BeginIOOperation: no cycle info", &v13, 0x12u);
    }

    v10 = 1852797029;
    goto LABEL_11;
  }

  v6 = ADS::ObjectManager::CopyObjectByObjectID(this);
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1702;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_BeginIOOperation: unknown device", &v13, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    *v12 = off_1F5991DD8;
    v12[2] = 560947818;
  }

  ADS::ObjectManager::ReleaseObject(v6, v7);
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE21EAB8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE21EAD0(void *a1, ADS::BaseObject *a2)
{
  if (a2)
  {
    v3 = a2;
    ADS::ObjectManager::ReleaseObject(0, a2);
    v4 = __cxa_begin_catch(a1);
    if (v3 == 2)
    {
      v5 = v4[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE21E8B0);
  }

  JUMPOUT(0x1DE21EAC0);
}

uint64_t Simulator_WillDoIOOperation(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, int a4, BOOL *a5, _BYTE *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "ADS_Simulator.cpp";
      v21 = 1024;
      v22 = 1656;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_WillDoIOOperation: bad driver reference", &v19, 0x12u);
    }

    v14 = 560947818;
LABEL_19:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v14;
  }

  if (!a5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "ADS_Simulator.cpp";
      v21 = 1024;
      v22 = 1657;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  Simulator_WillDoIOOperation: no place to put the will-do return value";
LABEL_17:
      _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, v16, &v19, 0x12u);
    }

LABEL_18:
    v14 = 1852797029;
    goto LABEL_19;
  }

  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "ADS_Simulator.cpp";
      v21 = 1024;
      v22 = 1658;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  Simulator_WillDoIOOperation: no place to put the in-place return value";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v9 = ADS::ObjectManager::CopyObjectByObjectID(this);
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "ADS_Simulator.cpp";
      v21 = 1024;
      v22 = 1662;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_WillDoIOOperation: unknown device", &v19, 0x12u);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = off_1F5991DD8;
    v18[2] = 560947818;
  }

  if (a4 == 1919246692)
  {
    v11 = 1;
  }

  else
  {
    v11 = 1;
    if (a4 != 1919513701)
    {
      v11 = *(v9 + 79) != 0;
    }
  }

  *a5 = v11;
  *a6 = 1;
  ADS::ObjectManager::ReleaseObject(v9, v10);
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE21EE40(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE21EE58(void *a1, ADS::BaseObject *a2)
{
  if (a2)
  {
    v3 = a2;
    ADS::ObjectManager::ReleaseObject(0, a2);
    v4 = __cxa_begin_catch(a1);
    if (v3 == 2)
    {
      v5 = v4[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE21EBDCLL);
  }

  JUMPOUT(0x1DE21EE48);
}

uint64_t Simulator_GetZeroTimeStamp(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, double *a4, void *a5, void *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v37 = 136315394;
      *&v37[4] = "ADS_Simulator.cpp";
      v38 = 1024;
      v39 = 1620;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_GetZeroTimeStamp: bad driver reference", v37, 0x12u);
    }

    v32 = 560947818;
LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v32;
  }

  if (!a4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *v37 = 136315394;
    *&v37[4] = "ADS_Simulator.cpp";
    v38 = 1024;
    v39 = 1621;
    v33 = MEMORY[0x1E69E9C10];
    v34 = "%25s:%-5d  Simulator_GetZeroTimeStamp: no place to put the sample time";
LABEL_39:
    _os_log_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, v34, v37, 0x12u);
    goto LABEL_40;
  }

  if (!a5)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *v37 = 136315394;
    *&v37[4] = "ADS_Simulator.cpp";
    v38 = 1024;
    v39 = 1622;
    v33 = MEMORY[0x1E69E9C10];
    v34 = "%25s:%-5d  Simulator_GetZeroTimeStamp: no place to put the host time";
    goto LABEL_39;
  }

  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v37 = 136315394;
      *&v37[4] = "ADS_Simulator.cpp";
      v38 = 1024;
      v39 = 1623;
      v33 = MEMORY[0x1E69E9C10];
      v34 = "%25s:%-5d  Simulator_GetZeroTimeStamp: no place to put the seed";
      goto LABEL_39;
    }

LABEL_40:
    v32 = 1852797029;
    goto LABEL_41;
  }

  v9 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v11 = v9;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v37 = 136315394;
      *&v37[4] = "ADS_Simulator.cpp";
      v38 = 1024;
      v39 = 1627;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_GetZeroTimeStamp: unknown device", v37, 0x12u);
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    *v36 = off_1F5991DD8;
    v36[2] = 560947818;
  }

  v12 = atomic_load((v9 + 856));
  if ((v12 & 4) != 0)
  {
    *(v9 + 752) = 0u;
    *a4 = 0.0;
    *a5 = 0;
    *(v9 + 768) = 0;
    *a6 = 0;
    *(v9 + 520) = 0;
  }

  else
  {
    *v37 = v9 + 272;
    v37[8] = (*(*(v9 + 272) + 16))();
    v13 = atomic_load((v11 + 856));
    if ((v13 & 0x4000) != 0 && !*(v11 + 536))
    {
      *(v11 + 536) = mach_absolute_time() + 1200000;
    }

    if (!*(v11 + 528))
    {
      *(v11 + 528) = mach_absolute_time();
    }

    v14 = mach_absolute_time();
    v15 = atomic_load((v11 + 856));
    if ((v15 & 0x4000) != 0 && v14 < *(v11 + 536))
    {
      *(v11 + 752) = 0u;
      *a4 = 0.0;
      *a5 = 0;
      *(v11 + 768) = 0;
      *a6 = 0;
      *(v11 + 520) = 0;
    }

    else
    {
      v16 = *(v11 + 740);
      v17 = *(v11 + 544) * v16;
      v18 = *(v11 + 512);
      v19 = *(v11 + 528);
      if (v19 + (v17 * (v18 + 1)) <= v14)
      {
        *(v11 + 512) = v18 + 1;
        v20 = *(v11 + 520) + 1;
        *(v11 + 520) = v20;
        ++v18;
      }

      else
      {
        v20 = *(v11 + 520);
      }

      v21 = (v20 * v16);
      *(v11 + 752) = v21;
      *a4 = v21;
      if (*(v11 + 704))
      {
        LODWORD(v21) = *(v11 + 708);
        v22 = *&v21;
      }

      else
      {
        v22 = 0.0;
      }

      v23 = v22 + *(v11 + 752);
      *(v11 + 752) = v23;
      *a4 = v23;
      v24 = v19 + (v17 * v18);
      *(v11 + 760) = v24;
      *a5 = v24;
      *a6 = *(v11 + 768);
      if (*(v11 + 512) == 2)
      {
        v25 = (v11 + 856);
        v26 = atomic_load((v11 + 856));
        if ((v26 & 8) != 0)
        {
          *(v11 + 520) = 0;
          *a4 = 0.0;
          v27 = atomic_load(v25);
          atomic_store(v27 & 0xFFFFFFF7, v25);
        }

        v28 = atomic_load(v25);
        if ((v28 & 0x1000) != 0)
        {
          *(v11 + 768) = 1;
          *a6 = 1;
          v29 = atomic_load((v11 + 856));
          atomic_store(v29 & 0xFFFFEFFF, (v11 + 856));
        }
      }
    }

    if (v37[8] == 1)
    {
      (*(**v37 + 24))(*v37);
    }
  }

  ADS::ObjectManager::ReleaseObject(v11, v10);
  v30 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE21F3E0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE21F428(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE21F434);
  }

  JUMPOUT(0x1DE21F414);
}

void sub_1DE21F444(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE21F450);
  }

  JUMPOUT(0x1DE21F414);
}

uint64_t Simulator_StopIO(_UNKNOWN **a1, ADS::ObjectManager *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "ADS_Simulator.cpp";
      v23 = 1024;
      v24 = 1583;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_StopIO: bad driver reference", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v2 = ADS::ObjectManager::CopyObjectByObjectID(this);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "ADS_Simulator.cpp";
      v23 = 1024;
      v24 = 1587;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_StopIO: unknown device", buf, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    *v16 = off_1F5991DD8;
    v16[2] = 560947818;
  }

  v20 = (*(*(v2 + 184) + 16))();
  v19 = (*(*(v2 + 272) + 16))();
  v4 = atomic_load((v2 + 500));
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "ADS_Device.cpp";
      v23 = 1024;
      v24 = 1391;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::StopIO: config change is in progress, cannot start IO", buf, 0x12u);
    }

    v17 = 1852990585;
LABEL_35:
    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = off_1F5991DD8;
    v18[2] = v17;
  }

  v5 = *(v2 + 504);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "ADS_Device.cpp";
      v23 = 1024;
      v24 = 1393;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::StopIO: failed to stop because IO was not running", buf, 0x12u);
    }

    v17 = 1852797029;
    goto LABEL_35;
  }

  v6 = v5 - 1;
  *(v2 + 504) = v6;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v2 + 8);
      *buf = 136315650;
      v22 = "ADS_Device.cpp";
      v23 = 1024;
      v24 = 1397;
      v25 = 1024;
      v26 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %u stopping IO.\n", buf, 0x18u);
    }

    v8 = *(v2 + 576);
    v9 = *(v2 + 584);
    if (v8 != v9)
    {
      do
      {
        v10 = ExtAudioFileDispose(*v8);
        if (v10)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v22 = "ADS_Device.cpp";
            v23 = 1024;
            v24 = 1401;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::StopIO: could not dispose of given ExtAudioFileRef", buf, 0x12u);
          }

          v14 = __cxa_allocate_exception(0x10uLL);
          *v14 = off_1F5991DD8;
          v14[2] = v10;
        }

        ++v8;
      }

      while (v8 != v9);
      v8 = *(v2 + 576);
    }

    *(v2 + 584) = v8;
  }

  v11 = atomic_load((v2 + 856));
  if (v11 < 0)
  {
    usleep(0x2625A0u);
  }

  if (v19 == 1)
  {
    (*(*(v2 + 272) + 24))(v2 + 272);
  }

  if (v20 == 1)
  {
    (*(*(v2 + 184) + 24))(v2 + 184);
  }

  ADS::ObjectManager::ReleaseObject(v2, v3);
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE21F9E4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE21FA04(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a2)
  {
    CADeprecated::CAMutex::Locker::~Locker(va);
    ADS::ObjectManager::ReleaseObject(v4, v7);
    v8 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v9 = v8[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE21F678);
  }

  JUMPOUT(0x1DE21F9F4);
}

uint64_t Simulator_StartIO(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3)
{
  v108 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "ADS_Simulator.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1549;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_StartIO: bad driver reference", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v4 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v5 = v4;
  if (!v4)
  {
    v7 = 560947818;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "ADS_Simulator.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1553;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_StartIO: unknown device", &buf, 0x12u);
    }

LABEL_137:
    v82 = __cxa_allocate_exception(0x10uLL);
    *v82 = off_1F5991DD8;
    v82[2] = v7;
  }

  v6 = *(v4 + 640);
  if (v6)
  {
    v7 = v6(a3);
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        OS::CF::String::AsStdString(&v102, v5 + 152);
        v81 = (v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v102 : v102.__r_.__value_.__r.__words[0];
        LODWORD(buf.mSampleRate) = 136315650;
        *(&buf.mSampleRate + 4) = "ADS_Device.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 1328;
        HIWORD(buf.mBytesPerPacket) = 2080;
        *&buf.mFramesPerPacket = v81;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  %s: mStartIOCallback returned an error", &buf, 0x1Cu);
        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_137;
    }
  }

  v87 = (*(*(v5 + 184) + 16))();
  v9 = atomic_load((v5 + 500));
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "ADS_Device.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1335;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::StartIO: config change is in progress, cannot start IO", &buf, 0x12u);
    }

    v11 = 1852990585;
    goto LABEL_145;
  }

  v10 = *(v5 + 504);
  if (!v10)
  {
    v12 = (v5 + 856);
    v13 = atomic_load((v5 + 856));
    if ((v13 & 2) == 0)
    {
      goto LABEL_12;
    }

    v83 = atomic_load(v12);
    atomic_store(v83 & 0xFFFFFFFD, v12);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      OS::CF::String::AsStdString(&v102, v5 + 152);
      v84 = (v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v102 : v102.__r_.__value_.__r.__words[0];
      LODWORD(buf.mSampleRate) = 136315650;
      *(&buf.mSampleRate + 4) = "ADS_Device.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1349;
      HIWORD(buf.mBytesPerPacket) = 2080;
      *&buf.mFramesPerPacket = v84;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  %s: Neglecting to start IO due to Device Behavior", &buf, 0x1Cu);
      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }
    }

    v11 = 2003329396;
LABEL_145:
    v85 = __cxa_allocate_exception(0x10uLL);
    *v85 = off_1F5991DD8;
    v85[2] = v11;
  }

  if (v10 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "ADS_Device.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1338;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::StartIO: failed to start because the ref count was maxxed out already", &buf, 0x12u);
    }

    v11 = 1852797029;
    goto LABEL_145;
  }

LABEL_12:
  v14 = atomic_load((v5 + 856));
  if (v14 < 0)
  {
    usleep(0x2625A0u);
  }

  v15 = *(v5 + 504);
  *(v5 + 504) = v15 + 1;
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v5 + 8);
      LODWORD(buf.mSampleRate) = 136315650;
      *(&buf.mSampleRate + 4) = "ADS_Device.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1363;
      HIWORD(buf.mBytesPerPacket) = 1024;
      buf.mFramesPerPacket = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %u starting IO.\n", &buf, 0x18u);
    }

    *(v5 + 512) = 0u;
    if (*(v5 + 617) == 1)
    {
      v17 = *(v5 + 624);
      *(v5 + 512) = v17;
      *(v5 + 520) = v17;
    }

    *(v5 + 528) = 0;
    *(v5 + 768) = 0uLL;
    if (*(v5 + 616) == 1)
    {
      v19 = *(v5 + 448);
      v18 = *(v5 + 456);
      if (v19 != v18)
      {
        v20 = v5 + 272;
        v21 = *MEMORY[0x1E695E478];
        v86 = *MEMORY[0x1E695E478];
        while (1)
        {
          v22 = *v19;
          outExtAudioFile[1] = (v5 + 272);
          v23 = (*(*v20 + 16))(v5 + 272);
          v105 = v23;
          v24 = ADS::ObjectManager::CopyObjectByObjectID(v22);
          v25 = *(v24 + 136);
          *&buf.mSampleRate = *(v24 + 120);
          *&buf.mBytesPerPacket = v25;
          *&buf.mBitsPerChannel = *(v24 + 152);
          outExtAudioFile[0] = 0;
          v103 = time(0);
          v26 = localtime(&v103);
          std::to_string(&v93, v26->tm_year + 1900);
          v27 = std::string::append(&v93, "_", 1uLL);
          v28 = *&v27->__r_.__value_.__l.__data_;
          v94.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
          *&v94.__r_.__value_.__l.__data_ = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v92, v26->tm_mon + 1);
          if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v92;
          }

          else
          {
            v29 = v92.__r_.__value_.__r.__words[0];
          }

          if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v92.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v92.__r_.__value_.__l.__size_;
          }

          v31 = std::string::append(&v94, v29, size);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v95.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
          *&v95.__r_.__value_.__l.__data_ = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          v33 = std::string::append(&v95, "_", 1uLL);
          v34 = *&v33->__r_.__value_.__l.__data_;
          v96.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&v96.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v91, v26->tm_mday);
          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = &v91;
          }

          else
          {
            v35 = v91.__r_.__value_.__r.__words[0];
          }

          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v36 = v91.__r_.__value_.__l.__size_;
          }

          v37 = std::string::append(&v96, v35, v36);
          v38 = *&v37->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v38;
          v37->__r_.__value_.__l.__size_ = 0;
          v37->__r_.__value_.__r.__words[2] = 0;
          v37->__r_.__value_.__r.__words[0] = 0;
          v39 = std::string::append(&v97, "_", 1uLL);
          v40 = *&v39->__r_.__value_.__l.__data_;
          v98.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
          *&v98.__r_.__value_.__l.__data_ = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v90, v26->tm_hour);
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &v90;
          }

          else
          {
            v41 = v90.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v42 = v90.__r_.__value_.__l.__size_;
          }

          v43 = std::string::append(&v98, v41, v42);
          v44 = *&v43->__r_.__value_.__l.__data_;
          v99.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v99.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v99, ".", 1uLL);
          v46 = *&v45->__r_.__value_.__l.__data_;
          v100.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v100.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v89, v26->tm_min);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v89;
          }

          else
          {
            v47 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v48 = v89.__r_.__value_.__l.__size_;
          }

          v49 = std::string::append(&v100, v47, v48);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v101.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
          *&v101.__r_.__value_.__l.__data_ = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          v51 = std::string::append(&v101, ".", 1uLL);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v106.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
          *&v106.__r_.__value_.__l.__data_ = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v88, v26->tm_sec);
          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = &v88;
          }

          else
          {
            v53 = v88.__r_.__value_.__r.__words[0];
          }

          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v54 = v88.__r_.__value_.__l.__size_;
          }

          v55 = std::string::append(&v106, v53, v54);
          v56 = *&v55->__r_.__value_.__l.__data_;
          v102.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
          *&v102.__r_.__value_.__l.__data_ = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v106.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          OS::CF::String::AsStdString(&v106, v5 + 600);
          v57 = &v106;
          if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v57 = v106.__r_.__value_.__r.__words[0];
          }

          v58 = &v102;
          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v58 = v102.__r_.__value_.__r.__words[0];
          }

          v59 = CFStringCreateWithFormat(v21, 0, @"%s/Out_Stream_%u(%s).caf", v57, v22, v58);
          if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v106.__r_.__value_.__l.__data_);
          }

          v60 = CFURLCreateWithFileSystemPath(0, v59, kCFURLPOSIXPathStyle, 0);
          CFRelease(v59);
          v61 = ExtAudioFileCreateWithURL(v60, 0x63616666u, &buf, 0, 1u, outExtAudioFile);
          if (v61)
          {
            break;
          }

          CFRelease(v60);
          v61 = ExtAudioFileSetProperty(outExtAudioFile[0], 0x63666D74u, 0x28u, &buf);
          if (v61)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_120;
            }

            LODWORD(v106.__r_.__value_.__l.__data_) = 136315394;
            *(v106.__r_.__value_.__r.__words + 4) = "ADS_Device.cpp";
            WORD2(v106.__r_.__value_.__r.__words[1]) = 1024;
            *(&v106.__r_.__value_.__r.__words[1] + 6) = 1306;
            v77 = MEMORY[0x1E69E9C10];
            v78 = "%25s:%-5d  ADS::Device::prepareAudioFile: Could not set the properties for the destination audio file";
LABEL_119:
            _os_log_impl(&dword_1DE1F9000, v77, OS_LOG_TYPE_ERROR, v78, &v106, 0x12u);
            goto LABEL_120;
          }

          v61 = ExtAudioFileWriteAsync(outExtAudioFile[0], 0, 0);
          if (v61)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v106.__r_.__value_.__l.__data_) = 136315394;
              *(v106.__r_.__value_.__r.__words + 4) = "ADS_Device.cpp";
              WORD2(v106.__r_.__value_.__r.__words[1]) = 1024;
              *(&v106.__r_.__value_.__r.__words[1] + 6) = 1310;
              v77 = MEMORY[0x1E69E9C10];
              v78 = "%25s:%-5d  ADS::Device::prepareAudioFile: Could not prime the async writing mechanism.";
              goto LABEL_119;
            }

LABEL_120:
            v79 = __cxa_allocate_exception(0x10uLL);
            *v79 = off_1F5991DD8;
            v79[2] = v61;
          }

          v63 = *(v5 + 584);
          v64 = *(v5 + 592);
          if (v63 >= v64)
          {
            v66 = *(v5 + 576);
            v67 = (v63 - v66) >> 3;
            if ((v67 + 1) >> 61)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v68 = v64 - v66;
            v69 = v68 >> 2;
            if (v68 >> 2 <= (v67 + 1))
            {
              v69 = v67 + 1;
            }

            if (v68 >= 0x7FFFFFFFFFFFFFF8)
            {
              v70 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v70 = v69;
            }

            if (v70)
            {
              if (!(v70 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v67) = outExtAudioFile[0];
            v65 = 8 * v67 + 8;
            v71 = *(v5 + 576);
            v72 = *(v5 + 584) - v71;
            v73 = (8 * v67 - v72);
            memcpy(v73, v71, v72);
            v74 = *(v5 + 576);
            *(v5 + 576) = v73;
            *(v5 + 584) = v65;
            *(v5 + 592) = 0;
            if (v74)
            {
              operator delete(v74);
            }

            v21 = v86;
          }

          else
          {
            *v63 = outExtAudioFile[0];
            v65 = (v63 + 1);
          }

          *(v5 + 584) = v65;
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          ADS::ObjectManager::ReleaseObject(v24, v62);
          if (v23)
          {
            (*(*v20 + 24))(v5 + 272);
          }

          if (++v19 == v18)
          {
            goto LABEL_110;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_120;
        }

        LODWORD(v106.__r_.__value_.__l.__data_) = 136315394;
        *(v106.__r_.__value_.__r.__words + 4) = "ADS_Device.cpp";
        WORD2(v106.__r_.__value_.__r.__words[1]) = 1024;
        *(&v106.__r_.__value_.__r.__words[1] + 6) = 1301;
        v77 = MEMORY[0x1E69E9C10];
        v78 = "%25s:%-5d  ADS::Device::prepareAudioFile: Call to ExtAudioFileCreateWithURL failed";
        goto LABEL_119;
      }
    }
  }

LABEL_110:
  if (v87 == 1)
  {
    (*(*(v5 + 184) + 24))(v5 + 184);
  }

  ADS::ObjectManager::ReleaseObject(v5, v8);
  v75 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE220830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE220888(void *a1, ADS::BaseObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a2)
  {
    v83 = a2;
    if (a79 < 0)
    {
      operator delete(__p);
    }

    if (a23 < 0)
    {
      operator delete(a18);
    }

    if (a77 < 0)
    {
      operator delete(a76);
    }

    if (a75 < 0)
    {
      operator delete(a74);
    }

    if (a29 < 0)
    {
      operator delete(a24);
    }

    if (a73 < 0)
    {
      operator delete(a72);
    }

    if (a71 < 0)
    {
      operator delete(a69);
    }

    if (a35 < 0)
    {
      operator delete(a30);
    }

    if (a67 < 0)
    {
      operator delete(a62);
    }

    if (a60 < 0)
    {
      operator delete(a55);
    }

    if (a41 < 0)
    {
      operator delete(a36);
    }

    if (a53 < 0)
    {
      operator delete(a48);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }

    ADS::ObjectManager::ReleaseObject(v80, a2);
    CADeprecated::CAMutex::Locker::~Locker((v81 - 192));
    CADeprecated::CAMutex::Locker::~Locker(&a13);
    ADS::ObjectManager::ReleaseObject(v79, v84);
    v85 = __cxa_begin_catch(a1);
    if (v83 == 2)
    {
      v86 = v85[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2202D0);
  }

  JUMPOUT(0x1DE220878);
}

uint64_t Simulator_SetPropertyData(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "ADS_Simulator.cpp";
      v36 = 1024;
      v37 = 1486;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_SetPropertyData: bad driver reference", buf, 0x12u);
    }

    v21 = 560947818;
LABEL_23:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v21;
  }

  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "ADS_Simulator.cpp";
      v36 = 1024;
      v37 = 1487;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_SetPropertyData: no address", buf, 0x12u);
    }

    v21 = 1852797029;
    goto LABEL_23;
  }

  v15 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v16 = v15;
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "ADS_Simulator.cpp";
      v36 = 1024;
      v37 = 1491;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_SetPropertyData: unknown object", buf, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = off_1F5991DD8;
    v23[2] = 560947818;
  }

  if ((*(*v15 + 32))(v15, this, a3, a4))
  {
    if ((*(*v16 + 40))(v16, this, a3, a4))
    {
      (*(*v16 + 64))(v16, this, a3, a4, a5, a6, a7, a8, &v33, &v30, 0);
      if (v33)
      {
        pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 1174405120;
        block[2] = __Simulator_SetPropertyData_block_invoke;
        block[3] = &__block_descriptor_tmp_45;
        v28 = this;
        v29 = v33;
        v26 = 0;
        v27 = 0;
        __p = 0;
        std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&__p, v30, v31, 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 2));
        if (ADS::Simulator::sServerHighPriorityQueue)
        {
          AMCP::Utility::Dispatch_Queue::async(ADS::Simulator::sServerHighPriorityQueue, block);
        }

        if (__p)
        {
          v26 = __p;
          operator delete(__p);
        }
      }

      v18 = 0;
    }

    else
    {
      v18 = 1970171760;
    }
  }

  else
  {
    v18 = 2003332927;
  }

  ADS::ObjectManager::ReleaseObject(v16, v17);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1DE220F90(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}