void sub_1DE3510E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

AMCP::Node_Description *AMCP::Node_Description::Node_Description(AMCP::Node_Description *this, const AMCP::Node_Description *a2)
{
  *this = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  *(this + 4) = *(a2 + 4);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }

  v6 = 0;
  v7 = 0;
  *(this + 8) = *(a2 + 8);
  v8 = a2 + 72;
  do
  {
    v9 = v6;
    v10 = (this + 24 * v7);
    v10[9] = 0;
    v10[10] = 0;
    v10 += 9;
    v10[2] = 0;
    std::vector<AMCP::Terminal_Description>::__init_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>(v10, *&v8[24 * v7], *&v8[24 * v7 + 8], 0x4EC4EC4EC4EC4EC5 * ((*&v8[24 * v7 + 8] - *&v8[24 * v7]) >> 3));
    v6 = 1;
    v7 = 1;
  }

  while ((v9 & 1) == 0);
  return this;
}

void sub_1DE351208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v11 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<AMCP::Terminal_Description>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<AMCP::Terminal_Description>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 104)
  {
    v5 = i;
    for (j = -40; j != -88; j -= 24)
    {
      v7 = (v5 + j);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<AMCP::Terminal_Description>::__init_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AMCP::Terminal_Description>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE3513A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<AMCP::Terminal_Description>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*,AMCP::Terminal_Description*,AMCP::Terminal_Description*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = 0;
      v8 = 0;
      v9 = *v6;
      v10 = v6[1];
      *(v4 + 32) = *(v6 + 4);
      *v4 = v9;
      *(v4 + 16) = v10;
      do
      {
        v11 = v7;
        v12 = (v4 + 24 * v8);
        v12[5] = 0;
        v12[6] = 0;
        v12 += 5;
        v12[2] = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v12, *(v6 + 3 * v8 + 5), *(v6 + 3 * v8 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 3 * v8 + 6) - *(v6 + 3 * v8 + 5)) >> 3));
        v7 = 1;
        v8 = 1;
      }

      while ((v11 & 1) == 0);
      v13 = *(v6 + 11);
      *(v4 + 96) = *(v6 + 96);
      *(v4 + 88) = v13;
      v6 = (v6 + 104);
      v4 = v18 + 104;
      v18 += 104;
    }

    while (v6 != a3);
  }

  v16 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>>::~__exception_guard_exceptions[abi:ne200100](v15);
  return v4;
}

void sub_1DE351520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  if ((v18 & 1) == 0)
  {
    v20 = -24 * v17;
    v21 = (v16 + 24 * v17 + 16);
    do
    {
      a16 = v21;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
      v21 -= 3;
      v20 += 24;
    }

    while (v20);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>>::~__exception_guard_exceptions[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = v3;
      v3 -= 104;
      for (i = -40; i != -88; i -= 24)
      {
        v7 = (v5 + i);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
      }
    }
  }

  return a1;
}

void std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AMCP::Core::Operation::call_function<AMCP::Node_Description>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Description ()(void)>>();
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Node_Description, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Description ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Node_Description, Argument_Types = <>]";
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

void sub_1DE351ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t std::optional<AMCP::Node_Description>::optional[abi:ne200100]<AMCP::Node_Description,0>(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *result = *a2;
  v3 = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(result + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(result + 56) = *(a2 + 56);
  *(result + 40) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(result + 64) = *(a2 + 64);
  do
  {
    v5 = (result + v2);
    v6 = (a2 + v2);
    v5[9] = 0;
    v5[10] = 0;
    v5[11] = 0;
    *(v5 + 9) = *(a2 + v2 + 72);
    v5[11] = *(a2 + v2 + 88);
    v6[9] = 0;
    v6[10] = 0;
    v6[11] = 0;
    v2 += 24;
  }

  while (v2 != 48);
  *(result + 120) = 1;
  return result;
}

AMCP::Node_Description *AMCP::Thing::convert_to<AMCP::Node_Description>(AMCP::Node_Description *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
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
      return AMCP::Node_Description::Node_Description(a1, v6);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
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

  result = AMCP::Node_Description::Node_Description(a1, v8);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE351DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<AMCP::Node_Description>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[293];
}

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Description ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[291];
}

uint64_t HALS_IOContext_Manager_Graph_Builder_Connection::get_node_from_node_uid(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 8) + 96);
  v8[0] = &unk_1F5968028;
  v8[1] = a2;
  v8[3] = v8;
  AMCP::Core::Broker::fetch_first_core_if (&v6, v2, v8);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v8);
  if (v6)
  {
    v3 = *v6;
  }

  else
  {
    v3 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Graph_Builder_Connection::get_node_from_node_uid(applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Graph_Builder_Connection::get_node_from_node_uid(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK47HALS_IOContext_Manager_Graph_Builder_Connection22get_node_from_node_uidEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<HALS_IOContext_Manager_Graph_Builder_Connection::get_node_from_node_uid(applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Graph_Builder_Connection::get_node_from_node_uid(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x616E6F64, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1853188452u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void AMCP::Core::Core::get_simple_required_property<1853188452u>(void *a1, AMCP::Core::Core *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  strcpy(buf, "diunbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, a2, buf);
  if ((v13 & 1) == 0)
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
      strcpy(__p, "nuid");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v15 = 1024;
      v16 = 391;
      v17 = 2080;
      v18 = "optional_value.operator BOOL() == true";
      v19 = 2080;
      v20 = __p;
      v21 = 1024;
      v22 = 1735159650;
      v23 = 1024;
      v24 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = v4;
    CFRelease(v4);
  }

  else
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1DE3521CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Graph_Builder_Connection::get_node_from_node_uid(applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Graph_Builder_Connection::get_node_from_node_uid(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5968028;
  a2[1] = v2;
  return result;
}

uint64_t HALS_IOContext_Manager_Graph_Builder_Connection::get_device_from_device_uid(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 8) + 96);
  v8[0] = &unk_1F5967FA8;
  v8[1] = a2;
  v8[3] = v8;
  AMCP::Core::Broker::fetch_first_core_if (&v6, v2, v8);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v8);
  if (v6)
  {
    v3 = *v6;
  }

  else
  {
    v3 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Graph_Builder_Connection::get_device_from_device_uid(applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Graph_Builder_Connection::get_device_from_device_uid(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK47HALS_IOContext_Manager_Graph_Builder_Connection26get_device_from_device_uidEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<HALS_IOContext_Manager_Graph_Builder_Connection::get_device_from_device_uid(applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Graph_Builder_Connection::get_device_from_device_uid(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61646576, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1969841184u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Graph_Builder_Connection::get_device_from_device_uid(applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Graph_Builder_Connection::get_device_from_device_uid(applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5967FA8;
  a2[1] = v2;
  return result;
}

BOOL HALS_IOContext_Manager_Graph_Builder_Connection::object_has_expired(HALS_IOContext_Manager_Graph_Builder_Connection *this, unsigned int a2)
{
  AMCP::Core::Broker::fetch_core(&v4, *(*(this + 1) + 96), a2);
  v2 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 == 0;
}

uint64_t AMCP::HAL::get_hal_property_value_type_code(AMCP::HAL *this)
{
  v1 = 3;
  if (this <= 1835103091)
  {
    if (this > 1684434035)
    {
      if (this > 1751740450)
      {
        if (this > 1818455659)
        {
          if (this > 1818850925)
          {
            if (this <= 1819501421)
            {
              if (this > 1819111267)
              {
                if (this == 1819111268)
                {
                  return 6;
                }

                v7 = 1819173229;
              }

              else
              {
                if (this == 1818850926)
                {
                  return v1;
                }

                v7 = 1819107691;
              }

              goto LABEL_371;
            }

            if (this <= 1819634019)
            {
              if (this != 1819501422)
              {
                v3 = 1819569763;
                goto LABEL_421;
              }

              return 6;
            }

            if (this != 1819634020)
            {
              if (this == 1835100526)
              {
                return v1;
              }

              v5 = 1835101042;
              goto LABEL_395;
            }

            return 15;
          }

          if (this > 1818456949)
          {
            if (this > 1818850144)
            {
              if (this == 1818850145)
              {
                return 4;
              }

              v10 = 1818850162;
              goto LABEL_417;
            }

            if (this == 1818456950)
            {
              return 7;
            }

            v3 = 1818457190;
            goto LABEL_421;
          }

          if (this > 1818456931)
          {
            if (this == 1818456932)
            {
              return 7;
            }

            v6 = 29550;
          }

          else
          {
            if (this == 1818455660)
            {
              return 6;
            }

            v6 = 28270;
          }
        }

        else
        {
          if (this <= 1768845171)
          {
            if (this <= 1752135522)
            {
              if (this <= 1751740523)
              {
                if (this == 1751740451)
                {
                  return 4;
                }

                v10 = 1751740518;
                goto LABEL_417;
              }

              if (this != 1751740524)
              {
                v3 = 1752131442;
                goto LABEL_421;
              }

              return 6;
            }

            if (this <= 1768187245)
            {
              if (this != 1752135523)
              {
                if (this != 1768124270)
                {
                  return 0;
                }

                return 16;
              }

              return v1;
            }

            if (this == 1768187246)
            {
              return v1;
            }

            v11 = 1768777573;
            goto LABEL_351;
          }

          if (this <= 1818452845)
          {
            if (this > 1769174369)
            {
              if (this != 1769174370)
              {
                v3 = 1784767339;
                goto LABEL_421;
              }

              return v1;
            }

            if (this == 1768845172)
            {
              return v1;
            }

            v11 = 1768907636;
            goto LABEL_351;
          }

          if (this <= 1818453106)
          {
            if (this == 1818452846)
            {
              return 6;
            }

            v19 = 1818453106;
            goto LABEL_387;
          }

          if (this == 1818453107 || this == 1818453110)
          {
            return 7;
          }

          v6 = 26734;
        }

        v7 = v6 | 0x6C630000;
        goto LABEL_371;
      }

      if (this <= 1698776146)
      {
        if (this <= 1685089382)
        {
          if (this <= 1684500593)
          {
            if (this > 1684498543)
            {
              if (this != 1684498544)
              {
                v4 = 1684500589;
                goto LABEL_402;
              }
            }

            else if (this != 1684434036)
            {
              v3 = 1684498541;
              goto LABEL_421;
            }

            return v1;
          }

          if (this > 1684893795)
          {
            if (this != 1684893796)
            {
              v3 = 1685087596;
              goto LABEL_421;
            }

            return v1;
          }

          if (this != 1684500594)
          {
            v3 = 1684629094;
            goto LABEL_421;
          }
        }

        else
        {
          if (this <= 1685222500)
          {
            if ((this - 1685218913) <= 0x13 && ((1 << (this - 97)) & 0x90001) != 0)
            {
              return v1;
            }

            v7 = 1685089383;
            goto LABEL_371;
          }

          if (this <= 1685287011)
          {
            if (this != 1685222501)
            {
              v3 = 1685276755;
              goto LABEL_421;
            }

            return v1;
          }

          if (this == 1685287012)
          {
            return v1;
          }

          if (this != 1685414763)
          {
            v3 = 1685416292;
            goto LABEL_421;
          }
        }

        return 1;
      }

      if (this <= 1735354733)
      {
        if (this > 1702392684)
        {
          if (this <= 1718843938)
          {
            if (this != 1702392685)
            {
              v3 = 1718839674;
              goto LABEL_421;
            }

            return v1;
          }

          if (this == 1718843939)
          {
            return 9;
          }

          v7 = 1719105134;
          goto LABEL_371;
        }

        if (this > 1702193507)
        {
          if (this != 1702193508)
          {
            v3 = 1702248804;
            goto LABEL_421;
          }

          return v1;
        }

        if (this == 1698776147)
        {
          return v1;
        }

        v8 = 1701733411;
LABEL_413:
        if (this != v8)
        {
          return 0;
        }

        return 11;
      }

      if (this > 1735750500)
      {
        if (this <= 1751413615)
        {
          if (this != 1735750501)
          {
            v3 = 1751412337;
            goto LABEL_421;
          }

          return 4;
        }

        if (this != 1751413616 && this != 1751474532)
        {
          v3 = 1751737454;
          goto LABEL_421;
        }

        return 15;
      }

      if (this <= 1735551331)
      {
        if (this != 1735354734)
        {
          v3 = 1735356005;
          goto LABEL_421;
        }

        return v1;
      }

      if (this == 1735551332)
      {
        return 1;
      }

      v11 = 1735554416;
LABEL_351:
      if (this != v11)
      {
        return 0;
      }

      return 15;
    }

    if (this <= 1667461736)
    {
      if (this <= 1650685547)
      {
        if (this > 1634496614)
        {
          if (this <= 1634955891)
          {
            if (this > 1634755427)
            {
              if (this != 1634755428)
              {
                v4 = 1634758774;
                goto LABEL_402;
              }

              return 6;
            }

            if (this == 1634496615)
            {
              return v1;
            }

            v7 = 1634562932;
            goto LABEL_371;
          }

          if (this <= 1650682914)
          {
            if (this != 1634955892)
            {
              v3 = 1635087471;
              goto LABEL_421;
            }

            return 8;
          }

          if (this != 1650682915)
          {
            v3 = 1650682995;
            goto LABEL_421;
          }

          return 11;
        }

        if (this > 1634038356)
        {
          if (this <= 1634300530)
          {
            if (this == 1634038357)
            {
              return 6;
            }

            v8 = 1634169456;
            goto LABEL_413;
          }

          if (this != 1634300531)
          {
            v8 = 1634429294;
            goto LABEL_413;
          }

          return 17;
        }

        if (this > 1633970531)
        {
          if (this != 1633970532)
          {
            v3 = 1634038341;
            goto LABEL_421;
          }

          return 17;
        }

        if (this == 1346585414)
        {
          return v1;
        }

        v11 = 1633906541;
      }

      else
      {
        if (this > 1651472418)
        {
          if (this > 1652060005)
          {
            if (this <= 1667327846)
            {
              if (this != 1652060006)
              {
                v3 = 1652060014;
                goto LABEL_421;
              }

              return v1;
            }

            if (this != 1667327847)
            {
              if (this != 1667330160)
              {
                v5 = 1667460717;
                goto LABEL_395;
              }

              return 6;
            }

            return 10;
          }

          if (this > 1651735074)
          {
            if (this == 1651735075)
            {
              return 9;
            }

            v7 = 1651861860;
            goto LABEL_371;
          }

          if (this != 1651472419)
          {
            v3 = 1651730810;
            goto LABEL_421;
          }

          return 11;
        }

        if (this <= 1651013224)
        {
          if (this > 1651007860)
          {
            if (this != 1651007861)
            {
              v3 = 1651010921;
              goto LABEL_421;
            }

            return v1;
          }

          if (this == 1650685548)
          {
            return v1;
          }

          v8 = 1650751011;
          goto LABEL_413;
        }

        if (this <= 1651272545)
        {
          if (this == 1651013225)
          {
            return v1;
          }

          v14 = 1651074160;
          goto LABEL_377;
        }

        if (this == 1651272546)
        {
          return 1;
        }

        v11 = 1651272548;
      }

      goto LABEL_351;
    }

    if (this > 1668506479)
    {
      if (this <= 1682929011)
      {
        if (this <= 1668639075)
        {
          if (this <= 1668510817)
          {
            if (this != 1668506480)
            {
              v10 = 1668510307;
              goto LABEL_417;
            }

            return v1;
          }

          if (this == 1668510818)
          {
            return v1;
          }

          v8 = 1668575852;
          goto LABEL_413;
        }

        if (this <= 1668702577)
        {
          if (this == 1668639076)
          {
            return 6;
          }

          v10 = 1668641652;
          goto LABEL_417;
        }

        if (this == 1668702578)
        {
          return v1;
        }

        v14 = 1682533920;
        goto LABEL_377;
      }

      if (this <= 1684157045)
      {
        if (this > 1684107363)
        {
          if (this == 1684107364)
          {
            return v1;
          }

          v17 = 29795;
        }

        else
        {
          if (this == 1682929012)
          {
            return 10;
          }

          v17 = 26471;
        }

        v3 = v17 | 0x64610000;
        goto LABEL_421;
      }

      if (this <= 1684301170)
      {
        if (this == 1684157046)
        {
          return 7;
        }

        v10 = 1684236338;
        goto LABEL_417;
      }

      if (this != 1684301171)
      {
        if (this == 1684301174)
        {
          return v1;
        }

        v8 = 1684370979;
        goto LABEL_413;
      }

      return 15;
    }

    if (this <= 1668049698)
    {
      if (this <= 1667658617)
      {
        if (this > 1667523957)
        {
          if (this != 1667523958)
          {
            v3 = 1667591277;
            goto LABEL_421;
          }

          return 10;
        }

        if (this == 1667461737)
        {
          return 15;
        }

        v11 = 1667523955;
        goto LABEL_351;
      }

      if (this <= 1667788396)
      {
        if (this == 1667658618)
        {
          return v1;
        }

        v5 = 1667787120;
        goto LABEL_395;
      }

      if (this == 1667788397)
      {
        return 5;
      }

      v16 = 24947;
    }

    else
    {
      if (this > 1668181109)
      {
        if (this > 1668506402)
        {
          if (this == 1668506403)
          {
            return 4;
          }

          if (this == 1668506475)
          {
            return v1;
          }

          v5 = 1668506478;
          goto LABEL_395;
        }

        if (this != 1668181110)
        {
          v5 = 1668181613;
LABEL_395:
          if (this != v5)
          {
            return 0;
          }

          return 5;
        }

        return 5;
      }

      if (this > 1668049770)
      {
        if (this == 1668049771)
        {
          return v1;
        }

        v16 = 28523;
      }

      else
      {
        if (this == 1668049699)
        {
          return 11;
        }

        v16 = 27492;
      }
    }

    v3 = v16 | 0x636C0000;
    goto LABEL_421;
  }

  if (this > 1935962741)
  {
    if (this <= 1937010787)
    {
      if (this <= 1936748066)
      {
        if (this <= 1936290670)
        {
          if (this > 1936092512)
          {
            if (this > 1936092531)
            {
              if (this == 1936092532)
              {
                return 12;
              }

              v14 = 1936224868;
              goto LABEL_377;
            }

            if (this == 1936092513)
            {
              return 14;
            }

            v15 = 28013;
          }

          else
          {
            if (this <= 1936092450)
            {
              if (this != 1935962742)
              {
                v3 = 1936092276;
                goto LABEL_421;
              }

              return v1;
            }

            if (this == 1936092451)
            {
              return 13;
            }

            v15 = 27967;
          }

          v12 = v15 | 0x73660000;
LABEL_318:
          if (this != v12)
          {
            return 0;
          }

          return 12;
        }

        if (this <= 1936618860)
        {
          if (this > 1936483695)
          {
            if (this != 1936483696)
            {
              v3 = 1936553332;
              goto LABEL_421;
            }

            return v1;
          }

          if (this == 1936290671)
          {
            return v1;
          }

          v13 = 1936482681;
          return this == v13;
        }

        if (this <= 1936744813)
        {
          if (this != 1936618861)
          {
            v3 = 1936682095;
            goto LABEL_421;
          }

          return 6;
        }

        if (this == 1936744814)
        {
          return 7;
        }

        if (this != 1936745315)
        {
          v4 = 1936745334;
          goto LABEL_402;
        }

        return 4;
      }

      if (this > 1936876643)
      {
        if (this <= 1936941933)
        {
          if (this <= 1936941858)
          {
            if (this != 1936876644 && this != 1936879204)
            {
              return 0;
            }

            return 18;
          }

          if (this != 1936941859)
          {
            v3 = 1936941931;
            goto LABEL_421;
          }

          return 4;
        }

        if (this > 1937007733)
        {
          if (this == 1937007734)
          {
            return 10;
          }

          if (this != 1937009955)
          {
            v3 = 1937010031;
            goto LABEL_421;
          }

          return 11;
        }

        if (this != 1936941934)
        {
          v10 = 1936945763;
          goto LABEL_417;
        }

        return 5;
      }

      if (this > 1936811875)
      {
        if ((this - 1936811876) > 0x10)
        {
          return 0;
        }

        if (((1 << (this - 100)) & 0x18005) != 0)
        {
          return 7;
        }

        if (this != 1936811890)
        {
          return 0;
        }

        return 9;
      }

      if (this == 1936748067)
      {
        return 4;
      }

      if (this == 1936811108)
      {
        return 1;
      }

      v11 = 1936811109;
      goto LABEL_351;
    }

    if (this > 1969841249)
    {
      if (this > 1986359922)
      {
        if (this <= 1987013731)
        {
          if (this > 1986880098)
          {
            if (this != 1986880099)
            {
              v4 = 1986885219;
              goto LABEL_402;
            }

            return 7;
          }

          if (this != 1986359923)
          {
            v3 = 1986425722;
            goto LABEL_421;
          }

          return v1;
        }

        if (this <= 2003136115)
        {
          if (this != 1987013732)
          {
            v4 = 1987013741;
            goto LABEL_402;
          }

          return 7;
        }

        if (this == 2003136116)
        {
          return v1;
        }

        v18 = 2020373603;
        goto LABEL_343;
      }

      if (this <= 1970496881)
      {
        if ((this - 1969841250) >= 4)
        {
          v3 = 1970170980;
          goto LABEL_421;
        }

        return 10;
      }

      if (this <= 1986229349)
      {
        if (this != 1970496882)
        {
          v4 = 1983013986;
          goto LABEL_402;
        }

        return v1;
      }

      if (this == 1986229350)
      {
        return v1;
      }

      v19 = 1986290211;
    }

    else
    {
      if (this > 1952542834)
      {
        if (this <= 1953325672)
        {
          if (this > 1953002098)
          {
            if (this != 1953002099)
            {
              v3 = 1953002101;
              goto LABEL_421;
            }
          }

          else if (this != 1952542835)
          {
            v3 = 1952805485;
            goto LABEL_421;
          }

          return v1;
        }

        if (this <= 1953653101)
        {
          if (this == 1953325673)
          {
            return v1;
          }

          v10 = 1953326883;
          goto LABEL_417;
        }

        if (this == 1953653102 || this == 1969514100)
        {
          return v1;
        }

        v7 = 1969841184;
        goto LABEL_371;
      }

      if (this > 1937140835)
      {
        if (this <= 1937142885)
        {
          if (this != 1937140836)
          {
            v4 = 1937140845;
            goto LABEL_402;
          }

          return 7;
        }

        if (this != 1937142886)
        {
          v3 = 1952542820;
          goto LABEL_421;
        }

        return v1;
      }

      if (this <= 1937125987)
      {
        if (this == 1937010788)
        {
          return v1;
        }

        v13 = 1937077093;
        return this == v13;
      }

      if (this == 1937125988)
      {
        return 7;
      }

      v19 = 1937138723;
    }

LABEL_387:
    if (this != v19)
    {
      return 0;
    }

    return 9;
  }

  if (this > 1885762656)
  {
    if (this <= 1919773027)
    {
      if (this > 1886353255)
      {
        if (this <= 1919055205)
        {
          if (this > 1886546293)
          {
            if (this != 1886546294)
            {
              v3 = 1902539642;
              goto LABEL_421;
            }
          }

          else if (this != 1886353256)
          {
            v3 = 1886353266;
            goto LABEL_421;
          }

          return v1;
        }

        if (this > 1919251298)
        {
          if (this != 1919251299 && this != 1919251302)
          {
            v3 = 1919512167;
            goto LABEL_421;
          }

          return v1;
        }

        if (this != 1919055206)
        {
          v8 = 1919186467;
          goto LABEL_413;
        }

        return 1;
      }

      if (this <= 1886152482)
      {
        if (this <= 1885954664)
        {
          if (this != 1885762657)
          {
            v9 = 29805;
            goto LABEL_153;
          }

          return 14;
        }

        if (this != 1885954665)
        {
          v7 = 1885956452;
          goto LABEL_371;
        }

        return 10;
      }

      if (this > 1886218605)
      {
        if (this != 1886218606)
        {
          v3 = 1886221684;
          goto LABEL_421;
        }

        return v1;
      }

      if (this != 1886152483)
      {
        v3 = 1886156135;
        goto LABEL_421;
      }

      return 11;
    }

    if (this <= 1935894637)
    {
      if (this > 1934587251)
      {
        if (this > 1935763059)
        {
          if (this != 1935763060)
          {
            if (this == 1935892841)
            {
              return 4;
            }

            v10 = 1935893353;
            goto LABEL_417;
          }

          return v1;
        }

        if (this != 1934587252)
        {
          v3 = 1935762292;
          goto LABEL_421;
        }

        return 10;
      }

      if (this <= 1920168546)
      {
        if (this != 1919773028)
        {
          v13 = 1919839344;
          return this == v13;
        }

        return 17;
      }

      if (this == 1920168547)
      {
        return 6;
      }

      v14 = 1920297316;
LABEL_377:
      if (this != v14)
      {
        return 0;
      }

      return 10;
    }

    if (this <= 1935946357)
    {
      if ((this - 1935896178) < 2)
      {
        return 6;
      }

      if (this == 1935894638)
      {
        return v1;
      }

      v7 = 1935894894;
      goto LABEL_371;
    }

    if (this > 1935960433)
    {
      if (this == 1935960434)
      {
        return v1;
      }

      v10 = 1935962738;
      goto LABEL_417;
    }

    if (this == 1935946358)
    {
      return 7;
    }

    v3 = 1935959154;
LABEL_421:
    if (this == v3)
    {
      return v1;
    }

    return 0;
  }

  if (this > 1836479589)
  {
    if (this <= 1853059618)
    {
      if (this <= 1852012898)
      {
        if (this <= 1851878763)
        {
          if (this == 1836479590)
          {
            return v1;
          }

          v5 = 1851878757;
          goto LABEL_395;
        }

        if (this != 1851878764)
        {
          v3 = 1851878770;
          goto LABEL_421;
        }

        return 6;
      }

      if (this > 1852601890)
      {
        if (this == 1852601891)
        {
          return 4;
        }

        v10 = 1852601964;
        goto LABEL_417;
      }

      if (this == 1852012899)
      {
        return 7;
      }

      v7 = 1852400499;
    }

    else
    {
      if (this > 1870030193)
      {
        if (this > 1885762591)
        {
          if (this != 1885762592)
          {
            if (this != 1885762595)
            {
              v9 = 29759;
LABEL_153:
              v12 = v9 | 0x70660000;
              goto LABEL_318;
            }

            return 13;
          }

          return 12;
        }

        if (this == 1870030194)
        {
          return v1;
        }

        v8 = 1870098020;
        goto LABEL_413;
      }

      if (this <= 1869180522)
      {
        if (this != 1853059619)
        {
          v18 = 1853059700;
LABEL_343:
          if (this != v18)
          {
            return 0;
          }

          return 8;
        }

        return 9;
      }

      if (this == 1869180523)
      {
        return v1;
      }

      v7 = 1869638759;
    }

LABEL_371:
    if (this != v7)
    {
      return 0;
    }

    return 6;
  }

  if (this > 1836281965)
  {
    if (this > 1836462691)
    {
      if (this <= 1836475426)
      {
        if (this != 1836462692)
        {
          v2 = 12915;
          goto LABEL_401;
        }

        return 7;
      }

      if (this != 1836475427)
      {
        if (this != 1836475490)
        {
          v2 = 29539;
LABEL_401:
          v4 = v2 | 0x6D760000;
LABEL_402:
          if (this == v4)
          {
            return 7;
          }

          return 0;
        }

        return 7;
      }

      return 9;
    }

    if (this <= 1836411235)
    {
      if (this == 1836281966)
      {
        return 7;
      }

      v3 = 1836282994;
      goto LABEL_421;
    }

    if (this != 1836411236)
    {
      v3 = 1836414053;
      goto LABEL_421;
    }

    return 6;
  }

  if (this > 1835295858)
  {
    if (this <= 1835821925)
    {
      if (this != 1835295859)
      {
        v3 = 1835628607;
        goto LABEL_421;
      }

      return 4;
    }

    if (this == 1835821926)
    {
      return v1;
    }

    v10 = 1836281891;
LABEL_417:
    if (this != v10)
    {
      return 0;
    }

    return 4;
  }

  if (this > 1835295842)
  {
    if (this != 1835295843)
    {
      v5 = 1835295854;
      goto LABEL_395;
    }

    return 6;
  }

  if (this != 1835103092)
  {
    v10 = 1835295779;
    goto LABEL_417;
  }

  return v1;
}

uint64_t AMCP::HAL::get_hal_property_qualifier_type_code(AMCP::HAL *this)
{
  v1 = this;
  result = 0;
  if (v1 > 1836462691)
  {
    if (v1 <= 1936092524)
    {
      if (v1 > 1886218605)
      {
        if (v1 <= 1935896177)
        {
          if (v1 == 1886218606 || v1 == 1934587252)
          {
            return 3;
          }

          v3 = 1935894894;
          goto LABEL_64;
        }

        if ((v1 - 1935896178) < 2)
        {
          return 3;
        }

        v4 = 1935946358;
        goto LABEL_68;
      }

      if (v1 <= 1870098019)
      {
        if (v1 != 1836462692 && v1 != 1836462707)
        {
          v3 = 1852400499;
          goto LABEL_64;
        }

        return 7;
      }

      if (v1 == 1870098020)
      {
        return 4;
      }

      if (v1 != 1885762669)
      {
        if (v1 != 1885954665)
        {
          return result;
        }

        return 6;
      }
    }

    else
    {
      if (v1 > 1953325672)
      {
        if ((v1 - 1969841250) < 4 || v1 == 1953325673)
        {
          return 6;
        }

        v4 = 1983013986;
        goto LABEL_68;
      }

      if (v1 > 1936811891)
      {
        if (v1 > 1936941933)
        {
          if (v1 == 1936941934)
          {
            return 3;
          }

          v4 = 1937125988;
          goto LABEL_68;
        }

        if (v1 != 1936811892)
        {
          v3 = 1936941931;
          goto LABEL_64;
        }

        return 7;
      }

      if (v1 != 1936092525)
      {
        if (v1 == 1936224868)
        {
          return 3;
        }

        v4 = 1936811878;
        goto LABEL_68;
      }
    }

    return 12;
  }

  if (v1 <= 1684498540)
  {
    if (v1 <= 1668181109)
    {
      if (v1 > 1667658617)
      {
        if (v1 == 1667658618 || v1 == 1667787120)
        {
          return 3;
        }

        v3 = 1668049771;
        goto LABEL_64;
      }

      if (v1 != 1651074160)
      {
        if (v1 == 1667327847 || v1 == 1667523958)
        {
          return 15;
        }

        return result;
      }

      return 6;
    }

    if (v1 <= 1682533919)
    {
      if (v1 == 1668181110 || v1 == 1668506475)
      {
        return 3;
      }

      v3 = 1668506478;
      goto LABEL_64;
    }

    if (v1 == 1682533920 || v1 == 1682929012)
    {
      return 3;
    }

    v4 = 1684157046;
LABEL_68:
    if (v1 != v4)
    {
      return result;
    }

    return 7;
  }

  if (v1 <= 1818453106)
  {
    if (v1 <= 1684500593)
    {
      if (v1 == 1684498541 || v1 == 1684498544)
      {
        return 3;
      }

      v3 = 1684500589;
      goto LABEL_64;
    }

    if (v1 == 1684500594)
    {
      return 3;
    }

    if (v1 != 1685416292)
    {
      v3 = 1751740524;
      goto LABEL_64;
    }

    return 6;
  }

  if (v1 <= 1818456941)
  {
    if (v1 == 1818453107)
    {
      return 7;
    }

    if (v1 == 1818455660)
    {
      return 3;
    }

    v4 = 1818456932;
    goto LABEL_68;
  }

  if (v1 <= 1835295842)
  {
    if (v1 != 1818456942)
    {
      v3 = 1819501422;
      goto LABEL_64;
    }

    return 3;
  }

  if (v1 == 1835295843)
  {
    return 3;
  }

  v3 = 1835295854;
LABEL_64:
  if (v1 == v3)
  {
    return 3;
  }

  return result;
}

uint64_t AMCP::HAL::get_hal_type_code_for_mcp(int a1)
{
  if ((a1 - 1) > 0x1B)
  {
    return 0;
  }

  else
  {
    return dword_1DE763F20[a1 - 1];
  }
}

uint64_t AMCP::HAL::translate_hal_control_address_to_device(AMCP::HAL *this, uint64_t a2, unsigned int a3, int *a4, const AudioObjectPropertyAddress *a5)
{
  v5 = *a4;
  if (*a4 <= 1818456949)
  {
    if (v5 <= 1818453105)
    {
      if (v5 <= 1651272547)
      {
        if (v5 != 1650685548)
        {
          if (v5 != 1651272546 || this != 1936028002)
          {
            goto LABEL_257;
          }

          goto LABEL_220;
        }

        if (this > 1819504225)
        {
          if (this <= 1936028001)
          {
            if (this > 1852601963)
            {
              if (this != 1852601964)
              {
                if (this != 1885888878)
                {
                  if (this != 1885893481)
                  {
                    goto LABEL_257;
                  }

                  goto LABEL_222;
                }

LABEL_176:
                v7 = 1885888768;
                goto LABEL_114;
              }

              goto LABEL_188;
            }

            if (this != 1819504226)
            {
              if (this != 1836414053)
              {
                goto LABEL_257;
              }

LABEL_230:
              if (a2 == 1886679669)
              {
                v6 = 117;
LABEL_232:
                v7 = 1953001984;
                goto LABEL_233;
              }

              v7 = 1836413952;
LABEL_235:
              v6 = 101;
              return v6 | v7 | (a2 << 32);
            }

            goto LABEL_121;
          }

          if (this > 1937072748)
          {
            if (this != 1937072749)
            {
              if (this == 1952541794)
              {
                goto LABEL_93;
              }

              if (this != 1999790690)
              {
                goto LABEL_257;
              }

              goto LABEL_259;
            }

LABEL_125:
            v7 = 1936553216;
            goto LABEL_126;
          }

          if (this == 1936028002)
          {
            goto LABEL_220;
          }

          if (this != 1936682095)
          {
LABEL_111:
            if (this == 1936744814)
            {
              goto LABEL_112;
            }

LABEL_257:
            v6 = 0;
            v7 = 0;
            return v6 | v7 | (a2 << 32);
          }

LABEL_131:
          if (a2 != 1886679669)
          {
            v7 = 1936681984;
            v6 = 111;
            return v6 | v7 | (a2 << 32);
          }

          v6 = 115;
          goto LABEL_232;
        }

        if (this > 1685287522)
        {
          if (this <= 1751740517)
          {
            if (this == 1685287523)
            {
LABEL_140:
              v10 = 1936941824;
LABEL_226:
              v7 = v10 + 3840;
              v6 = 99;
              return v6 | v7 | (a2 << 32);
            }

            if (this != 1702259059)
            {
              if (this != 1718432370)
              {
                goto LABEL_257;
              }

              goto LABEL_146;
            }

            goto LABEL_145;
          }

          if (this != 1751740518)
          {
            if (this != 1784767339)
            {
              if (this != 1815241314)
              {
                goto LABEL_257;
              }

              goto LABEL_194;
            }

LABEL_195:
            v7 = 1784767232;
            v6 = 107;
            return v6 | v7 | (a2 << 32);
          }

LABEL_104:
          v6 = 102;
          goto LABEL_212;
        }

        if (this > 1668049263)
        {
          if (this == 1668049264)
          {
LABEL_99:
            v7 = 1668049152;
            v6 = 112;
            return v6 | v7 | (a2 << 32);
          }

          if (this != 1684370292)
          {
            if (this != 1684895092)
            {
              goto LABEL_257;
            }

            goto LABEL_117;
          }

          goto LABEL_182;
        }

        if (this == 1650602615)
        {
          goto LABEL_227;
        }

        if (this != 1668047723)
        {
          goto LABEL_257;
        }

LABEL_225:
        v10 = 1668506368;
        goto LABEL_226;
      }

      if (v5 == 1651272548)
      {
        if (this != 1936028002)
        {
          goto LABEL_257;
        }

        v7 = 1936811008;
        goto LABEL_235;
      }

      if (v5 != 1668049771)
      {
        goto LABEL_257;
      }

      if (this != 1668047723)
      {
LABEL_110:
        if (this != 1936028002)
        {
          goto LABEL_111;
        }

        goto LABEL_220;
      }

      v6 = 107;
LABEL_201:
      v7 = 1668506368;
      return v6 | v7 | (a2 << 32);
    }

    if (v5 > 1818453109)
    {
      if (v5 == 1818453110)
      {
        if (this <= 1836414052)
        {
          goto LABEL_94;
        }

        if (this <= 1936682094)
        {
          if (this <= 1885893480)
          {
            goto LABEL_173;
          }

          if (this == 1885893481)
          {
            goto LABEL_222;
          }

          if (this == 1936028002)
          {
            goto LABEL_220;
          }

          if (this != 1936028007)
          {
            goto LABEL_257;
          }

          v6 = 100;
          goto LABEL_219;
        }

        if (this <= 1937072757)
        {
          goto LABEL_122;
        }

        if (this <= 1986817380)
        {
          if (this == 1937072758)
          {
            v6 = 100;
            goto LABEL_262;
          }

LABEL_92:
          if (this != 1952541794)
          {
            goto LABEL_257;
          }

          goto LABEL_93;
        }

        if (this == 1999790690)
        {
LABEL_259:
          v7 = 1999790592;
          goto LABEL_260;
        }

        if (this != 1986817381)
        {
          goto LABEL_257;
        }

        if (a2 != 1886679669)
        {
          v7 = 1987013632;
          goto LABEL_221;
        }

        v6 = 98;
        v11 = 25600;
LABEL_256:
        v7 = v11 | 0x6D760000u;
        goto LABEL_233;
      }

      if (v5 != 1818456932)
      {
        goto LABEL_257;
      }

      if (this <= 1836414052)
      {
        goto LABEL_94;
      }

      if (this <= 1936682094)
      {
        if (this <= 1885893480)
        {
          goto LABEL_173;
        }

        if (this == 1885893481)
        {
          goto LABEL_222;
        }

        if (this == 1936028002)
        {
          goto LABEL_220;
        }

        if (this != 1936028007)
        {
          goto LABEL_257;
        }

        v6 = 116;
        goto LABEL_219;
      }

      if (this <= 1937072757)
      {
        goto LABEL_122;
      }

      if (this <= 1986817380)
      {
        if (this == 1937072758)
        {
          v7 = 1937125888;
LABEL_221:
          v6 = 100;
          return v6 | v7 | (a2 << 32);
        }

        goto LABEL_92;
      }

      if (this == 1999790690)
      {
        goto LABEL_259;
      }

      if (this != 1986817381)
      {
        goto LABEL_257;
      }

      if (a2 != 1886679669)
      {
        v7 = 1983013888;
        goto LABEL_260;
      }

      v6 = 100;
    }

    else
    {
      if (v5 == 1818453106)
      {
        if (this <= 1836414052)
        {
          goto LABEL_94;
        }

        if (this > 1936682094)
        {
          if (this > 1937072757)
          {
            if (this <= 1986817380)
            {
              if (this == 1937072758)
              {
                v7 = 1937138688;
LABEL_71:
                v6 = 35;
                return v6 | v7 | (a2 << 32);
              }

              goto LABEL_92;
            }

            if (this != 1999790690)
            {
              if (this != 1986817381)
              {
                goto LABEL_257;
              }

              v9 = a2 == 1886679669;
              v8 = 1986290176;
              v7 = 1836475392;
LABEL_69:
              if (!v9)
              {
                v7 = v8;
              }

              goto LABEL_71;
            }

            goto LABEL_259;
          }

          goto LABEL_122;
        }

        if (this <= 1885893480)
        {
          goto LABEL_173;
        }

        if (this == 1885893481)
        {
          goto LABEL_222;
        }

        if (this == 1936028002)
        {
          goto LABEL_220;
        }

        if (this != 1936028007)
        {
          goto LABEL_257;
        }

        v6 = 114;
LABEL_219:
        v7 = 1936811776;
        return v6 | v7 | (a2 << 32);
      }

      if (v5 != 1818453107)
      {
        goto LABEL_257;
      }

      if (this <= 1836414052)
      {
        goto LABEL_94;
      }

      if (this <= 1936682094)
      {
        if (this <= 1885893480)
        {
          goto LABEL_173;
        }

        if (this == 1885893481)
        {
          goto LABEL_222;
        }

        if (this == 1936028002)
        {
          goto LABEL_220;
        }

        if (this != 1936028007)
        {
          goto LABEL_257;
        }

        v6 = 102;
        goto LABEL_219;
      }

      if (this <= 1937072757)
      {
        goto LABEL_122;
      }

      if (this <= 1986817380)
      {
        if (this != 1937072758)
        {
          goto LABEL_92;
        }

        v7 = 1935946240;
LABEL_266:
        v6 = 118;
        return v6 | v7 | (a2 << 32);
      }

      if (this == 1999790690)
      {
        goto LABEL_259;
      }

      if (this != 1986817381)
      {
        goto LABEL_257;
      }

      if (a2 != 1886679669)
      {
        v7 = 1684156928;
        goto LABEL_266;
      }

      v6 = 115;
    }

    v11 = 12800;
    goto LABEL_256;
  }

  if (v5 <= 1935894893)
  {
    if (v5 <= 1935892840)
    {
      if (v5 != 1818456950)
      {
        if (v5 != 1818457190)
        {
          goto LABEL_257;
        }

        if (this > 1836414052)
        {
          if (this <= 1936744813)
          {
            if (this > 1885893480)
            {
              if (this != 1885893481)
              {
                if (this == 1936028002)
                {
                  goto LABEL_220;
                }

                if (this != 1936682095)
                {
                  goto LABEL_257;
                }

                goto LABEL_131;
              }

LABEL_222:
              v7 = 1885893376;
              v6 = 105;
              return v6 | v7 | (a2 << 32);
            }

LABEL_173:
            if (this != 1836414053)
            {
              if (this != 1852601964)
              {
                if (this != 1885888878)
                {
                  goto LABEL_257;
                }

                goto LABEL_176;
              }

              goto LABEL_188;
            }

            goto LABEL_230;
          }

          if (this <= 1952541793)
          {
            if (this != 1936744814)
            {
              if (this != 1937072749)
              {
                if (this != 1937072758)
                {
                  goto LABEL_257;
                }

                v7 = 1937142784;
LABEL_210:
                v6 = 102;
                return v6 | v7 | (a2 << 32);
              }

              goto LABEL_125;
            }

LABEL_112:
            v7 = 1836281856;
            if (a2 != 1886679669)
            {
              v7 = 1936744704;
            }

            goto LABEL_114;
          }

          if (this != 1952541794)
          {
            if (this != 1999790690)
            {
              if (this != 1986817381)
              {
                goto LABEL_257;
              }

              v7 = 1986229248;
              if (a2 == 1886679669)
              {
                v7 = 1836479488;
              }

              goto LABEL_210;
            }

            goto LABEL_259;
          }

LABEL_93:
          v6 = 98;
          v7 = 1952541696;
          return v6 | v7 | (a2 << 32);
        }

LABEL_94:
        if (this <= 1702259058)
        {
          if (this <= 1684370291)
          {
            if (this != 1650602615)
            {
              if (this != 1668047723)
              {
                if (this != 1668049264)
                {
                  goto LABEL_257;
                }

                goto LABEL_99;
              }

              goto LABEL_225;
            }

LABEL_227:
            v7 = 1650602496;
            v6 = 119;
            return v6 | v7 | (a2 << 32);
          }

          if (this != 1684370292)
          {
            if (this == 1684895092)
            {
LABEL_117:
              v7 = 1684894976;
LABEL_126:
              v6 = 116;
              return v6 | v7 | (a2 << 32);
            }

            goto LABEL_139;
          }

          goto LABEL_182;
        }

        if (this <= 1784767338)
        {
          if (this != 1702259059)
          {
            if (this != 1718432370)
            {
              if (this != 1751740518)
              {
                goto LABEL_257;
              }

              goto LABEL_104;
            }

LABEL_146:
            v7 = 1718432256;
            v6 = 114;
            return v6 | v7 | (a2 << 32);
          }

LABEL_145:
          v7 = 1952542720;
          goto LABEL_221;
        }

        if (this != 1784767339)
        {
          if (this != 1815241314)
          {
            if (this != 1819504226)
            {
              goto LABEL_257;
            }

LABEL_121:
            v7 = 1819504128;
LABEL_260:
            v6 = 98;
            return v6 | v7 | (a2 << 32);
          }

LABEL_194:
          v7 = 1815241216;
          goto LABEL_260;
        }

        goto LABEL_195;
      }

      if (this <= 1836414052)
      {
        goto LABEL_94;
      }

      if (this > 1936682094)
      {
        if (this > 1937072757)
        {
          if (this <= 1986817380)
          {
            if (this == 1937072758)
            {
              v6 = 109;
LABEL_262:
              v7 = 1937140736;
              return v6 | v7 | (a2 << 32);
            }

            goto LABEL_92;
          }

          if (this != 1999790690)
          {
            if (this != 1986817381)
            {
              goto LABEL_257;
            }

            if (a2 != 1886679669)
            {
              v7 = 1987013632;
              v6 = 109;
              return v6 | v7 | (a2 << 32);
            }

            v7 = 1836479232;
            v6 = 99;
LABEL_233:
            a2 = 1886679669;
            return v6 | v7 | (a2 << 32);
          }

          goto LABEL_259;
        }

LABEL_122:
        if (this != 1936682095)
        {
          if (this == 1936744814)
          {
            goto LABEL_112;
          }

          if (this != 1937072749)
          {
            goto LABEL_257;
          }

          goto LABEL_125;
        }

        goto LABEL_131;
      }

      if (this <= 1885893480)
      {
        goto LABEL_173;
      }

      if (this == 1885893481)
      {
        goto LABEL_222;
      }

      if (this == 1936028002)
      {
        goto LABEL_220;
      }

      if (this != 1936028007)
      {
        goto LABEL_257;
      }

      v6 = 115;
      goto LABEL_219;
    }

    if (v5 != 1935892841)
    {
      if (v5 != 1935893353)
      {
        goto LABEL_257;
      }

      if (this > 1751740517)
      {
        if (this > 1936028001)
        {
          goto LABEL_110;
        }

        if (this != 1751740518)
        {
          if (this != 1852601964)
          {
            goto LABEL_257;
          }

LABEL_188:
          v6 = 108;
          goto LABEL_189;
        }

        goto LABEL_104;
      }

      if (this != 1668047723)
      {
        if (this != 1684370292)
        {
LABEL_139:
          if (this != 1685287523)
          {
            goto LABEL_257;
          }

          goto LABEL_140;
        }

LABEL_182:
        v6 = 115;
        goto LABEL_214;
      }

      goto LABEL_225;
    }

    if (this > 1751740517)
    {
      if (this > 1936028001)
      {
        goto LABEL_110;
      }

      if (this == 1751740518)
      {
        v6 = 35;
        goto LABEL_212;
      }

      if (this != 1852601964)
      {
        goto LABEL_257;
      }

      v6 = 35;
LABEL_189:
      v7 = 1852601856;
      return v6 | v7 | (a2 << 32);
    }

    if (this != 1668047723)
    {
      if (this != 1684370292)
      {
        if (this == 1685287523)
        {
          v6 = 35;
          v7 = 1936941824;
          return v6 | v7 | (a2 << 32);
        }

        goto LABEL_257;
      }

      v6 = 35;
LABEL_214:
      v7 = 1835295744;
      return v6 | v7 | (a2 << 32);
    }

    v6 = 35;
    goto LABEL_201;
  }

  if (v5 <= 1935962741)
  {
    if (v5 != 1935894894)
    {
      v6 = 0;
      v7 = 0;
      if (v5 != 1935962738)
      {
        goto LABEL_257;
      }

      return v6 | v7 | (a2 << 32);
    }

    if (this > 1751740517)
    {
      if (this > 1936028001)
      {
        goto LABEL_110;
      }

      if (this != 1751740518)
      {
        if (this != 1852601964)
        {
          goto LABEL_257;
        }

        v6 = 108;
        v7 = 1818455552;
        return v6 | v7 | (a2 << 32);
      }

      v6 = 108;
LABEL_212:
      v7 = 1751740416;
      return v6 | v7 | (a2 << 32);
    }

    if (this != 1668047723)
    {
      if (this != 1684370292)
      {
        if (this == 1685287523)
        {
          v6 = 110;
          v7 = 1819501312;
          return v6 | v7 | (a2 << 32);
        }

        goto LABEL_257;
      }

      v6 = 99;
      goto LABEL_214;
    }

    v7 = 1818456832;
LABEL_114:
    v6 = 110;
    return v6 | v7 | (a2 << 32);
  }

  v6 = 0;
  v7 = 0;
  if (v5 != 1935962742)
  {
    if (v5 != 1936745315)
    {
      if (v5 != 1936745334)
      {
        goto LABEL_257;
      }

      goto LABEL_110;
    }

    if (this != 1936028002)
    {
      if (this != 1936744814)
      {
        goto LABEL_257;
      }

      v8 = 1936748032;
      v9 = a2 == 1886679669;
      v7 = 1836281856;
      goto LABEL_69;
    }

LABEL_220:
    v7 = 1936811008;
    goto LABEL_221;
  }

  return v6 | v7 | (a2 << 32);
}

void AMCP::HAL::translate_mcp_value_to_hal_by_type(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, AMCP::HAL *a4@<X8>)
{
  v4 = a4;
  switch(a3)
  {
    case 1:
      if (a2 != 16)
      {
        goto LABEL_247;
      }

      if (!*(a1 + 32))
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        __p = 0;
        v125 = 0;
        v126 = 0;
LABEL_250:
        std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(&__p, v32, v33, v34);
        goto LABEL_256;
      }

      v29 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
      v30 = *(a1 + 32);
      cf[0] = 0;
      if (v30)
      {
        v30(3, a1, 0, cf);
        v30 = cf[0];
      }

      if (v30 == v29)
      {
        cf[0] = v29;
        v31 = (*(a1 + 32))(4, a1, 0, cf);
        v125 = 0;
        v126 = 0;
        __p = 0;
        if (v31)
        {
          v32 = *v31;
          v33 = v31[1];
          v34 = v33 - *v31;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
        }

        goto LABEL_250;
      }

      *&v123 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
      *cf = 0u;
      v128 = 0u;
      v129 = 0;
      (*(a1 + 32))(6, a1, cf, &v123);
      if (v129)
      {
        *&v123 = v29;
        v106 = v129(4, cf, 0, &v123);
        v125 = 0;
        v126 = 0;
        __p = 0;
        if (v106)
        {
          v107 = *v106;
          v108 = v106[1];
        }

        else
        {
          v107 = 0;
          v108 = 0;
        }

        std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(&__p, v107, v108, v108 - v107);
      }

      else
      {
        __p = 0;
        v125 = 0;
        v126 = 0;
        std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(&__p, 0, 0, 0);
      }

      if (v129)
      {
        v129(0, cf, 0, 0);
      }

LABEL_256:
      v64 = __p;
      v112 = CFDataCreate(0, __p, v125 - __p);
      *v4 = v112;
      if (v112)
      {
        v113 = CFGetTypeID(v112);
        if (v113 != CFDataGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      goto LABEL_258;
    case 2:
      if (!*(a1 + 32))
      {
        goto LABEL_247;
      }

      type = AMCP::Implementation::get_type_marker<int>();
      v24 = *(a1 + 32);
      __p = 0;
      if (v24)
      {
        v24(3, a1, 0, &__p);
        v24 = __p;
      }

      if (v24 == type)
      {
        cf[0] = type;
        if (!(*(a1 + 32))(4, a1, 0, cf))
        {
          goto LABEL_247;
        }

        goto LABEL_183;
      }

      *&v123 = AMCP::Implementation::get_type_marker<int>();
      *cf = 0u;
      v128 = 0u;
      v129 = 0;
      (*(a1 + 32))(6, a1, cf, &v123);
      if (v129)
      {
        *&v123 = type;
        v85 = v129(4, cf, 0, &v123);
        if (v129)
        {
          v129(0, cf, 0, 0);
        }

        if (v85)
        {
LABEL_183:
          LODWORD(cf[0]) = AMCP::Thing::convert_to<int>(a1);
          v86 = CFDataCreate(0, cf, 4);
          *v4 = v86;
          if (v86)
          {
            v87 = CFGetTypeID(v86);
            if (v87 != CFDataGetTypeID())
            {
              v88 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v88, "Could not construct");
              __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }

          return;
        }
      }

      goto LABEL_247;
    case 3:
    case 10:

      AMCP::HAL::translate_simple_mcp_value_to_hal<unsigned int>(a4, a1);
      return;
    case 4:
      if (a2 > 0x1C)
      {
        goto LABEL_61;
      }

      if (((1 << a2) & 0x1FCFC000) != 0)
      {
        goto LABEL_247;
      }

      if (a2 == 20)
      {
LABEL_66:

        AMCP::HAL::translate_vector_mcp_value_to_hal<unsigned int>(a4, a1);
        return;
      }

      if (a2 == 21)
      {
LABEL_63:

        AMCP::HAL::translate_simple_mcp_value_to_hal<std::tuple<unsigned int,unsigned int>>(a4, a1);
        return;
      }

LABEL_61:
      if (a2 < 0xD)
      {
        goto LABEL_247;
      }

      if (a2 == 13)
      {
        goto LABEL_63;
      }

LABEL_69:
      if (!AMCP::Thing::can_convert_to<applesauce::CF::StringRef>(a1))
      {
        goto LABEL_247;
      }

      AMCP::Thing::convert_to<applesauce::CF::StringRef>(&v123, a1);
      v35 = v123;
      if (!v123)
      {
        v114 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v114, "Could not construct");
        __cxa_throw(v114, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(cf, v123);
      if ((SBYTE7(v128) & 0x80u) == 0)
      {
        v36 = cf;
      }

      else
      {
        v36 = cf[0];
      }

      v37 = strlen(v36);
      std::vector<char>::vector[abi:ne200100](&__p, v37 + 1);
      if ((SBYTE7(v128) & 0x80u) == 0)
      {
        v38 = cf;
      }

      else
      {
        v38 = cf[0];
      }

      memcpy(__p, v38, v125 - __p);
      v39 = CFDataCreate(0, __p, v125 - __p);
      *v4 = v39;
      if (v39)
      {
        v40 = CFGetTypeID(v39);
        if (v40 != CFDataGetTypeID())
        {
          v116 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v116, "Could not construct");
          __cxa_throw(v116, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      if (__p)
      {
        v125 = __p;
        operator delete(__p);
      }

      if (SBYTE7(v128) < 0)
      {
        operator delete(cf[0]);
      }

      goto LABEL_178;
    case 5:
      goto LABEL_69;
    case 6:
      if (!AMCP::Thing::can_convert_to<applesauce::CF::StringRef>(a1))
      {
        goto LABEL_247;
      }

      AMCP::Thing::convert_to<applesauce::CF::StringRef>(cf, a1);
      AMCP::HAL::translate_cf_string_mcp_value_to_hal(v4, cf);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      return;
    case 7:
      if (!*(a1 + 32))
      {
        goto LABEL_247;
      }

      v27 = AMCP::Implementation::get_type_marker<float>();
      v28 = *(a1 + 32);
      __p = 0;
      if (v28)
      {
        v28(3, a1, 0, &__p);
        v28 = __p;
      }

      if (v28 == v27)
      {
        cf[0] = v27;
        if (!(*(a1 + 32))(4, a1, 0, cf))
        {
          goto LABEL_247;
        }

        goto LABEL_196;
      }

      *&v123 = AMCP::Implementation::get_type_marker<float>();
      *cf = 0u;
      v128 = 0u;
      v129 = 0;
      (*(a1 + 32))(6, a1, cf, &v123);
      if (v129)
      {
        *&v123 = v27;
        v90 = v129(4, cf, 0, &v123);
        if (v129)
        {
          v129(0, cf, 0, 0);
        }

        if (v90)
        {
LABEL_196:
          LODWORD(cf[0]) = AMCP::Thing::convert_to<float>(a1);
          v91 = CFDataCreate(0, cf, 4);
          *v4 = v91;
          if (v91)
          {
            v92 = CFGetTypeID(v91);
            if (v92 != CFDataGetTypeID())
            {
              v93 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v93, "Could not construct");
              __cxa_throw(v93, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }

          return;
        }
      }

      goto LABEL_247;
    case 8:
      if (!*(a1 + 32))
      {
        goto LABEL_247;
      }

      v71 = AMCP::Implementation::get_type_marker<double>();
      v72 = *(a1 + 32);
      __p = 0;
      if (v72)
      {
        v72(3, a1, 0, &__p);
        v72 = __p;
      }

      if (v72 == v71)
      {
        cf[0] = v71;
        if (!(*(a1 + 32))(4, a1, 0, cf))
        {
          goto LABEL_247;
        }

        goto LABEL_203;
      }

      *&v123 = AMCP::Implementation::get_type_marker<double>();
      *cf = 0u;
      v128 = 0u;
      v129 = 0;
      (*(a1 + 32))(6, a1, cf, &v123);
      if (v129)
      {
        *&v123 = v71;
        v94 = v129(4, cf, 0, &v123);
        if (v129)
        {
          v129(0, cf, 0, 0);
        }

        if (v94)
        {
LABEL_203:
          cf[0] = COERCE_CFTYPEREF(AMCP::Thing::convert_to<double>(a1));
          v95 = CFDataCreate(0, cf, 8);
          *v4 = v95;
          if (v95)
          {
            v96 = CFGetTypeID(v95);
            if (v96 != CFDataGetTypeID())
            {
              v97 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v97, "Could not construct");
              __cxa_throw(v97, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }

          return;
        }
      }

      goto LABEL_247;
    case 9:
      if (a2 < 0x19 || a2 - 27 < 2)
      {
        goto LABEL_247;
      }

      if (a2 == 26)
      {

        AMCP::HAL::translate_simple_mcp_value_to_hal<CA::ValueRange>(a4, a1);
        return;
      }

      if (a2 == 25)
      {
        if (!AMCP::Thing::can_convert_to<CA::ValueRangeList>(a1))
        {
          goto LABEL_247;
        }

        AMCP::Thing::convert_to<CA::ValueRangeList>(cf, a1);
        v64 = cf[0];
        v63 = cf[1];
        std::vector<double>::vector[abi:ne200100](&__p, ((cf[1] - cf[0]) >> 3) & 0xFFFFFFFE);
        v65 = __p;
        if (v64 != v63)
        {
          v66 = __p;
          v67 = v64;
          do
          {
            *v66 = *v67;
            v66[1] = v67[1];
            v66 += 2;
            v67 += 2;
          }

          while (v67 != v63);
        }

        v68 = CFDataCreate(0, v65, v125 - v65);
        applesauce::CF::DataRef::from_create(v4, v68);
        if (__p)
        {
          v125 = __p;
          operator delete(__p);
        }

LABEL_258:
        if (v64)
        {
          operator delete(v64);
        }

        return;
      }

LABEL_138:
      if (!*(a1 + 32))
      {
        goto LABEL_247;
      }

      v69 = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
      v70 = *(a1 + 32);
      __p = 0;
      if (v70)
      {
        v70(3, a1, 0, &__p);
        v70 = __p;
      }

      if (v70 == v69)
      {
        cf[0] = v69;
        if (!(*(a1 + 32))(4, a1, 0, cf))
        {
          goto LABEL_247;
        }

        goto LABEL_168;
      }

      *&v123 = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
      *cf = 0u;
      v128 = 0u;
      v129 = 0;
      (*(a1 + 32))(6, a1, cf, &v123);
      if (v129)
      {
        *&v123 = v69;
        v79 = v129(4, cf, 0, &v123);
        if (v129)
        {
          v129(0, cf, 0, 0);
        }

        if (v79)
        {
LABEL_168:
          v129 = 0;
          *cf = 0u;
          v128 = 0u;
          AMCP::Thing::convert_to<AudioStreamBasicDescription>(cf, a1);
          v80 = CFDataCreate(0, cf, 40);
          *v4 = v80;
          if (v80)
          {
            v81 = CFGetTypeID(v80);
            if (v81 != CFDataGetTypeID())
            {
              v82 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v82, "Could not construct");
              __cxa_throw(v82, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }

          return;
        }
      }

      goto LABEL_247;
    case 11:
      goto LABEL_66;
    case 12:
      goto LABEL_138;
    case 13:
      if (!AMCP::Thing::can_convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(a1))
      {
        goto LABEL_247;
      }

      AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(&__p, a1);
      v41 = __p;
      v119 = v125;
      if (__p != v125)
      {
        v118 = v4;
        v9 = 0;
        v42 = 0;
        while (1)
        {
          v43 = *v41;
          v120 = v41[1];
          if (*v41 != v120)
          {
            break;
          }

LABEL_126:
          v41 += 8;
          if (v41 == v119)
          {
            v4 = v118;
            goto LABEL_222;
          }
        }

LABEL_91:
        v45 = *v43;
        v44 = v43[1];
        v46 = &AMCP::Utility::Common_Sample_Rate::k_list;
        v47 = 21;
        while (1)
        {
          v48 = &v46[v47 >> 1];
          if (*v48 >= v45)
          {
            v47 >>= 1;
            if (*v48 == v45)
            {
              v46 = v48;
LABEL_98:
              v49 = 0;
              v50 = 21;
              while (1)
              {
                v51 = v49 + 8 * (v50 >> 1);
                v52 = *(&AMCP::Utility::Common_Sample_Rate::k_list + v51);
                if (v52 >= v44)
                {
                  v50 >>= 1;
                  if (v52 == v44)
                  {
                    v49 = v51;
LABEL_105:
                    if (v49 == 168)
                    {
                      v53 = dword_1DE763F20;
                    }

                    else
                    {
                      v53 = (&AMCP::Utility::Common_Sample_Rate::k_list + v49);
                      if (*v53 <= v44)
                      {
                        ++v53;
                      }
                    }

                    v54 = v53 - v46;
                    if (v54 < 0 || !v46)
                    {
LABEL_212:
                      std::terminate();
                    }

                    v122 = v43;
                    if (v53 != v46)
                    {
                      v55 = 0;
                      while (v54 > v55)
                      {
                        v56 = *(v41 + 3);
                        *cf = *(v41 + 2);
                        v128 = v56;
                        v57 = v42 - v9;
                        v58 = 0xCCCCCCCCCCCCCCCDLL * ((v42 - v9) >> 3);
                        v59 = v58 + 1;
                        if (v58 + 1 > 0x666666666666666)
                        {
                          std::vector<void *>::__throw_length_error[abi:ne200100]();
                        }

                        if (0x999999999999999ALL * (-v9 >> 3) > v59)
                        {
                          v59 = 0x999999999999999ALL * (-v9 >> 3);
                        }

                        if (0xCCCCCCCCCCCCCCCDLL * (-v9 >> 3) >= 0x333333333333333)
                        {
                          v60 = 0x666666666666666;
                        }

                        else
                        {
                          v60 = v59;
                        }

                        if (v60)
                        {
                          std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v60);
                        }

                        v61 = 8 * ((v42 - v9) >> 3);
                        *v61 = v46[v55];
                        *(v61 + 8) = *cf;
                        *(v61 + 24) = v128;
                        v42 = v61 + 40;
                        v62 = 40 * v58 + 40 * (v57 / -40);
                        memcpy((v61 + 40 * (v57 / -40)), v9, v57);
                        if (v9)
                        {
                          operator delete(v9);
                        }

                        v9 = v62;
                        if (v54 == ++v55)
                        {
                          goto LABEL_125;
                        }
                      }

                      goto LABEL_212;
                    }

LABEL_125:
                    v43 = v122 + 2;
                    if (v122 + 2 == v120)
                    {
                      goto LABEL_126;
                    }

                    goto LABEL_91;
                  }
                }

                else
                {
                  v49 = v51 + 8;
                  v50 += ~(v50 >> 1);
                }

                if (!v50)
                {
                  goto LABEL_105;
                }
              }
            }
          }

          else
          {
            v46 = v48 + 1;
            v47 += ~(v47 >> 1);
          }

          if (!v47)
          {
            goto LABEL_98;
          }
        }
      }

      v9 = 0;
      v42 = 0;
LABEL_222:
      v105 = CFDataCreate(0, v9, v42 - v9);
      applesauce::CF::DataRef::from_create(v4, v105);
LABEL_223:
      if (v9)
      {
        operator delete(v9);
      }

      cf[0] = &__p;
      std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](cf);
      return;
    case 14:
      if (!AMCP::Thing::can_convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(a1))
      {
        goto LABEL_247;
      }

      AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(&__p, a1);
      v8 = __p;
      v121 = v125;
      if (__p == v125)
      {
        v9 = 0;
        v22 = 0;
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *v8;
          v12 = v8[1];
          if (*v8 != v12)
          {
            v13 = v10;
            do
            {
              v14 = *(v8 + 3);
              *cf = *(v8 + 2);
              v128 = v14;
              if (*v11 == v11[1])
              {
                v15 = *v11;
              }

              else
              {
                v15 = 0.0;
              }

              v123 = *v11;
              v16 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 3);
              v17 = v16 + 1;
              if ((v16 + 1) > 0x492492492492492)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              if (0xDB6DB6DB6DB6DB6ELL * (-v9 >> 3) > v17)
              {
                v17 = 0xDB6DB6DB6DB6DB6ELL * (-v9 >> 3);
              }

              if ((0x6DB6DB6DB6DB6DB7 * (-v9 >> 3)) >= 0x249249249249249)
              {
                v18 = 0x492492492492492;
              }

              else
              {
                v18 = v17;
              }

              if (v18)
              {
                std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v18);
              }

              v19 = 56 * v16;
              *v19 = v15;
              *(v19 + 8) = *cf;
              *(v19 + 24) = v128;
              *(v19 + 40) = v123;
              v10 = (56 * v16 + 56);
              v20 = v13 - v9;
              v21 = (v19 + 56 * ((v13 - v9) / -56));
              memcpy(v21, v9, v20);
              if (v9)
              {
                operator delete(v9);
              }

              v9 = v21;
              v11 += 2;
              v13 = v10;
            }

            while (v11 != v12);
          }

          v8 += 8;
        }

        while (v8 != v121);
        v22 = v10;
      }

      v100 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 3));
      if (v10 == v9)
      {
        v101 = 0;
      }

      else
      {
        v101 = v100;
      }

      std::__introsort<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *,false>(v9, v10, v101, 1);
      v102 = CFDataCreate(0, v9, v22 - v9);
      *v4 = v102;
      if (v102)
      {
        v103 = CFGetTypeID(v102);
        if (v103 != CFDataGetTypeID())
        {
          v104 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v104, "Could not construct");
          __cxa_throw(v104, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      goto LABEL_223;
    case 15:
      if (!*(a1 + 32))
      {
        goto LABEL_235;
      }

      v25 = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
      v26 = *(a1 + 32);
      __p = 0;
      if (v26)
      {
        v26(3, a1, 0, &__p);
        v26 = __p;
      }

      if (v26 == v25)
      {
        cf[0] = v25;
        if (!(*(a1 + 32))(4, a1, 0, cf))
        {
          goto LABEL_206;
        }

LABEL_190:
        AMCP::Thing::convert_to<applesauce::CF::BooleanRef>(cf, a1);
        v35 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
          CFRelease(v35);
        }

        goto LABEL_243;
      }

      *&v123 = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
      *cf = 0u;
      v128 = 0u;
      v129 = 0;
      (*(a1 + 32))(6, a1, cf, &v123);
      if (v129)
      {
        *&v123 = v25;
        v89 = v129(4, cf, 0, &v123);
        if (v129)
        {
          v129(0, cf, 0, 0);
        }

        if (v89)
        {
          goto LABEL_190;
        }
      }

LABEL_206:
      if (!*(a1 + 32))
      {
        goto LABEL_235;
      }

      v98 = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
      v99 = *(a1 + 32);
      __p = 0;
      if (v99)
      {
        v99(3, a1, 0, &__p);
        v99 = __p;
      }

      if (v99 == v98)
      {
        cf[0] = v98;
        if (!(*(a1 + 32))(4, a1, 0, cf))
        {
          goto LABEL_235;
        }

LABEL_234:
        AMCP::Thing::convert_to<applesauce::CF::NumberRef>(cf, a1);
        applesauce::CF::TypeRef::from_get(&__p, cf[0]);
        v35 = __p;
        __p = 0;
        applesauce::CF::TypeRef::~TypeRef(&__p);
        applesauce::CF::NumberRef::~NumberRef(cf);
        goto LABEL_243;
      }

      *&v123 = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
      *cf = 0u;
      v128 = 0u;
      v129 = 0;
      (*(a1 + 32))(6, a1, cf, &v123);
      if (v129)
      {
        *&v123 = v98;
        v109 = v129(4, cf, 0, &v123);
        if (v129)
        {
          v129(0, cf, 0, 0);
        }

        if (v109)
        {
          goto LABEL_234;
        }
      }

LABEL_235:
      if (AMCP::Thing::can_convert_to<applesauce::CF::StringRef>(a1))
      {
        AMCP::Thing::convert_to<applesauce::CF::StringRef>(cf, a1);
        applesauce::CF::TypeRef::from_get(&__p, cf[0]);
        v35 = __p;
        __p = 0;
        applesauce::CF::TypeRef::~TypeRef(&__p);
        applesauce::CF::StringRef::~StringRef(cf);
      }

      else if (AMCP::Thing::can_convert_to<applesauce::CF::DataRef>(a1))
      {
        AMCP::Thing::convert_to<applesauce::CF::DataRef>(cf, a1);
        applesauce::CF::TypeRef::from_get(&__p, cf[0]);
        v35 = __p;
        __p = 0;
        applesauce::CF::TypeRef::~TypeRef(&__p);
        applesauce::CF::DataRef::~DataRef(cf);
      }

      else if (AMCP::Thing::can_convert_to<applesauce::CF::ArrayRef>(a1))
      {
        AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(cf, a1);
        applesauce::CF::TypeRef::from_get(&__p, cf[0]);
        v35 = __p;
        __p = 0;
        applesauce::CF::TypeRef::~TypeRef(&__p);
        applesauce::CF::ArrayRef::~ArrayRef(cf);
      }

      else
      {
        if (!AMCP::Thing::can_convert_to<applesauce::CF::DictionaryRef>(a1))
        {
          goto LABEL_247;
        }

        AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(cf, a1);
        applesauce::CF::TypeRef::from_get(&__p, cf[0]);
        v35 = __p;
        __p = 0;
        applesauce::CF::TypeRef::~TypeRef(&__p);
        applesauce::CF::DictionaryRef::~DictionaryRef(cf);
      }

LABEL_243:
      if (!v35)
      {
LABEL_247:
        *v4 = 0;
        return;
      }

      Data = CFPropertyListCreateData(0, v35, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      *v4 = Data;
      if (Data)
      {
        v111 = CFGetTypeID(Data);
        if (v111 != CFDataGetTypeID())
        {
          v115 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v115, "Could not construct");
          __cxa_throw(v115, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

LABEL_178:
      CFRelease(v35);
      return;
    case 16:
      if (!*(a1 + 32))
      {
        goto LABEL_247;
      }

      v6 = AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>();
      v7 = *(a1 + 32);
      __p = 0;
      if (v7)
      {
        v7(3, a1, 0, &__p);
        v7 = __p;
      }

      if (v7 == v6)
      {
        cf[0] = v6;
        if (!(*(a1 + 32))(4, a1, 0, cf))
        {
          goto LABEL_247;
        }
      }

      else
      {
        *&v123 = AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>();
        *cf = 0u;
        v128 = 0u;
        v129 = 0;
        (*(a1 + 32))(6, a1, cf, &v123);
        if (!v129)
        {
          goto LABEL_247;
        }

        *&v123 = v6;
        v83 = v129(4, cf, 0, &v123);
        if (v129)
        {
          v129(0, cf, 0, 0);
        }

        if (!v83)
        {
          goto LABEL_247;
        }
      }

      AMCP::Thing::convert_to<applesauce::CF::URLRef>(cf, a1);
      v35 = cf[0];
      v84 = CFURLGetString(cf[0]);
      applesauce::CF::StringRef::from_get(&__p, v84);
      AMCP::HAL::translate_cf_string_mcp_value_to_hal(v4, &__p);
      if (__p)
      {
        CFRelease(__p);
      }

      if (!v35)
      {
        return;
      }

      goto LABEL_178;
    case 17:
      if (a2 > 0x1C)
      {
        goto LABEL_151;
      }

      goto LABEL_247;
    case 18:
LABEL_151:
      if (!*(a1 + 32))
      {
        goto LABEL_247;
      }

      v73 = AMCP::Implementation::get_type_marker<CA::ChannelLayout>();
      v74 = *(a1 + 32);
      __p = 0;
      if (v74)
      {
        v74(3, a1, 0, &__p);
        v74 = __p;
      }

      if (v74 == v73)
      {
        cf[0] = v73;
        if (!(*(a1 + 32))(4, a1, 0, cf))
        {
          goto LABEL_247;
        }
      }

      else
      {
        *&v123 = AMCP::Implementation::get_type_marker<CA::ChannelLayout>();
        *cf = 0u;
        v128 = 0u;
        v129 = 0;
        (*(a1 + 32))(6, a1, cf, &v123);
        if (!v129)
        {
          goto LABEL_247;
        }

        *&v123 = v73;
        v75 = v129(4, cf, 0, &v123);
        if (v129)
        {
          v129(0, cf, 0, 0);
        }

        if (!v75)
        {
          goto LABEL_247;
        }
      }

      AMCP::Thing::convert_to<CA::ChannelLayout>(cf, a1);
      v64 = cf[0];
      v76 = CFDataCreate(0, cf[0], cf[1] - cf[0]);
      *v4 = v76;
      if (v76)
      {
        v77 = CFGetTypeID(v76);
        if (v77 != CFDataGetTypeID())
        {
          v78 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v78, "Could not construct");
          __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      goto LABEL_258;
    default:
      goto LABEL_247;
  }
}

void sub_1DE3565BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::DataRef::from_create(void *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    this = CFDataGetTypeID();
    if (v2 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return this;
}

void sub_1DE356918(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *AMCP::HAL::translate_simple_mcp_value_to_hal<unsigned int>(void *result, uint64_t a2)
{
  v2 = result;
  if (!*(a2 + 32))
  {
    goto LABEL_14;
  }

  type = AMCP::Implementation::get_type_marker<unsigned int>();
  v5 = *(a2 + 32);
  v13 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v13);
    v5 = v13;
  }

  if (v5 == type)
  {
    *bytes = type;
    result = (*(a2 + 32))(4, a2, 0, bytes);
    if (!result)
    {
LABEL_14:
      *v2 = 0;
      return result;
    }
  }

  else
  {
    v9 = AMCP::Implementation::get_type_marker<unsigned int>();
    *bytes = 0u;
    v11 = 0u;
    v12 = 0;
    result = (*(a2 + 32))(6, a2, bytes, &v9);
    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = type;
    result = v12(4, bytes, 0, &v9);
    v6 = result;
    if (v12)
    {
      result = v12(0, bytes, 0, 0);
    }

    if (!v6)
    {
      goto LABEL_14;
    }
  }

  *bytes = AMCP::Thing::convert_to<unsigned int>(a2);
  result = CFDataCreate(0, bytes, 4);
  *v2 = result;
  if (result)
  {
    v7 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v7 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1DE356ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v11);
  _Unwind_Resume(a1);
}

void AMCP::HAL::translate_vector_mcp_value_to_hal<unsigned int>(CFDataRef *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_15;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
  v5 = *(a2 + 32);
  v14 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v14);
    v5 = v14;
  }

  if (v5 == v4)
  {
    *&v12[0] = v4;
    if (!(*(a2 + 32))(4, a2, 0, v12))
    {
LABEL_15:
      *a1 = 0;
      return;
    }
  }

  else
  {
    v11 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    (*(a2 + 32))(6, a2, v12, &v11);
    if (!v13)
    {
      goto LABEL_15;
    }

    v11 = v4;
    v6 = v13(4, v12, 0, &v11);
    if (v13)
    {
      v13(0, v12, 0, 0);
    }

    if (!v6)
    {
      goto LABEL_15;
    }
  }

  AMCP::Thing::convert_to<std::vector<unsigned int>>(v12, a2);
  v7 = *&v12[0];
  v8 = CFDataCreate(0, *&v12[0], *(&v12[0] + 1) - *&v12[0]);
  *a1 = v8;
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  if (v7)
  {
    operator delete(v7);
  }
}

void sub_1DE356C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v11);
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void *AMCP::HAL::translate_simple_mcp_value_to_hal<std::tuple<unsigned int,unsigned int>>(void *result, uint64_t a2)
{
  v2 = result;
  if (!*(a2 + 32))
  {
    goto LABEL_14;
  }

  v4 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
  v5 = *(a2 + 32);
  v13 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v13);
    v5 = v13;
  }

  if (v5 == v4)
  {
    *bytes = v4;
    result = (*(a2 + 32))(4, a2, 0, bytes);
    if (!result)
    {
LABEL_14:
      *v2 = 0;
      return result;
    }
  }

  else
  {
    v9 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
    *bytes = 0u;
    v11 = 0u;
    v12 = 0;
    result = (*(a2 + 32))(6, a2, bytes, &v9);
    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = v4;
    result = v12(4, bytes, 0, &v9);
    v6 = result;
    if (v12)
    {
      result = v12(0, bytes, 0, 0);
    }

    if (!v6)
    {
      goto LABEL_14;
    }
  }

  *bytes = AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int>>(a2);
  result = CFDataCreate(0, bytes, 8);
  *v2 = result;
  if (result)
  {
    v7 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v7 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1DE356E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v11);
  _Unwind_Resume(a1);
}

BOOL AMCP::Thing::can_convert_to<applesauce::CF::StringRef>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
  v3 = *(a1 + 32);
  v9 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v9);
    v3 = v9;
  }

  if (v3 == v2)
  {
    *&v7[0] = v2;
    return (*(a1 + 32))(4, a1, 0, v7) != 0;
  }

  v6 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(a1 + 32))(6, a1, v7, &v6);
  if (!v8)
  {
    return 0;
  }

  v6 = v2;
  v4 = v8(4, v7, 0, &v6) != 0;
  if (v8)
  {
    v8(0, v7, 0, 0);
  }

  return v4;
}

void sub_1DE356FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::HAL::translate_cf_string_mcp_value_to_hal(AMCP::HAL *this, CFStringRef *a2)
{
  if (*a2)
  {
    Length = CFStringGetLength(*a2);
    std::vector<unsigned short>::vector[abi:ne200100](&__p, Length);
    v10.length = (v9 - __p) >> 1;
    v10.location = 0;
    CFStringGetCharacters(*a2, v10, __p);
    v5 = CFDataCreate(0, __p, v9 - __p);
    *this = v5;
    if (v5)
    {
      v6 = CFGetTypeID(v5);
      if (v6 != CFDataGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_1DE3570BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL AMCP::Thing::can_convert_to<CA::ValueRangeList>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
  v3 = *(a1 + 32);
  v9 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v9);
    v3 = v9;
  }

  if (v3 == v2)
  {
    *&v7[0] = v2;
    return (*(a1 + 32))(4, a1, 0, v7) != 0;
  }

  v6 = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(a1 + 32))(6, a1, v7, &v6);
  if (!v8)
  {
    return 0;
  }

  v6 = v2;
  v4 = v8(4, v7, 0, &v6) != 0;
  if (v8)
  {
    v8(0, v7, 0, 0);
  }

  return v4;
}

void sub_1DE357208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE357280(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *AMCP::HAL::translate_simple_mcp_value_to_hal<CA::ValueRange>(void *result, uint64_t a2)
{
  v2 = result;
  if (!*(a2 + 32))
  {
    goto LABEL_14;
  }

  v4 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
  v5 = *(a2 + 32);
  v14 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v14);
    v5 = v14;
  }

  if (v5 == v4)
  {
    *bytes = v4;
    result = (*(a2 + 32))(4, a2, 0, bytes);
    if (!result)
    {
LABEL_14:
      *v2 = 0;
      return result;
    }
  }

  else
  {
    v10 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
    *bytes = 0u;
    v12 = 0u;
    v13 = 0;
    result = (*(a2 + 32))(6, a2, bytes, &v10);
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v4;
    result = v13(4, bytes, 0, &v10);
    v6 = result;
    if (v13)
    {
      result = v13(0, bytes, 0, 0);
    }

    if (!v6)
    {
      goto LABEL_14;
    }
  }

  *bytes = AMCP::Thing::convert_to<CA::ValueRange>(a2);
  *&bytes[8] = v7;
  result = CFDataCreate(0, bytes, 16);
  *v2 = result;
  if (result)
  {
    v8 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v8 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1DE357418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v11);
  _Unwind_Resume(a1);
}

BOOL AMCP::Thing::can_convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
  v3 = *(a1 + 32);
  v9 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v9);
    v3 = v9;
  }

  if (v3 == v2)
  {
    *&v7[0] = v2;
    return (*(a1 + 32))(4, a1, 0, v7) != 0;
  }

  v6 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(a1 + 32))(6, a1, v7, &v6);
  if (!v8)
  {
    return 0;
  }

  v6 = v2;
  v4 = v8(4, v7, 0, &v6) != 0;
  if (v8)
  {
    v8(0, v7, 0, 0);
  }

  return v4;
}

void sub_1DE357568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *,false>(CAStreamRangedDescription *a1, AudioStreamRangedDescription *a2, const AudioStreamRangedDescription *a3, char a4)
{
  v4 = a3;
  while (2)
  {
    p_mSampleRate = &a2[-1].mFormat.mSampleRate;
    v428 = &a2[-2];
    v8 = &a2[-3].mFormat.mSampleRate;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = a2 - v9;
          v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v305 = CAStreamRangedDescription::Sorter((a1 + 56), a1, a3);
                v307 = CAStreamRangedDescription::Sorter(&a2[-1], a1 + 1, v306);
                if (v305)
                {
                  if (v307)
                  {
                    goto LABEL_108;
                  }

                  v416 = *a1;
                  v417 = *(a1 + 1);
                  v418 = *(a1 + 2);
                  v432.mSampleRateRange.mMaximum = *(a1 + 6);
                  *&v432.mFormat.mBytesPerPacket = v417;
                  *&v432.mFormat.mBitsPerChannel = v418;
                  *&v432.mFormat.mSampleRate = v416;
                  v419 = *(a1 + 72);
                  *a1 = *(a1 + 56);
                  *(a1 + 1) = v419;
                  *(a1 + 2) = *(a1 + 88);
                  *(a1 + 6) = *(a1 + 13);
                  v420 = *&v432.mFormat.mSampleRate;
                  v421 = *&v432.mFormat.mBytesPerPacket;
                  v422 = *&v432.mFormat.mBitsPerChannel;
                  *(a1 + 13) = *&v432.mSampleRateRange.mMaximum;
                  *(a1 + 88) = v422;
                  *(a1 + 72) = v421;
                  *(a1 + 56) = v420;
                  if (!CAStreamRangedDescription::Sorter(&a2[-1], a1 + 1, v298))
                  {
                    return;
                  }

                  v314 = *(a1 + 56);
                  v315 = *(a1 + 72);
                  *&v432.mFormat.mSampleRate = v314;
                  *&v432.mFormat.mBytesPerPacket = v315;
                  *&v432.mFormat.mBitsPerChannel = *(a1 + 88);
                  v423 = *&v432.mFormat.mBitsPerChannel;
                  v432.mSampleRateRange.mMaximum = *(a1 + 13);
                  mMaximum = v432.mSampleRateRange.mMaximum;
                  v425 = a2[-1].mSampleRateRange.mMaximum;
                  v427 = *&a2[-1].mFormat.mBytesPerPacket;
                  v426 = *&a2[-1].mFormat.mBitsPerChannel;
                  *(a1 + 56) = *p_mSampleRate;
                  *(a1 + 72) = v427;
                  *(a1 + 88) = v426;
                  *(a1 + 13) = v425;
                  *&a2[-1].mFormat.mBitsPerChannel = v423;
                  a2[-1].mSampleRateRange.mMaximum = mMaximum;
LABEL_109:
                  *p_mSampleRate = v314;
                  *&a2[-1].mFormat.mBytesPerPacket = v315;
                  return;
                }

                if (!v307)
                {
                  return;
                }

                v392 = *(a1 + 72);
                *&v432.mFormat.mSampleRate = *(a1 + 56);
                v391 = *&v432.mFormat.mSampleRate;
                *&v432.mFormat.mBytesPerPacket = v392;
                *&v432.mFormat.mBitsPerChannel = *(a1 + 88);
                v393 = *&v432.mFormat.mBitsPerChannel;
                v432.mSampleRateRange.mMaximum = *(a1 + 13);
                v394 = v432.mSampleRateRange.mMaximum;
                v395 = a2[-1].mSampleRateRange.mMaximum;
                v397 = *&a2[-1].mFormat.mBytesPerPacket;
                v396 = *&a2[-1].mFormat.mBitsPerChannel;
                *(a1 + 56) = *p_mSampleRate;
                *(a1 + 72) = v397;
                *(a1 + 88) = v396;
                *(a1 + 13) = v395;
                *&a2[-1].mFormat.mBytesPerPacket = v392;
                *&a2[-1].mFormat.mBitsPerChannel = v393;
                a2[-1].mSampleRateRange.mMaximum = v394;
                *p_mSampleRate = v391;
LABEL_165:
                if (CAStreamRangedDescription::Sorter((a1 + 56), a1, v298))
                {
                  v398 = *a1;
                  v399 = *(a1 + 1);
                  v400 = *(a1 + 2);
                  v432.mSampleRateRange.mMaximum = *(a1 + 6);
                  *&v432.mFormat.mBytesPerPacket = v399;
                  *&v432.mFormat.mBitsPerChannel = v400;
                  *&v432.mFormat.mSampleRate = v398;
                  v401 = *(a1 + 72);
                  *a1 = *(a1 + 56);
                  *(a1 + 1) = v401;
                  *(a1 + 2) = *(a1 + 88);
                  *(a1 + 6) = *(a1 + 13);
                  v402 = *&v432.mFormat.mSampleRate;
                  v403 = *&v432.mFormat.mBytesPerPacket;
                  v404 = *&v432.mFormat.mBitsPerChannel;
                  *(a1 + 13) = *&v432.mSampleRateRange.mMaximum;
                  *(a1 + 88) = v404;
                  *(a1 + 72) = v403;
                  *(a1 + 56) = v402;
                }

                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *,0>(a1, a1 + 7, a1 + 2, &a2[-1].mFormat.mSampleRate);
                return;
              case 5:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *,0>(a1, a1 + 7, a1 + 2, a1 + 21);
                if (!CAStreamRangedDescription::Sorter(&a2[-1], a1 + 3, v283))
                {
                  return;
                }

                v286 = *(a1 + 184);
                *&v432.mFormat.mSampleRate = *(a1 + 168);
                v285 = *&v432.mFormat.mSampleRate;
                *&v432.mFormat.mBytesPerPacket = v286;
                *&v432.mFormat.mBitsPerChannel = *(a1 + 200);
                v287 = *&v432.mFormat.mBitsPerChannel;
                v432.mSampleRateRange.mMaximum = *(a1 + 27);
                v288 = v432.mSampleRateRange.mMaximum;
                v289 = a2[-1].mSampleRateRange.mMaximum;
                v291 = *&a2[-1].mFormat.mBytesPerPacket;
                v290 = *&a2[-1].mFormat.mBitsPerChannel;
                *(a1 + 168) = *p_mSampleRate;
                *(a1 + 184) = v291;
                *(a1 + 200) = v290;
                *(a1 + 27) = v289;
                *&a2[-1].mFormat.mBytesPerPacket = v286;
                *&a2[-1].mFormat.mBitsPerChannel = v287;
                a2[-1].mSampleRateRange.mMaximum = v288;
                *p_mSampleRate = v285;
                if (!CAStreamRangedDescription::Sorter((a1 + 168), a1 + 2, v284))
                {
                  return;
                }

                v293 = *(a1 + 20);
                v295 = *(a1 + 8);
                v294 = *(a1 + 9);
                v296 = *(a1 + 7);
                v297 = *(a1 + 184);
                *(a1 + 7) = *(a1 + 168);
                *(a1 + 8) = v297;
                *(a1 + 9) = *(a1 + 200);
                *(a1 + 20) = *(a1 + 27);
                *(a1 + 168) = v296;
                *(a1 + 184) = v295;
                *(a1 + 200) = v294;
                *(a1 + 27) = v293;
                if (!CAStreamRangedDescription::Sorter((a1 + 112), a1 + 1, v292))
                {
                  return;
                }

                v299 = *(a1 + 13);
                v300 = *(a1 + 88);
                v301 = *(a1 + 56);
                v302 = *(a1 + 8);
                *(a1 + 56) = *(a1 + 7);
                v303 = *(a1 + 72);
                *(a1 + 72) = v302;
                *(a1 + 88) = *(a1 + 9);
                *(a1 + 13) = *(a1 + 20);
                *(a1 + 7) = v301;
                *(a1 + 8) = v303;
                *(a1 + 9) = v300;
                *(a1 + 20) = v299;
                goto LABEL_165;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              if (!CAStreamRangedDescription::Sorter(&a2[-1], a1, a3))
              {
                return;
              }

LABEL_108:
              v308 = *a1;
              v309 = *(a1 + 1);
              v310 = *(a1 + 2);
              v432.mSampleRateRange.mMaximum = *(a1 + 6);
              *&v432.mFormat.mBytesPerPacket = v309;
              *&v432.mFormat.mBitsPerChannel = v310;
              *&v432.mFormat.mSampleRate = v308;
              v311 = *p_mSampleRate;
              v312 = *&a2[-1].mFormat.mBytesPerPacket;
              v313 = *&a2[-1].mFormat.mBitsPerChannel;
              *(a1 + 6) = *&a2[-1].mSampleRateRange.mMaximum;
              *(a1 + 1) = v312;
              *(a1 + 2) = v313;
              *a1 = v311;
              v314 = *&v432.mFormat.mSampleRate;
              v315 = *&v432.mFormat.mBytesPerPacket;
              v316 = *&v432.mFormat.mBitsPerChannel;
              a2[-1].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
              *&a2[-1].mFormat.mBitsPerChannel = v316;
              goto LABEL_109;
            }
          }

          if (v10 <= 1343)
          {
            v317 = (a1 + 56);
            v319 = a1 == a2 || v317 == a2;
            if (a4)
            {
              if (!v319)
              {
                v320 = 0;
                v321 = a1;
                do
                {
                  v322 = v321;
                  v321 = v317;
                  if (CAStreamRangedDescription::Sorter(v317, v322, a3))
                  {
                    v323 = *v321;
                    v324 = *(v321 + 1);
                    v325 = *(v321 + 2);
                    v432.mSampleRateRange.mMaximum = *(v321 + 6);
                    *&v432.mFormat.mBytesPerPacket = v324;
                    *&v432.mFormat.mBitsPerChannel = v325;
                    *&v432.mFormat.mSampleRate = v323;
                    v326 = v320;
                    while (1)
                    {
                      v327 = a1 + v326;
                      v328 = *(a1 + v326 + 16);
                      *(v327 + 56) = *(a1 + v326);
                      *(v327 + 72) = v328;
                      *(v327 + 88) = *(a1 + v326 + 32);
                      *(v327 + 13) = *(a1 + v326 + 48);
                      if (!v326)
                      {
                        break;
                      }

                      v326 -= 56;
                      if ((CAStreamRangedDescription::Sorter(&v432, (a1 + v326), a3) & 1) == 0)
                      {
                        v329 = a1 + v326 + 56;
                        goto LABEL_128;
                      }
                    }

                    v329 = a1;
LABEL_128:
                    v330 = *&v432.mFormat.mSampleRate;
                    v331 = *&v432.mFormat.mBytesPerPacket;
                    v332 = *&v432.mFormat.mBitsPerChannel;
                    *(v329 + 48) = v432.mSampleRateRange.mMaximum;
                    *(v329 + 16) = v331;
                    *(v329 + 32) = v332;
                    *v329 = v330;
                  }

                  v317 = (v321 + 56);
                  v320 += 56;
                }

                while ((v321 + 56) != a2);
              }
            }

            else if (!v319)
            {
              do
              {
                v405 = a1;
                a1 = v317;
                if (CAStreamRangedDescription::Sorter(v317, v405, a3))
                {
                  v406 = *a1;
                  v407 = *(a1 + 1);
                  v408 = *(a1 + 2);
                  v432.mSampleRateRange.mMaximum = *(a1 + 6);
                  *&v432.mFormat.mBytesPerPacket = v407;
                  *&v432.mFormat.mBitsPerChannel = v408;
                  *&v432.mFormat.mSampleRate = v406;
                  v409 = a1;
                  do
                  {
                    v410 = v409 - 56;
                    v411 = *(v409 - 40);
                    *v409 = *(v409 - 56);
                    *(v409 + 1) = v411;
                    *(v409 + 2) = *(v409 - 24);
                    *(v409 + 6) = *(v409 - 1);
                    v412 = CAStreamRangedDescription::Sorter(&v432, v409 - 2, a3);
                    v409 = v410;
                  }

                  while ((v412 & 1) != 0);
                  v413 = *&v432.mFormat.mSampleRate;
                  v414 = *&v432.mFormat.mBytesPerPacket;
                  v415 = *&v432.mFormat.mBitsPerChannel;
                  *(v410 + 48) = v432.mSampleRateRange.mMaximum;
                  *(v410 + 16) = v414;
                  *(v410 + 32) = v415;
                  *v410 = v413;
                }

                v317 = (a1 + 56);
              }

              while ((a1 + 56) != a2);
            }

            return;
          }

          if (!v4)
          {
            if (a1 != a2)
            {
              v429 = a2;
              v333 = v12 >> 1;
              v334 = v12 >> 1;
              do
              {
                v335 = v334;
                if (v333 >= v334)
                {
                  v336 = (2 * v334) | 1;
                  v337 = (a1 + 56 * v336);
                  if (2 * v334 + 2 < v11 && CAStreamRangedDescription::Sorter((a1 + 56 * v336), v337 + 1, a3))
                  {
                    ++v337;
                    v336 = 2 * v335 + 2;
                  }

                  v338 = a1 + 56 * v335;
                  if ((CAStreamRangedDescription::Sorter(v337, v338, a3) & 1) == 0)
                  {
                    v339 = *v338;
                    v340 = *(v338 + 1);
                    v341 = *(v338 + 2);
                    v432.mSampleRateRange.mMaximum = *(v338 + 6);
                    *&v432.mFormat.mBytesPerPacket = v340;
                    *&v432.mFormat.mBitsPerChannel = v341;
                    *&v432.mFormat.mSampleRate = v339;
                    do
                    {
                      v342 = v337;
                      v343 = *&v337->mFormat.mSampleRate;
                      v344 = *&v337->mFormat.mBytesPerPacket;
                      v345 = *&v337->mFormat.mBitsPerChannel;
                      *(v338 + 6) = *&v337->mSampleRateRange.mMaximum;
                      *(v338 + 1) = v344;
                      *(v338 + 2) = v345;
                      *v338 = v343;
                      if (v333 < v336)
                      {
                        break;
                      }

                      v346 = (2 * v336) | 1;
                      v337 = (a1 + 56 * v346);
                      v347 = 2 * v336 + 2;
                      if (v347 < v11 && CAStreamRangedDescription::Sorter((a1 + 56 * v346), v337 + 1, a3))
                      {
                        ++v337;
                        v346 = v347;
                      }

                      v338 = v342;
                      v336 = v346;
                    }

                    while (!CAStreamRangedDescription::Sorter(v337, &v432, a3));
                    v348 = *&v432.mFormat.mSampleRate;
                    v349 = *&v432.mFormat.mBytesPerPacket;
                    v350 = *&v432.mFormat.mBitsPerChannel;
                    *(v342 + 6) = *&v432.mSampleRateRange.mMaximum;
                    *(v342 + 1) = v349;
                    *(v342 + 2) = v350;
                    *v342 = v348;
                  }
                }

                v334 = v335 - 1;
              }

              while (v335);
              v351 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3);
              v352 = v429;
              do
              {
                v353 = 0;
                v354 = *a1;
                v355 = *(a1 + 1);
                v356 = *(a1 + 2);
                v431.mSampleRateRange.mMaximum = *(a1 + 6);
                *&v431.mFormat.mBytesPerPacket = v355;
                *&v431.mFormat.mBitsPerChannel = v356;
                *&v431.mFormat.mSampleRate = v354;
                v357 = a1;
                do
                {
                  v358 = (v357 + 56 * v353);
                  v359 = &v358[1];
                  v360 = (2 * v353) | 1;
                  v361 = 2 * v353 + 2;
                  if (v361 < v351)
                  {
                    v362 = v358 + 2;
                    if (CAStreamRangedDescription::Sorter(&v358[1], v358 + 2, a3))
                    {
                      v359 = v362;
                      v360 = v361;
                    }
                  }

                  v363 = *&v359->mFormat.mSampleRate;
                  v364 = *&v359->mFormat.mBytesPerPacket;
                  v365 = *&v359->mFormat.mBitsPerChannel;
                  *(v357 + 6) = *&v359->mSampleRateRange.mMaximum;
                  *(v357 + 1) = v364;
                  *(v357 + 2) = v365;
                  *v357 = v363;
                  v357 = v359;
                  v353 = v360;
                }

                while (v360 <= ((v351 - 2) >> 1));
                v366 = (v352 - 56);
                if (v359 == v366)
                {
                  v373 = v366;
                  v387 = *&v431.mFormat.mSampleRate;
                  v388 = *&v431.mFormat.mBytesPerPacket;
                  v389 = *&v431.mFormat.mBitsPerChannel;
                  v359->mSampleRateRange.mMaximum = v431.mSampleRateRange.mMaximum;
                  *&v359->mFormat.mBytesPerPacket = v388;
                  *&v359->mFormat.mBitsPerChannel = v389;
                  *&v359->mFormat.mSampleRate = v387;
                }

                else
                {
                  v367 = *&v366->mFormat.mSampleRate;
                  v368 = *&v366->mFormat.mBytesPerPacket;
                  v369 = *&v366->mFormat.mBitsPerChannel;
                  v359->mSampleRateRange.mMaximum = v366->mSampleRateRange.mMaximum;
                  *&v359->mFormat.mBytesPerPacket = v368;
                  *&v359->mFormat.mBitsPerChannel = v369;
                  *&v359->mFormat.mSampleRate = v367;
                  v370 = *&v431.mFormat.mSampleRate;
                  v371 = *&v431.mFormat.mBytesPerPacket;
                  v372 = *&v431.mFormat.mBitsPerChannel;
                  v366->mSampleRateRange.mMaximum = v431.mSampleRateRange.mMaximum;
                  *&v366->mFormat.mBytesPerPacket = v371;
                  *&v366->mFormat.mBitsPerChannel = v372;
                  v373 = v366;
                  *&v366->mFormat.mSampleRate = v370;
                  v374 = v359 - a1 + 56;
                  if (v374 >= 57)
                  {
                    v375 = (0x6DB6DB6DB6DB6DB7 * (v374 >> 3) - 2) >> 1;
                    v376 = (a1 + 56 * v375);
                    if (CAStreamRangedDescription::Sorter(v376, v359, a3))
                    {
                      v377 = *&v359->mFormat.mSampleRate;
                      v378 = *&v359->mFormat.mBytesPerPacket;
                      v379 = *&v359->mFormat.mBitsPerChannel;
                      v432.mSampleRateRange.mMaximum = v359->mSampleRateRange.mMaximum;
                      *&v432.mFormat.mBytesPerPacket = v378;
                      *&v432.mFormat.mBitsPerChannel = v379;
                      *&v432.mFormat.mSampleRate = v377;
                      do
                      {
                        v380 = v376;
                        v381 = *&v376->mFormat.mSampleRate;
                        v382 = *&v376->mFormat.mBytesPerPacket;
                        v383 = *&v376->mFormat.mBitsPerChannel;
                        v359->mSampleRateRange.mMaximum = v376->mSampleRateRange.mMaximum;
                        *&v359->mFormat.mBytesPerPacket = v382;
                        *&v359->mFormat.mBitsPerChannel = v383;
                        *&v359->mFormat.mSampleRate = v381;
                        if (!v375)
                        {
                          break;
                        }

                        v375 = (v375 - 1) >> 1;
                        v376 = (a1 + 56 * v375);
                        v359 = v380;
                      }

                      while ((CAStreamRangedDescription::Sorter(v376, &v432, a3) & 1) != 0);
                      v384 = *&v432.mFormat.mSampleRate;
                      v385 = *&v432.mFormat.mBytesPerPacket;
                      v386 = *&v432.mFormat.mBitsPerChannel;
                      v380->mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
                      *&v380->mFormat.mBytesPerPacket = v385;
                      *&v380->mFormat.mBitsPerChannel = v386;
                      *&v380->mFormat.mSampleRate = v384;
                    }
                  }
                }

                v390 = v351-- <= 2;
                v352 = v373;
              }

              while (!v390);
            }

            return;
          }

          v13 = v11 >> 1;
          v14 = a1 + 56 * v13;
          if (v10 >= 0x1C01)
          {
            v15 = CAStreamRangedDescription::Sorter((a1 + 56 * v13), a1, a3);
            v17 = CAStreamRangedDescription::Sorter(&a2[-1], a1 + v13, v16);
            if (v15)
            {
              if (v17)
              {
                v19 = *a1;
                v20 = *(a1 + 1);
                v21 = *(a1 + 2);
                v432.mSampleRateRange.mMaximum = *(a1 + 6);
                *&v432.mFormat.mBytesPerPacket = v20;
                *&v432.mFormat.mBitsPerChannel = v21;
                *&v432.mFormat.mSampleRate = v19;
                v22 = *p_mSampleRate;
                v23 = *&a2[-1].mFormat.mBytesPerPacket;
                v24 = *&a2[-1].mFormat.mBitsPerChannel;
                *(a1 + 6) = *&a2[-1].mSampleRateRange.mMaximum;
                *(a1 + 1) = v23;
                *(a1 + 2) = v24;
                *a1 = v22;
              }

              else
              {
                v71 = *a1;
                v72 = *(a1 + 1);
                v73 = *(a1 + 2);
                v432.mSampleRateRange.mMaximum = *(a1 + 6);
                *&v432.mFormat.mBytesPerPacket = v72;
                *&v432.mFormat.mBitsPerChannel = v73;
                *&v432.mFormat.mSampleRate = v71;
                v74 = *v14;
                v75 = *(v14 + 1);
                v76 = *(v14 + 2);
                *(a1 + 6) = *(v14 + 6);
                *(a1 + 1) = v75;
                *(a1 + 2) = v76;
                *a1 = v74;
                v77 = *&v432.mFormat.mSampleRate;
                v78 = *&v432.mFormat.mBytesPerPacket;
                v79 = *&v432.mFormat.mBitsPerChannel;
                *(v14 + 6) = *&v432.mSampleRateRange.mMaximum;
                *(v14 + 1) = v78;
                *(v14 + 2) = v79;
                *v14 = v77;
                if (!CAStreamRangedDescription::Sorter(&a2[-1], a1 + v13, v18))
                {
                  goto LABEL_28;
                }

                v80 = *v14;
                v81 = *(v14 + 1);
                v82 = *(v14 + 2);
                v432.mSampleRateRange.mMaximum = *(v14 + 6);
                *&v432.mFormat.mBytesPerPacket = v81;
                *&v432.mFormat.mBitsPerChannel = v82;
                *&v432.mFormat.mSampleRate = v80;
                v83 = *p_mSampleRate;
                v84 = *&a2[-1].mFormat.mBytesPerPacket;
                v85 = *&a2[-1].mFormat.mBitsPerChannel;
                *(v14 + 6) = *&a2[-1].mSampleRateRange.mMaximum;
                *(v14 + 1) = v84;
                *(v14 + 2) = v85;
                *v14 = v83;
              }

              v86 = *&v432.mFormat.mSampleRate;
              v87 = *&v432.mFormat.mBytesPerPacket;
              v88 = *&v432.mFormat.mBitsPerChannel;
              a2[-1].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
              *&a2[-1].mFormat.mBytesPerPacket = v87;
              *&a2[-1].mFormat.mBitsPerChannel = v88;
              *p_mSampleRate = v86;
            }

            else if (v17)
            {
              v35 = *v14;
              v36 = *(v14 + 1);
              v37 = *(v14 + 2);
              v432.mSampleRateRange.mMaximum = *(v14 + 6);
              *&v432.mFormat.mBytesPerPacket = v36;
              *&v432.mFormat.mBitsPerChannel = v37;
              *&v432.mFormat.mSampleRate = v35;
              v38 = *p_mSampleRate;
              v39 = *&a2[-1].mFormat.mBytesPerPacket;
              v40 = *&a2[-1].mFormat.mBitsPerChannel;
              *(v14 + 6) = *&a2[-1].mSampleRateRange.mMaximum;
              *(v14 + 1) = v39;
              *(v14 + 2) = v40;
              *v14 = v38;
              v41 = *&v432.mFormat.mSampleRate;
              v42 = *&v432.mFormat.mBytesPerPacket;
              v43 = *&v432.mFormat.mBitsPerChannel;
              a2[-1].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
              *&a2[-1].mFormat.mBytesPerPacket = v42;
              *&a2[-1].mFormat.mBitsPerChannel = v43;
              *p_mSampleRate = v41;
              if (CAStreamRangedDescription::Sorter((a1 + 56 * v13), a1, v18))
              {
                v44 = *a1;
                v45 = *(a1 + 1);
                v46 = *(a1 + 2);
                v432.mSampleRateRange.mMaximum = *(a1 + 6);
                *&v432.mFormat.mBytesPerPacket = v45;
                *&v432.mFormat.mBitsPerChannel = v46;
                *&v432.mFormat.mSampleRate = v44;
                v47 = *v14;
                v48 = *(v14 + 1);
                v49 = *(v14 + 2);
                *(a1 + 6) = *(v14 + 6);
                *(a1 + 1) = v48;
                *(a1 + 2) = v49;
                *a1 = v47;
                v50 = *&v432.mFormat.mSampleRate;
                v51 = *&v432.mFormat.mBytesPerPacket;
                v52 = *&v432.mFormat.mBitsPerChannel;
                *(v14 + 6) = *&v432.mSampleRateRange.mMaximum;
                *(v14 + 1) = v51;
                *(v14 + 2) = v52;
                *v14 = v50;
              }
            }

LABEL_28:
            v89 = a1 + 56 * v13 - 56;
            v90 = CAStreamRangedDescription::Sorter(v89, a1 + 1, v18);
            v92 = CAStreamRangedDescription::Sorter(v428, v89, v91);
            if (v90)
            {
              if (v92)
              {
                v95 = *(a1 + 72);
                *&v432.mFormat.mSampleRate = *(a1 + 56);
                v94 = *&v432.mFormat.mSampleRate;
                *&v432.mFormat.mBytesPerPacket = v95;
                *&v432.mFormat.mBitsPerChannel = *(a1 + 88);
                v96 = *&v432.mFormat.mBitsPerChannel;
                v432.mSampleRateRange.mMaximum = *(a1 + 13);
                v97 = v432.mSampleRateRange.mMaximum;
                v98 = a2[-2].mSampleRateRange.mMaximum;
                v100 = *&a2[-2].mFormat.mBytesPerPacket;
                v99 = *&a2[-2].mFormat.mBitsPerChannel;
                *(a1 + 56) = *v428;
                *(a1 + 72) = v100;
                *(a1 + 88) = v99;
                *(a1 + 13) = v98;
                *&a2[-2].mFormat.mBytesPerPacket = v95;
                *&a2[-2].mFormat.mBitsPerChannel = v96;
                a2[-2].mSampleRateRange.mMaximum = v97;
                *v428 = v94;
              }

              else
              {
                v136 = *(a1 + 72);
                *&v432.mFormat.mSampleRate = *(a1 + 56);
                v135 = *&v432.mFormat.mSampleRate;
                *&v432.mFormat.mBytesPerPacket = v136;
                *&v432.mFormat.mBitsPerChannel = *(a1 + 88);
                v137 = *&v432.mFormat.mBitsPerChannel;
                v432.mSampleRateRange.mMaximum = *(a1 + 13);
                v138 = v432.mSampleRateRange.mMaximum;
                v139 = *(a1 + 7 * v13 - 1);
                v141 = *(a1 + 56 * v13 - 40);
                v140 = *(a1 + 56 * v13 - 24);
                *(a1 + 56) = *v89;
                *(a1 + 72) = v141;
                *(a1 + 88) = v140;
                *(a1 + 13) = v139;
                *(a1 + 56 * v13 - 40) = v136;
                *(a1 + 56 * v13 - 24) = v137;
                *(a1 + 7 * v13 - 1) = v138;
                *v89 = v135;
                if (CAStreamRangedDescription::Sorter(v428, v89, v93))
                {
                  v142 = *v89;
                  v143 = *(a1 + 56 * v13 - 40);
                  v144 = *(a1 + 56 * v13 - 24);
                  v432.mSampleRateRange.mMaximum = *(a1 + 7 * v13 - 1);
                  *&v432.mFormat.mBytesPerPacket = v143;
                  *&v432.mFormat.mBitsPerChannel = v144;
                  *&v432.mFormat.mSampleRate = v142;
                  v145 = *v428;
                  v146 = *&a2[-2].mFormat.mBytesPerPacket;
                  v147 = *&a2[-2].mFormat.mBitsPerChannel;
                  *(a1 + 7 * v13 - 1) = *&a2[-2].mSampleRateRange.mMaximum;
                  *(a1 + 56 * v13 - 40) = v146;
                  *(a1 + 56 * v13 - 24) = v147;
                  *v89 = v145;
                  v148 = *&v432.mFormat.mSampleRate;
                  v149 = *&v432.mFormat.mBytesPerPacket;
                  v150 = *&v432.mFormat.mBitsPerChannel;
                  a2[-2].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
                  *&a2[-2].mFormat.mBytesPerPacket = v149;
                  *&a2[-2].mFormat.mBitsPerChannel = v150;
                  *v428 = v148;
                }
              }
            }

            else if (v92)
            {
              v101 = *v89;
              v102 = *(a1 + 56 * v13 - 40);
              v103 = *(a1 + 56 * v13 - 24);
              v432.mSampleRateRange.mMaximum = *(a1 + 7 * v13 - 1);
              *&v432.mFormat.mBytesPerPacket = v102;
              *&v432.mFormat.mBitsPerChannel = v103;
              *&v432.mFormat.mSampleRate = v101;
              v104 = *v428;
              v105 = *&a2[-2].mFormat.mBytesPerPacket;
              v106 = *&a2[-2].mFormat.mBitsPerChannel;
              *(a1 + 7 * v13 - 1) = *&a2[-2].mSampleRateRange.mMaximum;
              *(a1 + 56 * v13 - 40) = v105;
              *(a1 + 56 * v13 - 24) = v106;
              *v89 = v104;
              v107 = *&v432.mFormat.mSampleRate;
              v108 = *&v432.mFormat.mBytesPerPacket;
              v109 = *&v432.mFormat.mBitsPerChannel;
              a2[-2].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
              *&a2[-2].mFormat.mBytesPerPacket = v108;
              *&a2[-2].mFormat.mBitsPerChannel = v109;
              *v428 = v107;
              if (CAStreamRangedDescription::Sorter(v89, a1 + 1, v93))
              {
                v111 = *(a1 + 72);
                *&v432.mFormat.mSampleRate = *(a1 + 56);
                v110 = *&v432.mFormat.mSampleRate;
                *&v432.mFormat.mBytesPerPacket = v111;
                *&v432.mFormat.mBitsPerChannel = *(a1 + 88);
                v112 = *&v432.mFormat.mBitsPerChannel;
                v432.mSampleRateRange.mMaximum = *(a1 + 13);
                v113 = v432.mSampleRateRange.mMaximum;
                v114 = *(a1 + 7 * v13 - 1);
                v116 = *(a1 + 56 * v13 - 40);
                v115 = *(a1 + 56 * v13 - 24);
                *(a1 + 56) = *v89;
                *(a1 + 72) = v116;
                *(a1 + 88) = v115;
                *(a1 + 13) = v114;
                *(a1 + 56 * v13 - 40) = v111;
                *(a1 + 56 * v13 - 24) = v112;
                *(a1 + 7 * v13 - 1) = v113;
                *v89 = v110;
              }
            }

            v151 = a1 + 56 * v13;
            v152 = CAStreamRangedDescription::Sorter((v151 + 56), a1 + 2, v93);
            v154 = CAStreamRangedDescription::Sorter(&a2[-3], v151 + 1, v153);
            if (v152)
            {
              if (v154)
              {
                v156 = *(a1 + 7);
                v157 = *(a1 + 8);
                *&v432.mFormat.mSampleRate = v156;
                *&v432.mFormat.mBytesPerPacket = v157;
                *&v432.mFormat.mBitsPerChannel = *(a1 + 9);
                v158 = *&v432.mFormat.mBitsPerChannel;
                v432.mSampleRateRange.mMaximum = *(a1 + 20);
                v159 = v432.mSampleRateRange.mMaximum;
                v160 = a2[-3].mSampleRateRange.mMaximum;
                v162 = *&a2[-3].mFormat.mBytesPerPacket;
                v161 = *&a2[-3].mFormat.mBitsPerChannel;
                *(a1 + 7) = *v8;
                *(a1 + 8) = v162;
                *(a1 + 9) = v161;
                *(a1 + 20) = v160;
                *&a2[-3].mFormat.mBitsPerChannel = v158;
                a2[-3].mSampleRateRange.mMaximum = v159;
              }

              else
              {
                v180 = *(a1 + 8);
                *&v432.mFormat.mSampleRate = *(a1 + 7);
                v179 = *&v432.mFormat.mSampleRate;
                *&v432.mFormat.mBytesPerPacket = v180;
                *&v432.mFormat.mBitsPerChannel = *(a1 + 9);
                v181 = *&v432.mFormat.mBitsPerChannel;
                v432.mSampleRateRange.mMaximum = *(a1 + 20);
                v182 = v432.mSampleRateRange.mMaximum;
                v183 = *(v151 + 13);
                v184 = *(v151 + 88);
                v185 = *(v151 + 72);
                *(a1 + 7) = *(v151 + 56);
                *(a1 + 8) = v185;
                *(a1 + 9) = v184;
                *(a1 + 20) = v183;
                *(v151 + 72) = v180;
                *(v151 + 88) = v181;
                *(v151 + 13) = v182;
                *(v151 + 56) = v179;
                if (!CAStreamRangedDescription::Sorter(&a2[-3], v151 + 1, v155))
                {
                  goto LABEL_48;
                }

                v186 = *(v151 + 56);
                v187 = *(v151 + 72);
                v188 = *(v151 + 88);
                v432.mSampleRateRange.mMaximum = *(v151 + 13);
                *&v432.mFormat.mBytesPerPacket = v187;
                *&v432.mFormat.mBitsPerChannel = v188;
                *&v432.mFormat.mSampleRate = v186;
                v189 = *v8;
                v190 = *&a2[-3].mFormat.mBytesPerPacket;
                v191 = *&a2[-3].mFormat.mBitsPerChannel;
                *(v151 + 13) = *&a2[-3].mSampleRateRange.mMaximum;
                *(v151 + 88) = v191;
                *(v151 + 72) = v190;
                *(v151 + 56) = v189;
                v156 = *&v432.mFormat.mSampleRate;
                v157 = *&v432.mFormat.mBytesPerPacket;
                v192 = *&v432.mFormat.mBitsPerChannel;
                a2[-3].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
                *&a2[-3].mFormat.mBitsPerChannel = v192;
              }

              *v8 = v156;
              *&a2[-3].mFormat.mBytesPerPacket = v157;
            }

            else if (v154)
            {
              v163 = *(v151 + 56);
              v164 = *(v151 + 72);
              v165 = *(v151 + 88);
              v432.mSampleRateRange.mMaximum = *(v151 + 13);
              *&v432.mFormat.mBytesPerPacket = v164;
              *&v432.mFormat.mBitsPerChannel = v165;
              *&v432.mFormat.mSampleRate = v163;
              v166 = *v8;
              v167 = *&a2[-3].mFormat.mBytesPerPacket;
              v168 = *&a2[-3].mFormat.mBitsPerChannel;
              *(v151 + 13) = *&a2[-3].mSampleRateRange.mMaximum;
              *(v151 + 88) = v168;
              *(v151 + 72) = v167;
              *(v151 + 56) = v166;
              v169 = *&v432.mFormat.mSampleRate;
              v170 = *&v432.mFormat.mBytesPerPacket;
              v171 = *&v432.mFormat.mBitsPerChannel;
              a2[-3].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
              *&a2[-3].mFormat.mBytesPerPacket = v170;
              *&a2[-3].mFormat.mBitsPerChannel = v171;
              *v8 = v169;
              if (CAStreamRangedDescription::Sorter((v151 + 56), a1 + 2, v155))
              {
                v173 = *(a1 + 8);
                *&v432.mFormat.mSampleRate = *(a1 + 7);
                v172 = *&v432.mFormat.mSampleRate;
                *&v432.mFormat.mBytesPerPacket = v173;
                *&v432.mFormat.mBitsPerChannel = *(a1 + 9);
                v174 = *&v432.mFormat.mBitsPerChannel;
                v432.mSampleRateRange.mMaximum = *(a1 + 20);
                v175 = v432.mSampleRateRange.mMaximum;
                v176 = *(v151 + 13);
                v177 = *(v151 + 88);
                v178 = *(v151 + 72);
                *(a1 + 7) = *(v151 + 56);
                *(a1 + 8) = v178;
                *(a1 + 9) = v177;
                *(a1 + 20) = v176;
                *(v151 + 72) = v173;
                *(v151 + 88) = v174;
                *(v151 + 13) = v175;
                *(v151 + 56) = v172;
              }
            }

LABEL_48:
            v193 = CAStreamRangedDescription::Sorter(v14, v89, v155);
            v195 = CAStreamRangedDescription::Sorter((v151 + 56), v14, v194);
            if ((v193 & 1) == 0)
            {
              if (v195)
              {
                v200 = *v14;
                v201 = *(v14 + 1);
                v202 = *(v14 + 2);
                v432.mSampleRateRange.mMaximum = *(v14 + 6);
                *&v432.mFormat.mBytesPerPacket = v201;
                *&v432.mFormat.mBitsPerChannel = v202;
                *&v432.mFormat.mSampleRate = v200;
                v203 = *(v151 + 72);
                *v14 = *(v151 + 56);
                *(v14 + 1) = v203;
                *(v14 + 2) = *(v151 + 88);
                *(v14 + 6) = *(v151 + 13);
                v204 = v432.mSampleRateRange.mMaximum;
                v205 = *&v432.mFormat.mBitsPerChannel;
                v206 = *&v432.mFormat.mSampleRate;
                *(v151 + 72) = *&v432.mFormat.mBytesPerPacket;
                *(v151 + 88) = v205;
                *(v151 + 13) = v204;
                *(v151 + 56) = v206;
                if (CAStreamRangedDescription::Sorter(v14, v89, v28))
                {
                  v207 = *v89;
                  v208 = *(v89 + 16);
                  v209 = *(v89 + 32);
                  v432.mSampleRateRange.mMaximum = *(v89 + 48);
                  *&v432.mFormat.mBytesPerPacket = v208;
                  *&v432.mFormat.mBitsPerChannel = v209;
                  *&v432.mFormat.mSampleRate = v207;
                  v210 = *(v14 + 1);
                  *v89 = *v14;
                  *(v89 + 16) = v210;
                  *(v89 + 32) = *(v14 + 2);
                  *(v89 + 48) = *(v14 + 6);
                  v211 = v432.mSampleRateRange.mMaximum;
                  v212 = *&v432.mFormat.mBitsPerChannel;
                  v213 = *&v432.mFormat.mSampleRate;
                  *(v14 + 1) = *&v432.mFormat.mBytesPerPacket;
                  *(v14 + 2) = v212;
                  *(v14 + 6) = v211;
                  *v14 = v213;
                }
              }

              goto LABEL_57;
            }

            if (v195)
            {
              v196 = *v89;
              v197 = *(v89 + 16);
              v198 = *(v89 + 32);
              v432.mSampleRateRange.mMaximum = *(v89 + 48);
              *&v432.mFormat.mBytesPerPacket = v197;
              *&v432.mFormat.mBitsPerChannel = v198;
              *&v432.mFormat.mSampleRate = v196;
              v199 = *(v151 + 72);
              *v89 = *(v151 + 56);
              *(v89 + 16) = v199;
              *(v89 + 32) = *(v151 + 88);
              *(v89 + 48) = *(v151 + 13);
            }

            else
            {
              v214 = *v89;
              v215 = *(v89 + 16);
              v216 = *(v89 + 32);
              v432.mSampleRateRange.mMaximum = *(v89 + 48);
              *&v432.mFormat.mBytesPerPacket = v215;
              *&v432.mFormat.mBitsPerChannel = v216;
              *&v432.mFormat.mSampleRate = v214;
              v217 = *(v14 + 1);
              *v89 = *v14;
              *(v89 + 16) = v217;
              *(v89 + 32) = *(v14 + 2);
              *(v89 + 48) = *(v14 + 6);
              v218 = v432.mSampleRateRange.mMaximum;
              v219 = *&v432.mFormat.mBitsPerChannel;
              v220 = *&v432.mFormat.mSampleRate;
              *(v14 + 1) = *&v432.mFormat.mBytesPerPacket;
              *(v14 + 2) = v219;
              *(v14 + 6) = v218;
              *v14 = v220;
              if (!CAStreamRangedDescription::Sorter((v151 + 56), v14, v28))
              {
LABEL_57:
                v228 = *a1;
                v229 = *(a1 + 1);
                v230 = *(a1 + 2);
                v432.mSampleRateRange.mMaximum = *(a1 + 6);
                *&v432.mFormat.mBytesPerPacket = v229;
                *&v432.mFormat.mBitsPerChannel = v230;
                *&v432.mFormat.mSampleRate = v228;
                v231 = *v14;
                v232 = *(v14 + 1);
                v233 = *(v14 + 2);
                *(a1 + 6) = *(v14 + 6);
                *(a1 + 1) = v232;
                *(a1 + 2) = v233;
                *a1 = v231;
                v234 = *&v432.mFormat.mSampleRate;
                v235 = *&v432.mFormat.mBytesPerPacket;
                v236 = *&v432.mFormat.mBitsPerChannel;
                *(v14 + 6) = *&v432.mSampleRateRange.mMaximum;
                *(v14 + 1) = v235;
                *(v14 + 2) = v236;
                *v14 = v234;
                goto LABEL_58;
              }

              v221 = *v14;
              v222 = *(v14 + 1);
              v223 = *(v14 + 2);
              v432.mSampleRateRange.mMaximum = *(v14 + 6);
              *&v432.mFormat.mBytesPerPacket = v222;
              *&v432.mFormat.mBitsPerChannel = v223;
              *&v432.mFormat.mSampleRate = v221;
              v224 = *(v151 + 72);
              *v14 = *(v151 + 56);
              *(v14 + 1) = v224;
              *(v14 + 2) = *(v151 + 88);
              *(v14 + 6) = *(v151 + 13);
            }

            v225 = v432.mSampleRateRange.mMaximum;
            v226 = *&v432.mFormat.mBitsPerChannel;
            v227 = *&v432.mFormat.mSampleRate;
            *(v151 + 72) = *&v432.mFormat.mBytesPerPacket;
            *(v151 + 88) = v226;
            *(v151 + 13) = v225;
            *(v151 + 56) = v227;
            goto LABEL_57;
          }

          v25 = CAStreamRangedDescription::Sorter(a1, a1 + v13, a3);
          v27 = CAStreamRangedDescription::Sorter(&a2[-1], a1, v26);
          if (v25)
          {
            if (v27)
            {
              v29 = *v14;
              v30 = *(v14 + 1);
              v31 = *(v14 + 2);
              v432.mSampleRateRange.mMaximum = *(v14 + 6);
              *&v432.mFormat.mBytesPerPacket = v30;
              *&v432.mFormat.mBitsPerChannel = v31;
              *&v432.mFormat.mSampleRate = v29;
              v32 = *p_mSampleRate;
              v33 = *&a2[-1].mFormat.mBytesPerPacket;
              v34 = *&a2[-1].mFormat.mBitsPerChannel;
              *(v14 + 6) = *&a2[-1].mSampleRateRange.mMaximum;
              *(v14 + 1) = v33;
              *(v14 + 2) = v34;
              *v14 = v32;
LABEL_36:
              v132 = *&v432.mFormat.mSampleRate;
              v133 = *&v432.mFormat.mBytesPerPacket;
              v134 = *&v432.mFormat.mBitsPerChannel;
              a2[-1].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
              *&a2[-1].mFormat.mBytesPerPacket = v133;
              *&a2[-1].mFormat.mBitsPerChannel = v134;
              *p_mSampleRate = v132;
              goto LABEL_58;
            }

            v117 = *v14;
            v118 = *(v14 + 1);
            v119 = *(v14 + 2);
            v432.mSampleRateRange.mMaximum = *(v14 + 6);
            *&v432.mFormat.mBytesPerPacket = v118;
            *&v432.mFormat.mBitsPerChannel = v119;
            *&v432.mFormat.mSampleRate = v117;
            v120 = *a1;
            v121 = *(a1 + 1);
            v122 = *(a1 + 2);
            *(v14 + 6) = *(a1 + 6);
            *(v14 + 1) = v121;
            *(v14 + 2) = v122;
            *v14 = v120;
            v123 = *&v432.mFormat.mSampleRate;
            v124 = *&v432.mFormat.mBytesPerPacket;
            v125 = *&v432.mFormat.mBitsPerChannel;
            *(a1 + 6) = *&v432.mSampleRateRange.mMaximum;
            *(a1 + 1) = v124;
            *(a1 + 2) = v125;
            *a1 = v123;
            if (CAStreamRangedDescription::Sorter(&a2[-1], a1, v28))
            {
              v126 = *a1;
              v127 = *(a1 + 1);
              v128 = *(a1 + 2);
              v432.mSampleRateRange.mMaximum = *(a1 + 6);
              *&v432.mFormat.mBytesPerPacket = v127;
              *&v432.mFormat.mBitsPerChannel = v128;
              *&v432.mFormat.mSampleRate = v126;
              v129 = *p_mSampleRate;
              v130 = *&a2[-1].mFormat.mBytesPerPacket;
              v131 = *&a2[-1].mFormat.mBitsPerChannel;
              *(a1 + 6) = *&a2[-1].mSampleRateRange.mMaximum;
              *(a1 + 1) = v130;
              *(a1 + 2) = v131;
              *a1 = v129;
              goto LABEL_36;
            }
          }

          else if (v27)
          {
            v53 = *a1;
            v54 = *(a1 + 1);
            v55 = *(a1 + 2);
            v432.mSampleRateRange.mMaximum = *(a1 + 6);
            *&v432.mFormat.mBytesPerPacket = v54;
            *&v432.mFormat.mBitsPerChannel = v55;
            *&v432.mFormat.mSampleRate = v53;
            v56 = *p_mSampleRate;
            v57 = *&a2[-1].mFormat.mBytesPerPacket;
            v58 = *&a2[-1].mFormat.mBitsPerChannel;
            *(a1 + 6) = *&a2[-1].mSampleRateRange.mMaximum;
            *(a1 + 1) = v57;
            *(a1 + 2) = v58;
            *a1 = v56;
            v59 = *&v432.mFormat.mSampleRate;
            v60 = *&v432.mFormat.mBytesPerPacket;
            v61 = *&v432.mFormat.mBitsPerChannel;
            a2[-1].mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
            *&a2[-1].mFormat.mBytesPerPacket = v60;
            *&a2[-1].mFormat.mBitsPerChannel = v61;
            *p_mSampleRate = v59;
            if (CAStreamRangedDescription::Sorter(a1, a1 + v13, v28))
            {
              v62 = *v14;
              v63 = *(v14 + 1);
              v64 = *(v14 + 2);
              v432.mSampleRateRange.mMaximum = *(v14 + 6);
              *&v432.mFormat.mBytesPerPacket = v63;
              *&v432.mFormat.mBitsPerChannel = v64;
              *&v432.mFormat.mSampleRate = v62;
              v65 = *a1;
              v66 = *(a1 + 1);
              v67 = *(a1 + 2);
              *(v14 + 6) = *(a1 + 6);
              *(v14 + 1) = v66;
              *(v14 + 2) = v67;
              *v14 = v65;
              v68 = *&v432.mFormat.mSampleRate;
              v69 = *&v432.mFormat.mBytesPerPacket;
              v70 = *&v432.mFormat.mBitsPerChannel;
              *(a1 + 6) = *&v432.mSampleRateRange.mMaximum;
              *(a1 + 1) = v69;
              *(a1 + 2) = v70;
              *a1 = v68;
            }
          }

LABEL_58:
          v4 = (v4 - 1);
          if (a4 & 1) != 0 || (CAStreamRangedDescription::Sorter((a1 - 56), a1, v28))
          {
            break;
          }

          v261 = *a1;
          v262 = *(a1 + 1);
          v263 = *(a1 + 2);
          v431.mSampleRateRange.mMaximum = *(a1 + 6);
          *&v431.mFormat.mBytesPerPacket = v262;
          *&v431.mFormat.mBitsPerChannel = v263;
          *&v431.mFormat.mSampleRate = v261;
          if (CAStreamRangedDescription::Sorter(&v431, a2 - 1, v28))
          {
            v9 = a1;
            do
            {
              ++v9;
            }

            while ((CAStreamRangedDescription::Sorter(&v431, v9, a3) & 1) == 0);
          }

          else
          {
            v264 = (a1 + 56);
            do
            {
              v9 = v264;
              if (v264 >= a2)
              {
                break;
              }

              v265 = CAStreamRangedDescription::Sorter(&v431, v264, a3);
              v264 = v9 + 1;
            }

            while (!v265);
          }

          v266 = a2;
          if (v9 < a2)
          {
            v266 = a2;
            do
            {
              --v266;
            }

            while ((CAStreamRangedDescription::Sorter(&v431, v266, a3) & 1) != 0);
          }

          while (v9 < v266)
          {
            v267 = *&v9->mFormat.mSampleRate;
            v268 = *&v9->mFormat.mBytesPerPacket;
            v269 = *&v9->mFormat.mBitsPerChannel;
            v432.mSampleRateRange.mMaximum = v9->mSampleRateRange.mMaximum;
            *&v432.mFormat.mBytesPerPacket = v268;
            *&v432.mFormat.mBitsPerChannel = v269;
            *&v432.mFormat.mSampleRate = v267;
            v270 = *&v266->mFormat.mSampleRate;
            v271 = *&v266->mFormat.mBytesPerPacket;
            v272 = *&v266->mFormat.mBitsPerChannel;
            v9->mSampleRateRange.mMaximum = v266->mSampleRateRange.mMaximum;
            *&v9->mFormat.mBytesPerPacket = v271;
            *&v9->mFormat.mBitsPerChannel = v272;
            *&v9->mFormat.mSampleRate = v270;
            v273 = *&v432.mFormat.mSampleRate;
            v274 = *&v432.mFormat.mBytesPerPacket;
            v275 = *&v432.mFormat.mBitsPerChannel;
            v266->mSampleRateRange.mMaximum = v432.mSampleRateRange.mMaximum;
            *&v266->mFormat.mBytesPerPacket = v274;
            *&v266->mFormat.mBitsPerChannel = v275;
            *&v266->mFormat.mSampleRate = v273;
            do
            {
              ++v9;
            }

            while (!CAStreamRangedDescription::Sorter(&v431, v9, a3));
            do
            {
              --v266;
            }

            while ((CAStreamRangedDescription::Sorter(&v431, v266, a3) & 1) != 0);
          }

          v276 = &v9[-1];
          if (&v9[-1] != a1)
          {
            v277 = *v276;
            v278 = *&v9[-1].mFormat.mBytesPerPacket;
            v279 = *&v9[-1].mFormat.mBitsPerChannel;
            *(a1 + 6) = *&v9[-1].mSampleRateRange.mMaximum;
            *(a1 + 1) = v278;
            *(a1 + 2) = v279;
            *a1 = v277;
          }

          a4 = 0;
          v280 = *&v431.mFormat.mSampleRate;
          v281 = *&v431.mFormat.mBytesPerPacket;
          v282 = *&v431.mFormat.mBitsPerChannel;
          v9[-1].mSampleRateRange.mMaximum = v431.mSampleRateRange.mMaximum;
          *&v9[-1].mFormat.mBytesPerPacket = v281;
          *&v9[-1].mFormat.mBitsPerChannel = v282;
          *v276 = v280;
        }

        v237 = *a1;
        v238 = *(a1 + 1);
        v239 = *(a1 + 2);
        v431.mSampleRateRange.mMaximum = *(a1 + 6);
        *&v431.mFormat.mBytesPerPacket = v238;
        *&v431.mFormat.mBitsPerChannel = v239;
        *&v431.mFormat.mSampleRate = v237;
        v240 = a1;
        do
        {
          v241 = v240;
          v240 = (v240 + 56);
        }

        while ((CAStreamRangedDescription::Sorter(v240, &v431, v28) & 1) != 0);
        v242 = a2;
        if (v241 == a1)
        {
          v242 = a2;
          do
          {
            if (v240 >= v242)
            {
              break;
            }

            v242 = (v242 - 56);
          }

          while ((CAStreamRangedDescription::Sorter(v242, &v431, v28) & 1) == 0);
        }

        else
        {
          do
          {
            v242 = (v242 - 56);
          }

          while (!CAStreamRangedDescription::Sorter(v242, &v431, v28));
        }

        v243 = v4;
        if (v240 < v242)
        {
          v244 = v240;
          v245 = v242;
          do
          {
            v247 = *(v244 + 1);
            *&v432.mFormat.mSampleRate = *v244;
            v246 = *&v432.mFormat.mSampleRate;
            *&v432.mFormat.mBytesPerPacket = v247;
            *&v432.mFormat.mBitsPerChannel = *(v244 + 2);
            v248 = *&v432.mFormat.mBitsPerChannel;
            v432.mSampleRateRange.mMaximum = *(v244 + 6);
            v249 = v432.mSampleRateRange.mMaximum;
            v250 = *(v245 + 6);
            v252 = *(v245 + 1);
            v251 = *(v245 + 2);
            *v244 = *v245;
            *(v244 + 1) = v252;
            *(v244 + 2) = v251;
            *(v244 + 6) = v250;
            *(v245 + 1) = v247;
            *(v245 + 2) = v248;
            *(v245 + 6) = v249;
            *v245 = v246;
            do
            {
              v241 = v244;
              v244 = (v244 + 56);
            }

            while ((CAStreamRangedDescription::Sorter(v244, &v431, v28) & 1) != 0);
            do
            {
              v245 = (v245 - 56);
            }

            while (!CAStreamRangedDescription::Sorter(v245, &v431, v28));
          }

          while (v244 < v245);
        }

        if (v241 != a1)
        {
          v253 = *v241;
          v254 = *(v241 + 1);
          v255 = *(v241 + 2);
          *(a1 + 6) = *(v241 + 6);
          *(a1 + 1) = v254;
          *(a1 + 2) = v255;
          *a1 = v253;
        }

        v256 = *&v431.mFormat.mSampleRate;
        v257 = *&v431.mFormat.mBytesPerPacket;
        v258 = *&v431.mFormat.mBitsPerChannel;
        *(v241 + 6) = *&v431.mSampleRateRange.mMaximum;
        *(v241 + 1) = v257;
        *(v241 + 2) = v258;
        *v241 = v256;
        v4 = v243;
        if (v240 >= v242)
        {
          break;
        }

LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *,false>(a1, v241, v243, a4 & 1);
        a4 = 0;
        v9 = (v241 + 56);
      }

      v259 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *>(a1, v241, v28);
      v9 = (v241 + 56);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *>(v241 + 1, a2, v260))
      {
        break;
      }

      if (!v259)
      {
        goto LABEL_79;
      }
    }

    a2 = v241;
    if (!v259)
    {
      continue;
    }

    break;
  }
}

BOOL AMCP::Thing::can_convert_to<applesauce::CF::DataRef>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
  v3 = *(a1 + 32);
  v9 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v9);
    v3 = v9;
  }

  if (v3 == v2)
  {
    *&v7[0] = v2;
    return (*(a1 + 32))(4, a1, 0, v7) != 0;
  }

  v6 = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(a1 + 32))(6, a1, v7, &v6);
  if (!v8)
  {
    return 0;
  }

  v6 = v2;
  v4 = v8(4, v7, 0, &v6) != 0;
  if (v8)
  {
    v8(0, v7, 0, 0);
  }

  return v4;
}

void sub_1DE358A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

BOOL AMCP::Thing::can_convert_to<applesauce::CF::ArrayRef>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
  v3 = *(a1 + 32);
  v9 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v9);
    v3 = v9;
  }

  if (v3 == v2)
  {
    *&v7[0] = v2;
    return (*(a1 + 32))(4, a1, 0, v7) != 0;
  }

  v6 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(a1 + 32))(6, a1, v7, &v6);
  if (!v8)
  {
    return 0;
  }

  v6 = v2;
  v4 = v8(4, v7, 0, &v6) != 0;
  if (v8)
  {
    v8(0, v7, 0, 0);
  }

  return v4;
}

void sub_1DE358BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

BOOL AMCP::Thing::can_convert_to<applesauce::CF::DictionaryRef>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
  v3 = *(a1 + 32);
  v9 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v9);
    v3 = v9;
  }

  if (v3 == v2)
  {
    *&v7[0] = v2;
    return (*(a1 + 32))(4, a1, 0, v7) != 0;
  }

  v6 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(a1 + 32))(6, a1, v7, &v6);
  if (!v8)
  {
    return 0;
  }

  v6 = v2;
  v4 = v8(4, v7, 0, &v6) != 0;
  if (v8)
  {
    v8(0, v7, 0, 0);
  }

  return v4;
}

void sub_1DE358CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *,0>(AudioStreamRangedDescription *a1, Float64 *this, AudioStreamRangedDescription *a3, Float64 *a4)
{
  v8 = CAStreamRangedDescription::Sorter(this, a1, a3);
  v10 = CAStreamRangedDescription::Sorter(a3, this, v9);
  if (v8)
  {
    if (v10)
    {
      mMaximum = a1->mSampleRateRange.mMaximum;
      v14 = *&a1->mFormat.mBytesPerPacket;
      v13 = *&a1->mFormat.mBitsPerChannel;
      v15 = *&a1->mFormat.mSampleRate;
      v17 = *&a3->mFormat.mBytesPerPacket;
      v16 = *&a3->mFormat.mBitsPerChannel;
      v18 = *&a3->mFormat.mSampleRate;
      a1->mSampleRateRange.mMaximum = a3->mSampleRateRange.mMaximum;
      *&a1->mFormat.mBytesPerPacket = v17;
      *&a1->mFormat.mBitsPerChannel = v16;
      *&a1->mFormat.mSampleRate = v18;
LABEL_9:
      *&a3->mFormat.mSampleRate = v15;
      *&a3->mFormat.mBytesPerPacket = v14;
      *&a3->mFormat.mBitsPerChannel = v13;
      a3->mSampleRateRange.mMaximum = mMaximum;
      goto LABEL_10;
    }

    v33 = a1->mSampleRateRange.mMaximum;
    v35 = *&a1->mFormat.mBytesPerPacket;
    v34 = *&a1->mFormat.mBitsPerChannel;
    v36 = *&a1->mFormat.mSampleRate;
    v38 = *(this + 1);
    v37 = *(this + 2);
    v39 = *this;
    a1->mSampleRateRange.mMaximum = this[6];
    *&a1->mFormat.mBytesPerPacket = v38;
    *&a1->mFormat.mBitsPerChannel = v37;
    *&a1->mFormat.mSampleRate = v39;
    *this = v36;
    *(this + 1) = v35;
    *(this + 2) = v34;
    this[6] = v33;
    if (CAStreamRangedDescription::Sorter(a3, this, v11))
    {
      mMaximum = this[6];
      v14 = *(this + 1);
      v13 = *(this + 2);
      v15 = *this;
      v41 = *&a3->mFormat.mBytesPerPacket;
      v40 = *&a3->mFormat.mBitsPerChannel;
      v42 = *&a3->mFormat.mSampleRate;
      this[6] = a3->mSampleRateRange.mMaximum;
      *(this + 1) = v41;
      *(this + 2) = v40;
      *this = v42;
      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v19 = this[6];
    v21 = *(this + 1);
    v20 = *(this + 2);
    v22 = *this;
    v24 = *&a3->mFormat.mBytesPerPacket;
    v23 = *&a3->mFormat.mBitsPerChannel;
    v25 = *&a3->mFormat.mSampleRate;
    this[6] = a3->mSampleRateRange.mMaximum;
    *(this + 1) = v24;
    *(this + 2) = v23;
    *this = v25;
    *&a3->mFormat.mSampleRate = v22;
    *&a3->mFormat.mBytesPerPacket = v21;
    *&a3->mFormat.mBitsPerChannel = v20;
    a3->mSampleRateRange.mMaximum = v19;
    if (CAStreamRangedDescription::Sorter(this, a1, v11))
    {
      v26 = a1->mSampleRateRange.mMaximum;
      v28 = *&a1->mFormat.mBytesPerPacket;
      v27 = *&a1->mFormat.mBitsPerChannel;
      v29 = *&a1->mFormat.mSampleRate;
      v31 = *(this + 1);
      v30 = *(this + 2);
      v32 = *this;
      a1->mSampleRateRange.mMaximum = this[6];
      *&a1->mFormat.mBytesPerPacket = v31;
      *&a1->mFormat.mBitsPerChannel = v30;
      *&a1->mFormat.mSampleRate = v32;
      *this = v29;
      *(this + 1) = v28;
      *(this + 2) = v27;
      this[6] = v26;
    }
  }

LABEL_10:
  if (CAStreamRangedDescription::Sorter(a4, a3, v11))
  {
    v45 = a3->mSampleRateRange.mMaximum;
    v47 = *&a3->mFormat.mBytesPerPacket;
    v46 = *&a3->mFormat.mBitsPerChannel;
    v48 = *&a3->mFormat.mSampleRate;
    v50 = *(a4 + 1);
    v49 = *(a4 + 2);
    v51 = *a4;
    a3->mSampleRateRange.mMaximum = a4[6];
    *&a3->mFormat.mBytesPerPacket = v50;
    *&a3->mFormat.mBitsPerChannel = v49;
    *&a3->mFormat.mSampleRate = v51;
    *a4 = v48;
    *(a4 + 1) = v47;
    *(a4 + 2) = v46;
    a4[6] = v45;
    if (CAStreamRangedDescription::Sorter(a3, this, v43))
    {
      v53 = this[6];
      v55 = *(this + 1);
      v54 = *(this + 2);
      v56 = *this;
      v58 = *&a3->mFormat.mBytesPerPacket;
      v57 = *&a3->mFormat.mBitsPerChannel;
      v59 = *&a3->mFormat.mSampleRate;
      this[6] = a3->mSampleRateRange.mMaximum;
      *(this + 1) = v58;
      *(this + 2) = v57;
      *this = v59;
      *&a3->mFormat.mSampleRate = v56;
      *&a3->mFormat.mBytesPerPacket = v55;
      *&a3->mFormat.mBitsPerChannel = v54;
      a3->mSampleRateRange.mMaximum = v53;
      if (CAStreamRangedDescription::Sorter(this, a1, v52))
      {
        v60 = a1->mSampleRateRange.mMaximum;
        v61 = *&a1->mFormat.mBytesPerPacket;
        result = *&a1->mFormat.mBitsPerChannel;
        v62 = *&a1->mFormat.mSampleRate;
        v64 = *(this + 1);
        v63 = *(this + 2);
        v65 = *this;
        a1->mSampleRateRange.mMaximum = this[6];
        *&a1->mFormat.mBytesPerPacket = v64;
        *&a1->mFormat.mBitsPerChannel = v63;
        *&a1->mFormat.mSampleRate = v65;
        *this = v62;
        *(this + 1) = v61;
        *(this + 2) = result;
        this[6] = v60;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *>(AudioStreamRangedDescription *a1, AudioStreamRangedDescription *a2, const AudioStreamRangedDescription *a3)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = a2 - 1;
        v29 = CAStreamRangedDescription::Sorter(&a1[1], a1, a3);
        v31 = CAStreamRangedDescription::Sorter(v6, a1 + 1, v30);
        if (v29)
        {
          if (v31)
          {
LABEL_15:
            mMaximum = a1->mSampleRateRange.mMaximum;
            v34 = *&a1->mFormat.mBytesPerPacket;
            v33 = *&a1->mFormat.mBitsPerChannel;
            v35 = *&a1->mFormat.mSampleRate;
            v37 = *&v6->mFormat.mBytesPerPacket;
            v36 = *&v6->mFormat.mBitsPerChannel;
            v38 = *&v6->mFormat.mSampleRate;
            a1->mSampleRateRange.mMaximum = v6->mSampleRateRange.mMaximum;
            *&a1->mFormat.mBytesPerPacket = v37;
            *&a1->mFormat.mBitsPerChannel = v36;
            *&a1->mFormat.mSampleRate = v38;
LABEL_16:
            *&v6->mFormat.mSampleRate = v35;
            *&v6->mFormat.mBytesPerPacket = v34;
            *&v6->mFormat.mBitsPerChannel = v33;
            result = 1;
            v6->mSampleRateRange.mMaximum = mMaximum;
            return result;
          }

          v72 = a1->mSampleRateRange.mMaximum;
          v74 = *&a1->mFormat.mBytesPerPacket;
          v73 = *&a1->mFormat.mBitsPerChannel;
          v75 = *&a1->mFormat.mSampleRate;
          v76 = *&a1[1].mFormat.mBytesPerPacket;
          *&a1->mFormat.mSampleRate = *&a1[1].mFormat.mSampleRate;
          *&a1->mFormat.mBytesPerPacket = v76;
          *&a1->mFormat.mBitsPerChannel = *&a1[1].mFormat.mBitsPerChannel;
          a1->mSampleRateRange.mMaximum = a1[1].mSampleRateRange.mMaximum;
          *&a1[1].mFormat.mSampleRate = v75;
          *&a1[1].mFormat.mBytesPerPacket = v74;
          *&a1[1].mFormat.mBitsPerChannel = v73;
          a1[1].mSampleRateRange.mMaximum = v72;
          if (CAStreamRangedDescription::Sorter(v6, a1 + 1, v23))
          {
            mMaximum = a1[1].mSampleRateRange.mMaximum;
            v33 = *&a1[1].mFormat.mBitsPerChannel;
            v34 = *&a1[1].mFormat.mBytesPerPacket;
            v35 = *&a1[1].mFormat.mSampleRate;
            v78 = *&v6->mFormat.mBytesPerPacket;
            v77 = *&v6->mFormat.mBitsPerChannel;
            v79 = v6->mSampleRateRange.mMaximum;
            *&a1[1].mFormat.mSampleRate = *&v6->mFormat.mSampleRate;
            a1[1].mSampleRateRange.mMaximum = v79;
            *&a1[1].mFormat.mBitsPerChannel = v77;
            *&a1[1].mFormat.mBytesPerPacket = v78;
            goto LABEL_16;
          }

          return 1;
        }

        if (!v31)
        {
          return 1;
        }

        v50 = a1[1].mSampleRateRange.mMaximum;
        v51 = *&a1[1].mFormat.mBitsPerChannel;
        v52 = *&a1[1].mFormat.mBytesPerPacket;
        v53 = *&a1[1].mFormat.mSampleRate;
        v55 = *&v6->mFormat.mBytesPerPacket;
        v54 = *&v6->mFormat.mBitsPerChannel;
        v56 = v6->mSampleRateRange.mMaximum;
        *&a1[1].mFormat.mSampleRate = *&v6->mFormat.mSampleRate;
        a1[1].mSampleRateRange.mMaximum = v56;
        *&a1[1].mFormat.mBitsPerChannel = v54;
        *&a1[1].mFormat.mBytesPerPacket = v55;
        *&v6->mFormat.mSampleRate = v53;
        *&v6->mFormat.mBytesPerPacket = v52;
        *&v6->mFormat.mBitsPerChannel = v51;
        v6->mSampleRateRange.mMaximum = v50;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *,0>(a1, &a1[1].mFormat.mSampleRate, a1 + 2, &a2[-1].mFormat.mSampleRate);
        return 1;
      case 5:
        v7 = a2 - 1;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AMCP::HAL::translate_mcp_value_to_hal_by_type(AMCP::Thing const&,AMCP::Property_Type_Code,AMCP::HAL::HAL_Property_Type_Code)::$_0 &,AudioStreamRangedDescription *,0>(a1, &a1[1].mFormat.mSampleRate, a1 + 2, &a1[3].mFormat.mSampleRate);
        if (!CAStreamRangedDescription::Sorter(v7, a1 + 3, v8))
        {
          return 1;
        }

        v10 = a1[3].mSampleRateRange.mMaximum;
        v11 = *&a1[3].mFormat.mBitsPerChannel;
        v12 = *&a1[3].mFormat.mBytesPerPacket;
        v13 = *&a1[3].mFormat.mSampleRate;
        v15 = *&v7->mFormat.mBytesPerPacket;
        v14 = *&v7->mFormat.mBitsPerChannel;
        v16 = v7->mSampleRateRange.mMaximum;
        *&a1[3].mFormat.mSampleRate = *&v7->mFormat.mSampleRate;
        a1[3].mSampleRateRange.mMaximum = v16;
        *&a1[3].mFormat.mBitsPerChannel = v14;
        *&a1[3].mFormat.mBytesPerPacket = v15;
        *&v7->mFormat.mSampleRate = v13;
        *&v7->mFormat.mBytesPerPacket = v12;
        *&v7->mFormat.mBitsPerChannel = v11;
        v7->mSampleRateRange.mMaximum = v10;
        if (!CAStreamRangedDescription::Sorter(&a1[3], a1 + 2, v9))
        {
          return 1;
        }

        v18 = a1[2].mSampleRateRange.mMaximum;
        v20 = *&a1[2].mFormat.mBytesPerPacket;
        v19 = *&a1[2].mFormat.mBitsPerChannel;
        v21 = *&a1[2].mFormat.mSampleRate;
        v22 = *&a1[3].mFormat.mBytesPerPacket;
        *&a1[2].mFormat.mSampleRate = *&a1[3].mFormat.mSampleRate;
        *&a1[2].mFormat.mBytesPerPacket = v22;
        *&a1[2].mFormat.mBitsPerChannel = *&a1[3].mFormat.mBitsPerChannel;
        a1[2].mSampleRateRange.mMaximum = a1[3].mSampleRateRange.mMaximum;
        *&a1[3].mFormat.mSampleRate = v21;
        *&a1[3].mFormat.mBytesPerPacket = v20;
        *&a1[3].mFormat.mBitsPerChannel = v19;
        a1[3].mSampleRateRange.mMaximum = v18;
        if (!CAStreamRangedDescription::Sorter(&a1[2], a1 + 1, v17))
        {
          return 1;
        }

        v24 = a1[1].mSampleRateRange.mMaximum;
        v25 = *&a1[1].mFormat.mBitsPerChannel;
        v26 = *&a1[1].mFormat.mSampleRate;
        v27 = *&a1[2].mFormat.mBytesPerPacket;
        *&a1[1].mFormat.mSampleRate = *&a1[2].mFormat.mSampleRate;
        v28 = *&a1[1].mFormat.mBytesPerPacket;
        *&a1[1].mFormat.mBytesPerPacket = v27;
        *&a1[1].mFormat.mBitsPerChannel = *&a1[2].mFormat.mBitsPerChannel;
        a1[1].mSampleRateRange.mMaximum = a1[2].mSampleRateRange.mMaximum;
        *&a1[2].mFormat.mSampleRate = v26;
        *&a1[2].mFormat.mBytesPerPacket = v28;
        *&a1[2].mFormat.mBitsPerChannel = v25;
        a1[2].mSampleRateRange.mMaximum = v24;
        break;
      default:
        goto LABEL_17;
    }

    if (CAStreamRangedDescription::Sorter(&a1[1], a1, v23))
    {
      v57 = a1->mSampleRateRange.mMaximum;
      v59 = *&a1->mFormat.mBytesPerPacket;
      v58 = *&a1->mFormat.mBitsPerChannel;
      v60 = *&a1->mFormat.mSampleRate;
      v61 = *&a1[1].mFormat.mBytesPerPacket;
      *&a1->mFormat.mSampleRate = *&a1[1].mFormat.mSampleRate;
      *&a1->mFormat.mBytesPerPacket = v61;
      *&a1->mFormat.mBitsPerChannel = *&a1[1].mFormat.mBitsPerChannel;
      a1->mSampleRateRange.mMaximum = a1[1].mSampleRateRange.mMaximum;
      *&a1[1].mFormat.mSampleRate = v60;
      *&a1[1].mFormat.mBytesPerPacket = v59;
      *&a1[1].mFormat.mBitsPerChannel = v58;
      result = 1;
      a1[1].mSampleRateRange.mMaximum = v57;
      return result;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = a2 - 1;
    if (!CAStreamRangedDescription::Sorter(&a2[-1], a1, a3))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v40 = a1 + 2;
  v41 = CAStreamRangedDescription::Sorter(&a1[1], a1, a3);
  v43 = CAStreamRangedDescription::Sorter(&a1[2], a1 + 1, v42);
  if (v41)
  {
    if (v43)
    {
      v45 = a1->mSampleRateRange.mMaximum;
      v47 = *&a1->mFormat.mBytesPerPacket;
      v46 = *&a1->mFormat.mBitsPerChannel;
      v48 = *&a1->mFormat.mSampleRate;
      v49 = *&a1[2].mFormat.mBytesPerPacket;
      *&a1->mFormat.mSampleRate = *&v40->mFormat.mSampleRate;
      *&a1->mFormat.mBytesPerPacket = v49;
      *&a1->mFormat.mBitsPerChannel = *&a1[2].mFormat.mBitsPerChannel;
      a1->mSampleRateRange.mMaximum = a1[2].mSampleRateRange.mMaximum;
      *&v40->mFormat.mSampleRate = v48;
      *&a1[2].mFormat.mBytesPerPacket = v47;
    }

    else
    {
      v80 = a1->mSampleRateRange.mMaximum;
      v82 = *&a1->mFormat.mBytesPerPacket;
      v81 = *&a1->mFormat.mBitsPerChannel;
      v83 = *&a1->mFormat.mSampleRate;
      v84 = *&a1[1].mFormat.mBytesPerPacket;
      *&a1->mFormat.mSampleRate = *&a1[1].mFormat.mSampleRate;
      *&a1->mFormat.mBytesPerPacket = v84;
      *&a1->mFormat.mBitsPerChannel = *&a1[1].mFormat.mBitsPerChannel;
      a1->mSampleRateRange.mMaximum = a1[1].mSampleRateRange.mMaximum;
      *&a1[1].mFormat.mSampleRate = v83;
      *&a1[1].mFormat.mBytesPerPacket = v82;
      *&a1[1].mFormat.mBitsPerChannel = v81;
      a1[1].mSampleRateRange.mMaximum = v80;
      if (!CAStreamRangedDescription::Sorter(&a1[2], a1 + 1, v44))
      {
        goto LABEL_33;
      }

      v45 = a1[1].mSampleRateRange.mMaximum;
      v46 = *&a1[1].mFormat.mBitsPerChannel;
      v85 = *&a1[1].mFormat.mSampleRate;
      v86 = *&a1[2].mFormat.mBytesPerPacket;
      *&a1[1].mFormat.mSampleRate = *&v40->mFormat.mSampleRate;
      v87 = *&a1[1].mFormat.mBytesPerPacket;
      *&a1[1].mFormat.mBytesPerPacket = v86;
      *&a1[1].mFormat.mBitsPerChannel = *&a1[2].mFormat.mBitsPerChannel;
      a1[1].mSampleRateRange.mMaximum = a1[2].mSampleRateRange.mMaximum;
      *&v40->mFormat.mSampleRate = v85;
      *&a1[2].mFormat.mBytesPerPacket = v87;
    }

    *&a1[2].mFormat.mBitsPerChannel = v46;
    a1[2].mSampleRateRange.mMaximum = v45;
  }

  else if (v43)
  {
    v62 = a1[1].mSampleRateRange.mMaximum;
    v63 = *&a1[1].mFormat.mBitsPerChannel;
    v64 = *&a1[1].mFormat.mSampleRate;
    v65 = *&a1[2].mFormat.mBytesPerPacket;
    *&a1[1].mFormat.mSampleRate = *&v40->mFormat.mSampleRate;
    v66 = *&a1[1].mFormat.mBytesPerPacket;
    *&a1[1].mFormat.mBytesPerPacket = v65;
    *&a1[1].mFormat.mBitsPerChannel = *&a1[2].mFormat.mBitsPerChannel;
    a1[1].mSampleRateRange.mMaximum = a1[2].mSampleRateRange.mMaximum;
    *&v40->mFormat.mSampleRate = v64;
    *&a1[2].mFormat.mBytesPerPacket = v66;
    *&a1[2].mFormat.mBitsPerChannel = v63;
    a1[2].mSampleRateRange.mMaximum = v62;
    if (CAStreamRangedDescription::Sorter(&a1[1], a1, v44))
    {
      v67 = a1->mSampleRateRange.mMaximum;
      v69 = *&a1->mFormat.mBytesPerPacket;
      v68 = *&a1->mFormat.mBitsPerChannel;
      v70 = *&a1->mFormat.mSampleRate;
      v71 = *&a1[1].mFormat.mBytesPerPacket;
      *&a1->mFormat.mSampleRate = *&a1[1].mFormat.mSampleRate;
      *&a1->mFormat.mBytesPerPacket = v71;
      *&a1->mFormat.mBitsPerChannel = *&a1[1].mFormat.mBitsPerChannel;
      a1->mSampleRateRange.mMaximum = a1[1].mSampleRateRange.mMaximum;
      *&a1[1].mFormat.mSampleRate = v70;
      *&a1[1].mFormat.mBytesPerPacket = v69;
      *&a1[1].mFormat.mBitsPerChannel = v68;
      a1[1].mSampleRateRange.mMaximum = v67;
    }
  }

LABEL_33:
  v88 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v89 = 0;
  v90 = 0;
  while (1)
  {
    if (CAStreamRangedDescription::Sorter(v88, v40, v44))
    {
      v91 = *&v88->mFormat.mBytesPerPacket;
      v97 = *&v88->mFormat.mSampleRate;
      v98 = v91;
      v99 = *&v88->mFormat.mBitsPerChannel;
      v100 = v88->mSampleRateRange.mMaximum;
      v92 = v89;
      while (1)
      {
        v93 = a1 + v92;
        v94 = *(&a1[2].mFormat.mBytesPerPacket + v92);
        *(v93 + 168) = *(&a1[2].mFormat.mSampleRate + v92);
        *(v93 + 184) = v94;
        *(v93 + 200) = *(&a1[2].mFormat.mBitsPerChannel + v92);
        *(v93 + 27) = *(&a1[2].mSampleRateRange.mMaximum + v92);
        if (v92 == -112)
        {
          break;
        }

        v92 -= 56;
        if ((CAStreamRangedDescription::Sorter(&v97, v93 + 1, v44) & 1) == 0)
        {
          v95 = (a1 + v92 + 168);
          goto LABEL_41;
        }
      }

      v95 = a1;
LABEL_41:
      v96 = v98;
      *&v95->mFormat.mSampleRate = v97;
      *&v95->mFormat.mBytesPerPacket = v96;
      *&v95->mFormat.mBitsPerChannel = v99;
      v95->mSampleRateRange.mMaximum = v100;
      if (++v90 == 8)
      {
        return &v88[1] == a2;
      }
    }

    v40 = v88;
    v89 += 56;
    if (++v88 == a2)
    {
      return 1;
    }
  }
}

void AMCP::HAL::translate_hal_value_to_mcp_by_type(const __CFData **a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, CFStringRef *a4@<X8>)
{
  switch(a3)
  {
    case 1:
      if (a2 > 0x12)
      {
        goto LABEL_44;
      }

      if (((1 << a2) & 0x79FFF) != 0)
      {
        goto LABEL_85;
      }

      if (a2 == 13)
      {
        v22 = applesauce::CF::DataRef::operator->(a1);
        raw_data = applesauce::CF::DataRef_proxy::get_raw_data(*v22);
        v24 = applesauce::CF::DataRef::operator->(a1);
        byte_length = applesauce::CF::DataRef_proxy::get_byte_length(*v24);
        v20 = 0;
        v85 = 0uLL;
        v86 = 0;
        if (byte_length >= 0x28)
        {
          v26 = 0;
          v20 = 0;
          v27 = &raw_data[40 * (byte_length / 0x28)];
          do
          {
            *cf = *raw_data;
            v82 = *(raw_data + 1);
            *&v83 = *(raw_data + 4);
            v28 = v26 - v20;
            v29 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v20) >> 3);
            v30 = v29 + 1;
            if (v29 + 1 > 0x666666666666666)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            if (0x999999999999999ALL * (-v20 >> 3) > v30)
            {
              v30 = 0x999999999999999ALL * (-v20 >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * (-v20 >> 3) >= 0x333333333333333)
            {
              v31 = 0x666666666666666;
            }

            else
            {
              v31 = v30;
            }

            if (v31)
            {
              std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v31);
            }

            v32 = 8 * ((v26 - v20) >> 3);
            *v32 = *cf;
            *(v32 + 16) = v82;
            *(v32 + 32) = v83;
            v26 = v32 + 40;
            v33 = 40 * v29 + 40 * (v28 / -40);
            memcpy((v32 + 40 * (v28 / -40)), v20, v28);
            if (v20)
            {
              operator delete(v20);
            }

            v20 = v33;
            raw_data += 40;
          }

          while (raw_data < v27);
          *(&v85 + 1) = v26;
          v86 = 0;
          *&v85 = v33;
        }

        AMCP::make_available_format_list(&v85, cf);
        *a4 = *cf;
        a4[2] = v82;
        a4[3] = 0;
        cf[0] = 0;
        cf[1] = 0;
        *&v82 = 0;
        a4[4] = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch;
        v87 = cf;
        std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v87);
        if (!v20)
        {
          return;
        }

        *(&v85 + 1) = v20;
      }

      else
      {
        v72 = applesauce::CF::DataRef::operator->(a1);
        v73 = applesauce::CF::DataRef_proxy::get_raw_data(*v72);
        v74 = applesauce::CF::DataRef::operator->(a1);
        v75 = applesauce::CF::DataRef_proxy::get_byte_length(*v74);
        v20 = 0;
        v85 = 0uLL;
        v86 = 0;
        if (v75 >= 0x38)
        {
          v76 = &v73[56 * (v75 / 0x38)];
          do
          {
            *cf = *v73;
            v82 = *(v73 + 1);
            v83 = *(v73 + 2);
            v84 = *(v73 + 6);
            std::vector<CA::RangedStreamDescription>::push_back[abi:ne200100](&v85, cf);
            v73 += 56;
          }

          while (v73 < v76);
          v20 = v85;
        }

        AMCP::make_available_format_list(&v85, cf);
        *a4 = *cf;
        a4[2] = v82;
        a4[3] = 0;
        cf[0] = 0;
        cf[1] = 0;
        *&v82 = 0;
        a4[4] = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch;
        v87 = cf;
        std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v87);
        if (!v20)
        {
          return;
        }
      }

LABEL_91:
      v59 = v20;
LABEL_92:
      operator delete(v59);
      return;
    case 2:
LABEL_44:
      v34 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v34) <= 3)
      {
        goto LABEL_85;
      }

      v35 = applesauce::CF::DataRef::operator->(a1);
      v36 = *applesauce::CF::DataRef_proxy::get_raw_data(*v35) != 0;
      *a4 = 0u;
      *(a4 + 1) = 0u;
      *a4 = v36;
      v12 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      goto LABEL_87;
    case 3:
      v13 = CFPropertyListCreateWithData(0, *a1, 0, 0, 0);
      cf[0] = v13;
      AMCP::make_thing_from_description(a4, cf);
      if (v13)
      {
        CFRelease(v13);
      }

      return;
    case 4:
      v40 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      BytePtr = CFDataGetBytePtr(v40);
      if (!*a1)
      {
        goto LABEL_125;
      }

      Length = CFDataGetLength(*a1);
      v43 = CFStringCreateWithCharacters(0, BytePtr, Length >> 1);
      v44 = v43;
      cf[0] = v43;
      if (v43)
      {
        v45 = CFGetTypeID(v43);
        if (v45 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      a4[2] = 0;
      a4[3] = 0;
      *a4 = v44;
      a4[1] = 0;
      v12 = AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::dispatch;
      goto LABEL_87;
    case 5:
      v46 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      v47 = CFDataGetBytePtr(v46);
      if (!*a1)
      {
        goto LABEL_125;
      }

      v48 = CFDataGetLength(*a1);
      v49 = CFStringCreateWithCharacters(0, v47, v48 >> 1);
      cf[0] = v49;
      if (v49)
      {
        v50 = CFGetTypeID(v49);
        if (v50 != CFStringGetTypeID())
        {
          v78 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v78, "Could not construct");
          __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v51 = cf[0];
      }

      else
      {
        v51 = 0;
      }

      v69 = CFURLCreateWithString(0, v51, 0);
      v70 = v69;
      *&v85 = v69;
      if (v69)
      {
        v71 = CFGetTypeID(v69);
        if (v71 != CFURLGetTypeID())
        {
          v79 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v79, "Could not construct");
          __cxa_throw(v79, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        a4[4] = 0;
        *a4 = 0u;
        *(a4 + 1) = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::construct<applesauce::CF::URLRef&>(a4, &v85);
        CFRelease(v70);
      }

      else
      {
        a4[4] = 0;
        *a4 = 0u;
        *(a4 + 1) = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::construct<applesauce::CF::URLRef&>(a4, &v85);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      return;
    case 6:
    case 7:
    case 9:
    case 15:
    case 18:
    case 22:
    case 23:
    case 24:

      AMCP::HAL::translate_simple_hal_value_to_mcp<unsigned int>(a4, a1);
      return;
    case 8:
      v37 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v37) <= 3)
      {
        goto LABEL_85;
      }

      v38 = applesauce::CF::DataRef::operator->(a1);
      v39 = *applesauce::CF::DataRef_proxy::get_raw_data(*v38) != 0;
      *a4 = 0u;
      *(a4 + 1) = 0u;
      *a4 = v39;
      v12 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
      goto LABEL_87;
    case 10:
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v10) <= 3)
      {
        goto LABEL_85;
      }

      if (!*a1)
      {
        goto LABEL_125;
      }

      v11 = CFDataGetBytePtr(*a1);
      *a4 = 0u;
      *(a4 + 1) = 0u;
      *a4 = *v11;
      v12 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
      goto LABEL_87;
    case 11:
      v52 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v52) <= 0x27)
      {
        goto LABEL_85;
      }

      if (*a1)
      {
        CFDataGetBytePtr(*a1);
        a4[1] = 0;
        a4[2] = 0;
        a4[3] = 0;
        a4[4] = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
        operator new();
      }

      goto LABEL_125;
    case 12:
      v53 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v53) <= 3)
      {
        goto LABEL_85;
      }

      if (!*a1)
      {
        goto LABEL_125;
      }

      v54 = CFDataGetBytePtr(*a1);
      *a4 = 0u;
      *(a4 + 1) = 0u;
      *a4 = *v54;
      v12 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
      goto LABEL_87;
    case 13:
      v21 = *a1;
      if (*a1)
      {
        goto LABEL_73;
      }

      goto LABEL_125;
    case 14:
    case 20:

      AMCP::HAL::translate_vector_hal_value_to_mcp<unsigned int>(a4, a1);
      return;
    case 16:
      if (a2 != 1)
      {
        goto LABEL_85;
      }

      v55 = applesauce::CF::DataRef::operator->(a1);
      v56 = applesauce::CF::DataRef_proxy::get_raw_data(*v55);
      v57 = applesauce::CF::DataRef::operator->(a1);
      v58 = applesauce::CF::DataRef_proxy::get_byte_length(*v57);
      std::vector<std::byte>::vector[abi:ne200100](cf, v58);
      memcpy(cf[0], v56, cf[1] - cf[0]);
      *a4 = 0u;
      *(a4 + 1) = 0u;
      a4[4] = 0;
      std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(a4, cf[0], cf[1], cf[1] - cf[0]);
      v9 = AMCP::Implementation::In_Place_Storage<AMCP::Bag_O_Bytes>::dispatch;
      goto LABEL_70;
    case 17:
      v62 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v62) <= 7)
      {
        goto LABEL_85;
      }

      if (!*a1)
      {
        goto LABEL_125;
      }

      v63 = CFDataGetBytePtr(*a1);
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *a4 = *v63;
      v12 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
      goto LABEL_87;
    case 21:
      v21 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

LABEL_73:
      if (CFDataGetLength(v21) <= 7)
      {
        goto LABEL_85;
      }

      v60 = applesauce::CF::DataRef::operator->(a1);
      v61 = *applesauce::CF::DataRef_proxy::get_raw_data(*v60);
      a4[2] = 0;
      a4[3] = 0;
      *a4 = v61;
      a4[1] = 0;
      v12 = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int>>::dispatch;
      goto LABEL_87;
    case 25:
      v14 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      v15 = CFDataGetBytePtr(v14);
      v16 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      cf[0] = 0;
      cf[1] = 0;
      *&v82 = 0;
      v17 = (CFDataGetLength(v16) >> 3) & 0x1FFFFFFFFFFFFFFELL;
      if (v17)
      {
        v18 = &v15[8 * v17];
        do
        {
          v85 = *v15;
          CA::ValueRangeList::AddRange(cf, &v85);
          v15 += 16;
        }

        while (v15 < v18);
        v20 = cf[0];
        v19 = cf[1];
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      a4[4] = 0;
      *a4 = 0u;
      *(a4 + 1) = 0u;
      std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a4, v20, v19, (v19 - v20) >> 4);
      a4[4] = AMCP::Implementation::In_Place_Storage<CA::ValueRangeList>::dispatch;
      if (v20)
      {
        goto LABEL_91;
      }

      return;
    case 26:
      v66 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v66) <= 0xF)
      {
        goto LABEL_85;
      }

      v67 = applesauce::CF::DataRef::operator->(a1);
      v68 = *applesauce::CF::DataRef_proxy::get_raw_data(*v67);
      a4[2] = 0;
      a4[3] = 0;
      *a4 = v68;
      v12 = AMCP::Implementation::In_Place_Storage<CA::ValueRange>::dispatch;
      goto LABEL_87;
    case 27:
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v6) <= 0xB)
      {
        goto LABEL_85;
      }

      v7 = applesauce::CF::DataRef::operator->(a1);
      v8 = applesauce::CF::DataRef_proxy::get_raw_data(*v7);
      CA::ChannelLayout::ChannelLayout(cf, v8);
      a4[4] = 0;
      *a4 = 0u;
      *(a4 + 1) = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a4, cf[0], cf[1], cf[1] - cf[0]);
      v9 = AMCP::Implementation::In_Place_Storage<CA::ChannelLayout>::dispatch;
LABEL_70:
      a4[4] = v9;
      v59 = cf[0];
      if (!cf[0])
      {
        return;
      }

      cf[1] = cf[0];
      goto LABEL_92;
    case 28:
      v64 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      if (CFDataGetLength(v64) <= 3)
      {
LABEL_85:
        a4[4] = 0;
        *a4 = 0u;
        *(a4 + 1) = 0u;
      }

      else
      {
        if (!*a1)
        {
LABEL_125:
          v80 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v80);
          __cxa_throw(v80, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v65 = CFDataGetBytePtr(*a1);
        *a4 = 0u;
        *(a4 + 1) = 0u;
        *a4 = *v65;
        v12 = AMCP::Implementation::In_Place_Storage<AMCP::Power_State>::dispatch;
LABEL_87:
        a4[4] = v12;
      }

      return;
    default:
      goto LABEL_85;
  }
}

void *applesauce::CF::DataRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

const UInt8 *applesauce::CF::DataRef_proxy::get_raw_data(const UInt8 *this)
{
  if (this)
  {
    return CFDataGetBytePtr(this);
  }

  return this;
}

const __CFData *applesauce::CF::DataRef_proxy::get_byte_length(const __CFData *this)
{
  if (this)
  {
    return CFDataGetLength(this);
  }

  return this;
}

void std::vector<CA::RangedStreamDescription>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x492492492492492)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x249249249249249)
    {
      v12 = 0x492492492492492;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = 56 * v9;
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    *(v13 + 48) = *(a2 + 6);
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    v8 = 56 * v9 + 56;
    v17 = *a1;
    v18 = a1[1];
    v19 = 56 * v9 + *a1 - v18;
    if (*a1 != v18)
    {
      v20 = 56 * v9 + *a1 - v18;
      do
      {
        v21 = *v17;
        v22 = v17[1];
        v23 = v17[2];
        *(v20 + 48) = *(v17 + 6);
        *(v20 + 16) = v22;
        *(v20 + 32) = v23;
        *v20 = v21;
        v20 += 56;
        v17 = (v17 + 56);
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = v8;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
  }

  a1[1] = v8;
}

void AMCP::make_thing_from_description(AMCP *this, CFTypeRef *a2)
{
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
  }

  else
  {
    v4 = 0;
  }

  if (v4 == CFBooleanGetTypeID())
  {
    v5 = *a2;
    if (v5)
    {
      CFRetain(v5);
      v29 = v5;
      v6 = CFGetTypeID(v5);
      if (v6 != CFBooleanGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    *(this + 2) = 0;
    *(this + 3) = 0;
    *this = v5;
    *(this + 1) = 0;
    v7 = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
    goto LABEL_32;
  }

  if (*a2)
  {
    v8 = CFGetTypeID(*a2);
  }

  else
  {
    v8 = 0;
  }

  if (v8 == CFDataGetTypeID())
  {
    v9 = *a2;
    if (v9)
    {
      CFRetain(v9);
      v29 = v9;
      v10 = CFGetTypeID(v9);
      if (v10 != CFDataGetTypeID())
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v27, "Could not construct");
        __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    *(this + 2) = 0;
    *(this + 3) = 0;
    *this = v9;
    *(this + 1) = 0;
    v7 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::dispatch;
    goto LABEL_32;
  }

  if (*a2)
  {
    v11 = CFGetTypeID(*a2);
  }

  else
  {
    v11 = 0;
  }

  if (v11 == CFNumberGetTypeID())
  {
    applesauce::CF::NumberRef::from_get(&v29, *a2);
    *(this + 2) = 0;
    *(this + 3) = 0;
    *this = v29;
    *(this + 1) = 0;
    v7 = AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::dispatch;
LABEL_32:
    *(this + 4) = v7;
    return;
  }

  if (*a2)
  {
    v12 = CFGetTypeID(*a2);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == CFStringGetTypeID())
  {
    applesauce::CF::StringRef::from_get(&v29, *a2);
    *(this + 2) = 0;
    *(this + 3) = 0;
    *this = v29;
    *(this + 1) = 0;
    v7 = AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::dispatch;
    goto LABEL_32;
  }

  if (*a2)
  {
    v13 = CFGetTypeID(*a2);
  }

  else
  {
    v13 = 0;
  }

  if (v13 == CFURLGetTypeID())
  {
    v14 = *a2;
    if (v14)
    {
      CFRetain(v14);
      v29 = v14;
      v15 = CFGetTypeID(v14);
      if (v15 != CFURLGetTypeID())
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v28, "Could not construct");
        __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    *(this + 2) = 0;
    *(this + 3) = 0;
    *this = v14;
    *(this + 1) = 0;
    v7 = AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::dispatch;
    goto LABEL_32;
  }

  if (*a2)
  {
    v16 = CFGetTypeID(*a2);
  }

  else
  {
    v16 = 0;
  }

  if (v16 == CFArrayGetTypeID())
  {
    v17 = *a2;
    applesauce::CF::details::Retain<__CFArray const*>(v17);
    applesauce::CF::ArrayRef::ArrayRef(&v29, v17);
    *(this + 2) = 0;
    *(this + 3) = 0;
    *this = v29;
    *(this + 1) = 0;
    v29 = 0;
    *(this + 4) = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
    applesauce::CF::ArrayRef::~ArrayRef(&v29);
  }

  else
  {
    typeid = applesauce::CF::ObjectRef<void const*>::get_typeid(*a2);
    if (typeid == CFDictionaryGetTypeID())
    {
      v19 = *a2;
      applesauce::CF::details::Retain<__CFDictionary const*>(v19);
      applesauce::CF::DictionaryRef::DictionaryRef(&v31, v19);
      applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(&v32, &v31);
      v20 = v32;
      applesauce::CF::StringRef::StringRef(&v32, "Really A CFURL", 14);
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,applesauce::CF::StringRef>(&v29, *v20, v32);
      applesauce::CF::StringRef::~StringRef(&v32);
      if (v30 == 1)
      {
        v21 = applesauce::CF::DataRef::operator->(&v29);
        raw_data = applesauce::CF::DataRef_proxy::get_raw_data(*v21);
        v23 = applesauce::CF::DataRef::operator->(&v29);
        byte_length = applesauce::CF::DataRef_proxy::get_byte_length(*v23);
        v25 = CFURLCreateWithBytes(0, raw_data, byte_length, 0x8000100u, 0);
        applesauce::CF::URLRef::URLRef(&v32, v25);
        *(this + 2) = 0;
        *(this + 3) = 0;
        *this = v32;
        *(this + 1) = 0;
        v32 = 0;
        *(this + 4) = AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::dispatch;
        applesauce::CF::URLRef::~URLRef(&v32);
      }

      else
      {
        *(this + 4) = 0;
        *this = 0u;
        *(this + 1) = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef&>(this, &v31);
      }

      std::optional<applesauce::CF::DataRef>::~optional(&v29);
      applesauce::CF::DictionaryRef::~DictionaryRef(&v31);
    }

    else
    {
      *(this + 4) = 0;
      *this = 0u;
      *(this + 1) = 0u;
    }
  }
}

void sub_1DE35A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  std::optional<applesauce::CF::DataRef>::~optional(&a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::construct<applesauce::CF::URLRef&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::dispatch;
  return a1;
}

double AMCP::HAL::translate_simple_hal_value_to_mcp<unsigned int>(uint64_t a1, CFDataRef *a2)
{
  if (!*a2)
  {
    goto LABEL_6;
  }

  if (CFDataGetLength(*a2) <= 3)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (!*a2)
  {
LABEL_6:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  BytePtr = CFDataGetBytePtr(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = *BytePtr;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
  return result;
}

void AMCP::HAL::translate_vector_hal_value_to_mcp<unsigned int>(uint64_t a1, CFDataRef *a2)
{
  if (!*a2 || (BytePtr = CFDataGetBytePtr(*a2), !*a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Length = CFDataGetLength(*a2);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v8, BytePtr, &BytePtr[Length & 0xFFFFFFFFFFFFFFFCLL], Length >> 2);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = v8;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v8, v9, (v9 - v8) >> 2);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
  if (v6)
  {

    operator delete(v6);
  }
}

void sub_1DE35ABD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CA::ChannelLayout *CA::ChannelLayout::ChannelLayout(CA::ChannelLayout *this, const AudioChannelLayout *a2)
{
  mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions <= 1)
  {
    mNumberChannelDescriptions = 1;
  }

  v5 = std::vector<char>::vector[abi:ne200100](this, 20 * mNumberChannelDescriptions + 12);
  memcpy(*v5, a2, 20 * a2->mNumberChannelDescriptions + 12);
  return this;
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Power_State>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, __objc2_meth_list **a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *a3 = *a2;
        *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Power_State>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      *a3 = *a2;
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Power_State>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      AMCP::swap(v14, a3, a3);
      if (v15)
      {
        v15(0, v14, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Power_State>();
    v10 = *(a2 + 32);
    *&v14[0] = 0;
    if (v10)
    {
      (v10)(3, a2, 0, v14);
      v10 = *&v14[0];
    }

    if (v10 != v9)
    {
      goto LABEL_27;
    }

    v11 = *(a3 + 4);
    v16 = 0;
    if (v11)
    {
      (v11)(3, a3, 0, &v16);
      v11 = v16;
    }

    if (v11 == v9)
    {
      if (*(a2 + 32))
      {
        *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Power_State>();
        v12 = (*(a2 + 32))(4, a2, 0, v14);
      }

      else
      {
        v12 = 0;
      }

      *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Power_State>();
      if (*v12 == *(*(a3 + 4))(4, a3, 0, v14))
      {
        return 1;
      }
    }

    else
    {
LABEL_27:
      v13 = AMCP::Thing::convert_to<AMCP::Power_State>(a2);
      if (v13 == AMCP::Thing::convert_to<AMCP::Power_State>(a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Power_State>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Power_State>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

__objc2_meth_list *AMCP::Implementation::get_type_marker<AMCP::Power_State>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[5].opt_inst_meths;
}

uint64_t AMCP::Thing::convert_to<AMCP::Power_State>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<AMCP::Power_State>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    (v3)(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == v2)
  {
    *&v15[0] = v2;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<AMCP::Power_State>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = v2;
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

  return v5;
}

void sub_1DE35B098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::dispatch(void *result, void *a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v7 = AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>();
        result = 0;
        *a4 = v7;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v21 = 0;
      *cf1 = 0u;
      v20 = 0u;
      AMCP::swap(cf1, a3, a3);
      if (v21)
      {
        v21(0, cf1, 0, 0);
      }

      return 0;
    }

    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>();
    v9 = a2[4];
    cf1[0] = 0;
    if (v9)
    {
      (v9)(3, a2, 0, cf1);
      v9 = cf1[0];
    }

    if (v9 == v8)
    {
      v10 = *(a3 + 4);
      cf2 = 0;
      if (v10)
      {
        v10(3, a3, 0, &cf2);
        v10 = cf2;
      }

      if (v10 == v8)
      {
        if (a2[4])
        {
          cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>();
          v11 = (a2[4])(4, a2, 0, cf1);
        }

        else
        {
          v11 = 0;
        }

        cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>();
        v16 = (*(a3 + 4))(4, a3, 0, cf1);
        v17 = *v11;
        v18 = *v16;
        if (*v11 && v18)
        {
          return (CFEqual(v17, v18) != 0);
        }

        return !(v17 | v18);
      }
    }

    AMCP::Thing::convert_to<applesauce::CF::URLRef>(cf1, a2);
    AMCP::Thing::convert_to<applesauce::CF::URLRef>(&cf2, a3);
    v13 = cf1[0];
    v14 = cf2;
    v15 = (cf1[0] | cf2) == 0;
    if (cf1[0] && cf2)
    {
      v15 = CFEqual(cf1[0], cf2) != 0;
    }

    else if (!cf2)
    {
      goto LABEL_33;
    }

    CFRelease(v14);
LABEL_33:
    if (v13)
    {
      CFRelease(v13);
    }

    return v15;
  }

  if (!result)
  {
LABEL_11:
    AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::destruct(a2);
    return 0;
  }

  if (result != 1)
  {
    if (result != 2)
    {
      return result;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    *a3 = *a2;
    *a2 = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::dispatch;
    goto LABEL_11;
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
  v12 = *a2;
  if (*a2)
  {
    CFRetain(v12);
  }

  result = 0;
  *a3 = v12;
  *(a3 + 4) = AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::dispatch;
  return result;
}

void sub_1DE35B374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::URLRef::~URLRef(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE35B334);
}

double AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::destruct(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *applesauce::CF::NumberRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFNumberGetTypeID();
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

void sub_1DE35B468(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

CFTypeRef applesauce::CF::details::Retain<__CFArray const*>(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

applesauce::CF::ArrayRef *applesauce::CF::ArrayRef::ArrayRef(applesauce::CF::ArrayRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return this;
}

void sub_1DE35B550(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::ObjectRef<void const*>::get_typeid(const void *result)
{
  if (result)
  {
    return CFGetTypeID(result);
  }

  return result;
}

CFTypeRef applesauce::CF::details::Retain<__CFDictionary const*>(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

applesauce::CF::DictionaryRef *applesauce::CF::DictionaryRef::DictionaryRef(applesauce::CF::DictionaryRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return this;
}

void sub_1DE35B654(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(void *this, const applesauce::CF::DictionaryRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return this;
}

applesauce::CF::StringRef *applesauce::CF::StringRef::StringRef(applesauce::CF::StringRef *this, const UInt8 *a2, CFIndex a3)
{
  if (a2)
  {
    v4 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
    *this = v4;
    if (!v4)
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

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,applesauce::CF::StringRef>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDataGetTypeID())
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

applesauce::CF::URLRef *applesauce::CF::URLRef::URLRef(applesauce::CF::URLRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFURLGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return this;
}

void sub_1DE35B8A8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t AMCP::HAL::type_code_from_custom_property_type(AMCP::HAL *this)
{
  if (this == 1667658612)
  {
    v1 = 6;
  }

  else
  {
    v1 = 0;
  }

  if (this == 1886155636)
  {
    v2 = 15;
  }

  else
  {
    v2 = v1;
  }

  if (this == 1918990199)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t AMCP::Graph::Graph_Wire::Connection::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  std::string::operator=((a1 + 40), (a2 + 40));
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  std::string::operator=((a1 + 80), (a2 + 80));
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  }

  v6 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 128) = v6;
  v8 = *(a2 + 160);
  v7 = *(a2 + 168);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 168);
  *(a1 + 160) = v8;
  *(a1 + 168) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(a1 + 176) = *(a2 + 176);
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 192), *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 2);
  }

  return a1;
}

std::string *AMCP::Graph::Graph_Wire::Connection::Connection(std::string *this, const AMCP::Graph::Graph_Wire::Connection *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
  this[1].__r_.__value_.__r.__words[0] = v5;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
    *&this[1].__r_.__value_.__r.__words[2] = v6;
  }

  v7 = *(a2 + 8);
  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 18);
  this[2].__r_.__value_.__r.__words[2] = v7;
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v8 = *(a2 + 5);
    this[4].__r_.__value_.__r.__words[0] = *(a2 + 12);
    *&this[3].__r_.__value_.__r.__words[1] = v8;
  }

  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[4].__r_.__value_.__l.__size_, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  v9 = *(a2 + 8);
  *(&this[5].__r_.__value_.__r.__words[2] + 4) = *(a2 + 140);
  *&this[5].__r_.__value_.__r.__words[1] = v9;
  v10 = *(a2 + 21);
  this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
  this[7].__r_.__value_.__r.__words[0] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 11);
  this[8].__r_.__value_.__r.__words[0] = 0;
  *&this[7].__r_.__value_.__r.__words[1] = v11;
  this[8].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&this[8], *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  return this;
}

void sub_1DE35BB1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned int>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void AMCP::Graph::Graph_Wire::Connection::~Connection(AMCP::Graph::Graph_Wire::Connection *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void AMCP::Terminal_Identifier_to_string(std::string *a1, const void **a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = "in";
  }

  else
  {
    v5 = "out";
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v18;
  std::string::basic_string[abi:ne200100](&v18, v6 + 1);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v18.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 91;
  if (v4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v10 = std::string::append(&v18, v5, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v19, "]:", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2[3]);
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

  v16 = std::string::append(&v20, p_p, size);
  *a1 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1DE35BED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Graph_Wire::Wire_Info::~Wire_Info(AMCP::Graph::Graph_Wire::Wire_Info *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void AMCP::Graph::Graph_Wire::Conversion_Info::~Conversion_Info(AMCP::Graph::Graph_Wire::Conversion_Info *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }
}

double AMCP::Graph::Graph_Wire::get_description(AMCP::Graph::Graph_Wire *this, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
  }

  v4 = *(a2 + 24);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v10 = *(a2 + 40);
  }

  v5 = *(a2 + 64);
  size = v11.__r_.__value_.__l.__size_;
  v7 = *(&v11.__r_.__value_.__r.__words[1] + 7);
  *this = v11.__r_.__value_.__r.__words[0];
  *(this + 1) = size;
  *(this + 15) = v7;
  *(this + 23) = *(&v11.__r_.__value_.__s + 23);
  *(this + 3) = v4;
  *(this + 8) = 0;
  v8 = v10.__r_.__value_.__r.__words[0];
  *(this + 6) = v10.__r_.__value_.__l.__size_;
  *(this + 55) = *(&v10.__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v10.__r_.__value_.__s + 23);
  *(this + 5) = v8;
  *(this + 63) = size;
  *(this + 8) = v5;
  *(this + 18) = 1;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = xmmword_1DE757EF0;
  *(this + 39) = 64;
  *(this + 160) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  std::string::operator=((this + 40), (a2 + 40));
  *(this + 8) = *(a2 + 64);
  *(this + 18) = *(a2 + 72);
  if (this != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 10, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 13, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  }

  *(this + 132) = *(a2 + 128);
  result = *(a2 + 148);
  *(this + 19) = result;
  *(this + 32) = *(a2 + 156);
  *(this + 160) = *(a2 + 160);
  return result;
}

void sub_1DE35C188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Wire_Description::~Wire_Description(AMCP::Wire_Description *this)
{
  v4 = (this + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void AMCP::add_available_format(uint64_t *a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v6 = *(a2 + 16);
  v5 = *(a2 + 20);
  v7 = *(a2 + 28);
  v65 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 36);
  v11 = *a1;
  v10 = a1[1];
  if (v10 != *a1)
  {
    v12 = (v10 - *a1) >> 6;
    while (1)
    {
      v13 = v12 >> 1;
      v14 = (v11 + (v12 >> 1 << 6));
      v15 = v14[8];
      if (!v3)
      {
        break;
      }

      if (v15)
      {
        v16 = v3 == v15;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        LOBYTE(v17) = v15 != 1819304813 && v3 < v15;
        if (v3 == 1819304813)
        {
          LOBYTE(v17) = 1;
        }

        goto LABEL_23;
      }

      LOBYTE(v17) = 0;
      v18 = v15 == 1819304813;
      v19 = v3 == 1819304813;
      v20 = 0;
      if (v3 != 1819304813 || v15 != 1819304813)
      {
        goto LABEL_24;
      }

      v21 = v14[9];
      LOBYTE(v17) = (v21 & 0x40) == 0;
      if ((v4 & 0x40) != 0)
      {
        v18 = 1;
        v20 = (v14[9] & 0x40) == 0;
      }

      else
      {
        if ((v21 & 0x40) != 0)
        {
          goto LABEL_50;
        }

        LOBYTE(v17) = 0;
        v20 = 0;
        v18 = 1;
      }

LABEL_25:
      if (!v20 && v18)
      {
        if ((*(a2 + 12) & 1) != (v14[9] & 1))
        {
          v17 = v14[9];
          goto LABEL_48;
        }

        goto LABEL_31;
      }

LABEL_30:
      if (v20)
      {
        goto LABEL_48;
      }

LABEL_31:
      v23 = v17;
      if (!v8)
      {
        if (!v7)
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_49:
          v11 = (v14 + 16);
          v13 = v12 + ~v13;
          goto LABEL_50;
        }

LABEL_42:
        v17 = v14[13];
        if (v7 == v17 || v17 == 0)
        {
          LOBYTE(v17) = v23;
        }

        else
        {
          LOBYTE(v17) = v7 < v17;
        }

        goto LABEL_48;
      }

      v24 = v14[14];
      v25 = v24 != 0;
      v26 = v8 > v24;
      v27 = v8 != v24;
      v28 = v26;
      v29 = v25 && v27;
      if (v29)
      {
        LOBYTE(v17) = v28;
      }

      else
      {
        LOBYTE(v17) = v23;
      }

      if ((v29 & 1) == 0 && v7)
      {
        goto LABEL_42;
      }

LABEL_48:
      if (v17)
      {
        goto LABEL_49;
      }

LABEL_50:
      v12 = v13;
      if (!v13)
      {
        goto LABEL_55;
      }
    }

    LOBYTE(v17) = 0;
LABEL_23:
    v18 = v15 == 1819304813;
    v19 = v3 == 1819304813;
    v20 = v3 != 0;
LABEL_24:
    if (!v19)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v11 = a1[1];
LABEL_55:
  if (v10 != v11 && *(v11 + 24) == 0.0 && *(v11 + 32) == v3 && *(v11 + 36) == v4 && *(v11 + 40) == v6 && *(v11 + 44) == v5 && *(v11 + 48) == v65 && *(v11 + 52) == v7 && *(v11 + 56) == v8)
  {
    v72 = *(a2 + 40);
    CA::ValueRangeList::AddRange(v11, &v72);
  }

  else
  {
    v74 = *(a2 + 40);
    v67 = 0;
    v66 = 0uLL;
    CA::ValueRangeList::AddRange(&v66, &v74);
    v32 = a1[1];
    v31 = a1[2];
    if (v32 >= v31)
    {
      v64 = v9;
      v45 = v5;
      v46 = *a1;
      v47 = ((v32 - *a1) >> 6) + 1;
      if (v47 >> 58)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v48 = v31 - v46;
      if (v48 >> 5 > v47)
      {
        v47 = v48 >> 5;
      }

      if (v48 >= 0x7FFFFFFFFFFFFFC0)
      {
        v49 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v49 = v47;
      }

      v71 = a1;
      if (v49)
      {
        std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::allocate_at_least[abi:ne200100](v49);
      }

      v50 = v11 - v46;
      v51 = (v11 - v46) >> 6;
      v52 = v51 << 6;
      v68 = 0;
      v69 = v51 << 6;
      v70 = (v51 << 6);
      if (!v51)
      {
        if (v50 < 1)
        {
          if (v11 == v46)
          {
            v53 = 1;
          }

          else
          {
            v53 = v50 >> 5;
          }

          v73 = a1;
          std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::allocate_at_least[abi:ne200100](v53);
        }

        v52 -= ((v50 >> 1) + 32) & 0xFFFFFFFFFFFFFFC0;
        v69 = v52;
        *&v70 = v52;
      }

      *v52 = v66;
      *(v52 + 16) = v67;
      *(v52 + 24) = 0;
      *(v52 + 32) = v3;
      *(v52 + 36) = v4;
      *(v52 + 40) = v6;
      *(v52 + 44) = v45;
      *(v52 + 48) = v65;
      *(v52 + 52) = v7;
      *(v52 + 56) = v8;
      *(v52 + 60) = v64;
      *&v70 = v70 + 64;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1, v11, a1[1], v70);
      v54 = *a1;
      v55 = v69;
      *&v70 = v70 + a1[1] - v11;
      a1[1] = v11;
      v56 = v55 + v54 - v11;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1, v54, v11, v56);
      v57 = *a1;
      *a1 = v56;
      v58 = a1[2];
      *(a1 + 1) = v70;
      *&v70 = v57;
      *(&v70 + 1) = v58;
      v68 = v57;
      v69 = v57;
      std::__split_buffer<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::~__split_buffer(&v68);
    }

    else if (v11 == v32)
    {
      *v32 = v66;
      *(v32 + 16) = v67;
      *(v32 + 24) = 0;
      *(v32 + 32) = v3;
      *(v32 + 36) = v4;
      *(v32 + 40) = v6;
      *(v32 + 44) = v5;
      *(v32 + 48) = v65;
      *(v32 + 52) = v7;
      *(v32 + 56) = v8;
      *(v32 + 60) = v9;
      a1[1] = v32 + 64;
    }

    else
    {
      v62 = v5;
      v63 = v9;
      v33 = (v32 - 64);
      v34 = a1[1];
      if (v32 >= 0x40)
      {
        *v32 = 0;
        *(v32 + 8) = 0;
        *(v32 + 16) = 0;
        *v32 = *v33;
        *(v32 + 16) = *(v32 - 48);
        *v33 = 0;
        *(v32 - 56) = 0;
        *(v32 - 48) = 0;
        v35 = *(v32 - 40);
        v36 = *(v32 - 24);
        *(v32 + 56) = *(v32 - 8);
        *(v32 + 40) = v36;
        *(v32 + 24) = v35;
        v34 = v32 + 64;
      }

      v61 = v66;
      v60 = v67;
      a1[1] = v34;
      if (v32 != v11 + 64)
      {
        v37 = 0;
        do
        {
          v38 = v32 + v37;
          v40 = (v32 + v37 - 64);
          v39 = *v40;
          if (*v40)
          {
            *(v38 - 56) = v39;
            operator delete(v39);
            *v40 = 0;
            *(v32 + v37 - 56) = 0;
            *(v32 + v37 - 48) = 0;
          }

          v41 = (v38 - 128);
          *v40 = *(v38 - 128);
          *(v38 - 48) = *(v38 - 112);
          *v41 = 0;
          v41[1] = 0;
          v41[2] = 0;
          v42 = *(v38 - 104);
          v43 = *(v38 - 88);
          *(v38 - 8) = *(v38 - 72);
          *(v38 - 24) = v43;
          *(v38 - 40) = v42;
          v37 -= 64;
        }

        while (v11 - v32 + 64 != v37);
      }

      v44 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v44;
        operator delete(v44);
      }

      *v11 = v61;
      *(v11 + 16) = v60;
      *(v11 + 24) = 0;
      *(v11 + 32) = v3;
      *(v11 + 36) = v4;
      *(v11 + 40) = v6;
      *(v11 + 44) = v62;
      *(v11 + 48) = v65;
      *(v11 + 52) = v7;
      *(v11 + 56) = v8;
      *(v11 + 60) = v63;
    }
  }

  v59 = *MEMORY[0x1E69E9840];
}