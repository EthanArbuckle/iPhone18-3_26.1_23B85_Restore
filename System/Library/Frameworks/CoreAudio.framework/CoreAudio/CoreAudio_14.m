void sub_1DE307D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a29);
  std::runtime_error::~runtime_error(&a28);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v30)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 145));
  v33 = *(v31 - 136);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6>,CA::ValueRangeList ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6>,CA::ValueRangeList ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6>,CA::ValueRangeList ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965728;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6>,CA::ValueRangeList ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965728;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_6>,CA::ValueRangeList ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965728;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIdEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t AMCP::Core::Operation::call_function<void,double const&>(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(double const&)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v4);
  if (!v5)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const double &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(double const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const double &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v7 + 48))(v7, a2);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE308500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59804D0;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59804D0;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<double>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59804D0;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(double const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(double const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(double const&)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(double const&)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(double const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5>,void ()(double const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE308ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP4Meta6Device18update_core_commonERNS2_4Core13Operation_SetEENK3__5clIdEEDaRKT_EUlvE_NS_9allocatorISE_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEENK3$_5clIdEEDaRKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZN4AMCP4Meta6Device18update_core_commonERNS2_4Core13Operation_SetEENK3__5clIdEEDaRKT_EUlvE_NS_9allocatorISE_EEFvvEEclEv(void **a1)
{
  v20 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 1));
  if (!is_valid)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
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
      *&buf[4] = "Meta_Device_Core.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 158;
      *&buf[18] = 2080;
      *&buf[20] = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
    }

    abort();
  }

  v3 = *a1[5];
  std::__shared_mutex_base::lock((v3 + 176));
  v4 = *a1[5];
  v6 = v4[1];
  v5 = v4[2];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *a1[5];
  }

  if (v4[13])
  {
    v7 = *(v6 + 16);
    v15 = 0x676C6F6275696420;
    v16 = 0;
    *buf = &unk_1F5965688;
    *&buf[8] = &v15;
    *&buf[16] = v4 + 13;
    *&buf[24] = buf;
    AMCP::Core::Broker::fetch_first_core_if (&v17, v7, buf);
    std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
    if (v17)
    {
      AMCP::Core::Core::set_simple_property_value<1853059700u>(v17, a1[6]);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v4 = *a1[5];
  }

  v8 = v4[7];
  v9 = v4[8];
  while (v8 != v9)
  {
    AMCP::Core::Broker::fetch_core(buf, *(v6 + 16), *v8);
    if (*buf)
    {
      AMCP::Core::Core::set_simple_property_value<1853059700u>(*buf, a1[6]);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    ++v8;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_mutex_base::unlock((v3 + 176));
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE308D78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Core::set_simple_property_value<1853059700u>(int8x8_t *a1, void *a2)
{
  v11 = 0x676C6F626E737274;
  v12 = 0;
  if (AMCP::Core::Core::is_property_settable(a1, &v11))
  {
    AMCP::Core::Core::find_operation(&v9, a1, &v11);
    v4 = v9;
    if (v9)
    {
      v5 = AMCP::Implementation::get_type_marker<std::function<void ()(double const&)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
      {
        AMCP::Core::Operation::call_function<void,double const&>(v4, a2);
      }

      else
      {
        v6 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v6))
        {
          memset(&v7[1], 0, 24);
          v7[0] = *a2;
          v8 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
          AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v7);
          if (v8)
          {
            v8(0, v7, 0, 0);
          }
        }
      }
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1DE308E70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a10);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE308E00);
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities43fetch_first_core_with_properties_and_valuesIN10applesauce2CF9StringRefEJENS_9enable_ifILb1EvEEEENS_10shared_ptrINS3_4CoreEEERNS3_6BrokerERKNS2_7AddressERKT_DpOT0_EUlSL_E_NS_9allocatorISP_EEFbRKSD_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core16Broker_Utilities43fetch_first_core_with_properties_and_valuesIN10applesauce2CF9StringRefEJENSt3__19enable_ifILb1EvEEEENS6_10shared_ptrINS0_4CoreEEERNS0_6BrokerERKNS_7AddressERKT_DpOT0_EUlSJ_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities43fetch_first_core_with_properties_and_valuesIN10applesauce2CF9StringRefEJENS_9enable_ifILb1EvEEEENS_10shared_ptrINS3_4CoreEEERNS3_6BrokerERKNS2_7AddressERKT_DpOT0_EUlSL_E_NS_9allocatorISP_EEFbRKSD_EEclEST_(uint64_t a1, AMCP::Core::Core **a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, *a2, v3);
  if (v9 != 1)
  {
    return 0;
  }

  if (*v3 != 1650682995 && *v3 != 1668047219)
  {
    v5 = cf;
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf, v2) == kCFCompareEqualTo)
    {
      v6 = 1;
      if (!v5)
      {
        return v6;
      }

      goto LABEL_8;
    }
  }

  v6 = 0;
  v5 = cf;
  if (cf)
  {
LABEL_8:
    CFRelease(v5);
  }

  return v6;
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities43fetch_first_core_with_properties_and_valuesIN10applesauce2CF9StringRefEJENS_9enable_ifILb1EvEEEENS_10shared_ptrINS3_4CoreEEERNS3_6BrokerERKNS2_7AddressERKT_DpOT0_EUlSL_E_NS_9allocatorISP_EEFbRKSD_EE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5965688;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN4AMCP4Meta6Device18update_core_commonERNS2_4Core13Operation_SetEENK3__5clIdEEDaRKT_EUlvE_NS_9allocatorISE_EEFvvEE18destroy_deallocateEv(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZN4AMCP4Meta6Device18update_core_commonERNS2_4Core13Operation_SetEENK3__5clIdEEDaRKT_EUlvE_NS_9allocatorISE_EEFvvEE7__cloneEPNS0_6__baseISH_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5965618;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN4AMCP4Meta6Device18update_core_commonERNS2_4Core13Operation_SetEENK3__5clIdEEDaRKT_EUlvE_NS_9allocatorISE_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_1F5965618;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZZN4AMCP4Meta6Device18update_core_commonERNS2_4Core13Operation_SetEENK3__5clIdEEDaRKT_EUlvE_NS_9allocatorISE_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_1F5965618;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5>,void ()(double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5>,void ()(double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59655A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59655A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_5>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59655A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device18update_core_commonERNS_4Core13Operation_SetEE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4>,double ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4>,double ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4>,double ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5965528;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4>,double ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965528;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Device::update_core_common(AMCP::Core::Operation_Set &)::$_4>,double ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5965528;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE309754(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIiEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = AMCP::Core::Operation::call_function<int>((a1 + 8));
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = v3;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<int>::dispatch;
  return result;
}

uint64_t AMCP::Core::Operation::call_function<int>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<int ()(void)>>();
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
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = int, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<int ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
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
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = int, Argument_Types = <>]";
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

void sub_1DE309C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<int ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 42);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597F330;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597F330;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597F330;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<int ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<int ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<int ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<int ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        AMCP::swap(v10, a3, a3);
        if (v11)
        {
          v11(0, v10, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<int ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<int ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    std::__function::__value_func<int ()(void)>::__value_func[abi:ne200100](a3, a2);
    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<int ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<int>(AMCP::Address const&,int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<int>(AMCP::Address const&,int const&)::{lambda(void)#1}>,int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIiEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<int>(AMCP::Address const&,int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<int>(AMCP::Address const&,int const&)::{lambda(void)#1}>,int ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F597F2A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIbEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>,BOOL ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5989A88;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Device::object_exists_and_is_a_subdevice(unsigned int)::$_0,std::allocator<AMCP::Meta::Device::object_exists_and_is_a_subdevice(unsigned int)::$_0>,void ()(Audio_Sub_Device_Description &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device32object_exists_and_is_a_subdeviceEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::object_exists_and_is_a_subdevice(unsigned int)::$_0,std::allocator<AMCP::Meta::Device::object_exists_and_is_a_subdevice(unsigned int)::$_0>,void ()(Audio_Sub_Device_Description &)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  cf = v4;
  AMCP::Meta::Device::get_device_core(&v6, *(*(v3 + 8) + 16), &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6 && *v6 == **(a1 + 16))
  {
    **(a1 + 24) = 1;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

__n128 std::__function::__func<AMCP::Meta::Device::object_exists_and_is_a_subdevice(unsigned int)::$_0,std::allocator<AMCP::Meta::Device::object_exists_and_is_a_subdevice(unsigned int)::$_0>,void ()(Audio_Sub_Device_Description &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5966428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Meta::Device::create_config_change_listener(void)::$_0,std::allocator<AMCP::Meta::Device::create_config_change_listener(void)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Device29create_config_change_listenerEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Device::create_config_change_listener(void)::$_0,std::allocator<AMCP::Meta::Device::create_config_change_listener(void)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_mutex_base::lock((v4 + 176));
    v6 = a4[3];
    v7 = a4[4];
    if (v6 == v7)
    {
LABEL_11:
      if (*a4 != a4[1])
      {
        v21 = **a4;
        v10 = *(v4 + 80);
        operator new();
      }

      v11 = a4[8];
      if (v11)
      {
        v12 = *(v4 + 64);
        do
        {
          v13 = *(v4 + 56);
          if (v13 != v12)
          {
            v13 = *(v4 + 56);
            while (*v13 != v11[4])
            {
              if (++v13 == v12)
              {
                goto LABEL_50;
              }
            }
          }

          if (v13 != v12)
          {
            v14 = (v11 + 20);
            while (1)
            {
              v14 = *v14;
              if (!v14)
              {
                break;
              }

              v15 = *(v14 + 4);
              if (v15 > 1935763059)
              {
                if (v15 > 1936879203)
                {
                  if (v15 == 1936879204 || v15 == 1937009955)
                  {
                    goto LABEL_52;
                  }
                }

                else if (v15 == 1935763060 || v15 == 1936487523)
                {
                  goto LABEL_52;
                }
              }

              else if (v15 > 1819569762)
              {
                if (v15 == 1819569763 || v15 == 1853059700)
                {
                  goto LABEL_52;
                }
              }

              else if (v15 == 1718444404 || v15 == 1718449187)
              {
                goto LABEL_52;
              }
            }
          }

LABEL_50:
          v11 = *v11;
        }

        while (v11);
      }
    }

    else
    {
      v8 = *(v4 + 64);
      while (1)
      {
        v9 = *(v4 + 56);
        if (v9 != v8)
        {
          v9 = *(v4 + 56);
          while (*v9 != *v6)
          {
            if (++v9 == v8)
            {
              goto LABEL_10;
            }
          }
        }

        if (v9 != v8)
        {
          break;
        }

LABEL_10:
        if (++v6 == v7)
        {
          goto LABEL_11;
        }
      }

LABEL_52:
      AMCP::Meta::Device::update_cached_properties_from_composition(v4);
      AMCP::Meta::Device::update_subdevices(v4);
      AMCP::Meta::Device::update_core(v4);
    }

    std::__shared_mutex_base::unlock((v4 + 176));
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE30A93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::Meta::Device::create_config_change_listener(void)::$_0,std::allocator<AMCP::Meta::Device::create_config_change_listener(void)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Device::create_config_change_listener(void)::$_0,std::allocator<AMCP::Meta::Device::create_config_change_listener(void)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Device::create_config_change_listener(void)::$_0,std::allocator<AMCP::Meta::Device::create_config_change_listener(void)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59664A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Device::create_config_change_listener(void)::$_0,std::allocator<AMCP::Meta::Device::create_config_change_listener(void)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59664A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Device::create_config_change_listener(void)::$_0,std::allocator<AMCP::Meta::Device::create_config_change_listener(void)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59664A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::IO_Core::Device_Connection::get_device_uid(AMCP::IO_Core::Device_Connection *this, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v4 = v2) == 0) || !*a2)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v26 = "Device_Connection.cpp";
      v27 = 1024;
      v28 = 33;
      v29 = 2080;
      v30 = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v16);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5991430;
    v19 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v18);
    v31 = "CF::String AMCP::IO_Core::Device_Connection::get_device_uid() const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    v33 = 33;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v5 = *(*a2 + 96);
  if (!v5)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v26 = "Device.cpp";
      v27 = 1024;
      v28 = 186;
      v29 = 2080;
      v30 = "not (m_engine)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v16);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5991430;
    v19 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v18);
    v31 = "CF::String AMCP::IO_Core::Device_Node_State::get_device_uid() const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device.cpp";
    v33 = 186;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  (*(*v5 + 16))(v5);
  v6 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void sub_1DE30B008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
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

uint64_t std::__function::__value_func<BOOL ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Device_Connection::register_earliest_read_time(unsigned int,AMCP::DAL::DAL_Time const&)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::register_earliest_read_time(unsigned int,AMCP::DAL::DAL_Time const&)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Connection27register_earliest_read_timeEjRKNS_3DAL8DAL_TimeEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Connection::register_earliest_read_time(unsigned int,AMCP::DAL::DAL_Time const&)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::register_earliest_read_time(unsigned int,AMCP::DAL::DAL_Time const&)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 192);
  v5 = *(a2 + 200);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 72))(v16);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(v16);
  v7 = AMCP::DAL::DAL_Time::get_sample_time(&v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (round(sample_time) >= round(v7))
  {
    v8 = round(*(a2 + 56));
    v9 = round(*(a2 + 64));
    v10 = round(v3);
    if (v8 >= v9 || v10 < v8)
    {
      v12 = v3 + 1.0;
      if (v8 < v9)
      {
        v13 = round(v12);
        if (v10 >= v8)
        {
          v14 = *(a2 + 56);
        }

        else
        {
          v14 = v3;
        }

        if (v9 >= v13)
        {
          v12 = *(a2 + 64);
        }

        if (v10 < v13)
        {
          v3 = v14;
        }

        else
        {
          v12 = *(a2 + 64);
          v3 = *(a2 + 56);
        }
      }

      *(a2 + 56) = v3;
      *(a2 + 64) = v12;
    }
  }

  return 1;
}

void sub_1DE30B318(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Connection::register_earliest_read_time(unsigned int,AMCP::DAL::DAL_Time const&)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::register_earliest_read_time(unsigned int,AMCP::DAL::DAL_Time const&)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F5966538;
  a2[1] = *(result + 8);
  return result;
}

void AMCP::IO_Core::Device_Connection::begin_cycle(os_unfair_lock_s **a1, uint64_t a2, AMCP::DAL::DAL_Time_Delta *a3)
{
  v176 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!v4 || (v4 = std::__shared_weak_count::lock(v4), (v122 = v4) == 0) || (v6 = *a1) == 0)
  {
    v106 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v106 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v108 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v107 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v107)
    {
      atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
      v109 = *v108;
      std::__shared_weak_count::__release_shared[abi:ne200100](v107);
    }

    else
    {
      v109 = *v108;
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *v169 = 136315650;
      *&v169[4] = "Device_Connection.cpp";
      *&v169[12] = 1024;
      *&v169[14] = 102;
      *&v169[18] = 2080;
      *&v169[20] = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v109, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v169, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&outOutputData);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v130);
    std::logic_error::logic_error(&inInputData, &v130);
    inInputData.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, &inInputData);
    v161 = 0;
    *&buf[24] = 0;
    v162 = 0;
    v163 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v169, buf);
    v170 = "void AMCP::IO_Core::Device_Connection::begin_cycle(Object_ID, const Graph::IO_Proc_Cycle_Info &, const DAL::DAL_Time_Delta &) const";
    *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    DWORD2(v171) = 102;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&p_other_data_bytes);
  }

  v7 = *&v6[24]._os_unfair_lock_opaque;
  v8 = *&v6[26]._os_unfair_lock_opaque;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = (*(*v7 + 328))(v7);
  v10 = v9;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 1) == 0)
  {
    v98 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v98 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v100 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v99 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v99)
    {
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
      v101 = *v100;
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    else
    {
      v101 = *v100;
    }

    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *v169 = 136315650;
      *&v169[4] = "Device_Connection.cpp";
      *&v169[12] = 1024;
      *&v169[14] = 103;
      *&v169[18] = 2080;
      *&v169[20] = "not (device_state->get_engine()->has_time())";
      _os_log_error_impl(&dword_1DE1F9000, v101, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v169, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&outOutputData);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v130);
    std::logic_error::logic_error(&inInputData, &v130);
    inInputData.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, &inInputData);
    v161 = 0;
    *&buf[24] = 0;
    v162 = 0;
    v163 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v169, buf);
    v170 = "void AMCP::IO_Core::Device_Connection::begin_cycle(Object_ID, const Graph::IO_Proc_Cycle_Info &, const DAL::DAL_Time_Delta &) const";
    *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    DWORD2(v171) = 103;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&p_other_data_bytes);
  }

  v12 = *&v6[24]._os_unfair_lock_opaque;
  v11 = *&v6[26]._os_unfair_lock_opaque;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 176);
  host_time = AMCP::DAL::DAL_Time::get_host_time((a2 + 80));
  v15 = *&v6[30]._os_unfair_lock_opaque;
  *buf = *&v6[28]._os_unfair_lock_opaque;
  *&buf[8] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Delta::translate_time_delta(v169, a3, buf);
  if ((v169[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(v169);
  }

  (*(*v12 + 240))(v12, v13, host_time, vcvtmd_s64_f64(*&v169[8]));
  if (v170)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v170);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *v169 = &unk_1F5988CE0;
  *&v169[8] = a2;
  *&v169[24] = v169;
  AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v6, v169);
  std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](v169);
  v16 = *&v6[30]._os_unfair_lock_opaque;
  v125 = *&v6[28]._os_unfair_lock_opaque;
  v126 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Delta::translate_time_delta(v127, a3, &v125);
  v17 = a1[1];
  if (!v17 || (v17 = std::__shared_weak_count::lock(v17)) == 0 || (v121 = v17, (v18 = *a1) == 0))
  {
    v110 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v110 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v112 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v111 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v111)
    {
      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
      v113 = *v112;
      std::__shared_weak_count::__release_shared[abi:ne200100](v111);
    }

    else
    {
      v113 = *v112;
    }

    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      *v169 = 136315650;
      *&v169[4] = "Device_Connection.cpp";
      *&v169[12] = 1024;
      *&v169[14] = 182;
      *&v169[18] = 2080;
      *&v169[20] = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v113, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v169, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&outOutputData);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v130);
    std::logic_error::logic_error(&inInputData, &v130);
    inInputData.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, &inInputData);
    v161 = 0;
    *&buf[24] = 0;
    v162 = 0;
    v163 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v169, buf);
    v170 = "void AMCP::IO_Core::Device_Connection::read_all_input_streams(Object_ID, const Graph::IO_Proc_Cycle_Info &, const DAL_Time_Delta &) const";
    *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    DWORD2(v171) = 182;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&p_other_data_bytes);
  }

  if ((v127[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(v127);
  }

  v19 = v128;
  os_unfair_lock_lock(v18 + 1);
  v20 = a1[1];
  if (!v20 || (v20 = std::__shared_weak_count::lock(v20), (v21 = v20) == 0) || !*a1)
  {
    v114 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v114 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v20);
    }

    v116 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v115 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v115)
    {
      atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      v117 = *v116;
      std::__shared_weak_count::__release_shared[abi:ne200100](v115);
    }

    else
    {
      v117 = *v116;
    }

    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      *v169 = 136315650;
      *&v169[4] = "Device_Connection.cpp";
      *&v169[12] = 1024;
      *&v169[14] = 153;
      *&v169[18] = 2080;
      *&v169[20] = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v117, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v169, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&outOutputData);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v130);
    std::logic_error::logic_error(&inInputData, &v130);
    inInputData.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, &inInputData);
    v161 = 0;
    *&buf[24] = 0;
    v162 = 0;
    v163 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v169, buf);
    v170 = "Sample_Time_Range AMCP::IO_Core::Device_Connection::get_total_read_range() const";
    *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    DWORD2(v171) = 153;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&p_other_data_bytes);
  }

  v22 = *&(*a1)[16]._os_unfair_lock_opaque;
  if (v22)
  {
    v23 = 0.0;
    v24 = 1;
    v25 = 0.0;
    do
    {
      AMCP::IO_Core::Stream_Connection::get_unique_read_range((v22 + 7));
      if (v24)
      {
        v25 = v27;
        v23 = v26;
      }

      else
      {
        v28 = round(v26);
        v29 = round(v27);
        if (v28 < v29)
        {
          v30 = round(v23);
          v31 = round(v25);
          if (v30 >= v28)
          {
            v32 = v26;
          }

          else
          {
            v32 = v23;
          }

          if (v29 >= v31)
          {
            v33 = v27;
          }

          else
          {
            v33 = v25;
          }

          if (v30 < v31)
          {
            v25 = v33;
          }

          else
          {
            v25 = v27;
          }

          if (v30 < v31)
          {
            v23 = v32;
          }

          else
          {
            v23 = v26;
          }
        }
      }

      v24 = 0;
      v22 = *v22;
    }

    while (v22);
  }

  else
  {
    v25 = 0.0;
    v23 = 0.0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  v35 = v25 - v23;
  if (round(v35) > 8102.0)
  {
    v102 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v102 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v34);
    }

    v104 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v103 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v103)
    {
      atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = *v104;
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }

    else
    {
      v105 = *v104;
    }

    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      *v169 = 136315650;
      *&v169[4] = "Device_Connection.cpp";
      *&v169[12] = 1024;
      *&v169[14] = 190;
      *&v169[18] = 2080;
      *&v169[20] = "not (total_read_range.length() <= 8102_S)";
      _os_log_error_impl(&dword_1DE1F9000, v105, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v169, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&outOutputData);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v130);
    std::logic_error::logic_error(&inInputData, &v130);
    inInputData.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, &inInputData);
    v161 = 0;
    *&buf[24] = 0;
    v162 = 0;
    v163 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v169, buf);
    v170 = "void AMCP::IO_Core::Device_Connection::read_all_input_streams(Object_ID, const Graph::IO_Proc_Cycle_Info &, const DAL_Time_Delta &) const";
    *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    DWORD2(v171) = 190;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&p_other_data_bytes);
  }

  v37 = *&v18[24]._os_unfair_lock_opaque;
  v36 = *&v18[26]._os_unfair_lock_opaque;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = *(a2 + 176);
  v39 = AMCP::DAL::DAL_Time::get_host_time((a2 + 80));
  v118 = vcvtmd_s64_f64(v23);
  v119 = vcvtmd_s64_f64(v35);
  v120 = vcvtmd_s64_f64(v19);
  (*(*v37 + 256))(v37, v38, v39, v118);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  for (i = *&v18[16]._os_unfair_lock_opaque; i; i = *i)
  {
    AMCP::IO_Core::Stream_Connection::get_unique_read_range((i + 7));
    v42 = v41;
    v44 = v43;
    if (round(v41) < round(v43))
    {
      v47 = i[31];
      v46 = i[32];
      if (v46)
      {
        v48 = 1;
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        v49 = i[31];
        v50 = i[32];
        if (v50)
        {
          v48 = 0;
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v50 = 0;
        v48 = 1;
        v49 = i[31];
      }

      AMCP::DAL::DAL_Buffer::get_timebase(&v137, v49);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v137, v42, v44);
      (*(*v47 + 160))(v169, v47, buf);
      if (v164)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v164);
      }

      if (v161)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v161);
      }

      if (v137.__imp_.__imp_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v137.__imp_.__imp_);
      }

      if ((v48 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (v46)
      {
        imp = v46;
LABEL_78:
        std::__shared_weak_count::__release_shared[abi:ne200100](imp);
      }
    }

    else
    {
      v137.__vftable = 0;
      v137.__imp_.__imp_ = 0;
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v137, 0.0, 0.0);
      AMCP::DAL::Readable_Range::Readable_Range(v169, buf, 0);
      if (v164)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v164);
      }

      if (v161)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v161);
      }

      imp = v137.__imp_.__imp_;
      if (v137.__imp_.__imp_)
      {
        goto LABEL_78;
      }
    }

    if (AMCP::DAL::DAL_Time::operator<(v169, &v171))
    {
      AMCP::IO_Core::Stream_Connection::get_unique_read_range((i + 7));
      v52 = v51;
      v54 = v53;
      AMCP::DAL::Writable_Range::get_direct_write_ranges(&v158, v169);
      v55 = v158;
      v124 = v159;
      if (v158 != v159)
      {
        v56 = vcvtmd_s64_f64(v54 - v52);
        v57 = floor(v52);
        do
        {
          v58 = i[50];
          if (v58)
          {
            AMCP::IO_Core::Stream_Connection::get_converter_buffer(&v137, (i + 7));
            (*(v137.~logic_error + 7))(buf);
            other_data_bytes = AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(*buf, *v55, v55[1]);
            v157 = v59;
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            v60 = v137.__imp_.__imp_;
            if (!v137.__imp_.__imp_)
            {
              goto LABEL_87;
            }
          }

          else
          {
            (*(*v175 + 56))(buf);
            other_data_bytes = AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(*buf, *v55, v55[1]);
            v157 = v73;
            v60 = *&buf[8];
            if (!*&buf[8])
            {
              goto LABEL_87;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
LABEL_87:
          if (!other_data_bytes)
          {
            v90 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v90 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v60);
            }

            v92 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v91 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v91)
            {
              atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
              v93 = *v92;
              std::__shared_weak_count::__release_shared[abi:ne200100](v91);
            }

            else
            {
              v93 = *v92;
            }

            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Device_Connection.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 206;
              *&buf[18] = 2080;
              *&buf[20] = "not (not bytes.empty())";
              _os_log_error_impl(&dword_1DE1F9000, v93, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v150);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("", &inInputData);
            std::logic_error::logic_error(&v149, &inInputData);
            v149.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v137, &v149);
            v139 = 0;
            v140 = 0;
            *&v141 = 0;
            DWORD2(v141) = -1;
            v137.__vftable = &unk_1F5991430;
            v138 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v137);
            v161 = "void AMCP::IO_Core::Device_Connection::read_all_input_streams(Object_ID, const Graph::IO_Proc_Cycle_Info &, const DAL_Time_Delta &) const";
            v162 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
            v163 = 206;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&outOutputData);
          }

          p_other_data_bytes = &other_data_bytes;
          v154 = 0u;
          v155 = 0u;
          v61 = i[31];
          v62 = i[32];
          if (v62)
          {
            atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v61 + 56))(&v137);
          v63 = v137.__vftable;
          AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v137.__vftable);
          AMCP::DAL::sample_group_from_samples<float>(buf, &v63[2].~logic_error_0);
          v64 = **buf;
          std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
          if (v137.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v137.__imp_.__imp_);
          }

          if (v62)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v62);
          }

          *&v154 = v64;
          *(&v154 + 1) = v157 - v64;
          *&v155 = other_data_bytes;
          *(&v155 + 1) = v56;
          sample_time = AMCP::DAL::DAL_Time::get_sample_time((v55 + 2));
          v66 = *(i + 92);
          v68 = *&v18[24]._os_unfair_lock_opaque;
          v67 = *&v18[26]._os_unfair_lock_opaque;
          v69 = v18;
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v70 = *(a2 + 176);
          v71 = AMCP::DAL::DAL_Time::get_host_time((a2 + 80));
          (*(*v68 + 264))(v68, v70, v71, *(i + 24), v66 * vcvtmd_s64_f64(sample_time - v52), v56, &p_other_data_bytes, v57);
          if (v67)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }

          v18 = v69;
          if (v58)
          {
            v72 = i[50];
            AMCP::IO_Core::Stream_Connection::get_converter_buffer(&v137, (i + 7));
            (*(v137.~logic_error + 7))(buf);
            if (*buf)
            {
              (*(**buf + 64))(&inInputData, *v55, v55[1]);
            }

            else
            {
              inInputData.__r_.__value_.__r.__words[0] = 0;
              v168 = 0;
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            if (v137.__imp_.__imp_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v137.__imp_.__imp_);
            }

            v74 = i[31];
            v75 = i[32];
            if (v75)
            {
              atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v74 + 56))(buf);
            if (*buf)
            {
              (*(**buf + 64))(&outOutputData, *v55, v55[1]);
            }

            else
            {
              outOutputData = 0;
              v166[3] = 0;
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            if (v75)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v75);
            }

            v76 = AudioConverterConvertComplexBuffer(v72, vcvtmd_s64_f64(v55[1] - *v55), inInputData.__r_.__value_.__l.__data_, outOutputData);
            if (v76)
            {
              v94 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v94 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v76);
              }

              v96 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v95 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v95)
              {
                atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
                v97 = *v96;
                std::__shared_weak_count::__release_shared[abi:ne200100](v95);
              }

              else
              {
                v97 = *v96;
              }

              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Device_Connection.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 229;
                *&buf[18] = 2080;
                *&buf[20] = "not (the_error == noErr)";
                _os_log_error_impl(&dword_1DE1F9000, v97, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Device_Connection::read_all_input_streams: AudioConverterConvertComplexBuffer format conversion failed", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v152);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("Device_Connection::read_all_input_streams: AudioConverterConvertComplexBuffer format conversion failed", &v150);
              std::logic_error::logic_error(&v151, &v150);
              v151.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v137, &v151);
              v139 = 0;
              v140 = 0;
              *&v141 = 0;
              DWORD2(v141) = -1;
              v137.__vftable = &unk_1F5991430;
              v138 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v137);
              v161 = "void AMCP::IO_Core::Device_Connection::read_all_input_streams(Object_ID, const Graph::IO_Proc_Cycle_Info &, const DAL_Time_Delta &) const";
              v162 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
              v163 = 229;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v148);
            }

            std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&outOutputData, 0);
            std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v166);
            std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&inInputData, 0);
            std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&inInputData.__r_.__value_.__l.__size_);
          }

          os_unfair_lock_opaque = v69[22]._os_unfair_lock_opaque;
          if (*(i + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v145, i[2], i[3]);
          }

          else
          {
            v145 = *(i + 2);
          }

          v146 = i[5];
          v147 = *(i + 12);
          *buf = os_unfair_lock_opaque;
          *&buf[8] = *&v145.__r_.__value_.__l.__data_;
          v78 = v145.__r_.__value_.__r.__words[2];
          memset(&v145, 0, sizeof(v145));
          LODWORD(v162) = v147;
          *&buf[24] = v78;
          v161 = v146;
          AMCP::DAL::Writable_Range::commit_direct_write(v175, buf, v55);
          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }

          v55 += 14;
        }

        while (v55 != v124);
      }

      if (AMCP::DAL::DAL_Time::operator<(v169, &v171))
      {
        v137 = *v169;
        v79 = *&v169[24];
        v138 = *&v169[16];
        v139 = *&v169[24];
        v80 = v170;
        v140 = v170;
        if (v170)
        {
          atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v141 = v171;
        v142 = v172;
        v82 = v173;
        v81 = v174;
        v143 = v173;
        v144 = v174;
        if (v174)
        {
          atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v83 = i[31];
        v84 = i[32];
        if (v84)
        {
          atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&v130.__r_.__value_.__l.__data_ = v137;
        v130.__r_.__value_.__r.__words[2] = v138;
        v131 = v79;
        v132 = v80;
        if (v80)
        {
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v133 = v141;
        v134 = v142;
        v135 = v82;
        v136 = v81;
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v83 + 144))(buf);
        if (v136)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v136);
        }

        if (v132)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v132);
        }

        if (v84)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v84);
        }

        AMCP::IO_Core::Stream_Connection::maybe_capture_audio((i + 7), buf);
        if (v164)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

        if (v161)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v161);
        }

        if (v144)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v144);
        }

        if (v140)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v140);
        }
      }

      *buf = &v158;
      std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    i[14] = 0;
    i[15] = 0;
    if (v174)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v174);
    }

    if (v170)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v170);
    }
  }

  v86 = *&v18[24]._os_unfair_lock_opaque;
  v85 = *&v18[26]._os_unfair_lock_opaque;
  if (v85)
  {
    atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v87 = *(a2 + 176);
  v88 = AMCP::DAL::DAL_Time::get_host_time((a2 + 80));
  (*(*v86 + 272))(v86, v87, v88, v119, v120, v118);
  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v85);
  }

  os_unfair_lock_unlock(v18 + 1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v121);
  if (v129)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v129);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v122);
  v89 = *MEMORY[0x1E69E9840];
}

void sub_1DE30CE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a66)
  {
    operator delete(a66);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v70 - 224);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&STACK[0x200]);
  MEMORY[0x1E12C0F00](&STACK[0x288]);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v66)
  {
    __cxa_free_exception(v68);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&STACK[0x260]);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  os_unfair_lock_unlock(v69 + 1);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    if ((*(result + 2) - v1) >= 0 && (result = *MEMORY[0x1E69E3C08]) != 0)
    {
      return caulk::rt_safe_memory_resource::rt_deallocate(result, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void AMCP::IO_Core::Device_Connection::end_cycle(uint64_t *a1, uint64_t a2, AMCP::DAL::DAL_Time_Delta *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!v4 || (v4 = std::__shared_weak_count::lock(v4), (v7 = v4) == 0) || (v8 = *a1) == 0)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v31 = "Device_Connection.cpp";
      *&v31[8] = 1024;
      *&v31[10] = 117;
      v32 = 2080;
      v33 = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v21);
    std::logic_error::logic_error(&v22, &v21);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5991430;
    v24 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
    v34 = "void AMCP::IO_Core::Device_Connection::end_cycle(const Graph::IO_Proc_Cycle_Info &, const DAL::DAL_Time_Delta &) const";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    v36 = 117;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  v9 = *(v8 + 120);
  v23.__vftable = *(v8 + 112);
  v23.__imp_.__imp_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Delta::translate_time_delta(buf, a3, &v23);
  AMCP::IO_Core::Device_Connection::write_all_output_streams(a1, a2, buf);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v11 = *(v8 + 96);
  v10 = *(v8 + 104);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 176);
  host_time = AMCP::DAL::DAL_Time::get_host_time((a2 + 80));
  v14 = *(v8 + 120);
  v23.__vftable = *(v8 + 112);
  v23.__imp_.__imp_ = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Delta::translate_time_delta(buf, a3, &v23);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  (*(*v11 + 248))(v11, v12, host_time, vcvtmd_s64_f64(*&v31[4]));
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v15 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE30D898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a35);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v41)
  {
    __cxa_free_exception(v40);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a34);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Connection::write_all_output_streams(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a1;
  v159 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!v4 || (v4 = std::__shared_weak_count::lock(v4)) == 0 || (v121 = v4, (v6 = *v3) == 0))
  {
    v112 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v112 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v114 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v113 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v113)
    {
      atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
      v115 = *v114;
      std::__shared_weak_count::__release_shared[abi:ne200100](v113);
    }

    else
    {
      v115 = *v114;
    }

    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      *v147 = 136315650;
      *&v147[4] = "Device_Connection.cpp";
      *&v147[12] = 1024;
      *&v147[14] = 252;
      v148 = 2080;
      *v149 = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v115, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v147, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v132);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &inInputData);
    std::logic_error::logic_error(&v128, &inInputData);
    v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, &v128);
    *&buf[24] = 0;
    *&buf[32] = 0;
    *&v156 = 0;
    DWORD2(v156) = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v147, buf);
    v150 = "void AMCP::IO_Core::Device_Connection::write_all_output_streams(const Graph::IO_Proc_Cycle_Info &, const DAL_Time_Delta &) const";
    v151 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    v152 = 252;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(outOutputData);
  }

  os_unfair_lock_lock(*v3);
  v8 = v6 + 6;
  v7 = *&v6[6]._os_unfair_lock_opaque;
  if (!v7 || AMCP::DAL::DAL_Time::operator<((v7 + 128), (v7 + 168)))
  {
    v9 = v3[1];
    v123 = v6;
    if (!v9 || (v9 = std::__shared_weak_count::lock(v9), (v10 = v9) == 0) || (v9 = *v3) == 0)
    {
      v116 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v116 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v118 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v117 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v117)
      {
        atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
        v119 = *v118;
        std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      }

      else
      {
        v119 = *v118;
      }

      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        *v147 = 136315650;
        *&v147[4] = "Device_Connection.cpp";
        *&v147[12] = 1024;
        *&v147[14] = 288;
        v148 = 2080;
        *v149 = "not (device_state.operator BOOL())";
        _os_log_error_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v147, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v132);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &inInputData);
      std::logic_error::logic_error(&v128, &inInputData);
      v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(buf, &v128);
      *&buf[24] = 0;
      *&buf[32] = 0;
      *&v156 = 0;
      DWORD2(v156) = -1;
      *buf = &unk_1F5991430;
      *&buf[16] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v147, buf);
      v150 = "Sample_Time_Range AMCP::IO_Core::Device_Connection::calculate_write_range() const";
      v151 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
      v152 = 288;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(outOutputData);
    }

    *buf = 0;
    *&buf[8] = 0;
    *v147 = &unk_1F5966648;
    *&v147[8] = buf;
    *&v149[4] = v147;
    AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v9, 0, v147);
    std::__function::__value_func<BOOL ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](v147);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    v11 = *buf;
    v12 = *&buf[8];
    if ((*a3 & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(a3);
    }

    v13 = a3[1];
    v15 = *&v6[24]._os_unfair_lock_opaque;
    v14 = *&v6[26]._os_unfair_lock_opaque;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(a2 + 176);
    host_time = AMCP::DAL::DAL_Time::get_host_time((a2 + 80));
    v120 = vcvtmd_s64_f64(v13);
    (*(*v15 + 280))(v15, v16, host_time, vcvtmd_s64_f64(v12 - v11), floor(v11));
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v18 = 0.0;
    v19 = 0.0;
    v122 = v3;
    while (1)
    {
      v8 = *&v8->_os_unfair_lock_opaque;
      if (!v8)
      {
        v80 = *&v6[24]._os_unfair_lock_opaque;
        v79 = *&v6[26]._os_unfair_lock_opaque;
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v81 = *(a2 + 176);
        v82 = AMCP::DAL::DAL_Time::get_host_time((a2 + 80));
        (*(*v80 + 296))(v80, v81, v82, vcvtmd_s64_f64(v19 - v18), v120, floor(v18));
        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        goto LABEL_145;
      }

      v20 = v3[1];
      if (!v20 || (v20 = std::__shared_weak_count::lock(v20)) == 0 || (v21 = v20, v22 = *v3, v126 = v20, !*v3))
      {
        v108 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v108 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v20);
        }

        v110 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v109 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v109)
        {
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
          v111 = *v110;
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }

        else
        {
          v111 = *v110;
        }

        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *v147 = 136315650;
          *&v147[4] = "Device_Connection.cpp";
          *&v147[12] = 1024;
          *&v147[14] = 305;
          v148 = 2080;
          *v149 = "not (device_state.operator BOOL())";
          _os_log_error_impl(&dword_1DE1F9000, v111, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v147, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v132);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &inInputData);
        std::logic_error::logic_error(&v128, &inInputData);
        v128.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(buf, &v128);
        *&buf[24] = 0;
        *&buf[32] = 0;
        *&v156 = 0;
        DWORD2(v156) = -1;
        *buf = &unk_1F5991430;
        *&buf[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v147, buf);
        v150 = "void AMCP::IO_Core::Device_Connection::write_stream(const Graph::IO_Proc_Cycle_Info &, const Stream_Connection &, Sample_Time_Range &) const";
        v151 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
        v152 = 305;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(outOutputData);
      }

      if (!AMCP::DAL::DAL_Time::operator<(&v8[32], &v8[42]))
      {
        break;
      }

      v23 = *&v8[62]._os_unfair_lock_opaque;
      v24 = *&v8[64]._os_unfair_lock_opaque;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v23 + 72))(buf);
      v25 = AMCP::DAL::DAL_Time::operator<(buf, &v156);
      if (*(&v158 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v158 + 1));
      }

      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (!v25)
      {
        break;
      }

      v26 = *&v8[62]._os_unfair_lock_opaque;
      v27 = *&v8[64]._os_unfair_lock_opaque;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v134 = *&v8[32]._os_unfair_lock_opaque;
      v28 = *&v8[38]._os_unfair_lock_opaque;
      v135 = *&v8[36]._os_unfair_lock_opaque;
      v136 = v28;
      v29 = *&v8[40]._os_unfair_lock_opaque;
      v137 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v138 = *&v8[42]._os_unfair_lock_opaque;
      v30 = *&v8[48]._os_unfair_lock_opaque;
      v139 = *&v8[46]._os_unfair_lock_opaque;
      v31 = *&v8[50]._os_unfair_lock_opaque;
      v140 = v30;
      v141 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v26 + 144))(v147);
      if (v141)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
      }

      if (v137)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      *&inInputData.__r_.__value_.__l.__data_ = 0uLL;
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &inInputData);
      *&v8[32]._os_unfair_lock_opaque = *buf;
      *&v8[36]._os_unfair_lock_opaque = *&buf[16];
      v32 = *&buf[24];
      *&buf[24] = 0;
      *&buf[32] = 0;
      v33 = *&v8[40]._os_unfair_lock_opaque;
      *&v8[38]._os_unfair_lock_opaque = v32;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      *&v8[42]._os_unfair_lock_opaque = v156;
      *&v8[46]._os_unfair_lock_opaque = v157;
      v34 = v158;
      v158 = 0uLL;
      v35 = *&v8[50]._os_unfair_lock_opaque;
      *&v8[48]._os_unfair_lock_opaque = v34;
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        goto LABEL_47;
      }

LABEL_49:
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      if (inInputData.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](inInputData.__r_.__value_.__l.__size_);
      }

      if (AMCP::DAL::DAL_Time::operator<(v147, &v151))
      {
        AMCP::DAL::DAL_Timed_Segment::translate_range(&v132, v154, v147);
        v36 = v132;
        v125 = v133;
        if (v132 != v133)
        {
          v37 = v8 + 14;
          do
          {
            v38 = *&v8[100]._os_unfair_lock_opaque;
            if (v38)
            {
              v39 = *&v8[62]._os_unfair_lock_opaque;
              v40 = *&v8[64]._os_unfair_lock_opaque;
              if (v40)
              {
                atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v39 + 56))(buf);
              if (*buf)
              {
                (*(**buf + 64))(&inInputData, *v36, v36[1]);
              }

              else
              {
                inInputData.__r_.__value_.__r.__words[0] = 0;
                v146 = 0;
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }

              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              }

              AMCP::IO_Core::Stream_Connection::get_converter_buffer(&v134, &v8[14]);
              (*(v134.~logic_error + 7))(buf);
              if (*buf)
              {
                (*(**buf + 64))(outOutputData, *v36, v36[1]);
              }

              else
              {
                outOutputData[0] = 0;
                v144 = 0;
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }

              if (v134.__imp_.__imp_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v134.__imp_.__imp_);
              }

              v43 = AudioConverterConvertComplexBuffer(v38, vcvtmd_s64_f64(v36[1] - *v36), inInputData.__r_.__value_.__l.__data_, outOutputData[0]);
              if (v43)
              {
                v92 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v92 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v43);
                }

                v94 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v93 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v93)
                {
                  atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
                  v95 = *v94;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v93);
                }

                else
                {
                  v95 = *v94;
                }

                if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 320;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (the_error == noErr)";
                  _os_log_error_impl(&dword_1DE1F9000, v95, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Device_Connection::write_stream: AudioConverterConvertComplexBuffer format conversion failed", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v131);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("Device_Connection::write_stream: AudioConverterConvertComplexBuffer format conversion failed", &v129);
                std::logic_error::logic_error(&v130, &v129);
                v130.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v134, &v130);
                v136 = 0;
                v137 = 0;
                *&v138 = 0;
                DWORD2(v138) = -1;
                v134.__vftable = &unk_1F5991430;
                v135 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v134);
                *&buf[32] = "void AMCP::IO_Core::Device_Connection::write_stream(const Graph::IO_Proc_Cycle_Info &, const Stream_Connection &, Sample_Time_Range &) const";
                *&v156 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                DWORD2(v156) = 320;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v127);
              }

              std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](outOutputData, 0);
              std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&outOutputData[1]);
              std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&inInputData, 0);
              std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&inInputData.__r_.__value_.__l.__size_);
              AMCP::IO_Core::Stream_Connection::get_converter_buffer(&v134, &v8[14]);
              (*(v134.~logic_error + 7))(buf);
              if (*buf)
              {
                (*(**buf + 144))(outOutputData, *v36, v36[1]);
              }

              else
              {
                outOutputData[0] = 0;
                outOutputData[1] = 0;
                v143 = 0;
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }

              imp = v134.__imp_.__imp_;
              if (v134.__imp_.__imp_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v134.__imp_.__imp_);
              }
            }

            else
            {
              v41 = *&v8[62]._os_unfair_lock_opaque;
              v42 = *&v8[64]._os_unfair_lock_opaque;
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v41 + 56))(buf);
              if (*buf)
              {
                (*(**buf + 144))(outOutputData, *v36, v36[1]);
              }

              else
              {
                outOutputData[0] = 0;
                outOutputData[1] = 0;
                v143 = 0;
              }

              imp = *&buf[8];
              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }

              if (v42)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v42);
              }
            }

            if (outOutputData[0] == outOutputData[1])
            {
              v84 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v84 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(imp);
              }

              v86 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v85 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v85)
              {
                atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
                v87 = *v86;
                std::__shared_weak_count::__release_shared[abi:ne200100](v85);
              }

              else
              {
                v87 = *v86;
              }

              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Device_Connection.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 324;
                *&buf[18] = 2080;
                *&buf[20] = "not (not samples.empty())";
                _os_log_error_impl(&dword_1DE1F9000, v87, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v130);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("", &v128);
              std::logic_error::logic_error(&v127, &v128);
              v127.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v134, &v127);
              v136 = 0;
              v137 = 0;
              *&v138 = 0;
              DWORD2(v138) = -1;
              v134.__vftable = &unk_1F5991430;
              v135 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v134);
              *&buf[32] = "void AMCP::IO_Core::Device_Connection::write_stream(const Graph::IO_Proc_Cycle_Info &, const Stream_Connection &, Sample_Time_Range &) const";
              *&v156 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
              DWORD2(v156) = 324;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
            }

            if ((outOutputData[1] - outOutputData[0]) != 16)
            {
              v88 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v88 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(imp);
              }

              v90 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v89 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v89)
              {
                atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
                v91 = *v90;
                std::__shared_weak_count::__release_shared[abi:ne200100](v89);
              }

              else
              {
                v91 = *v90;
              }

              if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Device_Connection.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 325;
                *&buf[18] = 2080;
                *&buf[20] = "not (samples.size() == 1)";
                _os_log_error_impl(&dword_1DE1F9000, v91, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We only handle interleaved sample streams currently", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v130);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("We only handle interleaved sample streams currently", &v128);
              std::logic_error::logic_error(&v127, &v128);
              v127.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v134, &v127);
              v136 = 0;
              v137 = 0;
              *&v138 = 0;
              DWORD2(v138) = -1;
              v134.__vftable = &unk_1F5991430;
              v135 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v134);
              *&buf[32] = "void AMCP::IO_Core::Device_Connection::write_stream(const Graph::IO_Proc_Cycle_Info &, const Stream_Connection &, Sample_Time_Range &) const";
              *&v156 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
              DWORD2(v156) = 325;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
            }

            v45 = *outOutputData[0];
            sample_time = AMCP::DAL::DAL_Time::get_sample_time((v36 + 2));
            v47 = AMCP::DAL::DAL_Time::get_sample_time((v36 + 7));
            AMCP::DAL::DAL_Time::operator-(buf, (v36 + 7), (v36 + 2));
            if ((buf[0] & 2) == 0)
            {
              AMCP::DAL::DAL_Time_Delta::validate(buf);
            }

            v48 = *&buf[8];
            v49 = *&buf[32];
            if (*&buf[32])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
            }

            v50 = round(v18);
            v51 = round(v19);
            if (v50 < v51)
            {
              v53 = round(sample_time);
              v54 = round(v47);
              if (v53 >= v50)
              {
                v55 = v18;
              }

              else
              {
                v55 = sample_time;
              }

              if (v51 >= v54)
              {
                v56 = v19;
              }

              else
              {
                v56 = v47;
              }

              if (v53 < v54)
              {
                v19 = v56;
                v18 = v55;
              }

              v52 = sample_time - v18;
            }

            else
            {
              v52 = 0.0;
              v18 = sample_time;
              v19 = v47;
            }

            v57 = vcvtmd_s64_f64(v48);
            v58 = 76;
            if (!v38)
            {
              v58 = 42;
            }

            v59 = 78;
            if (!v38)
            {
              v59 = 44;
            }

            os_unfair_lock_opaque = v37[v59]._os_unfair_lock_opaque;
            if (os_unfair_lock_opaque)
            {
              v61 = 79;
              if (!v38)
              {
                v61 = 45;
              }

              if (v57 * v37[v61]._os_unfair_lock_opaque != *&outOutputData[0]->mBuffers[0].mNumberChannels)
              {
                v96 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v96 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v49);
                }

                v98 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v97)
                {
                  atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
                  v99 = *v98;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v97);
                }

                else
                {
                  v99 = *v98;
                }

                if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 360;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (number_of_frames * format.mChannelsPerFrame == samples[0].m_number_of_samples)";
                  _os_log_error_impl(&dword_1DE1F9000, v99, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s The actual buffer size doesn't match the range!", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v130);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("The actual buffer size doesn't match the range!", &v128);
                std::logic_error::logic_error(&v127, &v128);
                v127.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v134, &v127);
                v136 = 0;
                v137 = 0;
                *&v138 = 0;
                DWORD2(v138) = -1;
                v134.__vftable = &unk_1F5991430;
                v135 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v134);
                *&buf[32] = "void AMCP::IO_Core::Device_Connection::write_stream(const Graph::IO_Proc_Cycle_Info &, const Stream_Connection &, Sample_Time_Range &) const";
                *&v156 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                DWORD2(v156) = 360;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
              }

              v62 = os_unfair_lock_opaque * v57;
              v63 = os_unfair_lock_opaque * vcvtmd_s64_f64(v52);
            }

            else
            {
              v64 = 77;
              if (!v38)
              {
                v64 = 43;
              }

              v65 = v37[v64]._os_unfair_lock_opaque;
              if (v57 < v65 || (v66 = v57 / v65, v57 != v57 / v65 * v65))
              {
                v100 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v100 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v49);
                }

                v102 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v101 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v101)
                {
                  atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
                  v103 = *v102;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v101);
                }

                else
                {
                  v103 = *v102;
                }

                if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 349;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (number_of_frames >= format.mFramesPerPacket && number_of_frames % format.mFramesPerPacket == 0)";
                  _os_log_error_impl(&dword_1DE1F9000, v103, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s The number of frames is not a multiple of the packet size!", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v130);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("The number of frames is not a multiple of the packet size!", &v128);
                std::logic_error::logic_error(&v127, &v128);
                v127.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v134, &v127);
                v136 = 0;
                v137 = 0;
                *&v138 = 0;
                DWORD2(v138) = -1;
                v134.__vftable = &unk_1F5991430;
                v135 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v134);
                *&buf[32] = "void AMCP::IO_Core::Device_Connection::write_stream(const Graph::IO_Proc_Cycle_Info &, const Stream_Connection &, Sample_Time_Range &) const";
                *&v156 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                DWORD2(v156) = 349;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
              }

              v67 = vcvtmd_s64_f64(v52);
              v68 = v67 / v65;
              if (v67 != v67 / v65 * v65)
              {
                v104 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v104 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v49);
                }

                v106 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v105 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v105)
                {
                  atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
                  v107 = *v106;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v105);
                }

                else
                {
                  v107 = *v106;
                }

                if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 350;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (frame_offset.get() % format.mFramesPerPacket == 0)";
                  _os_log_error_impl(&dword_1DE1F9000, v107, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s The offset of this write is not a multiple of the packet size!", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v130);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string("The offset of this write is not a multiple of the packet size!", &v128);
                std::logic_error::logic_error(&v127, &v128);
                v127.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v134, &v127);
                v136 = 0;
                v137 = 0;
                *&v138 = 0;
                DWORD2(v138) = -1;
                v134.__vftable = &unk_1F5991430;
                v135 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v134);
                *&buf[32] = "void AMCP::IO_Core::Device_Connection::write_stream(const Graph::IO_Proc_Cycle_Info &, const Stream_Connection &, Sample_Time_Range &) const";
                *&v156 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                DWORD2(v156) = 350;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v129);
              }

              v69 = v37[v58]._os_unfair_lock_opaque;
              v62 = v69 * v66;
              v63 = v69 * v68;
            }

            v70 = v62;
            inInputData.__r_.__value_.__r.__words[0] = v62;
            inInputData.__r_.__value_.__l.__size_ = v45;
            if (!v45 && v62)
            {
              std::terminate();
            }

            *buf = &inInputData;
            memset(&buf[8], 0, 32);
            v71 = *&v8[62]._os_unfair_lock_opaque;
            v72 = *&v8[64]._os_unfair_lock_opaque;
            if (v72)
            {
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v71 + 56))(&v128);
            v73 = v128.__r_.__value_.__r.__words[0];
            AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v128.__r_.__value_.__l.__data_);
            AMCP::DAL::sample_group_from_samples<float>(&v134, (v73 + 56));
            v74 = v134.~logic_error;
            std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v134);
            if (v128.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v128.__r_.__value_.__l.__size_);
            }

            if (v72)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v72);
            }

            *&buf[8] = v74;
            *&buf[16] = (LODWORD(inInputData.__r_.__value_.__r.__words[1]) - v74);
            *&buf[24] = v70;
            *&buf[32] = v57;
            v76 = *&v22[24]._os_unfair_lock_opaque;
            v75 = *&v22[26]._os_unfair_lock_opaque;
            if (v75)
            {
              atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v77 = *(a2 + 176);
            v78 = AMCP::DAL::DAL_Time::get_host_time((a2 + 80));
            (*(*v76 + 288))(v76, v77, v78, v8[24]._os_unfair_lock_opaque, v63, v57, buf, floor(sample_time));
            if (v75)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v75);
            }

            std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](outOutputData);
            v36 += 12;
            v21 = v126;
            v6 = v123;
          }

          while (v36 != v125);
        }

        *buf = &v132;
        std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
        v3 = v122;
      }

      if (v153)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v153);
      }

      if (v150)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v150);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    *&inInputData.__r_.__value_.__l.__data_ = 0uLL;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &inInputData, 0.0, 0.0);
    AMCP::DAL::Readable_Range::Readable_Range(v147, buf, 0);
LABEL_47:
    if (*(&v158 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v158 + 1));
    }

    goto LABEL_49;
  }

LABEL_145:
  os_unfair_lock_unlock(v6);
  v83 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v121);
}

void sub_1DE30F710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, os_unfair_lock_s *lock, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, void *a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, char a58)
{
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a58);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(v61 - 240);
  MEMORY[0x1E12C0F00](&a21);
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (v58)
  {
    __cxa_free_exception(v60);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a32);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  os_unfair_lock_unlock(lock);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Connection::calculate_write_range(void)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::calculate_write_range(void)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP7IO_Core17Device_Connection21calculate_write_rangeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Connection::calculate_write_range(void)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::calculate_write_range(void)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (AMCP::DAL::DAL_Time::operator<((a2 + 9), (a2 + 14)))
  {
    v4 = a2[24];
    v22 = *(a2 + 9);
    v5 = a2[12];
    v23 = a2[11];
    v24 = v5;
    v6 = a2[13];
    v25 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = *(a2 + 7);
    v7 = a2[17];
    v27 = a2[16];
    v28 = v7;
    v8 = a2[18];
    v29 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 144))(v30);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(&v20, v33, v30);
    v9 = v20;
    v10 = v21;
    if (v20 != v21)
    {
      v12 = *v3;
      v11 = v3[1];
      do
      {
        if (round(v12) < round(v11))
        {
          sample_time = AMCP::DAL::DAL_Time::get_sample_time((v9 + 2));
          v14 = AMCP::DAL::DAL_Time::get_sample_time((v9 + 7));
          v12 = *v3;
          v11 = v3[1];
          v15 = round(*v3);
          v16 = round(v11);
          if (v15 < v16)
          {
            v17 = round(sample_time);
            v18 = round(v14);
            if (v17 < v18)
            {
              if (v17 < v15)
              {
                v12 = sample_time;
              }

              if (v16 < v18)
              {
                v11 = v14;
              }
            }
          }

          else
          {
            v12 = sample_time;
            v11 = v14;
          }
        }

        else
        {
          v12 = AMCP::DAL::DAL_Time::get_sample_time((v9 + 2));
          v11 = AMCP::DAL::DAL_Time::get_sample_time((v9 + 7));
        }

        *v3 = v12;
        v3[1] = v11;
        v9 += 12;
      }

      while (v9 != v10);
    }

    v34 = &v20;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v34);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  return 1;
}

void sub_1DE30FE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Connection::calculate_write_range(void)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::calculate_write_range(void)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5966648;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(unsigned int,unsigned long,caulk::time_range<AMCP::DAL::Sample_Time,AMCP::DAL::Sample_Time> const&)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(unsigned int,unsigned long,caulk::time_range<AMCP::DAL::Sample_Time,AMCP::DAL::Sample_Time> const&)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Connection31set_required_samples_for_streamEjmRKN5caulk10time_rangeINS_3DAL11Sample_TimeES5_EEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(unsigned int,unsigned long,caulk::time_range<AMCP::DAL::Sample_Time,AMCP::DAL::Sample_Time> const&)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(unsigned int,unsigned long,caulk::time_range<AMCP::DAL::Sample_Time,AMCP::DAL::Sample_Time> const&)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  v3 = *(a1 + 1);
  if (v2 == v3)
  {
    v4 = *(a1 + 2);
    v5 = *v4;
    if (*v4 != floor(*v4))
    {
      v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v13 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
        v32 = "Device_Connection.cpp";
        v33 = 1024;
        v34 = 137;
        v35 = 2080;
        v36 = "not (required_samples.start().get_double() == required_samples.start().floor().get_double())";
        _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("We should have no fractional samples", &v22);
      std::logic_error::logic_error(&v23, &v22);
      v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v24, &v23);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = -1;
      v24.__vftable = &unk_1F5991430;
      v25 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v24);
      v37 = "auto AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(Object_ID, size_t, const DAL::Sample_Time_Range &)::(anonymous class)::operator()(Stream_Connection &) const";
      v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
      v39 = 137;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
    }

    v6 = v4[1];
    if (v6 != floor(v6))
    {
      v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v17 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
        v32 = "Device_Connection.cpp";
        v33 = 1024;
        v34 = 138;
        v35 = 2080;
        v36 = "not (required_samples.end().get_double() == required_samples.end().floor().get_double())";
        _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("We should have no fractional samples", &v22);
      std::logic_error::logic_error(&v23, &v22);
      v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v24, &v23);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = -1;
      v24.__vftable = &unk_1F5991430;
      v25 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v24);
      v37 = "auto AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(Object_ID, size_t, const DAL::Sample_Time_Range &)::(anonymous class)::operator()(Stream_Connection &) const";
      v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
      v39 = 138;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
    }

    v7 = round(*(a2 + 56));
    v8 = round(*(a2 + 64));
    if (v7 < v8)
    {
      v9 = round(v5);
      v10 = round(v6);
      if (v9 >= v7)
      {
        v5 = *(a2 + 56);
      }

      if (v8 >= v10)
      {
        v6 = *(a2 + 64);
      }

      if (v9 >= v10)
      {
        v6 = *(a2 + 64);
        v5 = *(a2 + 56);
      }

      *(a2 + 56) = v5;
      *(a2 + 64) = v6;
    }

    else
    {
      *(a2 + 56) = *v4;
    }
  }

  result = v2 != v3;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE310494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a26);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(a10);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(unsigned int,unsigned long,caulk::time_range<AMCP::DAL::Sample_Time,AMCP::DAL::Sample_Time> const&)::$_0,std::allocator<AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(unsigned int,unsigned long,caulk::time_range<AMCP::DAL::Sample_Time,AMCP::DAL::Sample_Time> const&)::$_0>,BOOL ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59665C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AMCP::IO_Core::Device_Connection::get_timebase(AMCP::IO_Core::Device_Connection *this, uint64_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3)) == 0 || (v5 = *a2) == 0)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v24 = "Device_Connection.cpp";
      v25 = 1024;
      v26 = 384;
      v27 = 2080;
      v28 = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v14);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v29 = "Timebase_Ref AMCP::IO_Core::Device_Connection::get_timebase() const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
    v31 = 384;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  v7 = *(v5 + 112);
  v6 = *(v5 + 120);
  *this = v7;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE310894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a26);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void ADS::ObjectManager::~ObjectManager(ADS::ObjectManager *this)
{
  *this = &unk_1F59666C8;
  v1 = (this + 16);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::~__hash_table(this + 40);
  v2 = v1;
  std::vector<ADS::ObjectManager::ObjectInfo>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59666C8;
  v1 = (this + 16);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::~__hash_table(this + 40);
  v2 = v1;
  std::vector<ADS::ObjectManager::ObjectInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned int>>,0>((v2 + 2));
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

void std::vector<ADS::ObjectManager::ObjectInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned int>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void ADS::ObjectManager::ObjectManager(ADS::ObjectManager *this)
{
  *this = &unk_1F59666C8;
  *(this + 2) = 32;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 18) = 1065353216;
  v1 = this + 16;
  operator new();
}

void sub_1DE310C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::~__hash_table(v9 + 40);
  std::vector<ADS::ObjectManager::ObjectInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ADS::ObjectManager::ObjectInfo>,ADS::ObjectManager::ObjectInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    do
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = v7;
        operator delete(v7);
      }

      v5 += 40;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<ADS::ObjectManager::ObjectInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1DE310EAC(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1E12C1730](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t ADS::ObjectManager::GetNextObjectID(ADS::ObjectManager *this)
{
  pthread_once(&ADS::ObjectManager::sStaticInitializer, ADS::ObjectManager::StaticInitializer);
  v1 = ADS::ObjectManager::sMutex;
  if (ADS::ObjectManager::sMutex)
  {
    v2 = (*(*ADS::ObjectManager::sMutex + 16))(ADS::ObjectManager::sMutex);
    v3 = *(ADS::ObjectManager::sInstance + 8);
    *(ADS::ObjectManager::sInstance + 8) = v3 + 1;
    if (v2)
    {
      (*(*v1 + 24))(v1);
    }
  }

  else
  {
    v3 = *(ADS::ObjectManager::sInstance + 8);
    *(ADS::ObjectManager::sInstance + 8) = v3 + 1;
  }

  return v3;
}

void ADS::ObjectManager::MapObject(ADS::ObjectManager *this, std::string::size_type a2, ADS::BaseObject *a3)
{
  v4 = this;
  v54 = *MEMORY[0x1E69E9840];
  pthread_once(&ADS::ObjectManager::sStaticInitializer, ADS::ObjectManager::StaticInitializer);
  if (!v4 || !a2)
  {
    goto LABEL_73;
  }

  v5 = ADS::ObjectManager::sMutex;
  if (ADS::ObjectManager::sMutex)
  {
    v6 = (*(*ADS::ObjectManager::sMutex + 16))(ADS::ObjectManager::sMutex);
  }

  else
  {
    v6 = 0;
  }

  v7 = ADS::ObjectManager::sInstance;
  v52 = v4;
  v9 = (ADS::ObjectManager::sInstance + 16);
  v8 = *(ADS::ObjectManager::sInstance + 16);
  v10 = *(ADS::ObjectManager::sInstance + 24);
  if (v8 != v10)
  {
    v11 = *(ADS::ObjectManager::sInstance + 16);
    while (1)
    {
      v12 = v11[2];
      v13 = v11[3];
      if (v12 != v13)
      {
        while (*v12 != v4)
        {
          if (++v12 == v13)
          {
            goto LABEL_13;
          }
        }
      }

      if (v12 != v13)
      {
        break;
      }

LABEL_13:
      v11 += 5;
      if (v11 == v10)
      {
        goto LABEL_19;
      }
    }

    if (v11 != v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v11;
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136316162;
        *(buf[0].__r_.__value_.__r.__words + 4) = "ADS_ObjectManager.cpp";
        WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 203;
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v4;
        LOWORD(buf[1].__r_.__value_.__l.__data_) = 2048;
        *(buf[1].__r_.__value_.__r.__words + 2) = a2;
        WORD1(buf[1].__r_.__value_.__r.__words[1]) = 2048;
        *(&buf[1].__r_.__value_.__r.__words[1] + 4) = v14;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::ObjectManager::_MapObject: %d cannot be mapped to object %p because it is already mapped to %p", buf, 0x2Cu);
      }

      goto LABEL_71;
    }

LABEL_19:
    while (*v8 != a2)
    {
      v8 += 5;
      if (v8 == v10)
      {
        v15 = *(a2 + 12);
        goto LABEL_30;
      }
    }
  }

  v15 = *(a2 + 12);
  if (v8 != v10)
  {
    std::vector<unsigned int>::push_back[abi:ne200100]((v8 + 2), &v52);
    if (v15 == 1633969526 || v15 == 1633905771)
    {
      OS::CF::UntypedObject::UntypedObject(&v49, *(a2 + 160));
      *&v49 = &unk_1F5991188;
      OS::CF::String::AsStdString(buf, &v49);
      v17 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(v7 + 5, buf);
      std::vector<unsigned int>::push_back[abi:ne200100]((v17 + 5), &v52);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      v18 = &v49;
      goto LABEL_70;
    }

    goto LABEL_71;
  }

LABEL_30:
  LODWORD(buf[0].__r_.__value_.__l.__data_) = v4;
  *&v49 = a2;
  *(&v49 + 1) = 1;
  std::vector<unsigned int>::vector[abi:ne200100](__p, 1uLL);
  v19 = v7[3];
  v20 = v7[4];
  if (v19 >= v20)
  {
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *v9) >> 3);
    v22 = v21 + 1;
    if (v21 + 1 > 0x666666666666666)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v23 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - *v9) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x333333333333333)
    {
      v24 = 0x666666666666666;
    }

    else
    {
      v24 = v22;
    }

    buf[1].__r_.__value_.__l.__size_ = (v7 + 2);
    if (v24)
    {
      if (v24 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v25 = 40 * v21;
    buf[0].__r_.__value_.__r.__words[0] = 0;
    buf[0].__r_.__value_.__l.__size_ = v25;
    v26 = *__p;
    *v25 = v49;
    *(v25 + 16) = v26;
    *(v25 + 32) = v51;
    __p[1] = 0;
    v51 = 0;
    __p[0] = 0;
    buf[0].__r_.__value_.__r.__words[2] = 40 * v21 + 40;
    buf[1].__r_.__value_.__r.__words[0] = 0;
    v27 = v7[2];
    v28 = v7[3];
    v29 = 40 * v21 + v27 - v28;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ADS::ObjectManager::ObjectInfo>,ADS::ObjectManager::ObjectInfo*>((v7 + 2), v27, v28, v29);
    v30 = v7[2];
    v7[2] = v29;
    v31 = v7[4];
    v43 = buf[0].__r_.__value_.__r.__words[2];
    *(v7 + 3) = *&buf[0].__r_.__value_.__r.__words[2];
    buf[0].__r_.__value_.__r.__words[2] = v30;
    buf[1].__r_.__value_.__r.__words[0] = v31;
    buf[0].__r_.__value_.__r.__words[0] = v30;
    buf[0].__r_.__value_.__l.__size_ = v30;
    std::__split_buffer<ADS::ObjectManager::ObjectInfo>::~__split_buffer(buf);
    v32 = __p[0];
    v7[3] = v43;
    if (v32)
    {
      __p[1] = v32;
      operator delete(v32);
    }
  }

  else
  {
    *v19 = v49;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 0;
    *(v19 + 16) = *__p;
    *(v19 + 32) = v51;
    __p[1] = 0;
    v51 = 0;
    __p[0] = 0;
    v7[3] = v19 + 40;
  }

  if (v15 != 1633969526 && v15 != 1633905771)
  {
    goto LABEL_71;
  }

  OS::CF::UntypedObject::UntypedObject(v48, *(a2 + 160));
  v48[0] = &unk_1F5991188;
  OS::CF::String::AsStdString(&v47, v48);
  v45 = v4;
  memset(&v46, 0, sizeof(v46));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v46, &v45, &v46, 1uLL);
  buf[0] = v47;
  v44 = v46.__r_.__value_.__r.__words[0];
  buf[1] = v46;
  memset(&v46, 0, sizeof(v46));
  memset(&v47, 0, sizeof(v47));
  v33 = std::__string_hash<char>::operator()[abi:ne200100](buf);
  v34 = v33;
  v35 = v7[6];
  if (!*&v35)
  {
    goto LABEL_62;
  }

  v36 = vcnt_s8(v35);
  v36.i16[0] = vaddlv_u8(v36);
  v37 = v36.u32[0];
  if (v36.u32[0] > 1uLL)
  {
    v38 = v33;
    if (v33 >= *&v35)
    {
      v38 = v33 % *&v35;
    }
  }

  else
  {
    v38 = (*&v35 - 1) & v33;
  }

  v39 = *(v7[5] + 8 * v38);
  if (!v39 || (v40 = *v39) == 0)
  {
LABEL_62:
    operator new();
  }

  while (1)
  {
    v41 = v40[1];
    if (v41 == v34)
    {
      break;
    }

    if (v37 > 1)
    {
      if (v41 >= *&v35)
      {
        v41 %= *&v35;
      }
    }

    else
    {
      v41 &= *&v35 - 1;
    }

    if (v41 != v38)
    {
      goto LABEL_62;
    }

LABEL_61:
    v40 = *v40;
    if (!v40)
    {
      goto LABEL_62;
    }
  }

  if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v40 + 2, buf))
  {
    goto LABEL_61;
  }

  if (v44)
  {
    operator delete(v44);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v46.__r_.__value_.__r.__words[0])
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v18 = v48;
LABEL_70:
  OS::CF::UntypedObject::~UntypedObject(v18);
LABEL_71:
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

LABEL_73:
  v42 = *MEMORY[0x1E69E9840];
}

void sub_1DE311914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, void *a30, uint64_t a31)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](&a28);
  std::pair<std::string const,std::vector<unsigned int>>::~pair(v31 - 160);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  OS::CF::UntypedObject::~UntypedObject(&a26);
  CADeprecated::CAMutex::Locker::~Locker(&a14);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t std::pair<std::string const,std::vector<unsigned int>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned int>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ADS::ObjectManager::CopyObjectByObjectID(ADS::ObjectManager *this)
{
  v1 = this;
  pthread_once(&ADS::ObjectManager::sStaticInitializer, ADS::ObjectManager::StaticInitializer);
  if (!v1)
  {
    return 0;
  }

  v2 = ADS::ObjectManager::sMutex;
  if (ADS::ObjectManager::sMutex)
  {
    v3 = (*(*ADS::ObjectManager::sMutex + 16))(ADS::ObjectManager::sMutex);
    v4 = ADS::ObjectManager::_CopyObjectByObjectID(*(ADS::ObjectManager::sInstance + 16), *(ADS::ObjectManager::sInstance + 24), v1);
    if (v3)
    {
      (*(*v2 + 24))(v2);
    }

    return v4;
  }

  v6 = *(ADS::ObjectManager::sInstance + 16);
  v7 = *(ADS::ObjectManager::sInstance + 24);

  return ADS::ObjectManager::_CopyObjectByObjectID(v6, v7, v1);
}

uint64_t ADS::ObjectManager::_CopyObjectByObjectID(ADS::ObjectManager *this, ADS::ObjectManager *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    while (1)
    {
      v3 = *(this + 2);
      v4 = *(this + 3);
      if (v3 != v4)
      {
        while (*v3 != a3)
        {
          if (++v3 == v4)
          {
            goto LABEL_7;
          }
        }
      }

      if (v3 != v4)
      {
        break;
      }

LABEL_7:
      this = (this + 40);
      if (this == a2)
      {
        goto LABEL_14;
      }
    }
  }

  if (this == a2)
  {
    goto LABEL_14;
  }

  v5 = *(this + 1);
  if (v5 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "ADS_ObjectManager.cpp";
      v10 = 1024;
      v11 = 281;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::ObjectManager::_CopyObjectByObjectID: not copying because the reference count is at maximum", &v8, 0x12u);
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  *(this + 1) = v5 + 1;
  result = *this;
LABEL_15:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void ADS::ObjectManager::ReleaseObject(ADS::ObjectManager *this, ADS::BaseObject *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  pthread_once(&ADS::ObjectManager::sStaticInitializer, ADS::ObjectManager::StaticInitializer);
  if (this)
  {
    v3 = ADS::ObjectManager::sMutex;
    if (ADS::ObjectManager::sMutex)
    {
      v4 = (*(*ADS::ObjectManager::sMutex + 16))(ADS::ObjectManager::sMutex);
    }

    else
    {
      v4 = 0;
    }

    v5 = ADS::ObjectManager::sInstance;
    v7 = *(ADS::ObjectManager::sInstance + 16);
    v6 = *(ADS::ObjectManager::sInstance + 24);
    if (v7 != v6)
    {
      while (*v7 != this)
      {
        v7 += 40;
        if (v7 == v6)
        {
          goto LABEL_59;
        }
      }
    }

    if (v7 != v6)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = v8 - 1;
        *(v7 + 8) = v9;
        if (!v9)
        {
          v10 = *(this + 3);
          if (v10 == 1633969526 || v10 == 1633905771)
          {
            v11 = v5 + 5;
            OS::CF::UntypedObject::UntypedObject(v27, *(this + 20));
            v27[0] = &unk_1F5991188;
            OS::CF::String::AsStdString(&__p, v27);
            v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(v5 + 5, &__p);
            if (v12)
            {
              v13 = v5[6];
              v14 = v12[1];
              v15 = vcnt_s8(v13);
              v15.i16[0] = vaddlv_u8(v15);
              if (v15.u32[0] > 1uLL)
              {
                if (v14 >= *&v13)
                {
                  v14 %= *&v13;
                }
              }

              else
              {
                v14 &= *&v13 - 1;
              }

              v16 = *(*v11 + 8 * v14);
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16 != v12);
              if (v17 == v5 + 7)
              {
                goto LABEL_34;
              }

              v18 = v17[1];
              if (v15.u32[0] > 1uLL)
              {
                if (v18 >= *&v13)
                {
                  v18 %= *&v13;
                }
              }

              else
              {
                v18 &= *&v13 - 1;
              }

              if (v18 != v14)
              {
LABEL_34:
                if (!*v12)
                {
                  goto LABEL_35;
                }

                v19 = *(*v12 + 8);
                if (v15.u32[0] > 1uLL)
                {
                  if (v19 >= *&v13)
                  {
                    v19 %= *&v13;
                  }
                }

                else
                {
                  v19 &= *&v13 - 1;
                }

                if (v19 != v14)
                {
LABEL_35:
                  *(*v11 + 8 * v14) = 0;
                }
              }

              v20 = *v12;
              if (*v12)
              {
                v21 = *(v20 + 8);
                if (v15.u32[0] > 1uLL)
                {
                  if (v21 >= *&v13)
                  {
                    v21 %= *&v13;
                  }
                }

                else
                {
                  v21 &= *&v13 - 1;
                }

                if (v21 != v14)
                {
                  *(*v11 + 8 * v21) = v17;
                  v20 = *v12;
                }
              }

              *v17 = v20;
              *v12 = 0;
              --v5[8];
              *buf = v12;
              *&buf[8] = v5 + 5;
              buf[16] = 1;
              *&buf[17] = 0;
              *&buf[20] = 0;
              std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            OS::CF::UntypedObject::~UntypedObject(v27);
            v6 = v5[3];
          }

          if (v7 + 40 == v6)
          {
            v23 = v7;
          }

          else
          {
            do
            {
              *v7 = *(v7 + 40);
              v22 = *(v7 + 16);
              if (v22)
              {
                *(v7 + 24) = v22;
                operator delete(v22);
                *(v7 + 16) = 0;
                *(v7 + 24) = 0;
                *(v7 + 32) = 0;
              }

              *(v7 + 16) = *(v7 + 56);
              *(v7 + 32) = *(v7 + 72);
              *(v7 + 64) = 0;
              *(v7 + 72) = 0;
              *(v7 + 56) = 0;
              v23 = v7 + 40;
              v24 = v7 + 80;
              v7 += 40;
            }

            while (v24 != v6);
            v6 = v5[3];
          }

          while (v6 != v23)
          {
            v25 = *(v6 - 24);
            if (v25)
            {
              *(v6 - 16) = v25;
              operator delete(v25);
            }

            v6 -= 40;
          }

          v5[3] = v23;
          pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZN3ADS13ObjectManager14_ReleaseObjectEPNS_10BaseObjectE_block_invoke;
          v30 = &__block_descriptor_tmp_4_1833;
          v31 = v5;
          v32 = this;
          if (ADS::Simulator::sServerDefaultPriorityQueue)
          {
            AMCP::Utility::Dispatch_Queue::async(ADS::Simulator::sServerDefaultPriorityQueue, buf);
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_ObjectManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 368;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::ObjectManager::_ReleaseObject: not releasing because the reference count is already at 0", buf, 0x12u);
      }
    }

LABEL_59:
    if (v4)
    {
      (*(*v3 + 24))(v3);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1DE3121E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CADeprecated::CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ADS13ObjectManager14_ReleaseObjectEPNS_10BaseObjectE_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void AMCP::Graph::Manifest_Overload::~Manifest_Overload(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12C1730);
}

void std::vector<AMCP::Graph::Manifest_Task::Terminal_Connections>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v4 + 40 * a2;
      while (v3 != v11)
      {
        v3 -= 40;
        std::__destroy_at[abi:ne200100]<AMCP::Graph::Manifest_Task::Terminal_Connections,0>(v3);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 3) < v6)
    {
      if (a2 <= 0x666666666666666)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x333333333333333)
        {
          v10 = 0x666666666666666;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 40 * ((40 * v6 - 40) / 0x28) + 40);
    a1[1] = v3 + 40 * ((40 * v6 - 40) / 0x28) + 40;
  }
}

void std::vector<AMCP::Graph::Manifest_Task::Terminal_Connections>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 40;
        std::__destroy_at[abi:ne200100]<AMCP::Graph::Manifest_Task::Terminal_Connections,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<AMCP::Graph::Manifest_Task::Terminal_Connections,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t AMCP::Graph::Manifest_Task::Manifest_Task(uint64_t a1, void *a2, int a3, unint64_t a4, unint64_t a5, __int128 *a6, double a7)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v9 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *a6;
  *(a1 + 80) = *(a6 + 2);
  *(a1 + 64) = v10;
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  *a6 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a7;
  *(a1 + 104) = 0;
  *(a1 + 112) = a3;
  std::vector<AMCP::Graph::Manifest_Task::Terminal_Connections>::resize(a1, a4);
  std::vector<AMCP::Graph::Manifest_Task::Terminal_Connections>::resize((a1 + 24), a5);
  return a1;
}

void sub_1DE312638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 104);
  *(v10 + 104) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (*(v10 + 87) < 0)
  {
    operator delete(*(v10 + 64));
  }

  v13 = *(v10 + 56);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = (v10 + 24);
  v15 = -48;
  do
  {
    a10 = v14;
    std::vector<AMCP::Graph::Manifest_Task::Terminal_Connections>::__destroy_vector::operator()[abi:ne200100](&a10);
    v14 -= 3;
    v15 += 24;
  }

  while (v15);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Manifest_Task::get_nth_connection_list(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unsigned int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 24 * a3);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 3) <= a2)
  {
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 3);
      *buf = 136316162;
      v23 = "Manifest_Task.cpp";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "not (index < m_connection_group[c].size())";
      v28 = 2048;
      *v29 = a2;
      *&v29[8] = 2048;
      v30 = v11;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Index out of bounds - index: %zu  size: %zu", buf, 0x30u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Index out of bounds - index: %zu  size: %zu", &v13, a2, 0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 3));
    std::logic_error::logic_error(&v14, &v13);
    v14.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v15, &v14);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
    v15.__vftable = &unk_1F5991430;
    v16 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v15);
    *&v29[2] = "const std::vector<Manifest_Task::Connection> &AMCP::Graph::Manifest_Task::get_nth_connection_list(size_t, Connection_Direction) const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
    v31 = 71;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
  }

  v5 = *MEMORY[0x1E69E9840];
  return *v4 + 40 * a2;
}

void sub_1DE3129A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v30 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a29);
  MEMORY[0x1E12C0F00](&a27);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a13)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 113));
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Task::add_connection(char *a1, int a2, unint64_t a3, void *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!*a4)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v30 = *v29;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v39 = a1 + 64;
      if (a1[87] < 0)
      {
        v39 = *v39;
      }

      *buf = 136315906;
      *&buf[4] = "Manifest_Task.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 79;
      *&buf[18] = 2080;
      *&buf[20] = "not (connection)";
      *&buf[28] = 2080;
      *&buf[30] = v39;
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s null connection passed to add_connection in %s", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    v40 = a1 + 64;
    if (a1[87] < 0)
    {
      v40 = *v40;
    }

    caulk::make_string("null connection passed to add_connection in %s", &v46, v40);
    std::logic_error::logic_error(&v42, &v46);
    v42.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v47, &v42);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = -1;
    v47.__vftable = &unk_1F5991430;
    v48 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v47);
    *&buf[32] = "void AMCP::Graph::Manifest_Task::add_connection(Connection_Direction, size_t, Manifest_Task::Connection)";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
    v55 = 79;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v45);
  }

  v6 = &a1[24 * a2];
  if (0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 1) - *v6) >> 3) <= a3)
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v33;
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      v34 = *v33;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v41 = 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 1) - *v6) >> 3);
      *buf = 136316162;
      *&buf[4] = "Manifest_Task.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 80;
      *&buf[18] = 2080;
      *&buf[20] = "not (terminal_index < m_connection_group[direction].size())";
      *&buf[28] = 2048;
      *&buf[30] = a3;
      *&buf[38] = 2048;
      v54 = v41;
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Index out of bounds - index: %zu  size: %zu", buf, 0x30u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Index out of bounds - index: %zu  size: %zu", &v46, a3, 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 1) - *v6) >> 3));
    std::logic_error::logic_error(&v42, &v46);
    v42.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v47, &v42);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = -1;
    v47.__vftable = &unk_1F5991430;
    v48 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v47);
    *&buf[32] = "void AMCP::Graph::Manifest_Task::add_connection(Connection_Direction, size_t, Manifest_Task::Connection)";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
    v55 = 80;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v45);
  }

  v8 = (*v6 + 40 * a3);
  memset(&v46, 0, sizeof(v46));
  std::vector<std::shared_ptr<AMCP::Graph::Manifest_Buffer>>::__init_with_size[abi:ne200100]<std::shared_ptr<AMCP::Graph::Manifest_Buffer>*,std::shared_ptr<AMCP::Graph::Manifest_Buffer>*>(&v46, *v8, v8[1], (v8[1] - *v8) >> 4);
  v10 = v46.__r_.__value_.__r.__words[0];
  if (v46.__r_.__value_.__r.__words[0] != v46.__r_.__value_.__l.__size_)
  {
    while (*a4 != *v10)
    {
      v10 += 2;
      if (v10 == v46.__r_.__value_.__l.__size_)
      {
        goto LABEL_8;
      }
    }
  }

  if (v10 != v46.__r_.__value_.__l.__size_)
  {
    v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v35 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v38 = *v37;
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    else
    {
      v38 = *v37;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest_Task.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 87;
      *&buf[18] = 2080;
      *&buf[20] = "not (iter == connection_list.end())";
      _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Duplicate connection", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Duplicate connection", &v45);
    std::logic_error::logic_error(&v43, &v45);
    v43.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v47, &v43);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = -1;
    v47.__vftable = &unk_1F5991430;
    v48 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v47);
    *&buf[32] = "void AMCP::Graph::Manifest_Task::add_connection(Connection_Direction, size_t, Manifest_Task::Connection)";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
    v55 = 87;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

LABEL_8:
  v11 = *v6 + 40 * a3;
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  if (v12 >= v13)
  {
    v16 = (v12 - *v11) >> 4;
    v17 = v16 + 1;
    if ((v16 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v18 = v13 - *v11;
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

    *&buf[32] = v11;
    if (v19)
    {
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v19);
    }

    v20 = 16 * v16;
    v21 = *a4;
    *(16 * v16) = *a4;
    if (*(&v21 + 1))
    {
      atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v15 = (v20 + 16);
    v22 = *(v11 + 8) - *v11;
    v23 = v20 - v22;
    memcpy((v20 - v22), *v11, v22);
    v24 = *v11;
    *v11 = v23;
    *&buf[8] = v24;
    *(v11 + 8) = v15;
    *&buf[16] = v24;
    v25 = *(v11 + 16);
    *(v11 + 16) = 0;
    *&buf[24] = v25;
    *buf = v24;
    std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(buf);
  }

  else
  {
    *v12 = *a4;
    v14 = a4[1];
    v12[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v12 + 2;
  }

  *(v11 + 8) = v15;
  *buf = &v46;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1DE3132DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void **a37)
{
  a37 = &a31;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<AMCP::Graph::Manifest_Buffer>>::__init_with_size[abi:ne200100]<std::shared_ptr<AMCP::Graph::Manifest_Buffer>*,std::shared_ptr<AMCP::Graph::Manifest_Buffer>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void *AMCP::DAL::Fixed_Buffer::Fixed_Buffer(void *a1, uint64_t a2, __int128 *a3, double a4)
{
  *a1 = &unk_1F598F618;
  v7 = *a3;
  v8 = *(a3 + 1);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = 2;
  v17 = 0;
  v18 = 0;
  v19 = v7;
  v9 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v12 = 2;
  v13 = 0;
  v14 = 0;
  v15 = v9;
  v10 = *(&v9 + 1);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range((a1 + 1), &v16, &v12);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  AMCP::DAL::Container::Container(a1 + 11, a2, a4);
  return a1;
}

void sub_1DE3136D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Fixed_Buffer *,std::shared_ptr<AMCP::DAL::DAL_Buffer>::__shared_ptr_default_delete<AMCP::DAL::DAL_Buffer,AMCP::DAL::Fixed_Buffer>,std::allocator<AMCP::DAL::Fixed_Buffer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL10DAL_BufferEE27__shared_ptr_default_deleteIS3_NS2_12Fixed_BufferEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Fixed_Buffer *,std::shared_ptr<AMCP::DAL::DAL_Buffer>::__shared_ptr_default_delete<AMCP::DAL::DAL_Buffer,AMCP::DAL::Fixed_Buffer>,std::allocator<AMCP::DAL::Fixed_Buffer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::Fixed_Buffer *,std::shared_ptr<AMCP::DAL::DAL_Buffer>::__shared_ptr_default_delete<AMCP::DAL::DAL_Buffer,AMCP::DAL::Fixed_Buffer>,std::allocator<AMCP::DAL::Fixed_Buffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::function<void ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void AMCP::Graph::Manifest_Task::set_up_connections(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, std::__shared_weak_count *a4)
{
  v275 = *MEMORY[0x1E69E9840];
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v226 = a4;
  if (0x2E8BA2E8BA2E8BA3 * ((a3->__shared_weak_owners_ - a3->__vftable) >> 3) < v7)
  {
    if (v7 > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = a3->__shared_owners_ - a3->__vftable;
    v240 = a3;
    v9 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Readable_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>>(v7);
    v10 = v9 + v8;
    v12 = v9 + 88 * v11;
    shared_owners = a3->__shared_owners_;
    v14 = &v10[a3->__vftable - shared_owners];
    std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>,AMCP::DAL::Readable_Range*>(a3->__vftable, shared_owners, v14);
    v15 = a3->__vftable;
    a3->__vftable = v14;
    a3->__shared_owners_ = v10;
    shared_weak_owners = a3->__shared_weak_owners_;
    a3->__shared_weak_owners_ = v12;
    *&v238[16] = v15;
    v239 = shared_weak_owners;
    *v238 = v15;
    *&v238[8] = v15;
    std::__split_buffer<AMCP::DAL::Readable_Range,caulk::rt_allocator<AMCP::DAL::Readable_Range> &>::~__split_buffer(v238);
    a4 = v226;
  }

  v17 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - *(a1 + 24)) >> 3);
  if (0x2E8BA2E8BA2E8BA3 * ((a4->__shared_weak_owners_ - a4->__vftable) >> 3) < v17)
  {
    if (v17 > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v18 = a4->__shared_owners_ - a4->__vftable;
    v240 = a4;
    v19 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Readable_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>>(v17);
    v20 = v19 + v18;
    *v238 = v19;
    *&v238[8] = v20;
    v22 = v19 + 88 * v21;
    *&v238[16] = v20;
    v239 = v22;
    v23 = v226->__shared_owners_;
    v24 = &v20[v226->__vftable - v23];
    std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>,AMCP::DAL::Readable_Range*>(v226->__vftable, v23, v24);
    v25 = v226->__vftable;
    v226->__vftable = v24;
    v226->__shared_owners_ = v20;
    v26 = v226->__shared_weak_owners_;
    v226->__shared_weak_owners_ = v22;
    *&v238[16] = v25;
    v239 = v26;
    *v238 = v25;
    *&v238[8] = v25;
    std::__split_buffer<AMCP::DAL::Readable_Range,caulk::rt_allocator<AMCP::DAL::Readable_Range> &>::~__split_buffer(v238);
  }

  v27 = *a1;
  v224 = *(a1 + 8);
  if (*a1 != v224)
  {
    v223 = a3;
    do
    {
      *&buf[8] = 0;
      *buf = 0;
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v230, buf, 0.0, 0.0);
      AMCP::DAL::Readable_Range::Readable_Range(v238, &v230, 0);
      if (v236)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v236);
      }

      if (v232)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v232);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      v28 = *v27;
      v29 = v27[1];
      v227 = v27;
      while (v28 != v29)
      {
        v31 = *(a2 + 24);
        v30 = *(a2 + 32);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        if (!v31)
        {
          v162 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v162 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v30);
          }

          v164 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v163 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v163)
          {
            atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
            v165 = *v164;
            std::__shared_weak_count::__release_shared[abi:ne200100](v163);
          }

          else
          {
            v165 = *v164;
          }

          if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Task.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 347;
            *&buf[18] = 2080;
            *&buf[20] = "not (execution_context.m_time_interval.get_clock() != nullptr)";
            _os_log_error_impl(&dword_1DE1F9000, v165, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad time interval", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v260);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Bad time interval", &v256);
          std::logic_error::logic_error(&v259, &v256);
          v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(v272, &v259);
          *&v272[24] = 0;
          *&v272[32] = 0;
          v273 = 0;
          v274 = -1;
          *v272 = &unk_1F5991430;
          *&v272[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v272);
          *&buf[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_read_times(const Manifest_Execution_Context &, const Connection &)";
          *&v268 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
          DWORD2(v268) = 347;
          std::vector<void *>::vector[abi:ne200100](&v253);
        }

        if ((*a2 & 2) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(a2);
        }

        if (round(*(a2 + 8)) == 0.0)
        {
          v166 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v166 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v30);
          }

          v168 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v167 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v167)
          {
            atomic_fetch_add_explicit(&v167->__shared_owners_, 1uLL, memory_order_relaxed);
            v169 = *v168;
            std::__shared_weak_count::__release_shared[abi:ne200100](v167);
          }

          else
          {
            v169 = *v168;
          }

          if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
          {
            v218 = (a1 + 64);
            if (*(a1 + 87) < 0)
            {
              v218 = *v218;
            }

            *buf = 136315906;
            *&buf[4] = "Manifest_Task.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 348;
            *&buf[18] = 2080;
            *&buf[20] = "not (execution_context.m_time_interval.get_sample_delta() != 0_S)";
            *&buf[28] = 2080;
            *&buf[30] = v218;
            _os_log_error_impl(&dword_1DE1F9000, v169, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Zero time interval manifest task %s", buf, 0x26u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v260);
          __cxa_allocate_exception(0x40uLL);
          v219 = (a1 + 64);
          if (*(a1 + 87) < 0)
          {
            v219 = *v219;
          }

          caulk::make_string("Zero time interval manifest task %s", &v256, v219);
          std::logic_error::logic_error(&v259, &v256);
          v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(v272, &v259);
          *&v272[24] = 0;
          *&v272[32] = 0;
          v273 = 0;
          v274 = -1;
          *v272 = &unk_1F5991430;
          *&v272[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v272);
          *&buf[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_read_times(const Manifest_Execution_Context &, const Connection &)";
          *&v268 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
          DWORD2(v268) = 348;
          std::vector<void *>::vector[abi:ne200100](&v253);
        }

        v32 = *v28;
        size = (*v28)[5].__r_.__value_.__l.__size_;
        v33 = (*v28)[5].__r_.__value_.__r.__words[2];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          if (!size)
          {
            goto LABEL_261;
          }

          v32 = *v28;
          if (!*v28)
          {
            v174 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v174 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v33);
            }

            v176 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v175 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v175)
            {
              atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
              v177 = *v176;
              std::__shared_weak_count::__release_shared[abi:ne200100](v175);
            }

            else
            {
              v177 = *v176;
            }

            if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Manifest_Task.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 350;
              *&buf[18] = 2080;
              *&buf[20] = "not (c.get() != nullptr)";
              _os_log_error_impl(&dword_1DE1F9000, v177, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v260);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("", &v256);
            std::logic_error::logic_error(&v259, &v256);
            v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(v272, &v259);
            *&v272[24] = 0;
            *&v272[32] = 0;
            v273 = 0;
            v274 = -1;
            *v272 = &unk_1F5991430;
            *&v272[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v272);
            *&buf[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_read_times(const Manifest_Execution_Context &, const Connection &)";
            *&v268 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
            DWORD2(v268) = 350;
            std::vector<void *>::vector[abi:ne200100](&v253);
          }
        }

        else if (!size)
        {
LABEL_261:
          v170 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v170 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v33);
          }

          v172 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v171 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v171)
          {
            atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
            v173 = *v172;
            std::__shared_weak_count::__release_shared[abi:ne200100](v171);
          }

          else
          {
            v173 = *v172;
          }

          if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Task.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 349;
            *&buf[18] = 2080;
            *&buf[20] = "not (c->get_timebase() != nullptr)";
            _os_log_error_impl(&dword_1DE1F9000, v173, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v260);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v256);
          std::logic_error::logic_error(&v259, &v256);
          v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(v272, &v259);
          *&v272[24] = 0;
          *&v272[32] = 0;
          v273 = 0;
          v274 = -1;
          *v272 = &unk_1F5991430;
          *&v272[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v272);
          *&buf[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_read_times(const Manifest_Execution_Context &, const Connection &)";
          *&v268 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
          DWORD2(v268) = 349;
          std::vector<void *>::vector[abi:ne200100](&v253);
        }

        v36 = v32[12].__r_.__value_.__r.__words[2];
        data = v32[13].__r_.__value_.__l.__data_;
        if (data)
        {
          atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](data);
        }

        if (!v36)
        {
          v178 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v178 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(data);
          }

          v180 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v179 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v179)
          {
            atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
            v181 = *v180;
            std::__shared_weak_count::__release_shared[abi:ne200100](v179);
          }

          else
          {
            v181 = *v180;
          }

          if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Task.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 351;
            *&buf[18] = 2080;
            *&buf[20] = "not (c->get_buffer() != nullptr)";
            _os_log_error_impl(&dword_1DE1F9000, v181, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Buffer has not been allocated in begin_processing", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v260);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Buffer has not been allocated in begin_processing", &v256);
          std::logic_error::logic_error(&v259, &v256);
          v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(v272, &v259);
          *&v272[24] = 0;
          *&v272[32] = 0;
          v273 = 0;
          v274 = -1;
          *v272 = &unk_1F5991430;
          *&v272[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v272);
          *&buf[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_read_times(const Manifest_Execution_Context &, const Connection &)";
          *&v268 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
          DWORD2(v268) = 351;
          std::vector<void *>::vector[abi:ne200100](&v253);
        }

        v37 = *&(*v28)[3].__r_.__value_.__r.__words[2];
        v38 = (*v28)[5].__r_.__value_.__l.__size_;
        v39 = (*v28)[5].__r_.__value_.__r.__words[2];
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = (*(*v38 + 152))(v38);
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v37 != v41)
        {
          v182 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v182 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v40);
          }

          v184 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v183 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v183)
          {
            atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
            v185 = *v184;
            std::__shared_weak_count::__release_shared[abi:ne200100](v183);
          }

          else
          {
            v185 = *v184;
          }

          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Task.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 352;
            *&buf[18] = 2080;
            *&buf[20] = "not (c->get_format().mSampleRate == c->get_timebase()->get_sample_rate())";
            _os_log_error_impl(&dword_1DE1F9000, v185, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Unexpected sample rate for connection", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v260);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Unexpected sample rate for connection", &v256);
          std::logic_error::logic_error(&v259, &v256);
          v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(v272, &v259);
          *&v272[24] = 0;
          *&v272[32] = 0;
          v273 = 0;
          v274 = -1;
          *v272 = &unk_1F5991430;
          *&v272[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v272);
          *&buf[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_read_times(const Manifest_Execution_Context &, const Connection &)";
          *&v268 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
          DWORD2(v268) = 352;
          std::vector<void *>::vector[abi:ne200100](&v253);
        }

        AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator(a1);
        (*(**(a1 + 104) + 24))(*(a1 + 104), a2, v28);
        v43 = *&(*v28)[5].__r_.__value_.__r.__words[1];
        v44 = (*v28)[5].__r_.__value_.__r.__words[2];
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          *buf = 2;
          *&buf[8] = v42;
          *&buf[16] = 0;
          *&buf[24] = v43;
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        else
        {
          *buf = 2;
          *&buf[8] = v42;
          *&buf[16] = 0;
          *&buf[24] = v43;
        }

        v45 = *v28;
        *v272 = *&(*v28)[7].__r_.__value_.__l.__data_;
        v46 = v45[8].__r_.__value_.__l.__data_;
        *&v272[16] = *(&v45[7].__r_.__value_.__l + 2);
        *&v272[24] = v46;
        v47 = v45[8].__r_.__value_.__l.__size_;
        *&v272[32] = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          v48 = (*v28)[8].__r_.__value_.__l.__data_;
          v49 = (*v28)[8].__r_.__value_.__l.__size_;
          v256 = (*v28)[7];
          v257 = v48;
          v258 = v49;
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v49 = 0;
          v256 = v45[7];
          v257 = v46;
          v258 = 0;
        }

        boost::operators_impl::operator+(&v261, &v256, buf);
        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v245, v272, &v261);
        if (v263)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v263);
        }

        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        v50 = *v28;
        *buf = *&(*v28)[8].__r_.__value_.__r.__words[2];
        v51 = v50[9].__r_.__value_.__r.__words[2];
        *&buf[16] = v50[9].__r_.__value_.__l.__size_;
        *&buf[24] = v51;
        v52 = v50[10].__r_.__value_.__l.__data_;
        *&buf[32] = v52;
        if (v52)
        {
          atomic_fetch_add_explicit(v52 + 1, 1uLL, memory_order_relaxed);
        }

        v53 = AMCP::DAL::DAL_Time::operator<(buf, &v249);
        v54 = *&buf[32];
        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (v53)
        {
          v186 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v186 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v54);
          }

          v188 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v187 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v187)
          {
            atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
            v189 = *v188;
            std::__shared_weak_count::__release_shared[abi:ne200100](v187);
          }

          else
          {
            v189 = *v188;
          }

          if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Task.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 363;
            *&buf[18] = 2080;
            *&buf[20] = "not (time_range.end() <= c->get_producer_write_position())";
            _os_log_error_impl(&dword_1DE1F9000, v189, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v260);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v256);
          std::logic_error::logic_error(&v259, &v256);
          v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(v272, &v259);
          *&v272[24] = 0;
          *&v272[32] = 0;
          v273 = 0;
          v274 = -1;
          *v272 = &unk_1F5991430;
          *&v272[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v272);
          *&buf[32] = "DAL::Readable_Range AMCP::Graph::Manifest_Task::calculate_read_times_and_create_range(const Manifest_Execution_Context &, const Connection &)";
          *&v268 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
          DWORD2(v268) = 363;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v253);
        }

        v55 = (*v28)[12].__r_.__value_.__r.__words[2];
        *buf = v245;
        *&buf[16] = v246;
        *&buf[24] = v247;
        *&buf[32] = v248;
        if (v248)
        {
          atomic_fetch_add_explicit(&v248->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v268 = v249;
        v269 = v250;
        v270 = v251;
        v271 = v252;
        if (v252)
        {
          atomic_fetch_add_explicit(&v252->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v55 + 144))(&v230);
        if (v271)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v271);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (v252)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v252);
        }

        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        sample_time = AMCP::DAL::DAL_Time::get_sample_time(v241);
        v57 = AMCP::DAL::DAL_Time::get_sample_time(v238);
        AMCP::DAL::DAL_Time::get_sample_time(v241);
        v58 = AMCP::DAL::DAL_Time::get_sample_time(&v230);
        AMCP::DAL::DAL_Time::get_sample_time(&v233);
        if (round(sample_time) == 0.0 || round(v58) < round(v57))
        {
          v59 = AMCP::DAL::DAL_Time::get_sample_time(&v233);
          if (AMCP::DAL::DAL_Time::get_sample_time(&v233) != floor(v59))
          {
            v214 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v214 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v60);
            }

            v216 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v215 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v215)
            {
              atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
              v217 = *v216;
              std::__shared_weak_count::__release_shared[abi:ne200100](v215);
            }

            else
            {
              v217 = *v216;
            }

            if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Manifest_Task.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 177;
              *&buf[18] = 2080;
              *&buf[20] = "not (connection_range.get_time_range().end().get_sample_time().floor().get() == connection_range.get_time_range().end().get_sample_time().get_double())";
              _os_log_error_impl(&dword_1DE1F9000, v217, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v259);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("", &v261);
            std::logic_error::logic_error(&v253, &v261);
            v253.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
            std::logic_error::logic_error(&v245, &v253);
            v247 = 0;
            v248 = 0;
            *&v249 = 0;
            DWORD2(v249) = -1;
            v245.__vftable = &unk_1F5991430;
            v246 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v245);
            *&buf[32] = "void AMCP::Graph::Manifest_Task::set_up_connections(const Manifest_Execution_Context &, rt_safe_vector<DAL::Readable_Range> &, rt_safe_vector<DAL::Writable_Range> &)";
            *&v268 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
            DWORD2(v268) = 177;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v256);
          }

          *v238 = v230;
          *&v238[8] = *v231;
          v62 = *&v231[16];
          v61 = v232;
          if (v232)
          {
            atomic_fetch_add_explicit(&v232->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v63 = v240;
          v239 = v62;
          v240 = v61;
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          *v241 = v233;
          *&v241[8] = v234;
          v65 = v235;
          v64 = v236;
          if (v236)
          {
            atomic_fetch_add_explicit(&v236->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = v243;
          v242 = v65;
          v243 = v64;
          if (v66)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v66);
          }

          v244 = v237;
        }

        if (v236)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v236);
        }

        if (v232)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v232);
        }

        v28 += 2;
      }

      v67 = v223->__shared_owners_;
      v68 = v223->__shared_weak_owners_;
      if (v67 >= v68)
      {
        v75 = 0x2E8BA2E8BA2E8BA3 * ((v67 - v223->__vftable) >> 3);
        v76 = v75 + 1;
        v71 = v227;
        if ((v75 + 1) > 0x2E8BA2E8BA2E8BALL)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v77 = 0x2E8BA2E8BA2E8BA3 * ((v68 - v223->__vftable) >> 3);
        if (2 * v77 > v76)
        {
          v76 = 2 * v77;
        }

        if (v77 >= 0x1745D1745D1745DLL)
        {
          v78 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v78 = v76;
        }

        v232 = v223;
        if (v78)
        {
          v78 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Readable_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>>(v78);
        }

        else
        {
          v79 = 0;
        }

        v80 = (v78 + 88 * v75);
        v230 = v78;
        *v231 = v80;
        *&v231[16] = v78 + 88 * v79;
        v81 = *v238;
        *(v80 + 2) = *&v238[16];
        *v80 = v81;
        *(v80 + 3) = v239;
        v82 = v240;
        *(v80 + 4) = v240;
        if (v82)
        {
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v83 = *v241;
        *(v80 + 7) = *&v241[16];
        *(v80 + 40) = v83;
        *(v80 + 8) = v242;
        v84 = v243;
        *(v80 + 9) = v243;
        if (v84)
        {
          atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v80 + 10) = v244;
        *&v231[8] = v80 + 88;
        v85 = v223->__shared_owners_;
        v86 = &v80[v223->__vftable - v85];
        std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>,AMCP::DAL::Readable_Range*>(v223->__vftable, v85, v86);
        v87 = v223->__vftable;
        v223->__vftable = v86;
        v88 = v223->__shared_weak_owners_;
        v222 = *&v231[8];
        *&v223->__shared_owners_ = *&v231[8];
        *&v231[8] = v87;
        *&v231[16] = v88;
        v230 = v87;
        *v231 = v87;
        std::__split_buffer<AMCP::DAL::Readable_Range,caulk::rt_allocator<AMCP::DAL::Readable_Range> &>::~__split_buffer(&v230);
        v74 = v222;
      }

      else
      {
        v69 = *v238;
        *(v67 + 16) = *&v238[16];
        *v67 = v69;
        *(v67 + 24) = v239;
        v70 = v240;
        *(v67 + 32) = v240;
        v71 = v227;
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v72 = *v241;
        *(v67 + 56) = *&v241[16];
        *(v67 + 40) = v72;
        *(v67 + 64) = v242;
        v73 = v243;
        *(v67 + 72) = v243;
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v67 + 80) = v244;
        v74 = v67 + 88;
      }

      v223->__shared_owners_ = v74;
      if (v243)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v243);
      }

      if (v240)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v240);
      }

      v27 = v71 + 5;
    }

    while (v27 != v224);
  }

  v89 = *(a1 + 24);
  v225 = *(a1 + 32);
  if (v89 == v225)
  {
    goto LABEL_252;
  }

  do
  {
    *&buf[8] = 0;
    *buf = 0;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v230, buf, 0.0, 0.0);
    AMCP::DAL::Readable_Range::Readable_Range(v238, &v230, 0);
    if (v236)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v236);
    }

    if (v232)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v232);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v91 = *v89;
    v90 = v89[1];
    v228 = v90;
    while (v91 != v90)
    {
      v93 = *(a2 + 24);
      v92 = *(a2 + 32);
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }

      if (!v93)
      {
        v190 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v190 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v92);
        }

        v192 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v191 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v191)
        {
          atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
          v193 = *v192;
          std::__shared_weak_count::__release_shared[abi:ne200100](v191);
        }

        else
        {
          v193 = *v192;
        }

        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          *v272 = 136315650;
          *&v272[4] = "Manifest_Task.cpp";
          *&v272[12] = 1024;
          *&v272[14] = 371;
          *&v272[18] = 2080;
          *&v272[20] = "not (execution_context.m_time_interval.get_clock() != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v193, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad time interval", v272, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v266);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Bad time interval", &v253);
        std::logic_error::logic_error(&v260, &v253);
        v260.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v261, &v260);
        v262 = 0;
        v263 = 0;
        v264 = 0;
        v265 = -1;
        v261.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v261.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v272, &v261);
        *&v272[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_write_times(const Manifest_Execution_Context &, const Connection &)";
        v273 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v274 = 371;
        std::vector<void *>::vector[abi:ne200100](&v259);
      }

      if ((*a2 & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(a2);
      }

      if (round(*(a2 + 8)) == 0.0)
      {
        v194 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v194 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v92);
        }

        v196 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v195 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          v197 = *v196;
          std::__shared_weak_count::__release_shared[abi:ne200100](v195);
        }

        else
        {
          v197 = *v196;
        }

        if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
        {
          v220 = (a1 + 64);
          if (*(a1 + 87) < 0)
          {
            v220 = *v220;
          }

          *v272 = 136315906;
          *&v272[4] = "Manifest_Task.cpp";
          *&v272[12] = 1024;
          *&v272[14] = 372;
          *&v272[18] = 2080;
          *&v272[20] = "not (execution_context.m_time_interval.get_sample_delta() != 0_S)";
          *&v272[28] = 2080;
          *&v272[30] = v220;
          _os_log_error_impl(&dword_1DE1F9000, v197, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Zero time interval manifest task %s", v272, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v266);
        __cxa_allocate_exception(0x40uLL);
        v221 = (a1 + 64);
        if (*(a1 + 87) < 0)
        {
          v221 = *v221;
        }

        caulk::make_string("Zero time interval manifest task %s", &v253, v221);
        std::logic_error::logic_error(&v260, &v253);
        v260.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v261, &v260);
        v262 = 0;
        v263 = 0;
        v264 = 0;
        v265 = -1;
        v261.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v261.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v272, &v261);
        *&v272[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_write_times(const Manifest_Execution_Context &, const Connection &)";
        v273 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v274 = 372;
        std::vector<void *>::vector[abi:ne200100](&v259);
      }

      v94 = *v91;
      v95 = *(*v91 + 232);
      v96 = *(*v91 + 240);
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
        v94 = *v91;
      }

      v98 = *(v94 + 128);
      v97 = *(v94 + 136);
      if (v97)
      {
        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v99 = (v95 | v98) == 0;
      if (!v95 || !v98)
      {
        goto LABEL_144;
      }

      v100 = (*(*v95 + 16))(v95);
      v95 = (*(*v98 + 16))(v98);
      v101 = *(v100 + 23);
      if (v101 >= 0)
      {
        v102 = *(v100 + 23);
      }

      else
      {
        v102 = *(v100 + 8);
      }

      v103 = *(v95 + 23);
      v104 = v103;
      if ((v103 & 0x80u) != 0)
      {
        v103 = *(v95 + 8);
      }

      if (v102 == v103)
      {
        if (v101 >= 0)
        {
          v105 = v100;
        }

        else
        {
          v105 = *v100;
        }

        if (v104 >= 0)
        {
          v106 = v95;
        }

        else
        {
          v106 = *v95;
        }

        v95 = memcmp(v105, v106, v102);
        v99 = v95 == 0;
LABEL_144:
        if (!v97)
        {
          goto LABEL_146;
        }

LABEL_145:
        std::__shared_weak_count::__release_shared[abi:ne200100](v97);
        goto LABEL_146;
      }

      v99 = 0;
      if (v97)
      {
        goto LABEL_145;
      }

LABEL_146:
      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      if (!v99)
      {
        v198 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v198 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v95);
        }

        v200 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v199 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v199)
        {
          atomic_fetch_add_explicit(&v199->__shared_owners_, 1uLL, memory_order_relaxed);
          v201 = *v200;
          std::__shared_weak_count::__release_shared[abi:ne200100](v199);
        }

        else
        {
          v201 = *v200;
        }

        if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
        {
          *v272 = 136315650;
          *&v272[4] = "Manifest_Task.cpp";
          *&v272[12] = 1024;
          *&v272[14] = 373;
          *&v272[18] = 2080;
          *&v272[20] = "not (is_same_timebase(c->get_producer_write_position().get_clock(), c->get_timebase()))";
          _os_log_error_impl(&dword_1DE1F9000, v201, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v272, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v266);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v253);
        std::logic_error::logic_error(&v260, &v253);
        v260.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v261, &v260);
        v262 = 0;
        v263 = 0;
        v264 = 0;
        v265 = -1;
        v261.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v261.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v272, &v261);
        *&v272[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_write_times(const Manifest_Execution_Context &, const Connection &)";
        v273 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v274 = 373;
        std::vector<void *>::vector[abi:ne200100](&v259);
      }

      v107 = *v91;
      v109 = *(*v91 + 128);
      v108 = *(*v91 + 136);
      if (v108)
      {
        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v108);
        if (!v109)
        {
          goto LABEL_293;
        }

        v107 = *v91;
        if (!*v91)
        {
          v206 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v206 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v108);
          }

          v208 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v207 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v207)
          {
            atomic_fetch_add_explicit(&v207->__shared_owners_, 1uLL, memory_order_relaxed);
            v209 = *v208;
            std::__shared_weak_count::__release_shared[abi:ne200100](v207);
          }

          else
          {
            v209 = *v208;
          }

          if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
          {
            *v272 = 136315650;
            *&v272[4] = "Manifest_Task.cpp";
            *&v272[12] = 1024;
            *&v272[14] = 375;
            *&v272[18] = 2080;
            *&v272[20] = "not (c.get() != nullptr)";
            _os_log_error_impl(&dword_1DE1F9000, v209, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v272, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v266);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v253);
          std::logic_error::logic_error(&v260, &v253);
          v260.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v261, &v260);
          v262 = 0;
          v263 = 0;
          v264 = 0;
          v265 = -1;
          v261.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          v261.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v272, &v261);
          *&v272[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_write_times(const Manifest_Execution_Context &, const Connection &)";
          v273 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
          v274 = 375;
          std::vector<void *>::vector[abi:ne200100](&v259);
        }
      }

      else if (!v109)
      {
LABEL_293:
        v202 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v202 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v108);
        }

        v204 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v203 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v203)
        {
          atomic_fetch_add_explicit(&v203->__shared_owners_, 1uLL, memory_order_relaxed);
          v205 = *v204;
          std::__shared_weak_count::__release_shared[abi:ne200100](v203);
        }

        else
        {
          v205 = *v204;
        }

        if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
        {
          *v272 = 136315650;
          *&v272[4] = "Manifest_Task.cpp";
          *&v272[12] = 1024;
          *&v272[14] = 374;
          *&v272[18] = 2080;
          *&v272[20] = "not (c->get_timebase() != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v205, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v272, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v266);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v253);
        std::logic_error::logic_error(&v260, &v253);
        v260.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v261, &v260);
        v262 = 0;
        v263 = 0;
        v264 = 0;
        v265 = -1;
        v261.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v261.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v272, &v261);
        *&v272[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_write_times(const Manifest_Execution_Context &, const Connection &)";
        v273 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v274 = 374;
        std::vector<void *>::vector[abi:ne200100](&v259);
      }

      v111 = *(v107 + 304);
      v110 = *(v107 + 312);
      if (v110)
      {
        atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v110);
      }

      if (!v111)
      {
        v210 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v210 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v110);
        }

        v212 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v211 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v211)
        {
          atomic_fetch_add_explicit(&v211->__shared_owners_, 1uLL, memory_order_relaxed);
          v213 = *v212;
          std::__shared_weak_count::__release_shared[abi:ne200100](v211);
        }

        else
        {
          v213 = *v212;
        }

        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          *v272 = 136315650;
          *&v272[4] = "Manifest_Task.cpp";
          *&v272[12] = 1024;
          *&v272[14] = 376;
          *&v272[18] = 2080;
          *&v272[20] = "not (c->get_buffer() != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v213, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Buffer has not been allocated in begin_processing", v272, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v266);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Buffer has not been allocated in begin_processing", &v253);
        std::logic_error::logic_error(&v260, &v253);
        v260.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v261, &v260);
        v262 = 0;
        v263 = 0;
        v264 = 0;
        v265 = -1;
        v261.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v261.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v272, &v261);
        *&v272[32] = "DAL::DAL_Time_Range AMCP::Graph::Manifest_Task::calculate_write_times(const Manifest_Execution_Context &, const Connection &)";
        v273 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v274 = 376;
        std::vector<void *>::vector[abi:ne200100](&v259);
      }

      AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator(a1);
      (*(**(a1 + 104) + 32))(*(a1 + 104), a2, v91);
      v113 = *(*v91 + 128);
      v114 = *(*v91 + 136);
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        *v272 = 2;
        *&v272[8] = v112;
        *&v272[16] = 0;
        *&v272[24] = v113;
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      }

      else
      {
        *v272 = 2;
        *&v272[8] = v112;
        *&v272[16] = 0;
        *&v272[24] = v113;
      }

      v115 = *v91;
      *&v261.__r_.__value_.__l.__data_ = *(*v91 + 208);
      v116 = *(v115 + 232);
      v261.__r_.__value_.__r.__words[2] = *(v115 + 224);
      v262 = v116;
      v117 = *(v115 + 240);
      v263 = v117;
      if (v117)
      {
        atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
        v118 = *(*v91 + 232);
        v119 = *(*v91 + 240);
        v253 = *(*v91 + 208);
        v254 = v118;
        v255 = v119;
        if (v119)
        {
          atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v119 = 0;
        v253 = *(v115 + 208);
        v254 = v116;
        v255 = 0;
      }

      boost::operators_impl::operator+(&v256, &v253, v272);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v261, &v256);
      if (v258)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v258);
      }

      if (v119)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v119);
      }

      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      }

      if (*&v272[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v272[32]);
      }

      v120 = *(*v91 + 304);
      v121 = *(*v91 + 312);
      if (v121)
      {
        atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v122 = v89[3];
      if (!v122)
      {
LABEL_184:
        v126 = v121;
        goto LABEL_185;
      }

      v124 = *(*v91 + 304);
      v123 = *(*v91 + 312);
      if (v123)
      {
        atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
        v125 = v89[3];
        std::__shared_weak_count::__release_shared[abi:ne200100](v123);
        if (v125 == v124)
        {
          goto LABEL_184;
        }
      }

      else if (v122 == v124)
      {
        goto LABEL_184;
      }

      v120 = v89[3];
      v126 = v89[4];
      if (v126)
      {
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v121)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v121);
      }

LABEL_185:
      v127 = *v91;
      v129 = *(*v91 + 304);
      v128 = *(*v91 + 312);
      if (v128)
      {
        atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v120 == v129)
        {
          v130 = *(v127 + 152);
          std::__shared_weak_count::__release_shared[abi:ne200100](v128);
          if (v130)
          {
            goto LABEL_197;
          }
        }

        else
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v128);
        }
      }

      else if (v120 == v129 && *(v127 + 152))
      {
        goto LABEL_197;
      }

      if (*(v127 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v261, *(v127 + 8), *(v127 + 16));
      }

      else
      {
        v261 = *(v127 + 8);
      }

      v262 = *(v127 + 32);
      LODWORD(v263) = *(v127 + 40);
      *v272 = 0;
      *&v272[8] = v261;
      *&v272[32] = v262;
      LODWORD(v273) = v263;
      (*(*v120 + 96))(v120, v272, buf, 0);
      if ((v272[31] & 0x80000000) != 0)
      {
        operator delete(*&v272[8]);
      }

LABEL_197:
      v245 = *buf;
      v246 = *&buf[16];
      v247 = *&buf[24];
      v248 = *&buf[32];
      if (*&buf[32])
      {
        atomic_fetch_add_explicit((*&buf[32] + 8), 1uLL, memory_order_relaxed);
      }

      v249 = v268;
      v250 = v269;
      v251 = v270;
      v252 = v271;
      if (v271)
      {
        atomic_fetch_add_explicit(&v271->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v120 + 160))(&v230, v120, &v245);
      if (v252)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v252);
      }

      if (v248)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v248);
      }

      if (v126)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v126);
      }

      if (v271)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v271);
      }

      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      if (round(AMCP::DAL::DAL_Time::get_sample_time(v241)) == 0.0 || (v131 = AMCP::DAL::DAL_Time::get_sample_time(v238), AMCP::DAL::DAL_Time::get_sample_time(v241), v132 = AMCP::DAL::DAL_Time::get_sample_time(&v230), AMCP::DAL::DAL_Time::get_sample_time(&v233), round(v132) < round(v131)))
      {
        *v238 = v230;
        *&v238[8] = *v231;
        v134 = *&v231[16];
        v133 = v232;
        if (v232)
        {
          atomic_fetch_add_explicit(&v232->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v135 = v240;
        v239 = v134;
        v240 = v133;
        if (v135)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v135);
        }

        *v241 = v233;
        *&v241[8] = v234;
        v137 = v235;
        v136 = v236;
        if (v236)
        {
          atomic_fetch_add_explicit(&v236->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v138 = v243;
        v242 = v137;
        v243 = v136;
        if (v138)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v138);
        }

        v244 = v237;
      }

      if (v236)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v236);
      }

      if (v232)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v232);
      }

      v91 += 2;
      v90 = v228;
    }

    v139 = v226;
    v140 = v226->__shared_owners_;
    v141 = v226->__shared_weak_owners_;
    if (v140 >= v141)
    {
      v147 = 0x2E8BA2E8BA2E8BA3 * ((v140 - v226->__vftable) >> 3);
      v148 = v147 + 1;
      if ((v147 + 1) > 0x2E8BA2E8BA2E8BALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v149 = 0x2E8BA2E8BA2E8BA3 * ((v141 - v226->__vftable) >> 3);
      if (2 * v149 > v148)
      {
        v148 = 2 * v149;
      }

      if (v149 >= 0x1745D1745D1745DLL)
      {
        v150 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v150 = v148;
      }

      v232 = v226;
      if (v150)
      {
        v150 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Readable_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>>(v150);
      }

      else
      {
        v151 = 0;
      }

      v152 = (v150 + 88 * v147);
      v230 = v150;
      *v231 = v152;
      *&v231[16] = v150 + 88 * v151;
      v153 = *v238;
      *(v152 + 2) = *&v238[16];
      *v152 = v153;
      *(v152 + 3) = v239;
      v154 = v240;
      *(v152 + 4) = v240;
      if (v154)
      {
        atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v155 = *v241;
      *(v152 + 7) = *&v241[16];
      *(v152 + 40) = v155;
      *(v152 + 8) = v242;
      v156 = v243;
      *(v152 + 9) = v243;
      if (v156)
      {
        atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v152 + 10) = v244;
      *&v231[8] = v152 + 88;
      v157 = v226->__shared_owners_;
      v158 = &v152[v226->__vftable - v157];
      std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>,AMCP::DAL::Readable_Range*>(v226->__vftable, v157, v158);
      v159 = v226->__vftable;
      v226->__vftable = v158;
      v139 = v226;
      v160 = v226->__shared_weak_owners_;
      v229 = *&v231[8];
      *&v226->__shared_owners_ = *&v231[8];
      *&v231[8] = v159;
      *&v231[16] = v160;
      v230 = v159;
      *v231 = v159;
      std::__split_buffer<AMCP::DAL::Readable_Range,caulk::rt_allocator<AMCP::DAL::Readable_Range> &>::~__split_buffer(&v230);
      v146 = v229;
    }

    else
    {
      v142 = *v238;
      *(v140 + 16) = *&v238[16];
      *v140 = v142;
      *(v140 + 24) = v239;
      v143 = v240;
      *(v140 + 32) = v240;
      if (v143)
      {
        atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v144 = *v241;
      *(v140 + 56) = *&v241[16];
      *(v140 + 40) = v144;
      *(v140 + 64) = v242;
      v145 = v243;
      *(v140 + 72) = v243;
      if (v145)
      {
        atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v140 + 80) = v244;
      v146 = v140 + 88;
    }

    v139->__shared_owners_ = v146;
    if (v243)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v243);
    }

    if (v240)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v240);
    }

    v89 += 5;
  }

  while (v89 != v225);
LABEL_252:
  v161 = *MEMORY[0x1E69E9840];
}

void sub_1DE3173F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator(uint64_t this)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!*(this + 104))
  {
    v2 = *this;
    v3 = *(this + 8);
    if (*this != v3)
    {
      v4 = 0;
      v5 = *this;
      do
      {
        v7 = *v5;
        v6 = v5[1];
        v5 += 5;
        v4 += (v6 - v7) >> 4;
      }

      while (v5 != v3);
      if (v4)
      {
        do
        {
          for (i = *v2; i != v2[1]; i += 16)
          {
            if (*(*i + 156) != 1)
            {
              v9 = 0;
              goto LABEL_14;
            }
          }

          v2 += 5;
        }

        while (v2 != v3);
      }
    }

    v9 = 1;
LABEL_14:
    v10 = *(this + 24);
    v11 = *(this + 32);
    if (v10 == v11)
    {
      goto LABEL_28;
    }

    v12 = 0;
    v13 = *(this + 24);
    do
    {
      v15 = *v13;
      v14 = v13[1];
      v13 += 5;
      v12 += (v14 - v15) >> 4;
    }

    while (v13 != v11);
    if (!v12)
    {
LABEL_28:
      if (!v9)
      {
        operator new();
      }

      if (!*(this + 112))
      {
        operator new();
      }
    }

    else
    {
      do
      {
        for (j = *v10; j != v10[1]; j += 16)
        {
          if (*(*j + 156) != 1)
          {
            goto LABEL_28;
          }
        }

        v10 += 5;
      }

      while (v10 != v11);
      if ((v9 & 1) == 0)
      {
        v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v17 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
          v32 = "Manifest_Task.cpp";
          v33 = 1024;
          v34 = 585;
          v35 = 2080;
          v36 = "not (are_sources_aligned_for_input and not are_destinations_are_aligned_for_input)";
          _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v22);
        std::logic_error::logic_error(&v23, &v22);
        v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v24, &v23);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = -1;
        v24.__vftable = &unk_1F5991430;
        v25 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v24);
        v37 = "void AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator()";
        v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v39 = 585;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
      }
    }

    operator new();
  }

  v1 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE317E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Readable_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0x2E8BA2E8BA2E8BBLL)
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

void std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>,AMCP::DAL::Readable_Range*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(a3 + 24) = *(v5 + 24);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      v7 = *(v5 + 40);
      *(a3 + 56) = *(v5 + 56);
      *(a3 + 40) = v7;
      *(a3 + 64) = *(v5 + 64);
      *(v5 + 64) = 0;
      *(v5 + 72) = 0;
      *(a3 + 80) = *(v5 + 80);
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<AMCP::DAL::Readable_Range,0>(v4);
      v4 += 88;
    }

    while (v4 != a2);
  }
}

void std::__split_buffer<AMCP::DAL::Readable_Range,caulk::rt_allocator<AMCP::DAL::Readable_Range> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    std::__destroy_at[abi:ne200100]<AMCP::DAL::Readable_Range,0>(i - 88);
  }

  v4 = *a1;
  if (*a1)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 24) - v4) >> 3)) < 0x2E8BA2E8BA2E8BBLL && *MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void std::__destroy_at[abi:ne200100]<AMCP::DAL::Readable_Range,0>(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AMCP::DAL::Readable_Range::Readable_Range(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v5 = *(a2 + 40);
  v6 = *(a2 + 7);
  v7 = a2[4];
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  v8 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v8;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = a3;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Graph::Manifest_Task::update_connection_write_positions(AMCP::Log::AMCP_Scope_Registry *result, int a2, uint64_t *a3, void *a4)
{
  v249 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v4 = a3[1];
  if (*(*(result + 6) + 24))
  {
    if (0x2E8BA2E8BA2E8BA3 * ((v4 - v5) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(result + 1) - *result) >> 3))
    {
      v191 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v191 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
      }

      v193 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v192 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v192)
      {
        atomic_fetch_add_explicit(&v192->__shared_owners_, 1uLL, memory_order_relaxed);
        v194 = *v193;
        std::__shared_weak_count::__release_shared[abi:ne200100](v192);
      }

      else
      {
        v194 = *v193;
      }

      if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest_Task.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 203;
        *&buf[18] = 2080;
        *&buf[20] = "not (not m_handlers->m_Node_Process_Handler or incoming_connections.size() == get_number_of_connection_lists(Connection_Direction::Source))";
        _os_log_error_impl(&dword_1DE1F9000, v194, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v217);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v208);
      std::logic_error::logic_error(&v225, &v208);
      v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v234, &v225);
      v235 = 0;
      v236 = 0;
      *&v237 = 0;
      DWORD2(v237) = -1;
      v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
      *&buf[32] = "void AMCP::Graph::Manifest_Task::update_connection_write_positions(Object_ID, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
      v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
      v246 = 203;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
    }

    if (0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(result + 4) - *(result + 3)) >> 3))
    {
      v195 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v195 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
      }

      v197 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v196 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v196)
      {
        atomic_fetch_add_explicit(&v196->__shared_owners_, 1uLL, memory_order_relaxed);
        v198 = *v197;
        std::__shared_weak_count::__release_shared[abi:ne200100](v196);
      }

      else
      {
        v198 = *v197;
      }

      if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest_Task.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 204;
        *&buf[18] = 2080;
        *&buf[20] = "not (not m_handlers->m_Node_Process_Handler or outgoing_connections.size() == get_number_of_connection_lists(Connection_Direction::Destination))";
        _os_log_error_impl(&dword_1DE1F9000, v198, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v217);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v208);
      std::logic_error::logic_error(&v225, &v208);
      v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v234, &v225);
      v235 = 0;
      v236 = 0;
      *&v237 = 0;
      DWORD2(v237) = -1;
      v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
      *&buf[32] = "void AMCP::Graph::Manifest_Task::update_connection_write_positions(Object_ID, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
      v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
      v246 = 204;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
    }
  }

  if (v4 != v5)
  {
    v6 = 0;
    v199 = result;
    while (1)
    {
      nth_connection_list = AMCP::Graph::Manifest_Task::get_nth_connection_list(result, v6, 0);
      v8 = *nth_connection_list;
      v202 = nth_connection_list[1];
      v204 = v6;
      if (*nth_connection_list != v202)
      {
        break;
      }

LABEL_83:
      ++v6;
      result = v199;
      if (v6 >= 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3))
      {
        goto LABEL_84;
      }
    }

    while (1)
    {
      v9 = *v8;
      v10 = (*a3 + 88 * v6);
      v11 = *(*v8 + 144);
      v12 = v11 != 0;
      v13 = v10[3];
      v14 = v10[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = (*(*v13 + 152))(v13);
      v17 = v14;
      v18 = v9[24];
      v19 = v9[25];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v18)
      {
        goto LABEL_30;
      }

      v20 = (*(*v13 + 16))(v13);
      v15 = (*(*v18 + 16))(v18);
      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = *(v20 + 23);
      }

      else
      {
        v22 = *(v20 + 8);
      }

      v23 = *(v15 + 23);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(v15 + 8);
      }

      if (v22 == v23)
      {
        if (v21 >= 0)
        {
          v25 = v20;
        }

        else
        {
          v25 = *v20;
        }

        if (v24 >= 0)
        {
          v26 = v15;
        }

        else
        {
          v26 = *v15;
        }

        v15 = memcmp(v25, v26, v22);
        v27 = v15 != 0;
        if (v15)
        {
          v28 = v11 == 0;
        }

        else
        {
          v28 = 0;
        }

        if (v28)
        {
LABEL_77:
          v55 = v9[24];
          v56 = v9[25];
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v27 = v16 != (*(*v55 + 152))(v55);
          if (v56)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          }

          v12 = 0;
          if (!v19)
          {
            goto LABEL_34;
          }

LABEL_33:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_34;
        }
      }

      else
      {
LABEL_30:
        if (!v11)
        {
          goto LABEL_77;
        }

        v27 = 1;
        v12 = 1;
      }

      if (v19)
      {
        goto LABEL_33;
      }

LABEL_34:
      if (v27)
      {
        v135 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v135 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v15);
        }

        v137 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v136 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v136)
        {
          atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
          v138 = *v137;
          std::__shared_weak_count::__release_shared[abi:ne200100](v136);
        }

        else
        {
          v138 = *v137;
        }

        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_same_timebase(read_position_clock, m_consumer_read_position.get_clock()) || (drift_correction_disabled && read_position_sr == m_consumer_read_position.get_clock()->get_sample_rate()))";
          _os_log_error_impl(&dword_1DE1F9000, v138, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v217);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v208);
        std::logic_error::logic_error(&v225, &v208);
        v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v234, &v225);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 319;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
      }

      if (!v9[16])
      {
        goto LABEL_50;
      }

      v29 = (*(*v13 + 16))(v13);
      v15 = (*(*v9[16] + 16))(v9[16]);
      v30 = *(v29 + 23);
      if (v30 >= 0)
      {
        v31 = *(v29 + 23);
      }

      else
      {
        v31 = *(v29 + 8);
      }

      v32 = *(v15 + 23);
      v33 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v15 + 8);
      }

      if (v31 != v32 || (v30 >= 0 ? (v34 = v29) : (v34 = *v29), v33 >= 0 ? (v35 = v15) : (v35 = *v15), v15 = memcmp(v34, v35, v31), v15))
      {
LABEL_50:
        if (v12 || v16 != (*(*v9[16] + 152))(v9[16]))
        {
          v159 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v159 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v15);
          }

          v161 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v160 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v160)
          {
            atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
            v162 = *v161;
            std::__shared_weak_count::__release_shared[abi:ne200100](v160);
          }

          else
          {
            v162 = *v161;
          }

          if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 321;
            *&buf[18] = 2080;
            *&buf[20] = "not (is_same_timebase(read_position_clock, m_timebase) || (drift_correction_disabled && read_position_sr == m_timebase->get_sample_rate()))";
            _os_log_error_impl(&dword_1DE1F9000, v162, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v217);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v208);
          std::logic_error::logic_error(&v225, &v208);
          v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
          std::logic_error::logic_error(&v234, &v225);
          v235 = 0;
          v236 = 0;
          *&v237 = 0;
          DWORD2(v237) = -1;
          v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
          v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v246 = 321;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
        }
      }

      v36 = v9[38];
      if (!v36)
      {
        v139 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v139 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v141 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v140 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v140)
        {
          atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
          v142 = *v141;
          std::__shared_weak_count::__release_shared[abi:ne200100](v140);
        }

        else
        {
          v142 = *v141;
        }

        if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 322;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_buffer)";
          _os_log_error_impl(&dword_1DE1F9000, v142, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v217);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v208);
        std::logic_error::logic_error(&v225, &v208);
        v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v234, &v225);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 322;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
      }

      if (*(v9 + 38) != 3)
      {
        (*(*v36 + 64))(buf);
        v37 = AMCP::DAL::DAL_Time::operator<((v9 + 26), buf);
        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        v36 = *&buf[32];
        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (v37)
        {
          v143 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v143 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v36);
          }

          v145 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v144 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v144)
          {
            atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
            v146 = *v145;
            std::__shared_weak_count::__release_shared[abi:ne200100](v144);
          }

          else
          {
            v146 = *v145;
          }

          if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 325;
            *&buf[18] = 2080;
            *&buf[20] = "not (zeroed_reads or m_producer_write_position >= m_buffer->get_time_range().start())";
            _os_log_error_impl(&dword_1DE1F9000, v146, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v217);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("", &v208);
          std::logic_error::logic_error(&v225, &v208);
          v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
          std::logic_error::logic_error(&v234, &v225);
          v235 = 0;
          v236 = 0;
          *&v237 = 0;
          DWORD2(v237) = -1;
          v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
          v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v246 = 325;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
        }
      }

      if (!v9[37])
      {
        v147 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v147 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v36);
        }

        v149 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v148 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v148)
        {
          atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
          v150 = *v149;
          std::__shared_weak_count::__release_shared[abi:ne200100](v148);
        }

        else
        {
          v150 = *v149;
        }

        if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 326;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_processing())";
          _os_log_error_impl(&dword_1DE1F9000, v150, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v217);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v208);
        std::logic_error::logic_error(&v225, &v208);
        v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v234, &v225);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 326;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      sample_time = AMCP::DAL::DAL_Time::get_sample_time((v10 + 5));
      v39 = AMCP::DAL::DAL_Time::get_sample_time(v10);
      v40 = *(v9 + 12);
      v41 = v9[25];
      if (v41)
      {
        atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
      }

      *buf = 2;
      *&buf[8] = sample_time - v39;
      *&buf[16] = 0;
      *&buf[24] = v40;
      boost::operators_impl::operator+(&v227, (v9 + 21), buf);
      v6 = v204;
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      v42 = AMCP::DAL::DAL_Time::operator<((v9 + 21), &v227);
      if (!v42)
      {
        v151 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v151 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v42);
        }

        v153 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v152 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v152)
        {
          atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
          v154 = *v153;
          std::__shared_weak_count::__release_shared[abi:ne200100](v152);
        }

        else
        {
          v154 = *v153;
        }

        if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 330;
          *&buf[18] = 2080;
          *&buf[20] = "not (new_target_position > m_consumer_read_position)";
          _os_log_error_impl(&dword_1DE1F9000, v154, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v213);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &__p);
        std::logic_error::logic_error(&v217, &__p);
        v217.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v234, &v217);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 330;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v225);
      }

      v43 = v9[41];
      if (v43)
      {
        v44 = *v9;
        vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time((v9 + 21)));
        vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time(&v227));
        AMCP::Graph::Manifest_Log::add_message(v43, 4, "Manifest_Buffer(%zu), prev position: %lld, update_read_position: %lld", v45, v46, v47, v48, v49, v44);
      }

      *(v9 + 42) = v227.__r_.__value_.__l.__data_;
      *(v9 + 11) = *&v227.__r_.__value_.__r.__words[1];
      v51 = v228;
      v50 = v229;
      if (v229)
      {
        atomic_fetch_add_explicit(&v229->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = v9[25];
      v9[24] = v51;
      v9[25] = v50;
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      v53 = AMCP::DAL::DAL_Time::get_sample_time((v9 + 21));
      if (AMCP::DAL::DAL_Time::get_sample_time((v9 + 21)) != floor(v53))
      {
        v155 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v155 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v54);
        }

        v157 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v156 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v156)
        {
          atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
          v158 = *v157;
          std::__shared_weak_count::__release_shared[abi:ne200100](v156);
        }

        else
        {
          v158 = *v157;
        }

        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 341;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_consumer_read_position.get_sample_time().floor().get() == m_consumer_read_position.get_sample_time().get_double())";
          _os_log_error_impl(&dword_1DE1F9000, v158, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v213);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &__p);
        std::logic_error::logic_error(&v217, &__p);
        v217.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v234, &v217);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 341;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v225);
      }

      if (v229)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v229);
      }

      v8 += 2;
      if (v8 == v202)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  v57 = *(result + 3);
  v203 = *(result + 4);
  if (v57 == v203)
  {
    goto LABEL_225;
  }

  v207 = 0;
  do
  {
    v59 = *v57;
    v58 = v57[1];
    v205 = v58;
    while (v59 != v58)
    {
      v60 = *v59;
      v213 = *(*v59 + 208);
      v61 = v60[29];
      v214 = v60[28];
      v215 = v61;
      v62 = v60[30];
      v216 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::DAL_Time::operator-(&v234, (*a4 + 88 * v207 + 40), (*a4 + 88 * v207));
      boost::operators_impl::operator+(buf, &v213, &v234);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v208, &v213, buf);
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      if (v236)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v236);
      }

      v63 = *v59;
      v64 = *(*v59 + 328);
      if (v64)
      {
        v65 = pthread_self();
        v66 = pthread_mach_thread_np(v65);
        v67 = *v63;
        AMCP::DAL::DAL_Time::get_sample_time(&v208);
        AMCP::DAL::DAL_Time::get_sample_time(v211);
        AMCP::DAL::DAL_Time::get_sample_time(&v208);
        AMCP::DAL::DAL_Time::get_sample_time(v211);
        AMCP::DAL::DAL_Time::get_sample_time((v63 + 208));
        AMCP::DAL::DAL_Time::get_sample_time((v63 + 168));
        (*(**(v63 + 304) + 72))(buf);
        AMCP::DAL::DAL_Time::get_sample_time(buf);
        v68 = AMCP::DAL::DAL_Time::get_sample_time(&v245);
        (*(**(v63 + 304) + 72))(&v234, v68);
        AMCP::DAL::DAL_Time::get_sample_time(&v234);
        vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time(&v237));
        AMCP::Graph::Manifest_Log::add_message(v64, 4, "%u\tManifest_Buffer(%zu)::copy_data_and_update_write_position: new pos:[%lld,%lld], current write position %lld, current_read_position %lld, underlying buffer:[%lld, %lld]", v69, v70, v71, v72, v73, v66);
        if (v240)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v240);
        }

        if (v236)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v236);
        }

        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }
      }

      v74 = AMCP::DAL::DAL_Time::operator<((v63 + 208), v211);
      if (!v74)
      {
        v163 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v163 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v74);
        }

        v165 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v164 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v164)
        {
          atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
          v166 = *v165;
          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

        else
        {
          v166 = *v165;
        }

        if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 374;
          *&buf[18] = 2080;
          *&buf[20] = "not (write_position.end() > m_producer_write_position)";
          _os_log_error_impl(&dword_1DE1F9000, v166, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v242);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &__p);
        std::logic_error::logic_error(&v241, &__p);
        v241.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v234, &v241);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::copy_data_and_update_write_position(Object_ID, const std::shared_ptr<DAL::DAL_Buffer> &, const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 374;
        std::vector<void *>::vector[abi:ne200100](&v225);
      }

      v75 = v209;
      v76 = v210;
      if (v210)
      {
        atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = *(v63 + 232);
      v77 = *(v63 + 240);
      if (v77)
      {
        atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v79 = (v75 | v78) == 0;
      if (!v75 || !v78)
      {
        goto LABEL_123;
      }

      v80 = (*(*v75 + 16))(v75);
      v75 = (*(*v78 + 16))(v78);
      v81 = *(v80 + 23);
      if (v81 >= 0)
      {
        v82 = *(v80 + 23);
      }

      else
      {
        v82 = *(v80 + 8);
      }

      v83 = *(v75 + 23);
      v84 = v83;
      if ((v83 & 0x80u) != 0)
      {
        v83 = *(v75 + 8);
      }

      if (v82 == v83)
      {
        if (v81 >= 0)
        {
          v85 = v80;
        }

        else
        {
          v85 = *v80;
        }

        if (v84 >= 0)
        {
          v86 = v75;
        }

        else
        {
          v86 = *v75;
        }

        v75 = memcmp(v85, v86, v82);
        v79 = v75 == 0;
LABEL_123:
        if (!v77)
        {
          goto LABEL_125;
        }

LABEL_124:
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        goto LABEL_125;
      }

      v79 = 0;
      if (v77)
      {
        goto LABEL_124;
      }

LABEL_125:
      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v76);
      }

      if (!v79)
      {
        v167 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v167 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v75);
        }

        v169 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v168 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v168)
        {
          atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
          v170 = *v169;
          std::__shared_weak_count::__release_shared[abi:ne200100](v168);
        }

        else
        {
          v170 = *v169;
        }

        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 375;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_same_timebase(write_position.get_clock(), m_producer_write_position.get_clock()))";
          _os_log_error_impl(&dword_1DE1F9000, v170, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v242);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &__p);
        std::logic_error::logic_error(&v241, &__p);
        v241.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v234, &v241);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::copy_data_and_update_write_position(Object_ID, const std::shared_ptr<DAL::DAL_Buffer> &, const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 375;
        std::vector<void *>::vector[abi:ne200100](&v225);
      }

      v87 = *(v63 + 304);
      if (!v87)
      {
        v171 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v171 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v75);
        }

        v173 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v172 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v172)
        {
          atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
          v174 = *v173;
          std::__shared_weak_count::__release_shared[abi:ne200100](v172);
        }

        else
        {
          v174 = *v173;
        }

        if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 376;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_buffer)";
          _os_log_error_impl(&dword_1DE1F9000, v174, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v242);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &__p);
        std::logic_error::logic_error(&v241, &__p);
        v241.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v234, &v241);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::copy_data_and_update_write_position(Object_ID, const std::shared_ptr<DAL::DAL_Buffer> &, const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 376;
        std::vector<void *>::vector[abi:ne200100](&v225);
      }

      if (!*(v63 + 296))
      {
        v175 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v175 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v75);
        }

        v177 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v176 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v176)
        {
          atomic_fetch_add_explicit(&v176->__shared_owners_, 1uLL, memory_order_relaxed);
          v178 = *v177;
          std::__shared_weak_count::__release_shared[abi:ne200100](v176);
        }

        else
        {
          v178 = *v177;
        }

        if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 377;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_processing())";
          _os_log_error_impl(&dword_1DE1F9000, v178, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v242);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &__p);
        std::logic_error::logic_error(&v241, &__p);
        v241.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v234, &v241);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::copy_data_and_update_write_position(Object_ID, const std::shared_ptr<DAL::DAL_Buffer> &, const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 377;
        std::vector<void *>::vector[abi:ne200100](&v225);
      }

      v88 = v57[3];
      if (v88)
      {
        v89 = *(v63 + 312);
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
          v90 = v57[3];
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
          if (v90 == v87)
          {
            goto LABEL_173;
          }

          v88 = v57[3];
        }

        else if (v88 == v87)
        {
          goto LABEL_173;
        }

        (*(*v88 + 64))(buf);
        (*(*v57[3] + 64))(&v234);
        v91 = AMCP::DAL::DAL_Time::get_sample_time(&v208);
        v92 = AMCP::DAL::DAL_Time::get_sample_time(v211);
        AMCP::DAL::DAL_Buffer::get_timebase(&v224, v57[3]);
        LODWORD(v225.__r_.__value_.__l.__data_) = 2;
        *&v225.__r_.__value_.__l.__size_ = v92 - v91;
        v225.__r_.__value_.__r.__words[2] = 0;
        v226 = v224;
        v224 = 0uLL;
        boost::operators_impl::operator+(&__p, &v234, &v225);
        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v227, buf, &__p);
        if (v222)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v222);
        }

        if (*(&v226 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v226 + 1));
        }

        if (v240)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v240);
        }

        if (v236)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v236);
        }

        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (*(v63 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v217, *(v63 + 8), *(v63 + 16));
        }

        else
        {
          v217 = *(v63 + 8);
        }

        v218 = *(v63 + 32);
        v219 = *(v63 + 40);
        LODWORD(__p.__r_.__value_.__l.__data_) = a2;
        *&__p.__r_.__value_.__r.__words[1] = *&v217.__r_.__value_.__l.__data_;
        v93 = v217.__r_.__value_.__r.__words[2];
        memset(&v217, 0, sizeof(v217));
        v221 = v93;
        v222 = v218;
        v223 = v219;
        v94 = v57[3];
        v234 = v227;
        v235 = v228;
        v236 = v229;
        if (v229)
        {
          atomic_fetch_add_explicit(&v229->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v237 = v230;
        v238 = v231;
        v239 = v232;
        v240 = v233;
        if (v233)
        {
          atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v94 + 144))(buf);
        if (v240)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v240);
        }

        if (v236)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v236);
        }

        v95 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==(&v227, &v208);
        v96 = **(v63 + 304);
        if (v95)
        {
          (*(v96 + 24))();
        }

        else
        {
          (*(v96 + 32))();
        }

        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (SHIBYTE(v221) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__size_);
        }

        if (v233)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v233);
        }

        if (v229)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v229);
        }
      }

LABEL_173:
      v97 = *(v63 + 328);
      if (v97)
      {
        v98 = pthread_self();
        v99 = pthread_mach_thread_np(v98);
        v100 = *v63;
        AMCP::Graph::Manifest_Buffer::get_buffer_id(buf, v63);
        AMCP::Wire_Identifier_to_string(&v234, buf);
        AMCP::Graph::Manifest_Log::add_message(v97, 4, "%u\tManifest_Buffer(%zu)::update_write_position:  source: %s", v101, v102, v103, v104, v105, v99);
        if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v234.__r_.__value_.__l.__data_);
        }

        if (v247 < 0)
        {
          operator delete(v245);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      v106 = AMCP::DAL::DAL_Time::get_sample_time(v211);
      v107 = AMCP::DAL::DAL_Time::get_sample_time(&v208);
      v108 = *(v63 + 232);
      v109 = *(v63 + 240);
      if (v109)
      {
        atomic_fetch_add_explicit((v109 + 8), 1uLL, memory_order_relaxed);
      }

      *buf = 2;
      *&buf[8] = v106 - v107;
      *&buf[16] = 0;
      *&buf[24] = v108;
      boost::operators_impl::operator+(&v227, v63 + 208, buf);
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      (*(**(v63 + 304) + 72))(buf);
      v110 = AMCP::DAL::DAL_Time::operator<(&v245, (v63 + 208));
      if (v248)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v248);
      }

      v111 = *&buf[32];
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      if (v110)
      {
        v179 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v179 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v111);
        }

        v181 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v180 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v180)
        {
          atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
          v182 = *v181;
          std::__shared_weak_count::__release_shared[abi:ne200100](v180);
        }

        else
        {
          v182 = *v181;
        }

        if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 413;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_producer_write_position <= m_buffer->get_allowed_read_range().end())";
          _os_log_error_impl(&dword_1DE1F9000, v182, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v243);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v225);
        std::logic_error::logic_error(&v242, &v225);
        v242.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v234, &v242);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_write_position(const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 413;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v241);
      }

      if (!*(v63 + 296))
      {
        v183 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v183 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v111);
        }

        v185 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v184 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v184)
        {
          atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
          v186 = *v185;
          std::__shared_weak_count::__release_shared[abi:ne200100](v184);
        }

        else
        {
          v186 = *v185;
        }

        if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 414;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_processing())";
          _os_log_error_impl(&dword_1DE1F9000, v186, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v243);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v225);
        std::logic_error::logic_error(&v242, &v225);
        v242.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v234, &v242);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_write_position(const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 414;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v241);
      }

      v112 = *(v63 + 328);
      if (v112)
      {
        v113 = AMCP::DAL::DAL_Time::get_sample_time((v63 + 208));
        AMCP::DAL::DAL_Time::get_sample_time(&v227);
        AMCP::DAL::DAL_Time::get_sample_time((v63 + 248));
        AMCP::DAL::DAL_Time::get_sample_time((v63 + 168));
        (*(**(v63 + 304) + 72))(buf);
        AMCP::DAL::DAL_Time::get_sample_time(buf);
        v114 = AMCP::DAL::DAL_Time::get_sample_time(&v245);
        (*(**(v63 + 304) + 72))(&v234, v114);
        AMCP::DAL::DAL_Time::get_sample_time(&v234);
        vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time(&v237));
        AMCP::Graph::Manifest_Log::add_message(v112, 4, "\t\tprevious write pos: %lld, new write pos: %lld, target: %lld, consumer: %lld, underlying buffer:[%lld, %lld]", v115, v116, v117, v118, v119, vcvtmd_s64_f64(v113));
        if (v240)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v240);
        }

        if (v236)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v236);
        }

        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }
      }

      v120 = AMCP::DAL::DAL_Time::operator<(&v227, (v63 + 168));
      if (v120)
      {
        v187 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v187 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v120);
        }

        v189 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v188 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v188)
        {
          atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
          v190 = *v189;
          std::__shared_weak_count::__release_shared[abi:ne200100](v188);
        }

        else
        {
          v190 = *v189;
        }

        if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 421;
          *&buf[18] = 2080;
          *&buf[20] = "not (new_write_position >= m_consumer_read_position)";
          _os_log_error_impl(&dword_1DE1F9000, v190, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v243);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v225);
        std::logic_error::logic_error(&v242, &v225);
        v242.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v234, &v242);
        v235 = 0;
        v236 = 0;
        *&v237 = 0;
        DWORD2(v237) = -1;
        v234.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v234.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v234);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_write_position(const AMCP::DAL::DAL_Time_Range &)";
        v245 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v246 = 421;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v241);
      }

      *(v63 + 208) = v227.__r_.__value_.__l.__data_;
      *(v63 + 216) = *&v227.__r_.__value_.__r.__words[1];
      v122 = v228;
      v121 = v229;
      if (v229)
      {
        atomic_fetch_add_explicit(&v229->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v123 = *(v63 + 240);
      *(v63 + 232) = v122;
      *(v63 + 240) = v121;
      if (v123)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v123);
      }

      if (v229)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v229);
      }

      v124 = *(v63 + 328);
      if (v124)
      {
        v125 = pthread_self();
        v126 = pthread_mach_thread_np(v125);
        v127 = *v63;
        AMCP::DAL::DAL_Time::get_sample_time((v63 + 208));
        AMCP::DAL::DAL_Time::get_sample_time((v63 + 168));
        (*(**(v63 + 304) + 72))(buf);
        AMCP::DAL::DAL_Time::get_sample_time(buf);
        v128 = AMCP::DAL::DAL_Time::get_sample_time(&v245);
        (*(**(v63 + 304) + 72))(&v234, v128);
        AMCP::DAL::DAL_Time::get_sample_time(&v234);
        vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time(&v237));
        AMCP::Graph::Manifest_Log::add_message(v124, 4, "%u\tManifest_Buffer(%zu)::copy_data_and_update_write_position: current write position %lld, current_read_position %lld, underlying buffer:[%lld, %lld]", v129, v130, v131, v132, v133, v126);
        if (v240)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v240);
        }

        if (v236)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v236);
        }

        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }
      }

      if (v212)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v212);
      }

      if (v210)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v210);
      }

      if (v216)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v216);
      }

      v59 += 2;
      v58 = v205;
    }

    result = v57[3];
    if (result)
    {
      result = (*(*result + 88))(result);
    }

    ++v207;
    v57 += 5;
  }

  while (v57 != v203);
LABEL_225:
  v134 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE31B6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a59);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a23);
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Task::process_once(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88) != 3)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = *v34;
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    else
    {
      v35 = *v34;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v60 = 136315650;
      *&v60[4] = "Manifest_Task.cpp";
      *&v60[12] = 1024;
      *&v60[14] = 249;
      *&v60[18] = 2080;
      *&v60[20] = "not (is_processing())";
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s process_once() called before begin_processing()", v60, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("process_once() called before begin_processing()", &v41);
    std::logic_error::logic_error(&v46, &v41);
    v46.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v46);
    *&buf[24] = 0;
    *&buf[32] = 0;
    *&v57 = 0;
    DWORD2(v57) = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v60, buf);
    v61.__vftable = "void AMCP::Graph::Manifest_Task::process_once(Object_ID, const IO_Proc_Cycle_Info &, const Manifest_Execution_Context &, uint64_t, Process_Once_Option)";
    v61.__imp_.__imp_ = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
    LODWORD(v62) = 249;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v39);
  }

  memset(&v38, 0, sizeof(v38));
  memset(&v37, 0, sizeof(v37));
  AMCP::Graph::Manifest_Task::set_up_connections(a1, a4, &v38, &v37);
  if (a6 == 1)
  {
    shared_owners = v37.__shared_owners_;
    if (v37.__vftable != v37.__shared_owners_)
    {
      v13 = &v37.__vftable[1];
      do
      {
        AMCP::DAL::DAL_Timed_Segment::get_format(buf, v13[5]);
        v14 = *(v13 - 1);
        *&v44 = *(v13 - 2);
        *(&v44 + 1) = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::Fixed_Buffer::Fixed_Buffer(v60, buf, &v44, 4096.0);
        if (*(&v44 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
        }

        LODWORD(v41.__r_.__value_.__l.__data_) = a2;
        *&v41.__r_.__value_.__r.__words[1] = 0u;
        v42 = 0u;
        v43 = 0;
        AMCP::DAL::Fixed_Buffer::set_range(v60, (v13 - 5));
        v15.n128_f64[0] = AMCP::DAL::DAL_Time::operator-(v39, v13, (v13 - 5));
        if ((v39[0] & 2) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(v39);
        }

        v16 = *&v39[1];
        v17 = v65;
        if (v65)
        {
          v17 = (*(*v65 + 48))(v65, v15);
        }

        else
        {
          v18 = 0.0;
        }

        if (round(v18) < round(v16))
        {
          v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v28 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v17);
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
            *&buf[4] = "Fixed_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 197;
            *&buf[18] = 2080;
            *&buf[20] = "not (number_of_frames <= get_capacity())";
            _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid size in change_size", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Invalid size in change_size", &v47);
          std::logic_error::logic_error(&v48, &v47);
          v48.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v49, &v48);
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = -1;
          v49.__vftable = &unk_1F5991430;
          v50 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v49);
          *&buf[32] = "void AMCP::DAL::Fixed_Buffer::change_size(Sample_Time)";
          *&v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
          DWORD2(v57) = 197;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v45);
        }

        sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v60[8]);
        AMCP::DAL::DAL_Time::get_sample_time(&v62);
        v20 = AMCP::DAL::DAL_Time::get_sample_time(&v60[8]);
        AMCP::DAL::DAL_Time::get_sample_time(&v62);
        v49 = v61;
        if (v61.__imp_.__imp_)
        {
          atomic_fetch_add_explicit(v61.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v49, sample_time, v16 + v20);
        *&v60[8] = *buf;
        *&v60[24] = *&buf[16];
        v21 = *&buf[24];
        *&buf[24] = 0;
        *&buf[32] = 0;
        imp = v61.__imp_.__imp_;
        v61 = v21;
        if (imp)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](imp);
        }

        v62 = v57;
        v63 = v58;
        v23 = v59;
        v59 = 0uLL;
        v24 = *(&v64 + 1);
        v64 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          if (*(&v59 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
          }
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (v49.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49.__imp_.__imp_);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        AMCP::DAL::Fixed_Buffer::create_readable_range(v60, buf);
        AMCP::DAL::Writable_Range::receive_data((v13 - 5), &v41, buf);
        if (*(&v59 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (SBYTE7(v42) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__size_);
        }

        *v60 = &unk_1F598F618;
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        if (*(&v64 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v64 + 1));
        }

        if (v61.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61.__imp_.__imp_);
        }

        v25 = v13 + 6;
        v13 += 11;
      }

      while (v25 != shared_owners);
    }
  }

  else
  {
    v26 = *(*(a1 + 48) + 24);
    if (v26)
    {
      *v60 = a2;
      (*(*v26 + 48))(v26, v60, a3, &v38, &v37);
    }
  }

  if ((*(a4 + 113) & 1) == 0 && mach_absolute_time() >= a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, (a1 + 64));
    exception->__vftable = &unk_1F59666F8;
  }

  AMCP::Graph::Manifest_Task::update_connection_write_positions(a1, a2, &v38, &v37);
  *v60 = &v37;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](v60);
  *v60 = &v38;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](v60);
  v27 = *MEMORY[0x1E69E9840];
}