void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976A58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1818456950EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 59;
      v29 = 2080;
      v30 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "no model object");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 61;
      v29 = 2080;
      v30 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "not handled");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE5093A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F59769D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59769D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59769D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIfEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,float ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<float>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE509724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,float ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,float ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5976958;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,float ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976958;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,float ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976958;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1818456950EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F59768D8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59768D8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818456950u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59768D8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Level_Control::~Level_Control(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Level_Control>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59773C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Null::Boolean_Control::do_set_property(AMCP::Null::Boolean_Control *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  if (*a3 == 1650685548)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(this + 6));
    AMCP::make_description_from_thing(&v18, a4);
    v7 = v18;
    if (!v18 && CFBooleanGetTypeID())
    {
      v11 = 1;
      if (!MutableCopy)
      {
        return v11;
      }

      goto LABEL_22;
    }

    v14 = 0x676C6F626263766CLL;
    v15 = 0;
    AMCP::Address::to_string(&bytes, &v14, 0x676C6F626263766CLL);
    size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_bytes = bytes.__r_.__value_.__r.__words[0];
      if (!bytes.__r_.__value_.__r.__words[0])
      {
        v17 = 0;
        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, 0, v7);
        goto LABEL_15;
      }

      size = bytes.__r_.__value_.__l.__size_;
    }

    else
    {
      p_bytes = &bytes;
    }

    v12 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
    v17 = v12;
    if (!v12)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, v12, v7);
    CFRelease(v12);
LABEL_15:
    if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(bytes.__r_.__value_.__l.__data_);
    }

    mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
    (*(*this + 24))(this, &bytes);
    if (bytes.__r_.__value_.__r.__words[0])
    {
      CFRelease(bytes.__r_.__value_.__l.__data_);
    }

    AMCP::Core::Conductor::notify_control_value_observers(*(*(this + 1) + 32), *(this + 22));
    if (v7)
    {
      CFRelease(v7);
    }

    v11 = 257;
    if (!MutableCopy)
    {
      return v11;
    }

LABEL_22:
    CFRelease(MutableCopy);
    return v11;
  }

  return AMCP::Null::Object::do_set_property(this, a2, a3, a4);
}

void sub_1DE509E98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void sub_1DE50A538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_setterIbEEvRNS0_9OperationEEUlRKbE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
{
  memset(v3, 0, sizeof(v3));
  LOBYTE(v3[0]) = *a2;
  v4 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
  result = AMCP::Core::Operation::call_function<void,AMCP::Thing const&>((a1 + 8), v3);
  if (v4)
  {
    return v4(0, v3, 0, 0);
  }

  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5976ED8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976ED8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976ED8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1650685548EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 59;
      v29 = 2080;
      v30 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "no model object");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 61;
      v29 = 2080;
      v30 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "not handled");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE50AD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5976E58;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976E58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976E58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1650685548EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976DD8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976DD8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1650685548u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976DD8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Boolean_Control::~Boolean_Control(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Boolean_Control>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Null::Selector_Control::do_set_property(AMCP::Null::Selector_Control *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  if (*a3 == 1935893353)
  {
    if (!*(this + 6))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v29 = 0x676C6F6273636169;
    LODWORD(v30) = 0;
    AMCP::Address::to_string(numBytes, &v29, 0x676C6F6273636169);
    v6 = SBYTE7(v32);
    if ((SBYTE7(v32) & 0x8000000000000000) != 0)
    {
      v7 = numBytes[0];
      if (!numBytes[0])
      {
        p_isa = 0;
        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v34, *(this + 6), 0);
        goto LABEL_12;
      }

      v6 = numBytes[1];
    }

    else
    {
      v7 = numBytes;
    }

    v9 = CFStringCreateWithBytes(0, v7, v6, 0x8000100u, 0);
    p_isa = &v9->isa;
    if (!v9)
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v20, "Could not construct");
      __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v34, *(this + 6), v9);
    CFRelease(v9);
LABEL_12:
    if (SBYTE7(v32) < 0)
    {
      operator delete(numBytes[0]);
    }

    if (v35 != 1)
    {
      return 1;
    }

    v33 = 0;
    *numBytes = 0u;
    v32 = 0u;
    AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef&>(numBytes, &v34);
    AMCP::Thing::convert_to<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(&v29, numBytes);
    AMCP::Thing::convert_to<std::vector<unsigned int>>(&p_isa, a4);
    v10 = p_isa;
    if (p_isa != v28)
    {
      if (v29 == v30)
      {
LABEL_27:
        v17 = 1;
LABEL_44:
        if (v10)
        {
          operator delete(v10);
        }

        p_isa = &v29;
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&p_isa);
        if (v33)
        {
          v33(0, numBytes, 0, 0);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        return v17;
      }

      v11 = p_isa;
      do
      {
        v12 = v29;
        while (*v12 != *v11)
        {
          v12 += 4;
          if (v12 == v30)
          {
            goto LABEL_27;
          }
        }

        v11 = (v11 + 4);
      }

      while (v11 != v28);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(this + 6));
    AMCP::make_description_from_thing(&v26, a4);
    v14 = v26;
    if (!v26 && CFArrayGetTypeID())
    {
      v17 = 1;
LABEL_42:
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_44;
    }

    v22 = 0x676C6F6273636369;
    v23 = 0;
    AMCP::Address::to_string(&bytes, &v22, 0x676C6F6273636369);
    size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_bytes = bytes.__r_.__value_.__r.__words[0];
      if (!bytes.__r_.__value_.__r.__words[0])
      {
        v25 = 0;
        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, 0, v14);
LABEL_35:
        if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(bytes.__r_.__value_.__l.__data_);
        }

        mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
        (*(*this + 24))(this, &bytes);
        if (bytes.__r_.__value_.__r.__words[0])
        {
          CFRelease(bytes.__r_.__value_.__l.__data_);
        }

        AMCP::Core::Conductor::notify_control_value_observers(*(*(this + 1) + 32), *(this + 22));
        if (v14)
        {
          CFRelease(v14);
        }

        v17 = 257;
        goto LABEL_42;
      }

      size = bytes.__r_.__value_.__l.__size_;
    }

    else
    {
      p_bytes = &bytes;
    }

    v18 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
    v25 = v18;
    if (!v18)
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v21, "Could not construct");
      __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, v18, v14);
    CFRelease(v18);
    goto LABEL_35;
  }

  return AMCP::Null::Object::do_set_property(this, a2, a3, a4);
}

void sub_1DE50B7C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void sub_1DE50C36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>())
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
      std::__function::__value_func<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterINSt3__16vectorINS3_5tupleIJjjN10applesauce2CF9StringRefEEEENS3_9allocatorIS9_EEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  AMCP::Thing::convert_to<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(a2, v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }
}

void sub_1DE50C82C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5977158;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5977158;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5977158;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyINSt3__16vectorINS3_5tupleIJjjN10applesauce2CF9StringRefEEEENS3_9allocatorIS9_EEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F59770D8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59770D8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59770D8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::vector<unsigned int> const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>())
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
      std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(std::vector<unsigned int> const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::vector<unsigned int> const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::vector<unsigned int> const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_setterINSt3__16vectorIjNS3_9allocatorIjEEEEEEvRNS0_9OperationEEUlRKS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  v5 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
  result = AMCP::Core::Operation::call_function<void,AMCP::Thing const&>((a1 + 8), v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5977058;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977058;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(std::vector<unsigned int> const&)#1}>,void ()(std::vector<unsigned int> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977058;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1935893353EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 59;
      v29 = 2080;
      v30 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "no model object");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 61;
      v29 = 2080;
      v30 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "not handled");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE50D710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5976FD8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976FD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976FD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1935893353EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976F58;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976F58;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935893353u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976F58;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Selector_Control::~Selector_Control(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Selector_Control>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Null::Stereo_Pan_Control::do_set_property(AMCP::Null::Stereo_Pan_Control *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  if (*a3 == 1936745334)
  {
    v5 = AMCP::Thing::convert_to<float>(a4);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(this + 6));
    v14 = 0x676C6F6273706376;
    v15 = 0;
    AMCP::Address::to_string(&bytes, &v14, 0x676C6F6273706376);
    size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_bytes = bytes.__r_.__value_.__r.__words[0];
      if (!bytes.__r_.__value_.__r.__words[0])
      {
        v10 = 0;
        v17 = 0;
LABEL_10:
        valuePtr = fmaxf(fminf(v5, 1.0), 0.0);
        v11 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        if (!v11)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(MutableCopy, v10, v11);
        CFRelease(v11);
        if (v10)
        {
          CFRelease(v10);
        }

        if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(bytes.__r_.__value_.__l.__data_);
        }

        mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
        (*(*this + 24))(this, &bytes);
        if (bytes.__r_.__value_.__r.__words[0])
        {
          CFRelease(bytes.__r_.__value_.__l.__data_);
        }

        AMCP::Core::Conductor::notify_control_value_observers(*(*(this + 1) + 32), *(this + 22));
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        return 257;
      }

      size = bytes.__r_.__value_.__l.__size_;
    }

    else
    {
      p_bytes = &bytes;
    }

    v10 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
    v17 = v10;
    if (!v10)
    {
      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Could not construct");
      __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_10;
  }

  return AMCP::Null::Object::do_set_property(this, a2, a3, a4);
}

void sub_1DE50DFB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void sub_1DE50E728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1936745334EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 59;
      v29 = 2080;
      v30 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "no model object");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 61;
      v29 = 2080;
      v30 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "not handled");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE50ECF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5977258;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977258;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977258;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1936745334EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F59771D8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59771D8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1936745334u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59771D8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Stereo_Pan_Control::~Stereo_Pan_Control(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Stereo_Pan_Control>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59772D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

unint64_t AMCP::Null::make_control_marker(const __CFDictionary **this, const applesauce::CF::DictionaryRef *a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_56;
  }

  v26 = 0x676C6F62636C6173;
  v27 = 0;
  AMCP::Address::to_string(&bytes, &v26, 0x676C6F62636C6173);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_bytes = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v5 = 0;
      v29 = 0;
      goto LABEL_7;
    }

    size = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    p_bytes = &bytes;
  }

  v5 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
  v29 = v5;
  if (!v5)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_7:
  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, *this, v5, &cf);
  v6 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_55;
  }

  v7 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  if (!*this)
  {
    goto LABEL_55;
  }

  v26 = 0x676C6F6263736370;
  v27 = 0;
  AMCP::Address::to_string(&bytes, &v26, 0x676C6F6263736370);
  v8 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v9 = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v10 = 0;
      v29 = 0;
      goto LABEL_21;
    }

    v8 = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    v9 = &bytes;
  }

  v10 = CFStringCreateWithBytes(0, v9, v8, 0x8000100u, 0);
  v29 = v10;
  if (!v10)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_21:
  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Could not construct");
    __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, *this, v10, &cf);
  v11 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_55;
  }

  v12 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  if (!*this)
  {
    goto LABEL_55;
  }

  v26 = 0x676C6F6263656C6DLL;
  v27 = 0;
  AMCP::Address::to_string(&bytes, &v26, 0x676C6F6263656C6DLL);
  v13 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v14 = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v15 = 0;
      v29 = 0;
      goto LABEL_35;
    }

    v13 = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    v14 = &bytes;
  }

  v15 = CFStringCreateWithBytes(0, v14, v13, 0x8000100u, 0);
  v29 = v15;
  if (!v15)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not construct");
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_35:
  LODWORD(valuePtr) = -1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Could not construct");
    __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, *this, v15, &cf);
  v16 = valuePtr;
  if (!valuePtr)
  {
LABEL_55:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_56:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v16);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  return v7 | (v12 << 32);
}

void sub_1DE50F874(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t AMCP::Null::get_max_number_channels_for_scope(AMCP::Null *this, const __CFDictionary **a2, const applesauce::CF::DictionaryRef *a3, int8x8_t a4)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_89:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(theArray) = 1937009955;
  HIDWORD(theArray) = this;
  v56 = 0;
  AMCP::Address::to_string(&bytes, &theArray, a4);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_bytes = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v7 = 0;
      v53 = 0;
      goto LABEL_7;
    }

    size = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    p_bytes = &bytes;
  }

  v7 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
  v53 = v7;
  if (!v7)
  {
    v42 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v42, "Could not construct");
    __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_7:
  cf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(v59, *a2, v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  v8 = v59[0];
  if (!v59[0])
  {
    return 0;
  }

  Count = CFArrayGetCount(v59[0]);
  v44 = CFArrayGetCount(v8);
  if (Count)
  {
    v9 = 0;
    v10 = 0;
    v43 = v8;
    while (1)
    {
      if (v10 == v44)
      {
        goto LABEL_79;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v57, v8, v10);
      if (!v57)
      {
        goto LABEL_88;
      }

      v53 = 0x676C6F62666D7423;
      v54 = 0;
      AMCP::Address::to_string(&bytes, &v53, v11);
      v12 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v13 = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          cf = 0;
          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&theArray, v57, 0);
          goto LABEL_24;
        }

        v12 = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        v13 = &bytes;
      }

      v14 = CFStringCreateWithBytes(0, v13, v12, 0x8000100u, 0);
      cf = v14;
      if (!v14)
      {
        v39 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v39, "Could not construct");
        __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&theArray, v57, v14);
      CFRelease(v14);
LABEL_24:
      if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(bytes.__r_.__value_.__l.__data_);
      }

      if (!v57)
      {
LABEL_88:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        goto LABEL_89;
      }

      cf = 0x676C6F62666D6174;
      v51 = 0;
      AMCP::Address::to_string(&bytes, &cf, v15);
      v16 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v17 = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          valuePtr = 0;
          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(&v53, v57, 0);
          goto LABEL_33;
        }

        v16 = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        v17 = &bytes;
      }

      v18 = CFStringCreateWithBytes(0, v17, v16, 0x8000100u, 0);
      valuePtr = v18;
      if (!v18)
      {
        v38 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v38, "Could not construct");
        __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(&v53, v57, v18);
      CFRelease(v18);
LABEL_33:
      if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(bytes.__r_.__value_.__l.__data_);
      }

      v46 = v56;
      v47 = v9;
      if (v56 == 1)
      {
        v19 = theArray;
        if (theArray)
        {
          v20 = CFArrayGetCount(theArray);
          v21 = CFArrayGetCount(v19);
          if (v20)
          {
            v22 = v21;
            v23 = 0;
            v24 = 0;
            while (v22 != v24)
            {
              applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&bytes, v19, v24);
              if (!bytes.__r_.__value_.__r.__words[0])
              {
                goto LABEL_88;
              }

              v25 = CFStringCreateWithBytes(0, "format", 6, 0x8000100u, 0);
              valuePtr = v25;
              if (!v25)
              {
                v36 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v36, "Could not construct");
                __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v49 = 0;
              applesauce::CF::at_or<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(&cf, bytes.__r_.__value_.__l.__data_, v25, &v49);
              if (v49)
              {
                CFRelease(v49);
              }

              CFRelease(v25);
              v26 = cf;
              if (!cf)
              {
                goto LABEL_88;
              }

              v27 = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
              v49 = v27;
              if (!v27)
              {
                v35 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v35, "Could not construct");
                __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(valuePtr) = 0;
              v48 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              if (!v48)
              {
                v34 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v34, "Could not construct");
                __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v26, v27, &v48);
              v28 = valuePtr;
              if (!valuePtr)
              {
                goto LABEL_88;
              }

              v29 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
              CFRelease(v28);
              if (v48)
              {
                CFRelease(v48);
              }

              CFRelease(v27);
              if (v23 <= v29)
              {
                v23 = v29;
              }

              CFRelease(v26);
              if (bytes.__r_.__value_.__r.__words[0])
              {
                CFRelease(bytes.__r_.__value_.__l.__data_);
              }

              if (v20 == ++v24)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_65;
          }
        }

LABEL_64:
        v23 = 0;
        goto LABEL_65;
      }

      if (v54 != 1)
      {
        goto LABEL_64;
      }

      v30 = v53;
      if (!v53)
      {
        goto LABEL_88;
      }

      v31 = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
      cf = v31;
      if (!v31)
      {
        v41 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v41, "Could not construct");
        __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      LODWORD(bytes.__r_.__value_.__l.__data_) = 0;
      valuePtr = CFNumberCreate(0, kCFNumberIntType, &bytes);
      if (!valuePtr)
      {
        v40 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v40, "Could not construct");
        __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&bytes, v30, v31, &valuePtr);
      v32 = bytes.__r_.__value_.__r.__words[0];
      if (!bytes.__r_.__value_.__r.__words[0])
      {
        goto LABEL_88;
      }

      v23 = applesauce::CF::convert_to<unsigned int,0>(bytes.__r_.__value_.__l.__data_);
      CFRelease(v32);
      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      CFRelease(v31);
LABEL_65:
      if (v54 == 1 && v53)
      {
        CFRelease(v53);
      }

      v8 = v43;
      if (v46 && theArray)
      {
        CFRelease(theArray);
      }

      if (v57)
      {
        CFRelease(v57);
      }

      v9 = v23 + v47;
      if (++v10 == Count)
      {
        goto LABEL_79;
      }
    }
  }

  v9 = 0;
LABEL_79:
  CFRelease(v8);
  return v9;
}

void sub_1DE51011C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t AMCP::Null::get_max_element_for_controls(const __CFDictionary **this, const applesauce::CF::DictionaryRef *a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_45:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v26 = 0x676C6F626374726CLL;
  v27 = 0;
  AMCP::Address::to_string(&bytes, &v26, 0x676C6F626374726CLL);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_bytes = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v5 = 0;
      v29 = 0;
      goto LABEL_7;
    }

    size = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    p_bytes = &bytes;
  }

  v5 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
  v29 = v5;
  if (!v5)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_7:
  cf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&theArray, *this, v5, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  v6 = theArray;
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v8 = CFArrayGetCount(v6);
  if (Count)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v9 == v11)
      {
        goto LABEL_41;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v29, v6, v11);
      if (!v29)
      {
        goto LABEL_44;
      }

      v26 = 0x676C6F6263656C6DLL;
      v27 = 0;
      AMCP::Address::to_string(&bytes, &v26, v12);
      v13 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v14 = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v15 = 0;
          v24 = 0;
          goto LABEL_23;
        }

        v13 = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        v14 = &bytes;
      }

      v15 = CFStringCreateWithBytes(0, v14, v13, 0x8000100u, 0);
      v24 = v15;
      if (!v15)
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v21, "Could not construct");
        __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

LABEL_23:
      LODWORD(cf) = 0;
      v23 = CFNumberCreate(0, kCFNumberIntType, &cf);
      if (!v23)
      {
        v20 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v20, "Could not construct");
        __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&cf, v29, v15, &v23);
      v16 = cf;
      if (!cf)
      {
LABEL_44:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        goto LABEL_45;
      }

      v17 = applesauce::CF::convert_to<unsigned int,0>(cf);
      CFRelease(v16);
      if (v23)
      {
        CFRelease(v23);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(bytes.__r_.__value_.__l.__data_);
      }

      if (v10 <= v17)
      {
        v10 = v17;
      }

      else
      {
        v10 = v10;
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (Count == ++v11)
      {
        goto LABEL_41;
      }
    }
  }

  v10 = 0;
LABEL_41:
  CFRelease(v6);
  return v10;
}

void sub_1DE5105F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void std::vector<AMCP::Graph::Terminal>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        v4 -= 112;
        for (i = -48; i != -96; i -= 24)
        {
          v8 = &v6[i];
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<AMCP::Graph::Terminal>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    v4 = (i - 48);
    v5 = -48;
    do
    {
      v7 = v4;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
      v4 -= 3;
      v5 += 24;
    }

    while (v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AMCP::Graph::Node::create_core_object(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(result + 16);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v3, *result, *(result + 8));
      operator new();
    }

    if (v1 == 3)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v5, *result, *(result + 8));
      operator new();
    }
  }

  else
  {
    if (!v1)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v4, *result, *(result + 8));
      operator new();
    }

    if (v1 == 1)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v5, *result, *(result + 8));
      operator new();
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE512700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, AMCP::IO_Core::Node *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v49 - 217) < 0)
  {
    operator delete(*(v49 - 240));
  }

  v51 = v47[4].__vftable;
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  shared_owners = v47[3].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  AMCP::IO_Core::Node::~Node(v48);
  std::__shared_weak_count::~__shared_weak_count(v47);
  operator delete(v53);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Device>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Reflector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59776E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::IOContext_Core>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::DSP>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Graph::Node::get_nth_terminal(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a1 + 24 * a3;
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  v7 = (v4 + 56);
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 4) <= a2)
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
      if (*(a1 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        v36 = *(a1 + 24);
      }

      v29 = *&v36.__r_.__value_.__l.__data_;
      v16 = v36.__r_.__value_.__r.__words[2];
      memset(&v36, 0, sizeof(v36));
      v30 = v16;
      v31 = a2;
      LODWORD(v32) = a3;
      AMCP::Terminal_Identifier_to_string(&__p, &v29.__vftable);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v18 = 0x6DB6DB6DB6DB6DB7 * ((v7[1] - *v7) >> 4);
      *buf = 136316162;
      v38 = "GraphNode.cpp";
      v39 = 1024;
      v40 = 132;
      v41 = 2080;
      v42 = "not (index < m_terminals[wire_direction].size())";
      v43 = 2080;
      *v44 = p_p;
      *&v44[8] = 2048;
      v45 = v18;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Index out of bounds - index: %s  size: %zu", buf, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29.__vftable);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    if (*(a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v22 = *(a1 + 24);
    }

    *&__p.__r_.__value_.__l.__data_ = *&v22.__r_.__value_.__l.__data_;
    v19 = v22.__r_.__value_.__r.__words[2];
    memset(&v22, 0, sizeof(v22));
    __p.__r_.__value_.__r.__words[2] = v19;
    v24 = a2;
    v25 = a3;
    AMCP::Terminal_Identifier_to_string(&v26, &__p.__r_.__value_.__l.__data_);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Index out of bounds - index: %s  size: %zu", &v27, v20, 0x6DB6DB6DB6DB6DB7 * ((v7[1] - *v7) >> 4));
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    *&v44[2] = "Terminal &AMCP::Graph::Node::get_nth_terminal(size_t, Direction)";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v46 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5 + 112 * a2;
}

void sub_1DE513180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Node::get_nth_wire_ref(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2 + 24 * a4;
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  v10 = (v7 + 56);
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 4) <= a3)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v46, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v46 = *(a2 + 24);
      }

      *buf = *&v46.__r_.__value_.__l.__data_;
      v30 = v46.__r_.__value_.__r.__words[2];
      memset(&v46, 0, sizeof(v46));
      *&buf[16] = v30;
      *&buf[24] = a3;
      *&buf[32] = a4;
      AMCP::Terminal_Identifier_to_string(&__p, buf);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v32 = 0x6DB6DB6DB6DB6DB7 * ((v10[1] - *v10) >> 4);
      *v53 = 136316162;
      *&v53[4] = "GraphNode.cpp";
      *&v53[12] = 1024;
      *&v53[14] = 140;
      *&v53[18] = 2080;
      *&v53[20] = "not (index < m_terminals[wire_direction].size())";
      *&v53[28] = 2080;
      *&v53[30] = p_p;
      *&v53[38] = 2048;
      v54 = v32;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Index out of bounds - index: %s  size: %zu", v53, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v42 = *(a2 + 24);
    }

    *&__p.__r_.__value_.__l.__data_ = *&v42.__r_.__value_.__l.__data_;
    v33 = v42.__r_.__value_.__r.__words[2];
    memset(&v42, 0, sizeof(v42));
    __p.__r_.__value_.__r.__words[2] = v33;
    v44 = a3;
    v45 = a4;
    AMCP::Terminal_Identifier_to_string(&v47, &__p.__r_.__value_.__l.__data_);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v47;
    }

    else
    {
      v34 = v47.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Index out of bounds - index: %s  size: %zu", &v36, v34, 0x6DB6DB6DB6DB6DB7 * ((v10[1] - *v10) >> 4));
    std::logic_error::logic_error(&v35, &v36);
    v35.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v35);
    *&buf[24] = 0;
    *&buf[32] = 0;
    v51 = 0;
    v52 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v53, buf);
    *&v53[32] = "std::shared_ptr<DAL::DAL_Buffer> AMCP::Graph::Node::get_nth_wire_ref(size_t, Direction)";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v55 = 140;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v41);
  }

  v11 = *(a2 + 192);
  if (!v11)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v53 = 136315650;
      *&v53[4] = "GraphNode.cpp";
      *&v53[12] = 1024;
      *&v53[14] = 686;
      *&v53[18] = 2080;
      *&v53[20] = "not (m_node_proc)";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v53, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v36);
    std::logic_error::logic_error(&v41, &v36);
    v41.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, &v41);
    *&buf[24] = 0;
    *&buf[32] = 0;
    v51 = 0;
    v52 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v53, buf);
    *&v53[32] = "Get_Terminal_Buffer_Handler AMCP::Graph::Node::get_get_buffer_proc() const";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v55 = 686;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
  }

  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__value_func[abi:ne200100](v48, v11 + 32);
  if (!v49)
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
      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v40 = *(a2 + 24);
      }

      *v53 = *&v40.__r_.__value_.__l.__data_;
      v18 = v40.__r_.__value_.__r.__words[2];
      memset(&v40, 0, sizeof(v40));
      *&v53[16] = v18;
      *&v53[24] = a3;
      *&v53[32] = a4;
      AMCP::Terminal_Identifier_to_string(&__p, v53);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "GraphNode.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 149;
      *&buf[18] = 2080;
      *&buf[20] = "not (proc != nullptr)";
      *&buf[28] = 2080;
      *&buf[30] = v19;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Get_Terminal_Buffer_Handler is missing for required Container - index: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v53[23] & 0x80000000) != 0)
      {
        operator delete(*v53);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v37 = *(a2 + 24);
    }

    *&__p.__r_.__value_.__l.__data_ = *&v37.__r_.__value_.__l.__data_;
    v20 = v37.__r_.__value_.__r.__words[2];
    memset(&v37, 0, sizeof(v37));
    __p.__r_.__value_.__r.__words[2] = v20;
    v44 = a3;
    v45 = a4;
    AMCP::Terminal_Identifier_to_string(&v41, &__p.__r_.__value_.__l.__data_);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v41;
    }

    else
    {
      v21 = v41.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Get_Terminal_Buffer_Handler is missing for required Container - index: %s", &v47, v21);
    std::logic_error::logic_error(&v38, &v47);
    v38.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v38);
    *&buf[24] = 0;
    *&buf[32] = 0;
    v51 = 0;
    v52 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v53, buf);
    *&v53[32] = "std::shared_ptr<DAL::DAL_Buffer> AMCP::Graph::Node::get_nth_wire_ref(size_t, Direction)";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v55 = 149;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  *buf = a4;
  *v53 = a3;
  (*(*v49 + 48))(v49, buf, v53);
  result = std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__value_func[abi:ne200100](v48);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE513BAC(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::vector<AMCP::Terminal_Description>::__emplace_back_slow_path<AMCP::Terminal_Description>(uint64_t a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](v5);
  }

  v6 = 104 * v2;
  *(&v20 + 1) = 0;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 32) = *(a2 + 4);
  *v6 = v7;
  *(v6 + 16) = v8;
  v9 = (104 * v2 + 40);
  v10 = a2 + 40;
  v11 = 2;
  do
  {
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = *v10;
    v9[2] = *(v10 + 16);
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    v10 += 24;
    v9 += 3;
    --v11;
  }

  while (v11);
  v12 = *(a2 + 11);
  *(104 * v2 + 0x60) = *(a2 + 96);
  *(104 * v2 + 0x58) = v12;
  *&v20 = v6 + 104;
  v13 = *(a1 + 8);
  v14 = v6 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v20;
  *(a1 + 8) = v20;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v19[0] = v15;
  v19[1] = v15;
  std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(v19);
  return v18;
}

void AMCP::Graph::Node::edit_each_wire(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v16 = a1 + 56;
  do
  {
    v17 = v6;
    v8 = (v16 + 24 * v7);
    if (v8[1] != *v8)
    {
      v9 = 0;
      do
      {
        if (*(a1 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v20, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          v20 = *(a1 + 24);
        }

        *__p = *&v20.__r_.__value_.__l.__data_;
        v10 = v20.__r_.__value_.__r.__words[2];
        memset(&v20, 0, sizeof(v20));
        v22 = v10;
        v23 = v9;
        v24 = v7;
        AMCP::Graph::Wire_Index::get_wires_for_terminal(&v18, a2, __p);
        v12 = v18;
        v11 = v19;
        for (i = v18; i != v11; ++i)
        {
          v14 = *i;
          v25 = v7;
          v15 = *(a3 + 24);
          if (!v15)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v15 + 48))(v15, &v25, v14);
        }

        if (v12)
        {
          operator delete(v12);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        ++v9;
      }

      while (v9 < 0x6DB6DB6DB6DB6DB7 * ((v8[1] - *v8) >> 4));
    }

    v6 = 1;
    v7 = 1;
  }

  while ((v17 & 1) == 0);
}

void sub_1DE514180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Node::for_each_connection(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v15 = a1 + 56;
  do
  {
    v16 = v6;
    v8 = (v15 + 24 * v7);
    if (v8[1] != *v8)
    {
      v9 = 0;
      do
      {
        if (*(a1 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          v29 = *(a1 + 24);
        }

        v30 = *&v29.__r_.__value_.__l.__data_;
        v10 = v29.__r_.__value_.__r.__words[2];
        memset(&v29, 0, sizeof(v29));
        v31 = v10;
        v32 = v9;
        v33 = v7;
        AMCP::Graph::Wire_Index::get_wires_for_terminal(&v27, a2, &v30);
        v12 = v27;
        v11 = v28;
        for (i = v27; i != v11; i += 8)
        {
          if (*(*i + 408) == 1)
          {
            AMCP::Graph::Graph_Wire::Connection::Connection(&v17, (*i + 192));
            v34[0] = v7;
            v14 = *(a3 + 24);
            if (!v14)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v14 + 48))(v14, v34, &v17);
            if (__p)
            {
              v26 = __p;
              operator delete(__p);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            if (v22)
            {
              v23 = v22;
              operator delete(v22);
            }

            if (v21 < 0)
            {
              operator delete(v20);
            }

            if (v19 < 0)
            {
              operator delete(v18);
            }

            if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v17.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v12)
        {
          operator delete(v12);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        ++v9;
      }

      while (v9 < 0x6DB6DB6DB6DB6DB7 * ((v8[1] - *v8) >> 4));
    }

    v6 = 1;
    v7 = 1;
  }

  while ((v16 & 1) == 0);
}

void sub_1DE5143B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 121) < 0)
  {
    operator delete(*(v11 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(AMCP::Terminal_Identifier const&,AMCP::Graph::Terminal const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0,std::allocator<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0>,void ()(AMCP::Terminal_Identifier const&,AMCP::Graph::Terminal const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node32set_all_terminal_data_directionsE16Buffer_AlignmentE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

AMCP::Log::AMCP_Scope_Registry *std::__function::__func<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0,std::allocator<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0>,void ()(AMCP::Terminal_Identifier const&,AMCP::Graph::Terminal const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *result, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(result + 2);
  if (*(a3 + 108) == 1 && *(a3 + 104) != v3)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      *buf = 136315650;
      v21 = "GraphTerminal.cpp";
      v22 = 1024;
      v23 = 59;
      v24 = 2080;
      v25 = "not (BOOL(m_buffer_alignment) ? m_buffer_alignment == buffer_alignment : true)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s mismatch buffer alignment", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("mismatch buffer alignment", &v11);
    std::logic_error::logic_error(&v12, &v11);
    v12.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v13, &v12);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5991430;
    v14 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v13);
    v26 = "void AMCP::Graph::Terminal::set_buffer_alignment(Buffer_Alignment)";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphTerminal.cpp";
    v28 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  *(a3 + 104) = v3;
  *(a3 + 108) = 1;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE514750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
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

uint64_t std::__function::__func<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0,std::allocator<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0>,void ()(AMCP::Terminal_Identifier const&,AMCP::Graph::Terminal const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5977788;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Graph::Node::get_get_clock_proc(AMCP::Graph::Node *this, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "GraphNode.cpp";
      v21 = 1024;
      v22 = 694;
      v23 = 2080;
      v24 = "not (m_node_proc)";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v10);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "Get_Node_Clock_Handler AMCP::Graph::Node::get_get_clock_proc() const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v27 = 694;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v2 = *MEMORY[0x1E69E9840];
  v3 = a2 + 64;

  return std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__value_func[abi:ne200100](this, v3);
}

void sub_1DE514B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node30get_sample_rates_for_terminalsERNS0_10Wire_IndexEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double *std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::operator()(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (*(v5 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v5 + 24), *(v5 + 32));
  }

  else
  {
    __p = *(v5 + 24);
  }

  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v8 != size)
  {
    v13 = 5;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v7 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!memcmp(v11, p_p, v8))
  {
    v13 = 0;
  }

  else
  {
    v13 = 5;
  }

  if (v10 < 0)
  {
LABEL_22:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_23:
  result = get_terminal(v6, &a3[v13]);
  v15 = *result;
  v16 = *(*(a1 + 8) + 8);
  if (!v16)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v17 = v16;
      v18 = *(v16 + 4);
      if (v15 >= v18)
      {
        break;
      }

      v16 = *v16;
      if (!*v17)
      {
        goto LABEL_29;
      }
    }

    if (v18 >= v15)
    {
      return result;
    }

    v16 = v16[1];
    if (!v16)
    {
      goto LABEL_29;
    }
  }
}

void std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F5977898;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977898;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977898;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0,std::allocator<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node27calculate_clocks_from_wiresERKNS0_8Node_MapERNS0_10Wire_IndexERKNSt3__18functionIFNS7_10shared_ptrINS0_8TimebaseEEERKNS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEERKNS9_INS0_21Meta_Timebase_FactoryEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0,std::allocator<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::operator()(uint64_t a1, int *a2, std::string *__str)
{
  v44 = *MEMORY[0x1E69E9840];
  if (**(a1 + 24))
  {
    goto LABEL_26;
  }

  v5 = *a2;
  data = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  if (v5 == 1)
  {
    std::string::operator=(v33, __str);
    *&v33[24] = __str[1].__r_.__value_.__l.__data_;
    data = __str[1].__r_.__value_.__r.__words[1];
    std::string::operator=(v31, (__str + 40));
    v6 = 64;
  }

  else
  {
    std::string::operator=(v33, (__str + 40));
    *&v33[24] = *(&__str[2].__r_.__value_.__l + 2);
    data = __str[3].__r_.__value_.__l.__data_;
    std::string::operator=(v31, __str);
    v6 = 24;
  }

  v7 = __str + v6;
  *&v31[24] = *v7;
  v32 = *(v7 + 2);
  v8 = *(a1 + 8);
  if (!std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v8, v31))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v36 = "GraphNode.cpp";
      v37 = 1024;
      v38 = 314;
      v39 = 2080;
      v40 = "not (nodes.find(this_term.m_node) != nodes.end())";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to calculate clock for node outside of the current subgraph.", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to calculate clock for node outside of the current subgraph.", &v22);
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
    v41 = "auto AMCP::Graph::Node::calculate_clocks_from_wires(const Node_Map &, Wire_Index &, const std::function<Timebase_Ref (const Graph_Node_UID &)> &, const std::shared_ptr<Meta_Timebase_Factory> &)::(anonymous class)::operator()(Direction, const Graph_Wire::Connection &) const";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v43 = 314;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v8, v33))
  {
    if ((v9 = *(get_terminal_for_key(v33, v8) + 104), (v9 & 0x100000000) != 0) && v5 == 1 && v9 == 1 || (v9 & 0x100000000) != 0 && !(v5 | v9))
    {
      v10 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(*(a1 + 8), v33);
      if (!v10)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v11 = v10[5];
      v12 = *(v11 + 144);
      v13 = *(v11 + 152);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v12)
        {
          v14 = *(a1 + 16);
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_18;
        }
      }

      else if (v12)
      {
        v14 = *(a1 + 16);
LABEL_18:
        v15 = v14[1];
        *v14 = v12;
        v14[1] = v13;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        goto LABEL_22;
      }

      **(a1 + 24) = 1;
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  if ((v33[23] & 0x80000000) != 0)
  {
    operator delete(*v33);
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE515408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 153) < 0)
  {
    operator delete(*(v40 - 176));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0,std::allocator<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5977818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void AMCP::Graph::Node::calculate_all_drift_correction(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, a1 + 3);
  v6 = a1[18];
  v5 = a1[19];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1DE515680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__value_func[abi:ne200100](va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node30calculate_all_drift_correctionERKNS0_8Node_MapERNS0_10Wire_IndexERNSt3__113unordered_setINS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_4hashISE_EENS7_8equal_toISE_EENSC_ISE_EEEERmE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::operator()(void *a1, int *a2, uint64_t a3)
{
  if (*(a3 + 408) != 1)
  {
    return;
  }

  v5 = *a2;
  AMCP::Graph::Graph_Wire::Connection::Connection(&__str, (a3 + 192));
  v25 = 0;
  *__p = 0u;
  v24 = 0u;
  if (v5 == 1)
  {
    std::string::operator=(__p, &__str);
    v6 = &v27;
  }

  else
  {
    std::string::operator=(__p, &v28);
    v6 = &v29;
  }

  *(&v24 + 1) = *v6;
  v25 = *(v6 + 2);
  v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a1[4], __p);
  if (v7)
  {
    v8 = v7;
    if (v5)
    {
LABEL_32:
      v21 = a1[6];
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(v21, __p))
      {
        v22 = a1[1];
        AMCP::Graph::Node::calculate_all_drift_correction(v8[5], a1[4], a1[5], v21);
      }

      goto LABEL_34;
    }

    v9 = v7[5];
    v11 = *(v9 + 144);
    v10 = *(v9 + 152);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*(a3 + 140))
    {
      v12 = a1[2];
      if (v12 && v11)
      {
        v13 = (*(*v12 + 16))(v12);
        v14 = (*(*v11 + 16))(v11);
        v15 = *(v13 + 23);
        if (v15 >= 0)
        {
          v16 = *(v13 + 23);
        }

        else
        {
          v16 = *(v13 + 8);
        }

        v17 = *(v14 + 23);
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v14 + 8);
        }

        if (v16 == v17)
        {
          v19 = v15 >= 0 ? v13 : *v13;
          v20 = v18 >= 0 ? v14 : *v14;
          if (!memcmp(v19, v20, v16))
          {
            goto LABEL_30;
          }
        }

        goto LABEL_27;
      }

      if (v12 | v11)
      {
LABEL_27:
        if (*(a3 + 408) == 1)
        {
          *(a3 + 332) = 1;
        }

        ++*a1[1];
      }
    }

LABEL_30:
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    goto LABEL_32;
  }

LABEL_34:
  if (SBYTE7(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1DE5159E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  AMCP::Graph::Graph_Wire::Connection::~Connection(&a17);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::__clone(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F5977918;
  a2->n128_u64[1] = v2;
  v3 = a1[1].n128_u64[1];
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2[1].n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__func(void *a1)
{
  *a1 = &unk_1F5977918;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__func(void *a1)
{
  *a1 = &unk_1F5977918;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::Graph::Node::set_all_wire_source_clocks(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, a1 + 3);
  v6 = a1[18];
  v5 = a1[19];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1DE515CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__value_func[abi:ne200100](va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node26set_all_wire_source_clocksERKNS0_8Node_MapERNS0_10Wire_IndexERNSt3__113unordered_setINS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_4hashISE_EENS7_8equal_toISE_EENSC_ISE_EEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::operator()(void *a1, int *a2, uint64_t a3)
{
  if (*(a3 + 408) == 1)
  {
    v5 = *a2;
    AMCP::Graph::Graph_Wire::Connection::Connection(&__str, (a3 + 192));
    v19 = 0;
    *__p = 0u;
    v18 = 0u;
    if (v5 == 1)
    {
      std::string::operator=(__p, &__str);
      v6 = &v21;
    }

    else
    {
      std::string::operator=(__p, &v22);
      v6 = &v23;
    }

    *(&v18 + 1) = *v6;
    v19 = *(v6 + 2);
    v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a1[3], __p);
    if (v7)
    {
      v8 = v7;
      if (!v5)
      {
        v10 = a1[1];
        v9 = a1[2];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = *(a3 + 424);
        *(a3 + 416) = v10;
        *(a3 + 424) = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v12 = v8[5];
        v13 = *(v12 + 144);
        v14 = *(v12 + 152);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *(a3 + 440);
        *(a3 + 432) = v13;
        *(a3 + 440) = v14;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      v16 = a1[5];
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(v16, __p))
      {
        AMCP::Graph::Node::set_all_wire_source_clocks(v8[5], a1[3], a1[4], v16);
      }
    }

    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DE515F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  AMCP::Graph::Graph_Wire::Connection::~Connection(&a17);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F59779A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__func(void *a1)
{
  *a1 = &unk_1F59779A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__func(void *a1)
{
  *a1 = &unk_1F59779A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *AMCP::Graph::Node::calculate_latency(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v29 = "GraphNode.cpp";
      v30 = 1024;
      v31 = 493;
      v32 = 2080;
      v33 = "not (m_node_proc)";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v19);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5991430;
    v22 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v34 = "void AMCP::Graph::Node::calculate_latency(const Node_Map &, Wire_Index &, std::unordered_set<Graph_Node_UID> &)";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v36 = 493;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a4, a1 + 3);
  if (!result)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, a1 + 3);
    v7 = *(*(a1 + 24) + 408);
    if (v7)
    {
      v8 = (*(*v7 + 48))(v7);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
          v29 = "GraphNode.cpp";
          v30 = 1024;
          v31 = 501;
          v32 = 2080;
          v33 = "not (this_nodes_latency >= 0)";
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Tail time is not allowed to be less than zero", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Tail time is not allowed to be less than zero", &v19);
        std::logic_error::logic_error(&v20, &v19);
        v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v21, &v20);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = -1;
        v21.__vftable = &unk_1F5991430;
        v22 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
        v34 = "void AMCP::Graph::Node::calculate_latency(const Node_Map &, Wire_Index &, std::unordered_set<Graph_Node_UID> &)";
        v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
        v36 = 501;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
      }
    }

    LODWORD(v21.__vftable) = 0;
    operator new();
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node17calculate_latencyERKNS0_8Node_MapERNS0_10Wire_IndexERNSt3__113unordered_setINS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_4hashISE_EENS7_8equal_toISE_EENSC_ISE_EEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::operator()(void *result, _DWORD *a2, uint64_t a3)
{
  if (!*a2)
  {
    v3 = result;
    v4 = result[2];
    result = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v4, (a3 + 40));
    if (result)
    {
      v5 = result;
      result = AMCP::Graph::Node::calculate_latency(result[5], v4, v3[3], v3[4]);
      v6 = *(v5[5] + 164);
      v7 = v3[1];
      if (v6 > *v7)
      {
        *v7 = v6;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5977A28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node44calculate_latency_adjustment_for_connectionsEiRKNS0_8Node_MapERNS0_10Wire_IndexEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::operator()(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!*a2 && *(a3 + 408) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v33, *a3, *(a3 + 8));
    }

    else
    {
      *v33 = *a3;
      *&v33[16] = *(a3 + 16);
    }

    v31 = *v33;
    v32 = *&v33[16];
    if (*(a3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(v33, *(a3 + 40), *(a3 + 48));
    }

    else
    {
      *v33 = *(a3 + 40);
      *&v33[16] = *(a3 + 56);
    }

    *__p = *v33;
    v30 = *&v33[16];
    v5 = *(a1 + 16);
    v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v5, __p);
    if (v6)
    {
      v7 = v6;
      v8 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v5, &v31);
      if (v8)
      {
        v9 = **(a1 + 8);
        v10 = *(v7[5] + 164);
        v11 = *(*(v8[5] + 192) + 408);
        if (v11)
        {
          v11 = (*(*v11 + 48))(v11);
        }

        v12 = v9 - v11;
        v13 = (v9 - v11 - v10);
        if (v12 - v10 < 0)
        {
          v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v15 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *v33 = 136315906;
            *&v33[4] = "GraphNode.cpp";
            *&v33[12] = 1024;
            *&v33[14] = 584;
            *&v33[18] = 2080;
            *&v33[20] = "not (offset >= 0)";
            v34 = 1024;
            *v35 = v13;
            _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s invalid latency offset %d", v33, 0x22u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("invalid latency offset %d", &v20, v13);
          std::logic_error::logic_error(&v21, &v20);
          v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v22, &v21);
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = -1;
          v22.__vftable = &unk_1F5991430;
          v23 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v33, &v22);
          *&v35[2] = "auto AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int32_t, const Node_Map &, Wire_Index &)::(anonymous class)::operator()(Direction, Graph_Wire &) const";
          v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
          v37 = 584;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
        }

        if (*(a3 + 408) == 1)
        {
          *(a3 + 376) = v13;
        }
      }
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE516C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 137) < 0)
  {
    operator delete(*(v42 - 160));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5977AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::vector<AMCP::Graph::Call_Audio_IO_Proc::Proc_Connection_Info>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 48 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 48 * ((48 * v6 - 48) / 0x30) + 48);
    v11 = v4 + 48 * ((48 * v6 - 48) / 0x30) + 48;
  }

  a1[1] = v11;
}

uint64_t std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node21demand_client_io_procERNS0_10Wire_IndexEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::operator()(uint64_t a1, int *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v172 = *MEMORY[0x1E69E9840];
  v111 = *a2;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v155 = 0;
  memset(v154, 0, sizeof(v154));
  os_unfair_lock_lock(v8);
  v114 = a4;
  if (0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 80) - *(v8 + 72)) >> 4))
  {
    v94 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v94 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
      *v166 = 136315650;
      *&v166[4] = "Client_IO_Handler.cpp";
      *&v166[12] = 1024;
      *&v166[14] = 231;
      *&v166[18] = 2080;
      *&v166[20] = "not (sources.size() == m_streams[Direction::input].size())";
      _os_log_error_impl(&dword_1DE1F9000, v97, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Call_Audio_IO_Proc: mismatch between preallocated streams and actual streams", v166, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v115);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Call_Audio_IO_Proc: mismatch between preallocated streams and actual streams", &v148);
    std::logic_error::logic_error(&v131, &v148);
    v131.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v131);
    *&buf[32] = 0;
    *&buf[24] = 0;
    *&v162 = 0;
    DWORD2(v162) = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v166, buf);
    *&v166[32] = "void AMCP::Graph::Call_Audio_IO_Proc::operator()(AMCP::Object_ID, Node_Type, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &)";
    *&v167 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
    DWORD2(v167) = 231;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v134);
  }

  if (0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 56) - *(v8 + 48)) >> 4))
  {
    v98 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v98 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
      *v166 = 136315650;
      *&v166[4] = "Client_IO_Handler.cpp";
      *&v166[12] = 1024;
      *&v166[14] = 232;
      *&v166[18] = 2080;
      *&v166[20] = "not (dests.size() == m_streams[Direction::output].size())";
      _os_log_error_impl(&dword_1DE1F9000, v101, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Call_Audio_IO_Proc: mismatch between preallocated streams and actual streams", v166, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v115);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Call_Audio_IO_Proc: mismatch between preallocated streams and actual streams", &v148);
    std::logic_error::logic_error(&v131, &v148);
    v131.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v131);
    *&buf[32] = 0;
    *&buf[24] = 0;
    *&v162 = 0;
    DWORD2(v162) = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v166, buf);
    *&v166[32] = "void AMCP::Graph::Call_Audio_IO_Proc::operator()(AMCP::Object_ID, Node_Type, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &)";
    *&v167 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
    DWORD2(v167) = 232;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v134);
  }

  v112 = a5;
  v110 = *(v8 + 8);
  AMCP::Graph::io_proc_cycle_info_to_audio_io_cycle_info(a3, v154);
  v12 = *a4;
  if (a4[1] != *a4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v12 + v13;
      v18 = *(v12 + v13);
      *&v166[16] = *(v12 + v13 + 16);
      *v166 = v18;
      *&v166[24] = *(v12 + v13 + 24);
      v19 = *(v12 + v13 + 32);
      *&v166[32] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = *(v17 + 40);
      v168 = *(v17 + 56);
      v167 = v20;
      v169 = *(v17 + 64);
      v21 = *(v17 + 72);
      v170 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v171 = *(v12 + v13 + 80);
      v148 = *v166;
      v22 = *&v166[24];
      v149 = *&v166[24];
      v23 = *&v166[32];
      if (*&v166[32])
      {
        atomic_fetch_add_explicit((*&v166[32] + 8), 1uLL, memory_order_relaxed);
      }

      v150 = v167;
      v151 = v168;
      v152 = v169;
      v153 = v170;
      if (v170)
      {
        atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(v8 + 192);
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      LODWORD(v145.__vftable) = 2;
      *&v145.__imp_.__imp_ = -v24;
      v146 = 0;
      v147 = v22;
      v25 = *(*(v8 + 168) + 8 * v16);
      if (v25)
      {
        AMCP::Graph::align_buffer(&v148, v25, v11);
        LODWORD(__p[0]) = v111;
        v141 = 0;
        v142 = 0;
        __p[1] = 0;
        v143 = v16;
        v144 = 0;
        v26 = *(*(v8 + 168) + 8 * v16);
        v134 = v148;
        v135 = v149;
        if (*(&v149 + 1))
        {
          atomic_fetch_add_explicit((*(&v149 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v136 = v150;
        v137 = v151;
        v138 = v152;
        v139 = v153;
        if (v153)
        {
          atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::Fixed_Buffer::create_writable_range(v26, &v134, buf);
        if (v139)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v139);
        }

        if (*(&v135 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v135 + 1));
        }

        (*(*v171 + 64))(&v131);
        if (caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(&v131, &v148))
        {
          AMCP::DAL::Writable_Range::receive_data(buf, __p, v166);
        }

        else
        {
          v31 = *(*a4 + v13 + 80);
          if (v31)
          {
            (*(*v31 + 72))(v156);
            v32 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(v156, &v148);
            if (v160)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v160);
            }

            v33 = *&v156[32];
            if (*&v156[32])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v156[32]);
            }

            if (!v32)
            {
              v90 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v90 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v33);
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
                *v156 = 136315650;
                *&v156[4] = "Client_IO_Handler.cpp";
                *&v156[12] = 1024;
                *&v156[14] = 257;
                *&v156[18] = 2080;
                *&v156[20] = "not (sources[i].m_buffer == nullptr or sources[i].m_buffer->get_allowed_read_range().encompasses(read_time_range))";
                _os_log_error_impl(&dword_1DE1F9000, v93, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Only reflectors can read outside of the valid range.", v156, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v130);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("Only reflectors can read outside of the valid range.", &v123);
              std::logic_error::logic_error(&v124, &v123);
              v124.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v125, &v124);
              v126 = 0;
              v127 = 0;
              v128 = 0;
              v129 = -1;
              v125.__r_.__value_.__r.__words[0] = &unk_1F5991430;
              v125.__r_.__value_.__r.__words[2] = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v156, &v125);
              *&v156[32] = "void AMCP::Graph::Call_Audio_IO_Proc::operator()(AMCP::Object_ID, Node_Type, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &)";
              *&v157 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
              DWORD2(v157) = 257;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v121);
            }
          }

          AMCP::DAL::Writable_Range::pad_and_receive_data(buf, __p, v166);
        }

        v34 = *(*(v8 + 168) + 8 * v16);
        v115 = v148;
        v116 = v149;
        if (*(&v149 + 1))
        {
          atomic_fetch_add_explicit((*(&v149 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v117 = v150;
        v118 = v151;
        v119 = v152;
        v120 = v153;
        if (v153)
        {
          atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::Fixed_Buffer::create_readable_range(v34, &v115, v156);
        if (v120)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v120);
        }

        if (*(&v116 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v116 + 1));
        }

        AMCP::Graph::dal_segment_to_proc_stream(v156, *(v8 + 72) + v14, (*(v8 + 120) + v15), &v145);
        if (v160)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v160);
        }

        if (*&v156[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v156[32]);
        }

        if (v133)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v133);
        }

        if (v132)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v132);
        }

        if (v165)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v165);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (SHIBYTE(v142) < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v27 = *a4;
        v28 = *(*a4 + v13 + 80);
        if (v28)
        {
          (*(*v28 + 64))(buf);
          v29 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(buf, *a4 + v13);
          if (v165)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v165);
          }

          v30 = *&buf[32];
          if (*&buf[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
          }

          if (!v29)
          {
            v86 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v86 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v30);
            }

            v88 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v87 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v87)
            {
              atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
              v89 = *v88;
              std::__shared_weak_count::__release_shared[abi:ne200100](v87);
            }

            else
            {
              v89 = *v88;
            }

            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Client_IO_Handler.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 266;
              *&buf[18] = 2080;
              *&buf[20] = "not (sources[i].m_buffer == nullptr or sources[i].m_buffer->get_time_range().encompasses(sources[i].get_time_range()))";
              _os_log_error_impl(&dword_1DE1F9000, v89, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Reflectors should be using a copy buffer", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v123);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("Reflectors should be using a copy buffer", &v125);
            std::logic_error::logic_error(&v122, &v125);
            v122.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(v156, &v122);
            *&v156[32] = 0;
            *&v156[24] = 0;
            *&v157 = 0;
            DWORD2(v157) = -1;
            *v156 = &unk_1F5991430;
            *&v156[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v156);
            *&buf[32] = "void AMCP::Graph::Call_Audio_IO_Proc::operator()(AMCP::Object_ID, Node_Type, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &)";
            *&v162 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
            DWORD2(v162) = 266;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
          }

          v27 = *a4;
        }

        AMCP::Graph::dal_segment_to_proc_stream(v27 + v13, *(v8 + 72) + v14, (*(v8 + 120) + v15), &v145);
      }

      if (*(&v147 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v147 + 1));
      }

      if (v153)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v153);
      }

      if (*(&v149 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v149 + 1));
      }

      if (v170)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v170);
      }

      if (*&v166[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v166[32]);
      }

      ++v16;
      v12 = *a4;
      v15 += 40;
      v14 += 80;
      v13 += 88;
    }

    while (v16 < 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3));
  }

  v35 = *a5;
  if (a5[1] != *a5)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = (v35 + v36);
      v41 = *v40;
      *&buf[16] = *(v40 + 2);
      *buf = v41;
      *&buf[24] = *(v40 + 24);
      v113 = *&buf[24];
      v42 = *&buf[32];
      if (*&buf[32])
      {
        atomic_fetch_add_explicit((*&buf[32] + 8), 1uLL, memory_order_relaxed);
      }

      v43 = *(v40 + 40);
      v163 = *(v40 + 7);
      v162 = v43;
      v44 = *(v40 + 8);
      v164 = v44;
      v45 = *(v40 + 9);
      v165 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v46 = *(v8 + 192);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v148.__r_.__value_.__l.__data_) = 2;
      *&v148.__r_.__value_.__r.__words[1] = v46;
      v149 = v113;
      v47 = *(*(v8 + 144) + 8 * v39);
      v48 = *v112;
      if (v47)
      {
        AMCP::Graph::align_buffer((v48 + v36), v47, v11);
        v49 = *(*(v8 + 144) + 8 * v39);
        *v156 = *buf;
        *&v156[16] = *&buf[16];
        *&v156[24] = v113;
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v157 = v162;
        v158 = v163;
        v159 = v44;
        v160 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::Fixed_Buffer::create_writable_range(v49, v156, v166);
        if (v160)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v160);
        }

        if (*&v156[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v156[32]);
        }

        AMCP::Graph::dal_segment_to_proc_stream(v166, *(v8 + 48) + v37, (*(v8 + 96) + v38), &v148);
        if (v170)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v170);
        }

        if (*&v166[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v166[32]);
        }
      }

      else
      {
        AMCP::Graph::dal_segment_to_proc_stream(v48 + v36, *(v8 + 48) + v37, (*(v8 + 96) + v38), &v148);
      }

      if (*(&v149 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v149 + 1));
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      ++v39;
      v35 = *v112;
      v38 += 40;
      v37 += 80;
      v36 += 88;
    }

    while (v39 < 0x2E8BA2E8BA2E8BA3 * ((v112[1] - *v112) >> 3));
  }

  os_unfair_lock_unlock(v8);
  kdebug_trace();
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v8 + 40), v111, v154, 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 80) - *(v8 + 72)) >> 4), *(v8 + 72), 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 56) - *(v8 + 48)) >> 4), *(v8 + 48));
  kdebug_trace();
  os_unfair_lock_lock(v8);
  if (v110 == *(v8 + 8))
  {
    v51 = *v112;
    v52 = v112[1];
    if (v52 == *v112)
    {
      v51 = v112[1];
    }

    else
    {
      v53 = 0;
      v54 = 0;
      do
      {
        v55 = *(v8 + 144);
        if (*(v55 + 8 * v54))
        {
          LODWORD(v148.__r_.__value_.__l.__data_) = v111;
          *&v148.__r_.__value_.__r.__words[1] = 0u;
          v149 = 0u;
          LODWORD(v150) = 0;
          v56 = *(v55 + 8 * v54);
          v57 = (v51 + v53);
          v58 = *v57;
          *&buf[16] = *(v57 + 2);
          *buf = v58;
          *&buf[24] = *(v57 + 3);
          v59 = *(v57 + 4);
          *&buf[32] = v59;
          if (v59)
          {
            atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
          }

          v60 = *(v57 + 40);
          v163 = *(v57 + 7);
          v162 = v60;
          v164 = *(v57 + 8);
          v61 = *(v57 + 9);
          v165 = v61;
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::DAL::Fixed_Buffer::create_readable_range(v56, buf, v166);
          AMCP::DAL::Writable_Range::receive_data(*v112 + v53, &v148, v166);
          if (v170)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v170);
          }

          if (*&v166[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v166[32]);
          }

          if (v165)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v165);
          }

          v50 = *&buf[32];
          if (*&buf[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
          }

          if (SBYTE7(v149) < 0)
          {
            operator delete(v148.__r_.__value_.__l.__size_);
          }

          v51 = *v112;
          v52 = v112[1];
        }

        ++v54;
        v53 += 88;
      }

      while (v54 < 0x2E8BA2E8BA2E8BA3 * ((v52 - v51) >> 3));
    }

    v62 = *(v8 + 72);
    v63 = *(v8 + 80);
    if (0x2E8BA2E8BA2E8BA3 * ((v114[1] - *v114) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((v63 - v62) >> 4))
    {
      v102 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v102 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v50);
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
        *v166 = 136315650;
        *&v166[4] = "Client_IO_Handler.cpp";
        *&v166[12] = 1024;
        *&v166[14] = 150;
        *&v166[18] = 2080;
        *&v166[20] = "not (adjust_this.size() == streams.size())";
        _os_log_error_impl(&dword_1DE1F9000, v105, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v166, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v122);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v125);
      std::logic_error::logic_error(&v145, &v125);
      v145.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v148, &v145);
      v149 = 0uLL;
      *&v150 = 0;
      DWORD2(v150) = -1;
      v148.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v148.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v166, &v148);
      *&v166[32] = "void AMCP::Graph::check_sizes_and_adjust(const rt_safe_vector<T> &, const std::vector<AMCP::Proc_Stream> &) [T = AMCP::DAL::Readable_Range]";
      *&v167 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
      DWORD2(v167) = 150;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
    }

    if (v63 != v62)
    {
      v64 = 0;
      v65 = 0;
      v66 = 64;
      do
      {
        v67 = *(v62 + v66);
        AMCP::DAL::DAL_Time::operator-(v166, (*v114 + v64 + 40), (*v114 + v64));
        if ((v166[0] & 2) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(v166);
        }

        v68 = *&v166[8];
        v50 = *&v166[32];
        if (*&v166[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v166[32]);
        }

        if (vcvtmd_s64_f64(v68) != v67)
        {
          v69 = *v114 + v64;
          v70 = *(v69 + 24);
          v71 = *(v69 + 32);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            v72 = *(*(v8 + 72) + v66);
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v72 = *(*(v8 + 72) + v66);
            *(&v70 + 1) = 0;
          }

          *v166 = 2;
          *&v166[8] = v72;
          *&v166[16] = 0;
          *&v166[24] = v70;
          AMCP::DAL::DAL_Timed_Segment::adjust_length((*v114 + v64), v166);
          v50 = *&v166[32];
          if (*&v166[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v166[32]);
          }

          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }
        }

        ++v65;
        v62 = *(v8 + 72);
        v64 += 88;
        v66 += 80;
      }

      while (v65 < 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 80) - v62) >> 4));
      v51 = *v112;
      v52 = v112[1];
    }

    v73 = 0x2E8BA2E8BA2E8BA3 * ((v52 - v51) >> 3);
    v74 = *(v8 + 48);
    v75 = *(v8 + 56);
    if (v73 != 0xCCCCCCCCCCCCCCCDLL * ((v75 - v74) >> 4))
    {
      v106 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v106 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v50);
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
        *v166 = 136315650;
        *&v166[4] = "Client_IO_Handler.cpp";
        *&v166[12] = 1024;
        *&v166[14] = 150;
        *&v166[18] = 2080;
        *&v166[20] = "not (adjust_this.size() == streams.size())";
        _os_log_error_impl(&dword_1DE1F9000, v109, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v166, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v122);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v125);
      std::logic_error::logic_error(&v145, &v125);
      v145.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v148, &v145);
      v149 = 0uLL;
      *&v150 = 0;
      DWORD2(v150) = -1;
      v148.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v148.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v166, &v148);
      *&v166[32] = "void AMCP::Graph::check_sizes_and_adjust(const rt_safe_vector<T> &, const std::vector<AMCP::Proc_Stream> &) [T = AMCP::DAL::Writable_Range]";
      *&v167 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
      DWORD2(v167) = 150;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
    }

    if (v75 != v74)
    {
      v76 = 0;
      v77 = 0;
      v78 = 64;
      do
      {
        v79 = *(v74 + v78);
        AMCP::DAL::DAL_Time::operator-(v166, (*v112 + v76 + 40), (*v112 + v76));
        if ((v166[0] & 2) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(v166);
        }

        v80 = *&v166[8];
        if (*&v166[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v166[32]);
        }

        if (vcvtmd_s64_f64(v80) != v79)
        {
          v81 = *v112 + v76;
          v82 = *(v81 + 24);
          v83 = *(v81 + 32);
          if (v83)
          {
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
            v84 = *(*(v8 + 48) + v78);
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v84 = *(*(v8 + 48) + v78);
            *(&v82 + 1) = 0;
          }

          *v166 = 2;
          *&v166[8] = v84;
          *&v166[16] = 0;
          *&v166[24] = v82;
          AMCP::DAL::DAL_Timed_Segment::adjust_length((*v112 + v76), v166);
          if (*&v166[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v166[32]);
          }

          if (v83)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
          }
        }

        ++v77;
        v74 = *(v8 + 48);
        v76 += 88;
        v78 += 80;
      }

      while (v77 < 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 56) - v74) >> 4));
    }
  }

  os_unfair_lock_unlock(v8);
  v85 = *MEMORY[0x1E69E9840];
}

void sub_1DE518A50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5977C08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977C08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977C08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_emplace<AMCP::Graph::Call_Audio_IO_Proc>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 192);
  v3 = -48;
  do
  {
    v10 = v2;
    std::vector<std::unique_ptr<AMCP::DAL::Fixed_Buffer>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  v4 = (a1 + 144);
  v5 = -48;
  do
  {
    v10 = v4;
    std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v4 -= 3;
    v5 += 24;
  }

  while (v5);
  v6 = (a1 + 104);
  v7 = -48;
  do
  {
    v8 = *(v6 - 1);
    if (v8)
    {
      *v6 = v8;
      operator delete(v8);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);

  return std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](a1 + 40);
}

void std::__shared_ptr_emplace<AMCP::Graph::Call_Audio_IO_Proc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977BB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node21demand_client_io_procERNS0_10Wire_IndexEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (*(a3 + 408) == 1)
  {
    v4 = *a2;
    AMCP::Graph::Graph_Wire::Connection::Connection(&v14, (a3 + 192));
    if (v4)
    {
      v5 = &v16;
    }

    else
    {
      v5 = &v14;
    }

    terminal = get_terminal((a1 + 16), &v5->__r_.__value_.__l.__data_);
    if (v23 || v26 == 1 || v25 == 1 || v28 || (*(terminal + 100) == 1 ? (v7 = v27 == 0) : (v7 = 0), !v7))
    {
      v8 = &v18;
      if (!v4)
      {
        v8 = &v15;
      }

      v9 = *(*(a1 + 8) + 24 * v4) + 48 * *v8;
      *(v9 + 40) = 1;
      v10 = *terminal;
      v11 = *(terminal + 16);
      *(v9 + 32) = *(terminal + 32);
      *v9 = v10;
      *(v9 + 16) = v11;
    }

    v12 = *(terminal + 104);
    v13 = *(a1 + 32);
    *v13 = v12;
    *(v13 + 4) = BYTE4(v12);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DE5192A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Graph::Graph_Wire::Connection::~Connection(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F5977B28;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = result[4];
  return result;
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977B28;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977B28;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void HALS_PlugInStream::HandlePlugIn_PropertiesChanged(HALS_PlugInStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  if (a2)
  {
    v4 = 0;
    v5 = a3;
    v6 = a2;
    do
    {
      mSelector = v5->mSelector;
      ++v5;
      v4 |= mSelector == 1885762657;
      --v6;
    }

    while (v6);
    if (v4)
    {
      HALS_PlugInStream::BuildFormatList(this);
    }
  }

  v8 = *(this + 4);

  HALS_Object::PropertiesChanged(this, v8, 0, a2, a3);
}

void HALS_PlugInStream::BuildFormatList(HALS_PlugInStream *this)
{
  v2 = *(this + 10);
  v3 = *(v2 + 416);
  v4 = *(v2 + 424);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 23);
  v8 = 0x676C6F6270667461;
  v9 = 0;
  v6 = (*(*v3 + 560))(v3, v5, 0, &v8, 0, 0) / 0x38;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = v6;
  operator new[]();
}

void sub_1DE519730(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E12C1700](v2, v1);
  _Unwind_Resume(a1);
}

void ___ZN17HALS_PlugInStream15BuildFormatListEv_block_invoke(uint64_t a1, uint64_t a2, const AudioStreamRangedDescription *a3)
{
  v3 = *(a1 + 32);
  v3[16] = v3[15];
  v3[19] = v3[18];
  if (*(a1 + 48))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      HALB_FormatList::AddPhysicalFormat((v3 + 14), (*(a1 + 40) + v5), a3);
      ++v6;
      v5 += 56;
    }

    while (v6 < *(a1 + 48));
  }
}

void non-virtual thunk toHALS_PlugInStream::~HALS_PlugInStream(HALS_PlugInStream *this)
{
  HALS_PlugInStream::~HALS_PlugInStream((this - 72));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInStream::~HALS_PlugInStream((this - 72));
}

void HALS_PlugInStream::~HALS_PlugInStream(HALS_PlugInStream *this)
{
  *this = &unk_1F5977C88;
  v2 = (this + 72);
  *(this + 9) = &unk_1F5977D90;
  HALB_FormatList::~HALB_FormatList((this + 112));
  HALS_PlugInObject::~HALS_PlugInObject(v2);

  HALS_Stream::~HALS_Stream(this);
}

{
  HALS_PlugInStream::~HALS_PlugInStream(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_PlugInStream::SetPropertyData(HALS_PlugInStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const AudioStreamBasicDescription *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v72 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v17 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 479;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInStream::SetPropertyData: owning device is missing", &buf, 0x12u);
    }

    v61 = 560947818;
LABEL_81:
    v63 = __cxa_allocate_exception(0x10uLL);
    *v63 = off_1F5991DD8;
    v63[2] = v61;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v20 = atomic_load((v17 + 160));
    if (a8)
    {
      v21 = *(a8 + 60);
    }

    else
    {
      v21 = getpid();
    }

    if (v20 != -1 && v20 != v21)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 480;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInStream::SetPropertyData: the given process does not own hog mode", &buf, 0x12u);
      }

      v61 = 560492391;
      goto LABEL_81;
    }

    mSelector = a3->mSelector;
  }

  switch(mSelector)
  {
    case 0x70667420u:
      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_89;
        }

        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 520;
        v64 = MEMORY[0x1E69E9C10];
        v65 = "%25s:%-5d  HALS_PlugInStream::SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
        goto LABEL_88;
      }

      v33 = *(this + 10);
      v34 = *(v33 + 416);
      v35 = *(v33 + 424);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = *(this + 23);
      if (a8)
      {
        v37 = *(a8 + 60);
      }

      else
      {
        v37 = 0;
      }

      strcpy(&buf, " tfpbolg");
      BYTE1(buf.mFormatID) = 0;
      HIWORD(buf.mFormatID) = 0;
      v70 = 0;
      (*(*v34 + 568))(v34, v36, v37, &buf, 0, 0, 40, &v70, v68);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      HALB_FormatList::BestMatchForPhysicalFormat(this + 112, a5, &v69, v54, v68[0]);
      if (a8 && (v69.mFormatID != 1819304813 || (v69.mFormatFlags & 0x40) != 0))
      {
        HALS_Client::SetNonMixableFormat(a8, *(v17 + 16));
      }

      v55 = *(this + 10);
      v50 = *(v55 + 416);
      v51 = *(v55 + 424);
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = *(this + 23);
      if (a8)
      {
        v53 = *(a8 + 60);
      }

      else
      {
        v53 = 0;
      }

LABEL_64:
      strcpy(&buf, " tfpbolg");
      BYTE1(buf.mFormatID) = 0;
      HIWORD(buf.mFormatID) = 0;
      (*(*v50 + 576))(v50, v52, v53, &buf, 0, 0, 40, &v69);
      if (!v51)
      {
        goto LABEL_73;
      }

      v56 = v51;
LABEL_69:
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      goto LABEL_73;
    case 0x73666D74u:
      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_89;
        }

        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 501;
        v64 = MEMORY[0x1E69E9C10];
        v65 = "%25s:%-5d  HALS_PlugInStream::SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
        goto LABEL_88;
      }

      v28 = *(this + 10);
      v29 = *(v28 + 416);
      v30 = *(v28 + 424);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *(this + 23);
      if (a8)
      {
        v32 = *(a8 + 60);
      }

      else
      {
        v32 = 0;
      }

      strcpy(&buf, " tfpbolg");
      BYTE1(buf.mFormatID) = 0;
      HIWORD(buf.mFormatID) = 0;
      v70 = 0;
      (*(*v29 + 568))(v29, v31, v32, &buf, 0, 0, 40, &v70, v68);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      v48 = *&a5->mBytesPerPacket;
      *&buf.mSampleRate = *&a5->mSampleRate;
      *&buf.mBytesPerPacket = v48;
      *&buf.mBitsPerChannel = *&a5->mBitsPerChannel;
      if (buf.mFormatID == 1819304813)
      {
        buf.mBitsPerChannel = 0;
        *&buf.mFramesPerPacket = 0;
        *&buf.mFormatFlags = 0;
      }

      HALB_FormatList::BestMatchForPhysicalFormat(this + 112, &buf, &v69, v47, v68[0]);
      if (a8 && (v69.mFormatID != 1819304813 || (v69.mFormatFlags & 0x40) != 0))
      {
        HALS_Client::SetNonMixableFormat(a8, *(v17 + 16));
      }

      v49 = *(this + 10);
      v50 = *(v49 + 416);
      v51 = *(v49 + 424);
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = *(this + 23);
      if (a8)
      {
        v53 = *(a8 + 60);
      }

      else
      {
        v53 = 0;
      }

      goto LABEL_64;
    case 0x73616374u:
      if (a4 > 3)
      {
        if (!*(this + 14))
        {
          v23 = *(this + 10);
          v24 = *(v23 + 416);
          v25 = *(v23 + 424);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = *(this + 23);
          if (a8)
          {
            v27 = *(a8 + 60);
          }

          v19.n128_u64[0] = 0x676C6F6273616374;
          v57 = LODWORD(a5->mSampleRate) != 0;
          strcpy(&buf, "tcasbolg");
          BYTE1(buf.mFormatID) = 0;
          HIWORD(buf.mFormatID) = 0;
          v70 = v57;
          (*(*v24 + 576))(v19);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }
        }

        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 0x40000000;
        v67[2] = ___ZN17HALS_PlugInStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
        v67[3] = &__block_descriptor_tmp_23_9650;
        v67[4] = this;
        v67[5] = a5;
        v58 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v58, v67);
        goto LABEL_73;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_89:
        v66 = __cxa_allocate_exception(0x10uLL);
        *v66 = off_1F5991DD8;
        v66[2] = 561211770;
      }

      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 488;
      v64 = MEMORY[0x1E69E9C10];
      v65 = "%25s:%-5d  HALS_PlugInStream::SetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
LABEL_88:
      _os_log_impl(&dword_1DE1F9000, v64, OS_LOG_TYPE_ERROR, v65, &buf, 0x12u);
      goto LABEL_89;
  }

  if (HALS_Stream::HasProperty(this, a2, a3, a8))
  {
    HALS_Object::SetPropertyData(this, a2, a3, v38, v39, v40, v41, a8);
  }

  if ((*(*(this + 9) + 24))(this + 72, a3->mSelector))
  {
    v43 = *(this + 10);
    v44 = *(v43 + 416);
    v45 = *(v43 + 424);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v46 = a8 ? *(a8 + 60) : 0;
    (*(*v44 + 576))(v44, *(this + 23), v46, a3, a6, a7, a4, a5);
    if (v45)
    {
      v56 = v45;
      goto LABEL_69;
    }
  }

LABEL_73:
  HALS_ObjectMap::ReleaseObject(v17, v42);
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1DE51A1B4(_Unwind_Exception *a1, HALS_Object *a2)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  HALS_ObjectMap::ReleaseObject(v2, a2);
  _Unwind_Resume(a1);
}

void HALS_PlugInStream::GetPropertyData(HALS_PlugInStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, double *a6, uint64_t a7, double *a8, HALS_Client *a9)
{
  v180 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v16 = *(a9 + 266) ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v170 = 0;
  v171 = &v170;
  v172 = 0x5002000000;
  v173 = __Block_byref_object_copy__9653;
  v174 = __Block_byref_object_dispose__9654;
  v17 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v139 = v17;
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v178 = 136315394;
      *&v178[4] = "HALS_PlugInStream.cpp";
      *&v178[12] = 1024;
      *&v178[14] = 182;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: owning device is missing", v178, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v18 = (*(*v17 + 704))(v17, a9);
  v137 = v19;
  v21 = *&v18;
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1935762291)
  {
    if (mSelector <= 1885762591)
    {
      if (mSelector > 1819569762)
      {
        if (mSelector == 1819569763)
        {
          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_242;
            }

            *v178 = 136315394;
            *&v178[4] = "HALS_PlugInStream.cpp";
            *&v178[12] = 1024;
            *&v178[14] = 241;
            v134 = MEMORY[0x1E69E9C10];
            v135 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyLatency";
            goto LABEL_241;
          }

          v62 = *(this + 10);
          v63 = *(v62 + 416);
          v64 = *(v62 + 424);
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v65 = *(this + 23);
          if (a9)
          {
            v66 = *(a9 + 60);
          }

          strcpy(v178, "cntlbolg");
          v178[9] = 0;
          *&v178[10] = 0;
          *&buf = 0;
          (*(*v63 + 568))(v63);
          v110 = DWORD1(buf);
          if (v64)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          if (v137)
          {
            v110 = (v21 / (*(*v139 + 272))(v139) * v110);
          }

          v80 = v110 + HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
          goto LABEL_147;
        }

        v36 = 1851878764;
      }

      else
      {
        if (mSelector == 1668641652)
        {
          v55 = a4 / 0xC;
          if (*(this + 26) < a4 / 0xC)
          {
            v55 = *(this + 26);
          }

          if (v55)
          {
            v56 = 0;
            v57 = 0;
            do
            {
              if (v57 < *(this + 26))
              {
                v58 = a6 + v56;
                v59 = (*(this + 12) + v56);
                v60 = *v59;
                *(v58 + 2) = *(v59 + 2);
                *v58 = v60;
              }

              ++v57;
              v56 += 12;
            }

            while (12 * v55 != v56);
          }

          v61 = 12 * v55;
          goto LABEL_206;
        }

        v36 = 1819173229;
      }

      if (mSelector != v36)
      {
        goto LABEL_128;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 190;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioObjectPropertyName";
        goto LABEL_241;
      }

      v37 = *(this + 10);
      v38 = *(v37 + 416);
      v39 = *(v37 + 424);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v40 = *(this + 23);
      if (a9)
      {
        v41 = *(a9 + 60);
      }

      strcpy(v178, "manlbolg");
      v178[9] = 0;
      *&v178[10] = 0;
      *(&buf + 4) = 0;
      LODWORD(buf) = 0;
      (*(*v38 + 568))(v38);
      *a6 = *(&buf + 4);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      v61 = 8;
LABEL_206:
      *a5 = v61;
      goto LABEL_207;
    }

    if (mSelector <= 1885762622)
    {
      if (mSelector != 1885762592)
      {
        if (mSelector != 1885762595)
        {
          goto LABEL_128;
        }

        *v178 = 0;
        *&v178[8] = v178;
        *&v178[16] = 0x2000000000;
        v179 = 0;
        v143[0] = MEMORY[0x1E69E9820];
        v143[1] = 0x40000000;
        v143[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_19;
        v143[3] = &unk_1E86763D8;
        v144 = a4;
        v143[4] = v178;
        v143[5] = this;
        v143[6] = a6;
        v42 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v42, v143);
        v43 = *(*&v178[8] + 24);
        if (v43 && (v137 & 1) != 0)
        {
          v44 = (v43 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v45 = xmmword_1DE757E30;
          v46 = vdupq_n_s64(v43 - 1);
          v47 = vdupq_n_s64(2uLL);
          do
          {
            v48 = vmovn_s64(vcgeq_u64(v46, v45));
            if (v48.i8[0])
            {
              *a6 = v21;
            }

            if (v48.i8[4])
            {
              a6[5] = v21;
            }

            v45 = vaddq_s64(v45, v47);
            a6 += 10;
            v44 -= 2;
          }

          while (v44);
        }

        goto LABEL_100;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 298;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
        goto LABEL_241;
      }

      v86 = *(this + 10);
      v87 = *(v86 + 416);
      v88 = *(v86 + 424);
      if (v88)
      {
        atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v89 = *(this + 23);
      if (a9)
      {
        v90 = *(a9 + 60);
      }

      else
      {
        v90 = 0;
      }

      strcpy(v178, " tfpbolg");
      v178[9] = 0;
      *&v178[10] = 0;
      DWORD1(buf) = 0;
      (*(*v87 + 568))(v87, v89, v90, v178, 0, 0, 40, &buf + 4, a6);
      if (v88)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v88);
      }

      goto LABEL_160;
    }

    if (mSelector == 1885762623)
    {
      if (a4 > 0x27)
      {
        *a5 = 40;
        *v178 = 0;
        *&v178[8] = v178;
        *&v178[16] = 0x2000000000;
        LOBYTE(v179) = 0;
        v140[0] = MEMORY[0x1E69E9820];
        v140[1] = 0x40000000;
        v140[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21;
        v140[3] = &unk_1E8676400;
        v140[5] = this;
        v140[6] = v18;
        v141 = v19;
        v140[4] = v178;
        v142 = a6;
        v71 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v71, v140);
        if ((*(*&v178[8] + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            DWORD1(buf) = 136315394;
            *(&buf + 1) = "HALS_PlugInStream.cpp";
            v176 = 1024;
            v177 = 437;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: kAudioStreamPropertyPhysicalFormatSupported: the format is not supported", &buf + 4, 0x12u);
          }

          v72 = __cxa_allocate_exception(0x10uLL);
          *v72 = off_1F5991DD8;
          v72[2] = 560226676;
        }

        goto LABEL_127;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 419;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported";
LABEL_241:
        _os_log_impl(&dword_1DE1F9000, v134, OS_LOG_TYPE_ERROR, v135, v178, 0x12u);
      }

LABEL_242:
      v136 = __cxa_allocate_exception(0x10uLL);
      *v136 = off_1F5991DD8;
      v136[2] = 561211770;
    }

    if (mSelector != 1885762657)
    {
      if (mSelector != 1885762669)
      {
        goto LABEL_128;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 307;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch";
        goto LABEL_241;
      }

      *a5 = 40;
      v26 = *(this + 10);
      v27 = *(v26 + 416);
      v28 = *(v26 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(this + 23);
      if (a9)
      {
        v30 = *(a9 + 60);
      }

      strcpy(v178, " tfpbolg");
      v178[9] = 0;
      *&v178[10] = 0;
      DWORD1(buf) = 0;
      (*(*v27 + 568))(v27);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (a8)
      {
        v113 = a7 == 40;
      }

      else
      {
        v113 = 0;
      }

      if (v113)
      {
        v114 = a8;
      }

      else
      {
        v114 = a6;
      }

      v115 = v158;
      v158[0] = MEMORY[0x1E69E9820];
      v158[1] = 0x40000000;
      v158[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
      v158[3] = &unk_1E86762D0;
      *&v158[6] = v21;
      v159 = v137;
      v116 = *(v114 + 1);
      v160 = *v114;
      v161 = v116;
      v117 = *(v114 + 4);
      v158[5] = this;
      v158[4] = &v170;
      v162 = v117;
      v163 = a6;
      v118 = (*(*this + 64))(this);
      goto LABEL_190;
    }

    *v178 = 0;
    *&v178[8] = v178;
    *&v178[16] = 0x2000000000;
    v179 = 0;
    v145[0] = MEMORY[0x1E69E9820];
    v145[1] = 0x40000000;
    v145[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17;
    v145[3] = &unk_1E86763B0;
    v146 = a4;
    v145[4] = v178;
    v145[5] = this;
    v145[6] = a6;
    v67 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v67, v145);
    v68 = *(*&v178[8] + 24);
    if (v68 && (v137 & 1) != 0)
    {
      v69 = a6 + 6;
      v70 = *(*&v178[8] + 24);
      do
      {
        *(v69 - 6) = v21;
        *(v69 - 1) = v21;
        *v69 = v21;
        v69 += 7;
        --v70;
      }

      while (v70);
    }

LABEL_125:
    v79 = 56 * v68;
    goto LABEL_126;
  }

  v23 = v16 & 1;
  if (mSelector > 1936092512)
  {
    if (mSelector > 1936092531)
    {
      if (mSelector != 1936092532)
      {
        if (mSelector != 1952542835)
        {
          if (mSelector != 1952805485)
          {
            goto LABEL_128;
          }

          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_242;
            }

            *v178 = 136315394;
            *&v178[4] = "HALS_PlugInStream.cpp";
            *&v178[12] = 1024;
            *&v178[14] = 211;
            v134 = MEMORY[0x1E69E9C10];
            v135 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType";
            goto LABEL_241;
          }

          v31 = *(this + 10);
          v32 = *(v31 + 416);
          v33 = *(v31 + 424);
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = *(this + 23);
          if (a9)
          {
            v35 = *(a9 + 60);
          }

          strcpy(v178, "mretbolg");
          v178[9] = 0;
          *&v178[10] = 0;
          *&buf = 0;
          (*(*v32 + 568))(v32);
          goto LABEL_173;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v178 = 136315394;
          *&v178[4] = "HALS_PlugInStream.cpp";
          *&v178[12] = 1024;
          *&v178[14] = 443;
          v134 = MEMORY[0x1E69E9C10];
          v135 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream";
          goto LABEL_241;
        }

        v80 = *(this + 14);
        if (v80 != 1)
        {
          v81 = *(this + 10);
          v82 = *(v81 + 416);
          v83 = *(v81 + 424);
          if (v83)
          {
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v84 = *(this + 23);
          if (a9)
          {
            v85 = *(a9 + 60);
          }

          else
          {
            v85 = 0;
          }

          strcpy(v178, "spatbolg");
          v178[9] = 0;
          *&v178[10] = 0;
          v126 = (*(*v82 + 544))(v82, v84, v85, v178);
          if (v83)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
          }

          if (!v126)
          {
            *a6 = 0;
            goto LABEL_205;
          }

          v127 = *(this + 10);
          v128 = *(v127 + 416);
          v33 = *(v127 + 424);
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v129 = *(this + 23);
          if (a9)
          {
            v130 = *(a9 + 60);
          }

          strcpy(v178, "spatbolg");
          v178[9] = 0;
          *&v178[10] = 0;
          *&buf = 0;
          (*(*v128 + 568))(v128);
LABEL_173:
          *a6 = DWORD1(buf);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          goto LABEL_205;
        }

LABEL_147:
        *a6 = v80;
        goto LABEL_205;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 255;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
        goto LABEL_241;
      }

      v92 = *(this + 10);
      v93 = *(v92 + 416);
      v94 = *(v92 + 424);
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v95 = *(this + 23);
      if (a9)
      {
        v96 = *(a9 + 60);
      }

      else
      {
        v96 = 0;
      }

      strcpy(v178, " tfpbolg");
      v178[9] = 0;
      *&v178[10] = 0;
      DWORD1(buf) = 0;
      (*(*v93 + 568))(v93, v95, v96, v178, 0, 0, 40, &buf + 4, a6);
      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
      }

      if (*(a6 + 2) == 1819304813 && (*(a6 + 12) & 0x40) == 0)
      {
        if (v23)
        {
          v111 = 9;
        }

        else
        {
          v111 = 11;
        }

        v112 = 4 * *(a6 + 7);
        *(a6 + 3) = v111;
        *(a6 + 4) = v112;
        *(a6 + 5) = 1;
        *(a6 + 6) = v112;
        *(a6 + 8) = 32;
      }

LABEL_160:
      if (v137)
      {
        *a6 = v21;
      }

      v61 = 40;
      goto LABEL_206;
    }

    if (mSelector != 1936092513)
    {
      if (mSelector != 1936092525)
      {
        goto LABEL_128;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 265;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch";
        goto LABEL_241;
      }

      *a5 = 40;
      v50 = *(this + 10);
      v51 = *(v50 + 416);
      v52 = *(v50 + 424);
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = *(this + 23);
      if (a9)
      {
        v54 = *(a9 + 60);
      }

      strcpy(v178, " tfpbolg");
      v178[9] = 0;
      *&v178[10] = 0;
      DWORD1(buf) = 0;
      (*(*v51 + 568))(v51);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      v119 = v171;
      if (*(v171 + 12) == 1819304813 && (*(v171 + 52) & 0x40) == 0)
      {
        if (v23)
        {
          v120 = 9;
        }

        else
        {
          v120 = 11;
        }

        v121 = 4 * *(v171 + 17);
        *(v171 + 13) = v120;
        *(v119 + 14) = v121;
        *(v119 + 15) = 1;
        *(v119 + 16) = v121;
        *(v119 + 18) = 32;
      }

      if (a8)
      {
        v122 = a7 == 40;
      }

      else
      {
        v122 = 0;
      }

      if (v122)
      {
        v123 = a8;
      }

      else
      {
        v123 = a6;
      }

      v115 = v164;
      v164[0] = MEMORY[0x1E69E9820];
      v164[1] = 0x40000000;
      v164[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v164[3] = &unk_1E86762A8;
      *&v164[6] = v21;
      v165 = v137;
      v124 = *(v123 + 1);
      v166 = *v123;
      v167 = v124;
      v125 = *(v123 + 4);
      v164[5] = this;
      v164[4] = &v170;
      v168 = v125;
      v169 = a6;
      v118 = (*(*this + 64))(this);
LABEL_190:
      HALB_CommandGate::ExecuteCommand(v118, v115);
      goto LABEL_207;
    }

    *v178 = 0;
    *&v178[8] = v178;
    *&v178[16] = 0x2000000000;
    v179 = 0;
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 0x40000000;
    v153[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
    v153[3] = &unk_1E8676338;
    v155 = v23;
    v154 = a4;
    v153[4] = v178;
    v153[5] = this;
    v153[6] = a6;
    v98 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v98, v153);
    v68 = *(*&v178[8] + 24);
    if (v68 && (v137 & 1) != 0)
    {
      v99 = a6 + 6;
      v100 = *(*&v178[8] + 24);
      do
      {
        *(v99 - 6) = v21;
        *(v99 - 1) = v21;
        *v99 = v21;
        v99 += 7;
        --v100;
      }

      while (v100);
    }

    goto LABEL_125;
  }

  if (mSelector <= 1935960433)
  {
    if (mSelector == 1935762292)
    {
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 340;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
        goto LABEL_241;
      }

      v157[0] = MEMORY[0x1E69E9820];
      v157[1] = 0x40000000;
      v157[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
      v157[3] = &__block_descriptor_tmp_10_9667;
      v157[4] = this;
      v157[5] = a6;
      v97 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v97, v157);
      goto LABEL_205;
    }

    if (mSelector != 1935894638)
    {
      goto LABEL_128;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_242;
      }

      *v178 = 136315394;
      *&v178[4] = "HALS_PlugInStream.cpp";
      *&v178[12] = 1024;
      *&v178[14] = 219;
      v134 = MEMORY[0x1E69E9C10];
      v135 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel";
      goto LABEL_241;
    }

    if (*(this + 14) == 1)
    {
      NeighborStartingChannel = HALS_Device::GetNeighborStartingChannel(this, v139, v20);
    }

    else
    {
      v101 = *(this + 10);
      v102 = *(v101 + 416);
      v103 = *(v101 + 424);
      if (v103)
      {
        atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v104 = *(this + 23);
      if (a9)
      {
        v105 = *(a9 + 60);
      }

      strcpy(v178, "nhcsbolg");
      v178[9] = 0;
      *&v178[10] = 0;
      *&buf = 0;
      (*(*v102 + 568))(v102);
      v131 = DWORD1(buf);
      *a6 = DWORD1(buf);
      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        v131 = *a6;
      }

      if (v131)
      {
        goto LABEL_205;
      }

      NeighborStartingChannel = 1;
    }

    *a6 = NeighborStartingChannel;
LABEL_205:
    v61 = 4;
    goto LABEL_206;
  }

  switch(mSelector)
  {
    case 1935960434:
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 349;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection";
        goto LABEL_241;
      }

      v156[0] = MEMORY[0x1E69E9820];
      v156[1] = 0x40000000;
      v156[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
      v156[3] = &__block_descriptor_tmp_12_9669;
      v156[4] = this;
      v156[5] = a6;
      v91 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v91, v156);
      goto LABEL_205;
    case 1936092451:
      *v178 = 0;
      *&v178[8] = v178;
      *&v178[16] = 0x2000000000;
      v179 = 0;
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 0x40000000;
      v150[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
      v150[3] = &unk_1E8676360;
      v152 = v23;
      v151 = a4;
      v150[4] = v178;
      v150[5] = this;
      v150[6] = a6;
      v73 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v73, v150);
      v43 = *(*&v178[8] + 24);
      if (v43 && (v137 & 1) != 0)
      {
        v74 = (v43 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v75 = xmmword_1DE757E30;
        v76 = vdupq_n_s64(v43 - 1);
        v77 = vdupq_n_s64(2uLL);
        do
        {
          v78 = vmovn_s64(vcgeq_u64(v76, v75));
          if (v78.i8[0])
          {
            *a6 = v21;
          }

          if (v78.i8[4])
          {
            a6[5] = v21;
          }

          v75 = vaddq_s64(v75, v77);
          a6 += 10;
          v74 -= 2;
        }

        while (v74);
      }

LABEL_100:
      v79 = 40 * v43;
LABEL_126:
      *a5 = v79;
LABEL_127:
      _Block_object_dispose(v178, 8);
      goto LABEL_207;
    case 1936092479:
      if (a4 > 0x27)
      {
        *a5 = 40;
        *v178 = 0;
        *&v178[8] = v178;
        *&v178[16] = 0x2000000000;
        LOBYTE(v179) = 0;
        v147[0] = MEMORY[0x1E69E9820];
        v147[1] = 0x40000000;
        v147[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15;
        v147[3] = &unk_1E8676388;
        v147[5] = this;
        v147[6] = v18;
        v148 = v19;
        v147[4] = v178;
        v149 = a6;
        v24 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v24, v147);
        if ((*(*&v178[8] + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            DWORD1(buf) = 136315394;
            *(&buf + 1) = "HALS_PlugInStream.cpp";
            v176 = 1024;
            v177 = 394;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: kAudioDevicePropertyStreamFormatSupported: the format is not supported", &buf + 4, 0x12u);
          }

          v25 = __cxa_allocate_exception(0x10uLL);
          *v25 = off_1F5991DD8;
          v25[2] = 560226676;
        }

        goto LABEL_127;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v178 = 136315394;
        *&v178[4] = "HALS_PlugInStream.cpp";
        *&v178[12] = 1024;
        *&v178[14] = 376;
        v134 = MEMORY[0x1E69E9C10];
        v135 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported";
        goto LABEL_241;
      }

      goto LABEL_242;
  }

LABEL_128:
  if (HALS_Stream::HasProperty(this, a2, a3, a9))
  {
    HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else if ((*(*(this + 9) + 24))(this + 72, a3->mSelector))
  {
    v106 = *(this + 10);
    v107 = *(v106 + 416);
    v108 = *(v106 + 424);
    if (v108)
    {
      atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a9)
    {
      v109 = *(a9 + 60);
    }

    else
    {
      v109 = 0;
    }

    (*(*v107 + 568))(v107, *(this + 23), v109, a3, a7, a8, a4, a5, a6);
    if (v108)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v108);
    }
  }

LABEL_207:
  HALS_ObjectMap::ReleaseObject(v139, v19);
  _Block_object_dispose(&v170, 8);
  v132 = *MEMORY[0x1E69E9840];
}

void sub_1DE51BD74(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, HALS_ObjectMap *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  HALS_ObjectMap::ReleaseObject(a13, a2);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__9653(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4)
{
  v5 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v7 = &unk_1F596A5A0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v5 + 144), *(v5 + 152), &v7, *(a1 + 48));
    HALB_FormatList::BestMatchForVirtualFormat(&v7, (a1 + 64), *(a1 + 104), v6, *(*(*(a1 + 32) + 8) + 40));
    HALB_FormatList::~HALB_FormatList(&v7);
  }

  else
  {
    HALB_FormatList::BestMatchForVirtualFormat(v5 + 112, (a1 + 64), *(a1 + 104), a4, *(*(*(a1 + 32) + 8) + 40));
  }
}

void sub_1DE51BF04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE51BEF4);
}

void ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4)
{
  v5 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v7 = &unk_1F596A5A0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v5 + 144), *(v5 + 152), &v7, *(a1 + 48));
    HALB_FormatList::BestMatchForPhysicalFormat(&v7, (a1 + 64), *(a1 + 104), v6, *(*(*(a1 + 32) + 8) + 40));
    HALB_FormatList::~HALB_FormatList(&v7);
  }

  else
  {
    HALB_FormatList::BestMatchForPhysicalFormat(v5 + 112, (a1 + 64), *(a1 + 104), a4, *(*(*(a1 + 32) + 8) + 40));
  }
}

void sub_1DE51BFE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE51BFD0);
}

void sub_1DE51C09C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v3 = &unk_1F596A5A0;
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v2 + 144), *(v2 + 152), &v3, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(v4, *(&v4 + 1), *(a1 + 64));
    HALB_FormatList::~HALB_FormatList(&v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v2 + 120), *(v2 + 128), *(a1 + 64));
  }
}

void sub_1DE51C168(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE51C158);
}

__n128 ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 144);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 152) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE51C270(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v3 = &unk_1F596A5A0;
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v2 + 144), *(v2 + 152), &v3, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(&v5 + 1), v6, *(a1 + 64));
    HALB_FormatList::~HALB_FormatList(&v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v2 + 144), *(v2 + 152), *(a1 + 64));
  }
}

void sub_1DE51C33C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE51C32CLL);
}

uint64_t HALS_PlugInStream::GetPropertyDataSize(HALS_PlugInStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762656)
  {
    if (mSelector > 1936092512)
    {
      if (mSelector != 1936092513)
      {
        if (mSelector != 1952542835)
        {
          goto LABEL_23;
        }

        v15 = 4;
LABEL_17:
        v32 = v15;
        goto LABEL_22;
      }

      v13 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 0x40000000;
      v27[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
      v27[3] = &unk_1E8676208;
      v27[4] = &v29;
      v27[5] = this;
      v14 = (*(*this + 64))(this);
    }

    else if (mSelector == 1885762657)
    {
      v13 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v25[3] = &unk_1E8676258;
      v25[4] = &v29;
      v25[5] = this;
      v14 = (*(*this + 64))(this);
    }

    else
    {
      if (mSelector != 1936092451)
      {
        goto LABEL_23;
      }

      v13 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
      v26[3] = &unk_1E8676230;
      v26[4] = &v29;
      v26[5] = this;
      v14 = (*(*this + 64))(this);
    }

    goto LABEL_21;
  }

  if (mSelector > 1851878763)
  {
    if (mSelector == 1851878764)
    {
      goto LABEL_16;
    }

    if (mSelector != 1885762595)
    {
      goto LABEL_23;
    }

    v13 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_5;
    v24[3] = &unk_1E8676280;
    v24[4] = &v29;
    v24[5] = this;
    v14 = (*(*this + 64))(this);
LABEL_21:
    HALB_CommandGate::ExecuteCommand(v14, v13);
    goto LABEL_22;
  }

  if (mSelector == 1668641652)
  {
    v13 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
    v28[3] = &unk_1E86761E0;
    v28[4] = &v29;
    v28[5] = this;
    v14 = (*(*this + 64))(this);
    goto LABEL_21;
  }

  if (mSelector == 1819173229)
  {
LABEL_16:
    v15 = 8;
    goto LABEL_17;
  }

LABEL_23:
  if (HALS_Stream::HasProperty(this, a2, a3, a6))
  {
    PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
    *(v30 + 6) = PropertyDataSize;
  }

  else if ((*(*(this + 9) + 24))(this + 72, a3->mSelector))
  {
    v19 = *(this + 10);
    v20 = *(v19 + 416);
    v21 = *(v19 + 424);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
      v22 = *(a6 + 60);
    }

    else
    {
      v22 = 0;
    }

    v23 = (*(*v20 + 560))(v20, *(this + 23), v22, a3, a4, a5);
    *(v30 + 6) = v23;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

LABEL_22:
  v16 = *(v30 + 6);
  _Block_object_dispose(&v29, 8);
  return v16;
}

void sub_1DE51C7F0(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_PlugInStream::IsPropertySettable(HALS_PlugInStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector == 1952542835)
  {
    return 0;
  }

  if (mSelector == 1935762292)
  {
    return 1;
  }

  if (mSelector == 1668641652)
  {
    return 0;
  }

  if (!HALS_Stream::HasProperty(this, a2, a3, a4))
  {
    if ((*(*(this + 9) + 24))(this + 72, a3->mSelector))
    {
      v11 = *(this + 10);
      v12 = *(v11 + 416);
      v13 = *(v11 + 424);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a4)
      {
        v14 = *(a4 + 60);
      }

      else
      {
        v14 = 0;
      }

      v5 = (*(*v12 + 552))(v12, *(this + 23), v14, a3);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      return v5;
    }

    return 0;
  }

  return HALS_Stream::IsPropertySettable(this, a2, a3);
}

void sub_1DE51CA14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInStream::HasProperty(HALS_PlugInStream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1851878763)
  {
    if (mSelector == 1952542835)
    {
      v14 = *(this + 52);
      return v14 & 1;
    }

    v8 = 1851878764;
  }

  else
  {
    if (mSelector == 1668641652)
    {
      v14 = *(this + 26) != 0;
      return v14 & 1;
    }

    v8 = 1819173229;
  }

  if (mSelector == v8)
  {
    v9 = *(this + 10);
    v10 = *(v9 + 416);
    v11 = *(v9 + 424);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 23);
    if (a4)
    {
      v13 = *(a4 + 60);
    }

    else
    {
      v13 = 0;
    }

    v21 = 0x676C6F626C6E616DLL;
    v22 = 0;
    v14 = (*(*v10 + 544))(v10, v12, v13, &v21);
    if (v11)
    {
      v15 = v11;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else if (HALS_Stream::HasProperty(this, a2, a3, a4))
  {
    v14 = 1;
  }

  else
  {
    if (!(*(*(this + 9) + 24))(this + 72, a3->mSelector))
    {
      v14 = 0;
      return v14 & 1;
    }

    v17 = *(this + 10);
    v18 = *(v17 + 416);
    v19 = *(v17 + 424);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v20 = *(a4 + 60);
    }

    else
    {
      v20 = 0;
    }

    v14 = (*(*v18 + 544))(v18, *(this + 23), v20, a3);
    if (v19)
    {
      v15 = v19;
      goto LABEL_18;
    }
  }

  return v14 & 1;
}

void sub_1DE51CC0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::DAL::Timestamp_Writer::Timestamp_Data::Timestamp_Data(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, "current sample");
  v10 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v10)
  {
    v10 = AMCP::Thing::convert_to<unsigned long long>(v10 + 40);
  }

  *a1 = v10;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "current host");
  v11 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v11)
  {
    v11 = AMCP::Thing::convert_to<unsigned long long>(v11 + 40);
  }

  *(a1 + 8) = v11;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 16) = vcvtmd_s64_f64(a4);
  *(a1 + 24) = a2;
  *(a1 + 32) = vcvtmd_s64_f64(a5 - a4);
  std::string::basic_string[abi:ne200100]<0>(__p, "IO rate scalar");
  v12 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v12)
  {
    v13 = AMCP::Thing::convert_to<double>((v12 + 5));
  }

  else
  {
    v13 = 0.0;
  }

  *(a1 + 40) = v13;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "zts host");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v14)
  {
    v14 = AMCP::Thing::convert_to<unsigned long long>(v14 + 40);
  }

  *(a1 + 56) = v14;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "zts sample");
  v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v15)
  {
    v15 = AMCP::Thing::convert_to<long long>(v15 + 40);
  }

  *(a1 + 48) = v15;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "zts rate scalar");
  v16 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v16)
  {
    v17 = AMCP::Thing::convert_to<double>((v16 + 5));
  }

  else
  {
    v17 = 0.0;
  }

  *(a1 + 64) = v17;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1DE51D274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *std::vector<AMCP::DAL::Timestamp_Writer::Timestamp_Data,caulk::rt_allocator<AMCP::DAL::Timestamp_Writer::Timestamp_Data>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    if (0x8E38E38E38E38E39 * ((*(result + 2) - v1) >> 3) < 0x38E38E38E38E38FLL && (result = *MEMORY[0x1E69E3C08]) != 0)
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

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Timestamp_Writer::Timestamp_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Timestamp_Writer::Timestamp_Data>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0x38E38E38E38E38FLL)
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

caulk::rt_safe_memory_resource *std::__split_buffer<AMCP::DAL::Timestamp_Writer::Timestamp_Data,caulk::rt_allocator<AMCP::DAL::Timestamp_Writer::Timestamp_Data> &>::~__split_buffer(caulk::rt_safe_memory_resource *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 != *(result + 1))
  {
    *(result + 2) = (v2 - *(result + 1) - 72) % 0x48uLL + *(result + 1);
  }

  v3 = *result;
  if (!*result)
  {
    return v1;
  }

  if (0x8E38E38E38E38E39 * ((*(result + 3) - v3) >> 3) < 0x38E38E38E38E38FLL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(result, v3);
      return v1;
    }
  }

  __break(1u);
  return result;
}

void AMCP::DAL::get_timestamp_writer_queue(AMCP::DAL *this)
{
  {
    v1 = dispatch_queue_create("Time Stamp Writer Queue", 0);
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(&AMCP::DAL::get_timestamp_writer_queue(void)::s_timestamp_writer_queue, v1);
    if (v1)
    {
      dispatch_release(v1);
    }
  }
}

uint64_t *applesauce::dispatch::v1::async<AMCP::DAL::Timestamp_Writer::~Timestamp_Writer()::$_0 &>(dispatch_queue_s *,AMCP::DAL::Timestamp_Writer::~Timestamp_Writer()::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  AMCP::DAL::Timestamp_Writer::write_timestamp_file(*a1, *(a1 + 16));
  return std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE51D508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

FILE *AMCP::DAL::Timestamp_Writer::write_timestamp_file(FILE *result, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a2 != a2[1])
  {
    v3 = result;
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      if (*(&v3->_file + 5) >= 0)
      {
        p = v3;
      }

      else
      {
        p = v3->_p;
      }

      *buf = 136315650;
      v20 = "Timestamp_Writer.cpp";
      v21 = 1024;
      v22 = 109;
      v23 = 2080;
      v24 = p;
      _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d Timestamp_Writer::write_timestamp_file: writing time stamps to %s", buf, 0x1Cu);
    }

    if (*(&v3->_file + 5) >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = v3->_p;
    }

    result = fopen(v8, "w");
    v9 = result;
    if (result)
    {
      v10 = *(*a2 + 16);
      v11 = *(*a2 + 24);
      v13 = *(*a2 + 48);
      v12 = *(*a2 + 56);
      fwrite("Current Sample Time\tCurrent Host Time\tIO Sample Time\tIO Host Time\tIO Frame Size\tIO Sample Diff\tIO Host Diff\tRate Scalar\tZTS Sample\tZTS Host\tZTS Sample Diff\tZTS Host Diff\tZTS Host/Frame\n", 0xB9uLL, 1uLL, result);
      v14 = *a2;
      v15 = a2[1];
      if (*a2 != v15)
      {
        do
        {
          fprintf(v9, "%llu\t%llu\t%lld\t%llu\t%lld\t%lld\t%llu\t%0.5f", *v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 16) - v10, *(v14 + 24) - v11, *(v14 + 40));
          v16 = *(v14 + 48);
          if (v16 == v13)
          {
            fputc(10, v9);
          }

          else
          {
            fprintf(v9, "\t%lld\t%llu\t%lld\t%llu\t%0.5f\n", v16, *(v14 + 56), v16 - v13, *(v14 + 56) - v12, (*(v14 + 56) - v12) / (v16 - v13));
          }

          v10 = *(v14 + 16);
          v11 = *(v14 + 24);
          v13 = *(v14 + 48);
          v12 = *(v14 + 56);
          v14 += 72;
        }

        while (v14 != v15);
      }

      result = fclose(v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE51D760(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE51D6B8);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c42_ZTSZN4AMCP3DAL16Timestamp_WriterD1EvE3__0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_e8_32c42_ZTSZN4AMCP3DAL16Timestamp_WriterD1EvE3__0(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_emplace<std::basic_string<char,std::char_traits<char>,std::pmr::polymorphic_allocator<char>>>::__on_zero_shared(uint64_t result)
{
  if (*(result + 47) < 0)
  {
    return (*(**(result + 48) + 24))(*(result + 48), *(result + 24), *(result + 40) & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return result;
}

void std::__shared_ptr_emplace<std::basic_string<char,std::char_traits<char>,std::pmr::polymorphic_allocator<char>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<caulk::rt::vector<AMCP::DAL::Timestamp_Writer::Timestamp_Data>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_9774()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

uint64_t AMCP::IO_Core::Play_State_Manager::start(uint64_t *a1, int a2, uint64_t *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v6), byte_1EE0132CC == 1))
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = a3[1];
    }

    if (v7)
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

      v6 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v6)
      {
        v12 = *(a3 + 23) >= 0 ? a3 : *a3;
        v13 = a2 ? "Prewarm" : "Play";
        AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, a1[1]);
        v14 = v29 >= 0 ? __p : __p[0];
        *buf = 136316162;
        v31 = "Play_State_Manager.cpp";
        v32 = 1024;
        v33 = 22;
        v34 = 2080;
        v35 = v12;
        v36 = 2080;
        v37 = v13;
        v38 = 2080;
        v39 = v14;
        _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::start >>: request(%s)  --  %s", buf, 0x30u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (a2 == 1)
  {
    v15 = *a1;
    v16 = a1;
  }

  else
  {
    if (a2)
    {
      goto LABEL_29;
    }

    v16 = a1 + 1;
    v15 = a1[1];
  }

  if (v15 != -1)
  {
    *v16 = v15 + 1;
  }

LABEL_29:
  if (a1[1])
  {
    v17 = 2;
  }

  else
  {
    v17 = *a1 != 0;
  }

  AMCP::Logging_Settings::instance(v6);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v18), byte_1EE0132CC == 1))
  {
    v19 = *(a3 + 23);
    if ((v19 & 0x80u) != 0)
    {
      v19 = a3[1];
    }

    if (v19)
    {
      v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v20 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v18);
      }

      v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v23 = *v22;
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      else
      {
        v23 = *v22;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }

        if (a2)
        {
          v24 = "Prewarm";
        }

        else
        {
          v24 = "Play";
        }

        AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, a1[1]);
        if (v29 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        *buf = 136316162;
        v31 = "Play_State_Manager.cpp";
        v32 = 1024;
        v33 = 44;
        v34 = 2080;
        v35 = a3;
        v36 = 2080;
        v37 = v24;
        v38 = 2080;
        v39 = v25;
        _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::start <<: request(%s) --  %s", buf, 0x30u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t AMCP::IO_Core::Play_State_Manager::stop(uint64_t *a1, int a2, uint64_t *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v6), byte_1EE0132CC == 1))
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = a3[1];
    }

    if (v7)
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

      v6 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v6)
      {
        v12 = *(a3 + 23) >= 0 ? a3 : *a3;
        v13 = a2 ? "Prewarm" : "Play";
        AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, a1[1]);
        v14 = v36 >= 0 ? __p : __p[0];
        *buf = 136316162;
        v38 = "Play_State_Manager.cpp";
        v39 = 1024;
        v40 = 56;
        v41 = 2080;
        v42 = v12;
        v43 = 2080;
        v44 = v13;
        v45 = 2080;
        v46 = v14;
        _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::stop >>: request(%s) --  %s", buf, 0x30u);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v15 = a1[1];
  if (v15 || *a1)
  {
    if (a2 == 1)
    {
      if (*a1)
      {
        --*a1;
      }
    }

    else if (!a2)
    {
      if (!v15)
      {
        goto LABEL_33;
      }

      a1[1] = --v15;
    }

    if (v15)
    {
      v16 = 2;
LABEL_34:
      AMCP::Logging_Settings::instance(v6);
      if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v17), byte_1EE0132CC == 1))
      {
        v18 = *(a3 + 23);
        if ((v18 & 0x80u) != 0)
        {
          v18 = a3[1];
        }

        if (v18)
        {
          v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v19 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v17);
          }

          v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = *v21;
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          else
          {
            v22 = *v21;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            if (*(a3 + 23) < 0)
            {
              a3 = *a3;
            }

            if (a2)
            {
              v23 = "Prewarm";
            }

            else
            {
              v23 = "Play";
            }

            AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, a1[1]);
            if (v36 >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            *buf = 136316162;
            v38 = "Play_State_Manager.cpp";
            v39 = 1024;
            v40 = 87;
            v41 = 2080;
            v42 = a3;
            v43 = 2080;
            v44 = v23;
            v45 = 2080;
            v46 = v24;
            _os_log_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::stop <<: request(%s) --  %s", buf, 0x30u);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      goto LABEL_77;
    }

LABEL_33:
    v16 = *a1 != 0;
    goto LABEL_34;
  }

  AMCP::Logging_Settings::instance(v6);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v25), byte_1EE0132CC == 1))
  {
    v26 = *(a3 + 23);
    if ((v26 & 0x80u) != 0)
    {
      v26 = a3[1];
    }

    if (v26)
    {
      v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v27 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v25);
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

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }

        if (a2)
        {
          v31 = "Prewarm";
        }

        else
        {
          v31 = "Play";
        }

        AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, a1[1]);
        if (v36 >= 0)
        {
          v32 = __p;
        }

        else
        {
          v32 = __p[0];
        }

        *buf = 136316162;
        v38 = "Play_State_Manager.cpp";
        v39 = 1024;
        v40 = 63;
        v41 = 2080;
        v42 = a3;
        v43 = 2080;
        v44 = v31;
        v45 = 2080;
        v46 = v32;
        _os_log_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::stop << EXTRA STOP CALLS: %s --  %s", buf, 0x30u);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v16 = 0;
LABEL_77:
  v33 = *MEMORY[0x1E69E9840];
  return v16;
}

void AMCP::IO_Core::Play_State_Manager::get_state_snapshot(AMCP::IO_Core::Play_State_Manager *this, unint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2[1])
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
  }

  v4 = 0;
  if (*a2)
  {
    v5 = 0;
    v6 = *(this + 2);
    do
    {
      if (v4 >= v6)
      {
        v7 = v4;
        v8 = v4 >> 2;
        v9 = v8 + 1;
        if ((v8 + 1) >> 62)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        if (v6 >> 1 > v9)
        {
          v9 = v6 >> 1;
        }

        if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v10);
        }

        v11 = (4 * v8);
        v6 = 0;
        *v11 = 1;
        v4 = (v11 + 1);
        memcpy(0, 0, v7);
        *this = 0;
        *(this + 1) = v4;
        *(this + 2) = 0;
      }

      else
      {
        *v4 = 1;
        v4 += 4;
      }

      *(this + 1) = v4;
      ++v5;
    }

    while (v5 < *a2);
  }
}

void sub_1DE51E4C8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_ExternalSecureMuteManager::GetExternalSecureMute(HALS_ExternalSecureMuteManager *this)
{
  v3 = 0;
  v2 = 0;
  (*(*this + 120))(this, *(this + 4), "msxebolg", 4, &v3, &v2, 0, 0, 0);
  return v2 != 0;
}

void HALB_IOBufferManager_Server::~HALB_IOBufferManager_Server(HALB_IOBufferManager_Server *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v4 = *(this + i + 32);
    if (v4)
    {
      *(this + i + 40) = v4;
      operator delete(v4);
    }
  }
}

void HALB_IOBufferManager_Server::AddIOBuffer(HALB_IOBufferManager_Server *this, unsigned int a2, unsigned int a3, int a4)
{
  v6 = this + 24 * a2;
  v7 = *(v6 + 1);
  v9 = *(v6 + 2);
  v8 = v6 + 8;
  v10 = v9 - v7;
  v11 = (v9 - v7) >> 2;
  v12 = a3 + 1 - v11;
  if (a3 + 1 > v11)
  {
    v13 = *(v8 + 2);
    if (v12 <= (v13 - v9) >> 2)
    {
      v17 = (v12 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v18 = (v17 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v19 = vdupq_n_s64(v17);
      v20 = v9 + 2;
      v21 = 3;
      do
      {
        v22 = vdupq_n_s64(v21 - 3);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1DE757E30)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v20 - 2) = 0;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v20 - 1) = 0;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1DE757E20)))).i32[1])
        {
          *v20 = 0;
          v20[1] = 0;
        }

        v21 += 4;
        v20 += 4;
        v18 -= 4;
      }

      while (v18);
      *(v8 + 1) = &v9[v12];
    }

    else
    {
      v14 = v12 + (v10 >> 2);
      if (v14 >> 62)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v15 = v13 - v7;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v16);
      }

      v24 = 0;
      v25 = 4 * (v10 >> 2);
      v26 = (v12 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v27 = vdupq_n_s64(v26);
      v28 = v26 - ((v12 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v29 = (v25 + 8);
      do
      {
        v30 = vdupq_n_s64(v24);
        v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1DE757E30)));
        if (vuzp1_s16(v31, *v27.i8).u8[0])
        {
          *(v29 - 2) = 0;
        }

        if (vuzp1_s16(v31, *&v27).i8[2])
        {
          *(v29 - 1) = 0;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1DE757E20)))).i32[1])
        {
          *v29 = 0;
          v29[1] = 0;
        }

        v24 += 4;
        v29 += 4;
      }

      while (v28 != v24);
      v32 = (v25 + 4 * v12);
      memcpy(v32, v9, *(v8 + 1) - v9);
      v33 = *v8;
      v34 = &v32[*(v8 + 1) - v9];
      *(v8 + 1) = v9;
      v35 = (v25 - (v9 - v33));
      memcpy(v35, v33, v9 - v33);
      v36 = *v8;
      *v8 = v35;
      *(v8 + 1) = v34;
      *(v8 + 2) = 0;
      if (v36)
      {
        operator delete(v36);
      }
    }

    v7 = *v8;
    v10 = *(v8 + 1) - *v8;
  }

  if (a3 >= (v10 >> 2))
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  *&v7[4 * a3] = a4;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 128;
  result = sysctlbyname("kern.osrelease", v4, &v3, 0, 0);
  if (!result)
  {
    __stringp = v4;
    strsep(&__stringp, ".");
    result = atoi(v4);
    ShouldUsePageMaxMask(void)::kernelVersion = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}