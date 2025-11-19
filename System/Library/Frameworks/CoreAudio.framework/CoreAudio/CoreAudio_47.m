BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DAD8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597DAD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597DAD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1718449187EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEEclEv(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  LOBYTE(v8[0]) = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  memset(v8, 0, sizeof(v8));
  if ((v7 - __p) > 0x37)
  {
    std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100]((v7 - __p) / 0x38uLL);
  }

  AMCP::make_available_format_list(v8, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DA58;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597DA58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597DA58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_current_format_propertyENSt3__110shared_ptrINS0_6PlugInEEEjjNS2_INS_4Core11System_CoreEEERNS5_13Operation_SetEEUlRKN2CA17StreamDescriptionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, const void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v27, *(*(a1 + 32) + 16), *(a1 + 28));
  if (!v27)
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
      buf.mSelector = 136315650;
      *&buf.mScope = "ASP_Object.cpp";
      v30 = 1024;
      v31 = 978;
      v32 = 2080;
      v33 = "(stream_core_ptr.get() == nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format, invalid core stream object", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "failed to set stream format, invalid core stream object");
    std::runtime_error::runtime_error(&v21, &v17);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v21);
    v34 = "auto AMCP::ASP::make_current_format_property(PlugIn_Ptr, AudioObjectID, Object_ID, Core::System_Core_Ptr, Core::Operation_Set &)::(anonymous class)::operator()(const CA::StreamDescription &) const";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    v36 = 978;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v20);
  }

  AMCP::Core::Core::get_simple_required_property<1718449187u>(v20, v27);
  is_an_available_format = AMCP::Utility::Stream_Format::format_is_an_available_format(a2, v20[0], v20[1]);
  if (!is_an_available_format)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_an_available_format);
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
      buf.mSelector = 136315650;
      *&buf.mScope = "ASP_Object.cpp";
      v30 = 1024;
      v31 = 982;
      v32 = 2080;
      v33 = "(format_is_valid) == false";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format, invalid format", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v18, "failed to set stream format, invalid format");
    std::runtime_error::runtime_error(&v21, &v18);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v21);
    v34 = "auto AMCP::ASP::make_current_format_property(PlugIn_Ptr, AudioObjectID, Object_ID, Core::System_Core_Ptr, Core::Operation_Set &)::(anonymous class)::operator()(const CA::StreamDescription &) const";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    v36 = 982;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  strcpy(&buf, " tfpbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(v6, v7, 0, &buf, 0, 0, 40, a2);
  *&buf.mSelector = v20;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE5A0278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, std::runtime_error a12, uint64_t a13, std::runtime_error a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a12.__vftable)
  {
    operator delete(a12.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a14);
  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a18);
  *(v27 - 128) = &a19;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100]((v27 - 128));
  v29 = *(v27 - 136);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597B588;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  v4 = result[5];
  a2[4] = result[4];
  a2[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B588;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B588;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_current_format_propertyENSt3__110shared_ptrINS0_6PlugInEEEjjNS2_INS_4Core11System_CoreEEERNS5_13Operation_SetEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  *&v8.mSelector = 0x676C6F6270667420;
  v8.mElement = 0;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  result = AMCP::ASP::PlugIn::ObjectGetPropertyData(v3, v4, 0, &v8, 0, 0, 40, &v9);
  v12 = v9;
  v13 = v10;
  v14 = v11;
  if (result)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v6 = v13;
    *a2 = v12;
    *(a2 + 16) = v6;
    *(a2 + 32) = v14;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597B508;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B508;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B508;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936487523EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D9D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D9D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D9D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936487523EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D958;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEED0Ev(void *a1)
{
  *a1 = &unk_1F597D958;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEED1Ev(void *a1)
{
  *a1 = &unk_1F597D958;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1952805485EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D8D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D8D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D8D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1952805485EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D858;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D858;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D858;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1952542835EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjRKNS_15Property_TraitsIXT_EE10Value_TypeEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEEclEv(uint64_t a1)
{
  if (!AMCP::ASP::PlugIn::ObjectHasProperty(*(a1 + 8), *(a1 + 24), 0, (a1 + 28)))
  {
    return *(a1 + 40);
  }

  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return *(a1 + 40);
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_8:
  if (v5)
  {
    return *(a1 + 40);
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D7D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D7D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D7D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935894638EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D758;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D758;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D758;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935894638EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D6D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D6D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D6D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935960434EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D658;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D658;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D658;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935960434EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D5D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D5D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D5D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::ASP::make_channel_layout_property(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a6 + 8))
  {
    atomic_fetch_add_explicit(((*(a6 + 8) >> 64) + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE5A233C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE5A24B0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667523955EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D558;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D558;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D558;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667523955EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
{
  IsPropertySettable = AMCP::ASP::PlugIn::ObjectIsPropertySettable(*(a1 + 8), *(a1 + 24), 0, (a1 + 28));
  LODWORD(result) = AMCP::ASP::property_always_is_settable(*(a1 + 28), v3);
  if (IsPropertySettable == 0x100000000)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D4D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D4D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D4D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667523955EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EEclESN_(uint64_t a1, void *a2)
{
  v6 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 8);
  *__p = *a2;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v5 - __p), __p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D458;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D458;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D458;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667523955EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE5A2DA0(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D3D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D3D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D3D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1684301171EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D358;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D358;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D358;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1684301171EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE5A3368(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D2D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D2D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D2D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP35make_default_system_device_propertyENSt3__110shared_ptrINS0_6PlugInEEEjRNS_4Core13Operation_SetEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = AMCP::ASP::get_number_of_non_reference_streams_for_scope(0x6F757470u, (a1 + 8), v2);
  if (result)
  {
    *&v6.mSelector = 0x676C6F6273666C74;
    v6.mElement = 0;
    if (AMCP::ASP::PlugIn::ObjectHasProperty(*(a1 + 8), v2, 0, &v6))
    {
      v4 = *(a1 + 8);
      v7 = 0;
      PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v4, v2, 0, &v6, 0, 0, 4, &v7);
      return (PropertyData | v7) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AMCP::ASP::get_number_of_non_reference_streams_for_scope(AudioObjectPropertyScope a1, AMCP::ASP::PlugIn **a2, uint64_t a3)
{
  v4 = *a2;
  v13.mSelector = 1937009955;
  v13.mScope = a1;
  v13.mElement = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v14, v4, a3, &v13);
  v5 = __p;
  if (v14 || (v7 = v16, __p == v16))
  {
    v6 = 0;
  }

  else
  {
    LODWORD(v6) = 0;
    v8 = __p;
    do
    {
      v9 = *a2;
      v10 = *v8++;
      *&v13.mSelector = 0x676C6F6274617073;
      v13.mElement = 0;
      v17 = 0;
      if (AMCP::ASP::PlugIn::ObjectGetPropertyData(v9, v10, 0, &v13, 0, 0, 4, &v17))
      {
        v11 = 1;
      }

      else
      {
        v11 = v17 == 0;
      }

      if (v11)
      {
        v6 = (v6 + 1);
      }

      else
      {
        v6 = v6;
      }
    }

    while (v8 != v7);
  }

  if (v5)
  {
    operator delete(v5);
  }

  return v6;
}

void std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597B488;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B488;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B488;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_default_device_propertyEjNSt3__110shared_ptrINS0_6PlugInEEEjRNS_4Core13Operation_SetEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  result = AMCP::ASP::get_number_of_non_reference_streams_for_scope(v2, (a1 + 16), v3);
  if (result)
  {
    v7.mSelector = 1684434036;
    v7.mScope = v2;
    v7.mElement = 0;
    if (AMCP::ASP::PlugIn::ObjectHasProperty(*(a1 + 16), v3, 0, &v7))
    {
      v5 = *(a1 + 16);
      v8 = 0;
      PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v5, v3, 0, &v7, 0, 0, 4, &v8);
      return (PropertyData | v8) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F597B408;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B408;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B408;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_channel_layout_propertyEjNSt3__110shared_ptrINS0_6PlugInEEEjjNS2_INS_4Core11System_CoreEEERNS5_13Operation_SetEEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(a1 + 16) + 16), *(a1 + 12));
  if (v5)
  {
    AMCP::ASP::make_stream_info_list(v4, *(*(a1 + 16) + 16), &v5, *(a1 + 8));
    v2 = v4[0] != v4[1];
    if (v4[0])
    {
      operator delete(v4[0]);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v2;
}

void sub_1DE5A3C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::__clone(void *result, void *a2)
{
  *a2 = &unk_1F597B388;
  a2[1] = result[1];
  v2 = result[3];
  a2[2] = result[2];
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B388;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B388;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_channel_layout_propertyEjNSt3__110shared_ptrINS0_6PlugInEEEjjNS2_INS_4Core11System_CoreEEERNS5_13Operation_SetEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AMCP::Core::Broker::fetch_core(&v13, *(*(a1 + 40) + 16), *(a1 + 36));
  if (!v13)
  {
    v4 = 0;
    goto LABEL_10;
  }

  AMCP::ASP::make_stream_info_list(&v11, *(*(a1 + 40) + 16), &v13, *(a1 + 8));
  if (v11 == v12)
  {
    v4 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = v11;
    do
    {
      v4 += v5[11];
      v5 += 14;
    }

    while (v5 != v12);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  operator delete(v11);
LABEL_10:
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  LOBYTE(v11) = 0;
  std::vector<char>::vector[abi:ne200100](a2, 20 * v6 + 12);
  v7 = *a2;
  *v7 = 0;
  *(v7 + 8) = v4;
  v8 = v7 + 12;
  for (i = a2[1]; v8 != i; v8 += 20)
  {
    *v8 = 0xFFFFFFFFLL;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

  v10 = v14;
  if (v14)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE5A3FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F597B308;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  v3 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B308;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B308;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935763060EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D258;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D258;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D258;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935763060EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D1D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D1D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D1D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1650682915EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *&v10.mSelector = 0x676C6F6262636C23;
  v10.mElement = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v11, v4, v5, &v10);
  v6 = v11;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v7 = __p;
  if (!v6)
  {
    v8 = v13;
    if (__p != v13)
    {
      v9 = __p;
      do
      {
        v10.mSelector = AMCP::ASP::Driver::get_core_id_for_driver_id(*(*(a1 + 8) + 8), *v9);
        if (v10.mSelector)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a2, &v10);
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  if (v7)
  {
    operator delete(v7);
  }
}

void sub_1DE5A4870(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597CA08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597CA08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597CA08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1650751011EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *&v10.mSelector = 0x676C6F6262647623;
  v10.mElement = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v11, v4, v5, &v10);
  v6 = v11;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v7 = __p;
  if (!v6)
  {
    v8 = v13;
    if (__p != v13)
    {
      v9 = __p;
      do
      {
        v10.mSelector = AMCP::ASP::Driver::get_core_id_for_driver_id(*(*(a1 + 8) + 8), *v9);
        if (v10.mSelector)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a2, &v10);
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  if (v7)
  {
    operator delete(v7);
  }
}

void sub_1DE5A4B5C(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597C988;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C988;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C988;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060006EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C908;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C908;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C908;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060006EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C888;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C888;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C888;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060014EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C808;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C808;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C808;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060014EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
{
  IsPropertySettable = AMCP::ASP::PlugIn::ObjectIsPropertySettable(*(a1 + 8), *(a1 + 24), 0, (a1 + 28));
  LODWORD(result) = AMCP::ASP::property_always_is_settable(*(a1 + 28), v3);
  if (IsPropertySettable == 0x100000000)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C788;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C788;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C788;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060014EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKbE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EEclESK_(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 4);
  v4 = __p;
  *__p = *a2;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v6 - v4), v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C708;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C708;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C708;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060014EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p != 0;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C688;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C688;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C688;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651536495EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C608;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C608;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C608;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651536495EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p != 0;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C588;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C588;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C588;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651010921EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C508;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C508;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C508;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651010921EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p != 0;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C488;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C488;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C488;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651013225EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C408;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C408;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C408;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651013225EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p != 0;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C388;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C388;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C388;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651007861EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C308;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C308;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C308;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651007861EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p != 0;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C288;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C288;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C288;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651861860EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C108;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C108;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C108;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651861860EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize));
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE5A7574(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C088;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t AMCP::ASP::get_max_number_channels_for_scope(int a1, AMCP::ASP::PlugIn **a2, uint64_t a3)
{
  v4 = *a2;
  v22[0] = 1937009955;
  v22[1] = a1;
  LODWORD(v23) = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v18, v4, a3, v22);
  v5 = __p;
  if (!v18)
  {
    v8 = v20;
    if (__p != v20)
    {
      LODWORD(v6) = 0;
      v9 = __p;
      while (1)
      {
        v10 = *v9;
        v11 = *a2;
        *&v21.mSelector = 0x676C6F6270667461;
        v21.mElement = 0;
        PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(v11, v10, 0, &v21, 0, 0);
        v13 = PropertyDataSize;
        if (PropertyDataSize >> 35 >= 7 && PropertyDataSize == 0)
        {
          std::vector<AudioStreamRangedDescription>::vector[abi:ne200100](&v26, (613566757 * (PropertyDataSize >> 35)) >> 32);
          v22[0] = AMCP::ASP::PlugIn::ObjectGetPropertyData(v11, v10, 0, &v21, 0, 0, (v27 - v26) & 0xFFFFFFF8, v26);
          v24 = 0;
          v25 = 0;
          v23 = 0;
          std::vector<AudioStreamRangedDescription>::__init_with_size[abi:ne200100]<AudioStreamRangedDescription*,AudioStreamRangedDescription*>(&v23, v26, v27, 0x6DB6DB6DB6DB6DB7 * ((v27 - v26) >> 3));
          if (v26)
          {
            v27 = v26;
            operator delete(v26);
          }

          v15 = v23;
          if (v22[0])
          {
LABEL_26:
            v16 = 0;
            if (!v15)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v15 = 0;
          v22[0] = v13;
          v24 = 0;
          v25 = 0;
          v23 = 0;
          if (v13)
          {
            goto LABEL_26;
          }
        }

        if (v15 == v24)
        {
          goto LABEL_26;
        }

        v16 = 0;
        v17 = v15;
        do
        {
          if (v16 <= v17[7])
          {
            v16 = v17[7];
          }

          v17 += 14;
        }

        while (v17 != v24);
        if (!v15)
        {
          goto LABEL_24;
        }

LABEL_23:
        operator delete(v15);
LABEL_24:
        v6 = v16 + v6;
        if (++v9 == v8)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v6 = 0;
LABEL_3:
  if (v5)
  {
    operator delete(v5);
  }

  return v6;
}

void AMCP::ASP::PlugIn_Object::update_core(AMCP::ASP::PlugIn_Object *this)
{
  AMCP::Core::Broker::fetch_core(&v3, *(*(this + 1) + 16), *(this + 15));
  v2 = v3;
  if (v3)
  {
    AMCP::ASP::calculate_max_element(this + 3, *(this + 11), *(this + 17));
    if ((AMCP::is_base_of(0x61706C67, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x61626F78, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x61646576, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x61737472, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x736C6472, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x6C65766C, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x746F676C, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x736C6374, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x7370616E, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x6163746C, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x61636C6B, *(this + 17)) & 1) == 0 && AMCP::is_base_of(0x616F626A, *(this + 17)))
    {
      AMCP::ASP::PlugIn_Object::update_object_core(this);
    }

    v5 = (v2 + 12);
    LOBYTE(v6) = 1;
    caulk::concurrent::shared_spin_lock::lock(v2 + 12);
    caulk::concurrent::shared_spin_lock::unlock(v2 + 12);
    v5 = 0x676C6F626F776E72;
    v6 = 0;
    v2[1] = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v2, &v5, &AMCP::k_object_id_unknown);
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(0);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE5A7B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t CADeprecated::CAPThread::Start(uint64_t this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (atomic_load((this + 8)))
  {
    CAVerboseAbort();
  }

  if (!atomic_load((this + 8)))
  {
    v3 = this;
    v4 = pthread_attr_init(&v18);
    if (v4)
    {
      v8 = v4;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      v15 = "CAPThread.cpp";
      v16 = 1024;
      v17 = 255;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  CAPThread::Start: Thread attributes could not be created.";
    }

    else
    {
      v5 = pthread_attr_setdetachstate(&v18, 2);
      if (v5)
      {
        v8 = v5;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        v15 = "CAPThread.cpp";
        v16 = 1024;
        v17 = 258;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  CAPThread::Start: A thread could not be created in the detached state.";
      }

      else
      {
        pthread_attr_getschedparam(&v18, &v13);
        v13.sched_priority = *(v3 + 104);
        pthread_attr_setschedparam(&v18, &v13);
        if (*(v3 + 122) == 1)
        {
          pthread_attr_setschedpolicy(&v18, 4);
        }

        v12 = 0;
        v6 = pthread_create(&v12, &v18, CADeprecated::CAPThread::Entry, v3);
        if (!v6 && v12)
        {
          atomic_store(v12, (v3 + 8));
          this = pthread_attr_destroy(&v18);
          goto LABEL_10;
        }

        v8 = v6;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = v8;
        }

        *buf = 136315394;
        v15 = "CAPThread.cpp";
        v16 = 1024;
        v17 = 272;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  CAPThread::Start: Could not create a thread.";
      }
    }

    _os_log_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
    goto LABEL_19;
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t CADeprecated::CAPThread::Entry(CADeprecated::CAPThread *this, void *a2)
{
  atomic_store(pthread_self(), this + 1);
  if (*(this + 40))
  {
    pthread_setname_np(this + 40);
  }

  if (*(this + 121) != 1)
  {
    goto LABEL_6;
  }

  *(this + 121) = 1;
  if (!atomic_load(this + 1))
  {
    goto LABEL_6;
  }

  *policy_info = *(this + 108);
  v4 = *(this + 120);
  v12 = *(this + 29);
  v13 = v4;
  v5 = atomic_load(this + 1);
  v6 = pthread_mach_thread_np(v5);
  if (thread_policy_set(v6, 2u, policy_info, 4u))
  {
    v9 = CAVerboseAbort();
    __cxa_begin_catch(v9);
    __cxa_end_catch();
  }

  else
  {
LABEL_6:
    v7 = *(this + 3);
    if (v7)
    {
      v8 = v7(*(this + 4));
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_10:
  atomic_store(0, this + 1);
  if (*(this + 123) == 1)
  {
    (*(*this + 8))(this);
  }

  return v8;
}

void AMCP::IOAudio2::Stream::~Stream(AMCP::IOAudio2::Stream *this)
{
  AMCP::IOAudio2::Stream::~Stream(this);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = this;
  v30 = *MEMORY[0x1E69E9840];
  *this = &unk_1F597EE90;
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  switch(v5)
  {
    case 3:
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = *(v1 + 8);
        v24 = 136315650;
        v25 = "IOAudio2_Stream.cpp";
        v26 = 1024;
        v27 = 120;
        v28 = 1024;
        v29 = v19;
        v20 = v17;
        v21 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v20, v21, "%32s:%-5d Tore down Stream with object id %u", &v24, 0x18u);
      }

      break;
    case 2:
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
        v18 = *(v1 + 8);
        v24 = 136315650;
        v25 = "IOAudio2_Stream.cpp";
        v26 = 1024;
        v27 = 120;
        v28 = 1024;
        v29 = v18;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tore down Stream with object id %u", &v24, 0x18u);
      }

      break;
    case 1:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v1 + 8);
        v24 = 136315650;
        v25 = "IOAudio2_Stream.cpp";
        v26 = 1024;
        v27 = 120;
        v28 = 1024;
        v29 = v22;
        v20 = v9;
        v21 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AMCP::IOAudio2::Device_Sub_Object::~Device_Sub_Object(v1);
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DE5A8230(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOAudio2::Device_Sub_Object::Device_Sub_Object(uint64_t a1, uint64_t a2, const void *a3, CFDictionaryRef *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5989748;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  if (!*a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = 0;
  v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v13)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*&>(&valuePtr, *a4, a3);
  if (v16 == 1)
  {
    v7 = valuePtr;
    if (!valuePtr)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFRetain(valuePtr);
    cf = v7;
    CFRelease(v7);
  }

  else
  {
    v7 = v13;
    v13 = 0;
    cf = v7;
  }

  v8 = applesauce::CF::convert_to<unsigned int,0>(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 36) = v8;
  *(a1 + 40) = *a4;
  *a4 = 0;
  return a1;
}

void sub_1DE5A8404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::NumberRef::~NumberRef(&a10);
  applesauce::CF::NumberRef::~NumberRef(&a9);
  v13 = *(v10 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IOAudio2::get_stream_starting_channel(CFDictionaryRef theDict, const applesauce::CF::DictionaryRef *a2)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_9;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v6, theDict, @"starting channel");
  if (v7 != 1)
  {
    return 0;
  }

  v2 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<unsigned int,0>(v6);
  CFRelease(v2);
  return v3;
}

void *AMCP::IOAudio2::Stream::create_from_dictionary_list(void *result, uint64_t a2, uint64_t a3, CFArrayRef *a4)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v4 = *a4;
  if (*a4)
  {
    result = CFArrayGetCount(*a4);
    v6 = result;
    v7 = *a4;
    if (*a4)
    {
      result = CFArrayGetCount(*a4);
      v8 = result;
      if (!v6)
      {
        return result;
      }
    }

    else
    {
      v8 = 0;
      if (!result)
      {
        return result;
      }
    }

    if (v4 != v7 || v8)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v4, 0);
      operator new();
    }
  }

  return result;
}

void sub_1DE5A8834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IOAudio2::Stream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597F1F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::IOAudio2::Stream::find_stream_dictionary_by_driver_id(const __CFDictionary **this, CFArrayRef *a2, int a3)
{
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_18;
  }

  Count = CFArrayGetCount(*a2);
  v8 = Count;
  v9 = *a2;
  if (v9)
  {
    v10 = CFArrayGetCount(v9);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
    if (!Count)
    {
      goto LABEL_18;
    }
  }

  v11 = 0;
  while (v4 != v9 || v10 != v11)
  {
    applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(this, v4, v11);
    if (!*this)
    {
      goto LABEL_21;
    }

    LODWORD(valuePtr) = 0;
    cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *this, @"stream ID", &cf);
    v12 = valuePtr;
    if (!valuePtr)
    {
LABEL_21:
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not construct");
      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v13 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
    CFRelease(v12);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v13 == a3)
    {
      return;
    }

    if (*this)
    {
      CFRelease(*this);
    }

    if (v8 == ++v11)
    {
      break;
    }
  }

LABEL_18:
  *this = 0;
}

uint64_t AMCP::IOAudio2::Stream::get_mapping_options(AMCP::IOAudio2::Stream *this)
{
  if (!*(this + 5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_10;
  }

  LODWORD(valuePtr) = 1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v6, "Could not construct");
    __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *(this + 5), @"buffer mapping options", &cf);
  v2 = valuePtr;
  if (!valuePtr)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void AMCP::IOAudio2::get_stream_format(AMCP::IOAudio2 *this, const applesauce::CF::DictionaryRef *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(&v40, a2, @"current format");
  if ((v41 & 1) == 0)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *valuePtr = 136315650;
      *&valuePtr[4] = "IOAudio2_Stream.cpp";
      v43 = 1024;
      v44 = 107;
      v45 = 2080;
      v46 = "!raw_current_format_opt";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to find the current format for a stream", valuePtr, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v32, "failed to find the current format for a stream");
    std::runtime_error::runtime_error(&cf, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    cf.__vftable = &unk_1F5992170;
    v34 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(valuePtr, &cf);
    v47 = "CA::StreamDescription AMCP::IOAudio2::get_stream_format(const CF::Dictionary &)";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio2/IOAudio2_Stream.cpp";
    v49 = 107;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  v4 = v40;
  if (!v40)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
    goto LABEL_65;
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"sample rate", &cf);
  v5 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  v6 = applesauce::CF::convert_to<unsigned long long,0>(*valuePtr);
  CFRelease(v5);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *this = vcvtd_n_f64_u64(v6, 0x20uLL) + HIDWORD(v6);
  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not construct");
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"format ID", &cf);
  v7 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  v8 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  *(this + 2) = v8;
  CFRelease(v7);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
    __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"format flags", &cf);
  v9 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  v10 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  *(this + 3) = v10;
  CFRelease(v9);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"bytes per packet", &cf);
  v11 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  *(this + 4) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v11);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"frames per packet", &cf);
  v12 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  *(this + 5) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v12);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"bytes per frame", &cf);
  v13 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  *(this + 6) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v13);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v29, "Could not construct");
    __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"channels per frame", &cf);
  v14 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  *(this + 7) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v14);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v30, "Could not construct");
    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"bits per channel", &cf);
  v15 = *valuePtr;
  if (!*valuePtr)
  {
LABEL_64:
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
LABEL_65:
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(this + 8) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v15);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  if (v8 == 1819304813)
  {
    *(this + 3) = v10 & 0xFFFFFFBF;
  }

  CFRelease(v4);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE5A95A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a2)
  {
    __cxa_free_exception(v29);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::IOAudio2::Stream::build_core(AMCP::IOAudio2::Stream *this)
{
  v2 = AMCP::Core::Broker::reserve_id(*(*(**(this + 3) + 32) + 16));
  *(this + 8) = v2;
  *__p = 0u;
  *v6 = 0u;
  v7 = 1065353216;
  v3 = 0x676C6F6269646E74;
  LODWORD(v4) = 0;
  LODWORD(v8) = v2;
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
}

void sub_1DE5A9A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v5 - 32));
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void AMCP::IOAudio2::update_stream_core(uint64_t a1, const applesauce::CF::DictionaryRef *a2, CFDictionaryRef *a3)
{
  v3 = *MEMORY[0x1E69E9840];
  AMCP::IOAudio2::get_stream_starting_channel(*a3, a2);
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
}

void sub_1DE5AAC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t connect, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __cxa_free_exception(v40);
    operator delete(v41);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1::~$_1(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  IOConnectRelease(*a1);
  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio2L18update_stream_coreERNS_4Core13Operation_SetERKN10applesauce5iokit17io_connect_holderERKNS4_2CF13DictionaryRefEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  is_an_available_format = AMCP::Utility::Stream_Format::format_is_an_available_format(a2, *(a1 + 16), *(a1 + 24));
  if (!is_an_available_format)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_an_available_format);
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
      *inputStruct = 136315650;
      *&inputStruct[4] = "IOAudio2_Stream.cpp";
      *&inputStruct[12] = 1024;
      *&inputStruct[14] = 215;
      *&inputStruct[18] = 2080;
      *&inputStruct[20] = "(format_is_valid) == false";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format", inputStruct, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v21, "failed to set stream format");
    std::runtime_error::runtime_error(&v14, &v21);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5992170;
    v15 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(inputStruct, &v14);
    v27 = "auto AMCP::IOAudio2::update_stream_core(Core::Operation_Set &, const IOKit::Connection &, const CF::Dictionary &, uint32_t)::(anonymous class)::operator()(const CA::StreamDescription &) const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio2/IOAudio2_Stream.cpp";
    v29 = 215;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
  }

  *inputStruct = vcvtd_n_s64_f64(*a2 - floor(*a2), 0x20uLL) | (vcvtmd_s64_f64(*a2) << 32);
  *&inputStruct[8] = *(a2 + 8);
  *&inputStruct[24] = *(a2 + 24);
  LODWORD(v27) = *(a2 + 32);
  v5 = *(a1 + 8);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  input = *(a1 + 12);
  v14.__vftable = 0;
  v14.__imp_.__imp_ = 0;
  v15 = 0;
  outputCnt = 0;
  __p = 0;
  v13 = 0uLL;
  v23 = 0;
  if (IOConnectCallMethod(v5, 5u, &input, 1u, inputStruct, 0x28uLL, 0, &outputCnt, 0, &v23))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(&v14, outputCnt);
  if (v23)
  {
    std::vector<unsigned char>::__append(&__p, v23);
    if (__p)
    {
      operator delete(__p);
    }
  }

  if (v14.__vftable)
  {
    operator delete(v14.__vftable);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE5AB480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a33 < 0)
  {
    operator delete(a29.__vftable);
    if ((v40 & 1) == 0)
    {
LABEL_10:
      if (a16)
      {
        operator delete(a16);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v39);
  goto LABEL_10;
}

void std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::destroy_deallocate(uint64_t a1)
{
  v2 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v2);
  IOConnectRelease(*(a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return IOConnectRelease(*(a1 + 8));
}

uint64_t AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = IOConnectAddRef(v4);
  if (v5)
  {
    v8 = v5;
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v8, v10, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v6 = *(a2 + 4);
  *(a1 + 8) = 0;
  *(a1 + 4) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 6);
  return a1;
}

void std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F597F0E8;
  v2 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v2);
  IOConnectRelease(*(a1 + 8));

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F597F0E8;
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  IOConnectRelease(*(a1 + 8));
  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio2L18update_stream_coreERNS_4Core13Operation_SetERKN10applesauce5iokit17io_connect_holderERKNS4_2CF13DictionaryRefEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0>,CA::StreamDescription ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 40);
  return result;
}

__n128 std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0>,CA::StreamDescription ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597EFD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

double AMCP::DAL::Packetized_File_Handler::get_length_in_frames(AMCP::DAL::Packetized_File_Handler *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(this + 6);
  if (!v1)
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
      v28 = "Packetized_File_Handler.cpp";
      v29 = 1024;
      v30 = 52;
      v31 = 2080;
      v32 = "not (m_audio_File != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_File_Handler::GetLengthInFrames: mAudioFile is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&ioPropertyDataSize);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Packetized_File_Handler::GetLengthInFrames: mAudioFile is null", &v15);
    std::logic_error::logic_error(&outPropertyData, &v15);
    outPropertyData.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &outPropertyData);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v33 = "virtual Sample_Time AMCP::DAL::Packetized_File_Handler::get_length_in_frames() const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Handler.cpp";
    LODWORD(v35) = 52;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  outPropertyData.__vftable = 0;
  ioPropertyDataSize = 8;
  Property = ExtAudioFileGetProperty(v1, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
  v3 = Property;
  AMCP::Utility::OSStatus_Error_Category::get(Property);
  if (v3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v28 = "Packetized_File_Handler.cpp";
      v29 = 1024;
      v30 = 56;
      v31 = 2080;
      v32 = "the_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_File_Handler::GetFileLengthInFrames: couldn't get the file's length", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v25, v3, &AMCP::Utility::OSStatus_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(&v16, v25);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v16);
    v35 = "virtual Sample_Time AMCP::DAL::Packetized_File_Handler::get_length_in_frames() const";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Handler.cpp";
    v37 = 56;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  v5 = *MEMORY[0x1E69E9840];
  return outPropertyData.__vftable;
}

void sub_1DE5ABE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int16 a25, char a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v35 - 128);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a16);
  std::runtime_error::~runtime_error(&a33);
  if (a11)
  {
    __cxa_free_exception(v34);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a27);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Packetized_File_Factory(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(buf, "read");
  v2 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a1, buf);
  v3 = v2;
  if (v21 < 0)
  {
    operator delete(*buf);
  }

  if (v3)
  {
    operator new();
  }

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
    *buf = 136315394;
    *&buf[4] = "Packetized_File_Handler.cpp";
    v19 = 1024;
    v20 = 34;
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Packetized_File_Factory only supports reading packetized files", buf, 0x12u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&ioPropertyDataSize);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string("Packetized_File_Factory only supports reading packetized files", &v9);
  std::runtime_error::runtime_error(&v17, &v9);
  std::runtime_error::runtime_error(&cf, &v17);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  cf.__vftable = &unk_1F5992170;
  v11 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &cf);
  v22 = "std::shared_ptr<DAL_File_Handler> AMCP::DAL::Packetized_File_Factory(const DAL_Settings &)";
  v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Handler.cpp";
  v24 = 34;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
}

void sub_1DE5AD4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::runtime_error a37)
{
  v40[4] = v38;
  v43 = v40[5];
  if (v43)
  {
    v40[6] = v43;
    operator delete(v43);
  }

  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v41 - 192);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
  std::runtime_error::~runtime_error(&a37);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (v39)
  {
    __cxa_free_exception(v37);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a12);
  _Unwind_Resume(a1);
}

void sub_1DE5AD534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, __int16 a15, char a16, char a17, void *a18, void *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, std::runtime_error a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a2)
  {
    applesauce::CF::DictionaryRef::~DictionaryRef(&a41.__vftable);
    if (*(v49 - 169) < 0)
    {
      operator delete(*(v48 + 80));
    }

    __cxa_begin_catch(a1);
    v51 = *(v47 + 48);
    if (v51)
    {
      ExtAudioFileDispose(v51);
      *(v47 + 48) = 0;
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE5AD980(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Packetized_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::Packetized_File_Reader>,std::allocator<AMCP::DAL::Packetized_File_Reader>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_File_HandlerEE27__shared_ptr_default_deleteIS3_NS2_22Packetized_File_ReaderEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Packetized_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::Packetized_File_Reader>,std::allocator<AMCP::DAL::Packetized_File_Reader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::Packetized_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::Packetized_File_Reader>,std::allocator<AMCP::DAL::Packetized_File_Reader>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext::HasEnabledOutputStreams(HALS_IOContext *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOContext23HasEnabledOutputStreamsEv_block_invoke;
  v4[3] = &unk_1E8676D38;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5ADB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOContext23HasEnabledOutputStreamsEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = (*(**(v2 + 104) + 32))(*(v2 + 104), 0);
  if (result)
  {
    result = (*(**(v2 + 104) + 48))(*(v2 + 104), 0);
    v4 = result != 0;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

uint64_t HALS_IOContext::HasEnabledInputStreams(HALS_IOContext *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOContext22HasEnabledInputStreamsEv_block_invoke;
  v4[3] = &unk_1E8676D60;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5ADCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOContext22HasEnabledInputStreamsEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = (*(**(v2 + 104) + 32))(*(v2 + 104), 1);
  if (result)
  {
    result = (*(**(v2 + 104) + 48))(*(v2 + 104), 1);
    v4 = result != 0;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

uint64_t HALS_IOContext::GetNumberInputStreamsOfType(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK14HALS_IOContext27GetNumberInputStreamsOfTypeE15InputStreamType_block_invoke;
  v5[3] = &unk_1E8676CF0;
  v5[4] = &v7;
  v5[5] = a1;
  v6 = a2;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK14HALS_IOContext27GetNumberInputStreamsOfTypeE15InputStreamType_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 40) + 104) + 40))(*(*(a1 + 40) + 104), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5ADE98(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext::SetPropertyData(HALS_IOContext *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, _DWORD *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v118 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
    goto LABEL_76;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1836282993)
  {
    if (mSelector <= 1902539641)
    {
      if (mSelector == 1836282994)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1246;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioIOContextProperty_MasterDevice", buf, 0x12u);
          }

          v45 = __cxa_allocate_exception(0x10uLL);
          *v45 = off_1F5991DD8;
          v45[2] = 561211770;
        }

        goto LABEL_63;
      }

      if (mSelector == 1852012899)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1238;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioDevicePropertyIOCycleUsage", buf, 0x12u);
          }

          v74 = __cxa_allocate_exception(0x10uLL);
          *v74 = off_1F5991DD8;
          v74[2] = 561211770;
        }

        v20.n128_u32[0] = *a5;
        v61 = *(**(this + 13) + 632);
        v62 = *MEMORY[0x1E69E9840];

        v61(v20);
        return;
      }

      if (mSelector != 1869838183)
      {
        goto LABEL_101;
      }

      if ((*(*this + 112))(this, a2, a3, a6, a7, a8) > a4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1333;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyIOThreadOSWorkgroup", buf, 0x12u);
        }

        v69 = __cxa_allocate_exception(0x10uLL);
        *v69 = off_1F5991DD8;
        v69[2] = 561211770;
      }

      v24 = *a5;
      v25 = *(**(this + 13) + 688);
      v26 = *MEMORY[0x1E69E9840];
    }

    else
    {
      if (mSelector <= 1935959153)
      {
        if (mSelector == 1902539642)
        {
LABEL_37:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOContext.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1229;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioDevicePropertyBufferFrameSize", buf, 0x12u);
            }

            v68 = __cxa_allocate_exception(0x10uLL);
            *v68 = off_1F5991DD8;
            v68[2] = 561211770;
          }

          v36 = *a5;
          v37 = *(**(this + 13) + 624);
          v38 = *MEMORY[0x1E69E9840];

          v37();
          return;
        }

        if (mSelector != 1919773028)
        {
          goto LABEL_101;
        }

        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 0x40000000;
        v81[2] = ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_38;
        v81[3] = &__block_descriptor_tmp_39_12040;
        v82 = a4;
        v81[4] = this;
        v81[5] = a5;
        v22 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v22, v81);
        goto LABEL_63;
      }

      if (mSelector != 1935959154)
      {
        if (mSelector != 1937077093)
        {
          goto LABEL_101;
        }

        mScope = a3->mScope;
        v30 = HALS_ObjectMap::CopyObjectByObjectID(**(this + 9));
        v100 = 0;
        v101 = &v100;
        v102 = 0x3802000000;
        v103 = __Block_byref_object_copy__12047;
        v104 = __Block_byref_object_dispose__12048;
        memset(v105, 0, sizeof(v105));
        v106 = 1;
        v93 = 0;
        v94 = &v93;
        v95 = 0x3802000000;
        v96 = __Block_byref_object_copy__12047;
        v97 = __Block_byref_object_dispose__12048;
        memset(v98, 0, sizeof(v98));
        v99 = 1;
        v89 = 0;
        v90 = &v89;
        v91 = 0x2000000000;
        v92 = 0;
        v85 = 0;
        v86 = &v85;
        v87 = 0x2000000000;
        v88 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 1174405120;
        *&buf[16] = ___ZN14HALS_IOContext20SetIOProcStreamUsageERK30AudioHardwareIOProcStreamUsagejb_block_invoke;
        v108 = &unk_1F597F5B0;
        v116 = a4;
        v117 = mScope == 1768845428;
        v109 = &v89;
        v110 = &v85;
        v113 = this;
        v114 = a5;
        v111 = &v100;
        v115 = v30;
        HALS_ObjectMap::RetainObject(v30, v31);
        v112 = &v93;
        v32 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v32, buf);
        if (mScope == 1768845428 && *(v86 + 24) == 1)
        {
          HALS_IOContext::UpdateInputStreamUsageStatus(v33);
        }

        if (*(v90 + 6))
        {
          v75 = __cxa_allocate_exception(0x10uLL);
          v76 = *(v90 + 6);
          *v75 = off_1F5991DD8;
          v75[2] = v76;
        }

        HALS_ObjectMap::ReleaseObject(v115, v34);
        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v89, 8);
        _Block_object_dispose(&v93, 8);
        _Block_object_dispose(&v100, 8);
        HALS_ObjectMap::ReleaseObject(v30, v35);
        goto LABEL_63;
      }

      if ((*(*this + 112))(this, a2, a3, a6, a7, a8) > a4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1342;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyIdentifySpeechDeviceToAllowDeviceRestart", buf, 0x12u);
        }

        v73 = __cxa_allocate_exception(0x10uLL);
        *v73 = off_1F5991DD8;
        v73[2] = 561211770;
      }

      v57 = *a5;
      v25 = *(**(this + 13) + 712);
      v58 = *MEMORY[0x1E69E9840];
    }

LABEL_61:
    v25();
    return;
  }

  if (mSelector <= 1684108386)
  {
    if (mSelector != 1633906541)
    {
      if (mSelector == 1633970532)
      {
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 0x40000000;
        v83[2] = ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
        v83[3] = &__block_descriptor_tmp_37_12039;
        v84 = a4;
        v83[4] = this;
        v83[5] = a5;
        v59 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v59, v83);
      }

      else
      {
        if (mSelector != 1634300531)
        {
          goto LABEL_101;
        }

        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 0x40000000;
        v79[2] = ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_40;
        v79[3] = &__block_descriptor_tmp_41_12041;
        v80 = a4;
        v79[4] = this;
        v79[5] = a5;
        v23 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v23, v79);
      }

      goto LABEL_63;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1214;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyComposition", buf, 0x12u);
      }

      v71 = __cxa_allocate_exception(0x10uLL);
      *v71 = off_1F5991DD8;
      v71[2] = 561211770;
    }

    v39 = *a5;
    v40 = pthread_self();
    is_thread_configured_for_realtime = AMCP::Utility::is_thread_configured_for_realtime(v40, v41);
    if (is_thread_configured_for_realtime)
    {
      v63 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v63 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
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

      v44 = 1852797029;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1938;
        _os_log_error_impl(&dword_1DE1F9000, v66, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext::SetComposition not allowed on the IO thread, returning kAudioHardwareIllegalOperationError", buf, 0x12u);
      }
    }

    else
    {
      v43 = (*(**(this + 13) + 600))(*(this + 13), v39);
      if (!v43)
      {
        goto LABEL_63;
      }

      v44 = v43;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v44;
LABEL_76:
  }

  if (mSelector > 1735750500)
  {
    if (mSelector != 1735750501)
    {
      if (mSelector != 1752135523)
      {
        goto LABEL_101;
      }

      if ((*(*this + 112))(this, a2, a3, a6, a7, a8) > a4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1350;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioAggregateDevicePropertyHandleOverloadWithCatchup", buf, 0x12u);
        }

        v70 = __cxa_allocate_exception(0x10uLL);
        *v70 = off_1F5991DD8;
        v70[2] = 561211770;
      }

      v27 = *a5;
      v25 = *(**(this + 13) + 728);
      v28 = *MEMORY[0x1E69E9840];

      goto LABEL_61;
    }

    v50 = a3->mScope;
    v51 = HALS_ObjectMap::CopyObjectByObjectID(**(this + 9));
    v89 = 0;
    v90 = &v89;
    v91 = 0x2000000000;
    v92 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2000000000;
    v88 = 0;
    v100 = 0;
    v101 = &v100;
    v102 = 0x3802000000;
    v103 = __Block_byref_object_copy__12047;
    v104 = __Block_byref_object_dispose__12048;
    memset(v105, 0, sizeof(v105));
    v106 = 1;
    v93 = 0;
    v94 = &v93;
    v95 = 0x3802000000;
    v96 = __Block_byref_object_copy__12047;
    v97 = __Block_byref_object_dispose__12048;
    memset(v98, 0, sizeof(v98));
    v99 = 1;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 1174405120;
    *&buf[16] = ___ZN14HALS_IOContext14SetStreamUsageERK26AudioIOContext_StreamUsagejb_block_invoke;
    v108 = &unk_1F597F578;
    v116 = a4;
    v117 = v50 == 1768845428;
    v109 = &v89;
    v110 = &v85;
    v113 = this;
    v114 = a5;
    v111 = &v100;
    v115 = v51;
    HALS_ObjectMap::RetainObject(v51, v52);
    v112 = &v93;
    v53 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v53, buf);
    if (v50 == 1768845428 && *(v86 + 24) == 1)
    {
      HALS_IOContext::UpdateInputStreamUsageStatus(v54);
    }

    if (*(v90 + 6))
    {
      v77 = __cxa_allocate_exception(0x10uLL);
      v78 = *(v90 + 6);
      *v77 = off_1F5991DD8;
      v77[2] = v78;
    }

    HALS_ObjectMap::ReleaseObject(v115, v55);
    _Block_object_dispose(&v93, 8);
    _Block_object_dispose(&v100, 8);
    _Block_object_dispose(&v85, 8);
    _Block_object_dispose(&v89, 8);
    HALS_ObjectMap::ReleaseObject(v51, v56);
LABEL_63:
    v60 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector != 1684108387)
  {
    if (mSelector != 1718839674)
    {
LABEL_101:
      HALS_Object::SetPropertyData(this, a2, a3, v16, v17, v18, v19, a8);
    }

    goto LABEL_37;
  }

  if ((*(*this + 112))(this, a2, a3, a6, a7, a8) > a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1266;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyEnableCaptureFile", buf, 0x12u);
    }

    v72 = __cxa_allocate_exception(0x10uLL);
    *v72 = off_1F5991DD8;
    v72[2] = 561211770;
  }

  *(this + 41) = *a5;
  v46 = *(this + 13);
  AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(this);
  v48 = *(*v46 + 568);
  v49 = *MEMORY[0x1E69E9840];

  v48(v46, AudioCaptureMode);
}

void sub_1DE5AF1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext::GetAudioCaptureMode(HALS_IOContext *this)
{
  v1 = *(this + 41);
  if (!v1)
  {
    v6[0] = 0;
    v6[1] = 0;
    HALS_System::GetInstance(&v7, 0, v6);
    if (v7 && *(v7 + 1848) == 1)
    {
      v3 = 0;
      v4 = *(v7 + 1852);
      if (v4 <= 1)
      {
        v1 = 1;
      }

      else
      {
        v1 = v4;
      }
    }

    else
    {
      v3 = 1;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v3)
    {
      return *(this + 41);
    }
  }

  return v1;
}

uint64_t ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_IOContext.cpp";
      v12 = 1024;
      v13 = 1279;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyAddReporterID", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = *(v2 + 168);
  v5 = *(v2 + 176);
  result = v2 + 168;
  if (v4 != v5)
  {
    while (*v4 != *v1)
    {
      if (++v4 == v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_7:
    std::vector<long long>::push_back[abi:ne200100](result, v1);
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);
    std::__sort<std::__less<long long,long long> &,long long *>();
    result = (*(**(v2 + 104) + 400))(*(v2 + 104));
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_38(uint64_t result)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(result + 48) != 8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_IOContext.cpp";
      v11 = 1024;
      v12 = 1295;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyRemoveReporterID", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v1 = *(result + 32);
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  if (v3 != v2)
  {
    while (*v3 != **(result + 40))
    {
      v3 += 8;
      if (v3 == v2)
      {
        v3 = *(v1 + 176);
        break;
      }
    }
  }

  if (v2 == v3)
  {
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = v2 - (v3 + 8);
    if (v2 != v3 + 8)
    {
      memmove(v3, v3 + 8, v2 - (v3 + 8));
    }

    *(v1 + 176) = &v3[v4];
    v5 = *(**(v1 + 104) + 400);
    v6 = *MEMORY[0x1E69E9840];

    return v5();
  }

  return result;
}

uint64_t ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v2[22] = v2[21];
  v3 = *(a1 + 48);
  if (v3 >= 8)
  {
    v4 = 0;
    v5 = v3 & 0xFFFFFFF8;
    do
    {
      std::vector<long long>::push_back[abi:ne200100]((v2 + 21), (*(a1 + 40) + v4));
      v4 += 8;
    }

    while (v5 != v4);
    v6 = v2[21];
    v7 = v2[22];
  }

  std::__sort<std::__less<long long,long long> &,long long *>();
  v8 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::__equal_to &>(v2[21], v2[22]);
  if (v8 != v2[22])
  {
    v9 = v2[22];
    v2[22] = v8;
  }

  return (*(*v2[13] + 400))(v2[13], v9);
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
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
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

__n128 __Block_byref_object_copy__12047(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN14HALS_IOContext20SetIOProcStreamUsageERK30AudioHardwareIOProcStreamUsagejb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(*(*(a1 + 32) + 8) + 24) = (*(**(v2 + 104) + 672))(*(v2 + 104), *(a1 + 72), *(a1 + 88), *(a1 + 92));
  *(*(*(a1 + 40) + 8) + 24) = (*(**(v2 + 104) + 160))(*(v2 + 104));
  v3 = (*(**(v2 + 104) + 144))(*(v2 + 104), a1 + 80);
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 40) = v3;
  *(v4 + 48) = v5;
  result = (*(**(v2 + 104) + 152))(*(v2 + 104), a1 + 80);
  v7 = *(*(a1 + 56) + 8);
  *(v7 + 40) = result;
  *(v7 + 48) = v8;
  return result;
}

uint64_t HALS_IOContext::UpdateInputStreamUsageStatus(HALS_PlatformBehaviors *a1)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(a1);
  v2 = (*(*platform_behaviors + 64))(platform_behaviors);
  v3 = *(*HALS_PlatformBehaviors::get_platform_behaviors(v2) + 64);

  return v3();
}

void __copy_helper_block_e8_80c34_ZTS13HALS_ReleaserI11HALS_ClientE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 10);
  *(a1 + 80) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

uint64_t ___ZN14HALS_IOContext14SetStreamUsageERK26AudioIOContext_StreamUsagejb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(*(*(a1 + 32) + 8) + 24) = (*(**(v2 + 104) + 656))(*(v2 + 104), *(a1 + 72), *(a1 + 88), *(a1 + 92));
  *(*(*(a1 + 40) + 8) + 24) = (*(**(v2 + 104) + 160))(*(v2 + 104));
  v3 = (*(**(v2 + 104) + 144))(*(v2 + 104), a1 + 80);
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 40) = v3;
  *(v4 + 48) = v5;
  result = (*(**(v2 + 104) + 152))(*(v2 + 104), a1 + 80);
  v7 = *(*(a1 + 56) + 8);
  *(v7 + 40) = result;
  *(v7 + 48) = v8;
  return result;
}

void HALS_IOContext::GetPropertyData(HALS_IOContext *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v91 = *MEMORY[0x1E69E9840];
  v74 = a4;
  if (((*(*this + 96))(this, a2, a3, a9, a5, a6, a7, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v40 = 2003332927;
    goto LABEL_79;
  }

  mSelector = a3->mSelector;
  v16 = a3->mScope == 1768845428;
  if (a3->mSelector <= 1752135522)
  {
    if (mSelector <= 1718839673)
    {
      if (mSelector > 1634955891)
      {
        if (mSelector != 1634955892)
        {
          if (mSelector != 1684108387)
          {
            goto LABEL_75;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOContext.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1146;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyEnableCaptureFile", buf, 0x12u);
            }

            v42 = __cxa_allocate_exception(0x10uLL);
            *v42 = off_1F5991DD8;
            v42[2] = 561211770;
          }

          AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(this);
          goto LABEL_68;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1081;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyActualSampleRate", buf, 0x12u);
          }

          v46 = __cxa_allocate_exception(0x10uLL);
          *v46 = off_1F5991DD8;
          v46[2] = 561211770;
        }

        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 0x40000000;
        v66[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_30;
        v66[3] = &__block_descriptor_tmp_31_12068;
        v66[4] = this;
        v66[5] = a6;
        v31 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v31, v66);
        goto LABEL_53;
      }

      if (mSelector == 1633906541)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1017;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyComposition", buf, 0x12u);
          }

          v43 = __cxa_allocate_exception(0x10uLL);
          *v43 = off_1F5991DD8;
          v43[2] = 561211770;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v84) = 0;
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 0x40000000;
        v73[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
        v73[3] = &unk_1E8676E90;
        v73[6] = a6;
        v73[5] = this;
        v73[4] = buf;
        v30 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v30, v73);
        if (*(*&buf[8] + 24))
        {
          v58 = __cxa_allocate_exception(0x10uLL);
          v59 = *(*&buf[8] + 24);
          *v58 = off_1F5991DD8;
          v58[2] = v59;
        }

        v24 = 8;
      }

      else
      {
        if (mSelector != 1634300531)
        {
          v37 = 1633970532;
LABEL_74:
          if (mSelector != v37)
          {
            goto LABEL_75;
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          v40 = 1852797029;
LABEL_79:
          exception[2] = v40;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v84) = 0;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 0x40000000;
        v60[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_35;
        v60[3] = &unk_1E8676FC8;
        v60[4] = buf;
        v60[5] = this;
        v61 = a4;
        v60[6] = a6;
        v23 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v23, v60);
        v24 = 8 * *(*&buf[8] + 24);
      }
    }

    else
    {
      if (mSelector <= 1735354733)
      {
        if (mSelector != 1718839674)
        {
          if (mSelector != 1718843939)
          {
            goto LABEL_75;
          }

          if (a4 <= 0xF)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOContext.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1035;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyBufferFrameSizeRange", buf, 0x12u);
            }

            v49 = __cxa_allocate_exception(0x10uLL);
            *v49 = off_1F5991DD8;
            v49[2] = 561211770;
          }

          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 0x40000000;
          v72[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_20;
          v72[3] = &__block_descriptor_tmp_21_12058;
          v72[4] = this;
          v72[5] = a6;
          v27 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v27, v72);
          v28 = 16;
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if (mSelector == 1735354734)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1072;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
          }

          v51 = __cxa_allocate_exception(0x10uLL);
          *v51 = off_1F5991DD8;
          v51[2] = 561211770;
        }

        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 0x40000000;
        v67[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28;
        v67[3] = &__block_descriptor_tmp_29_12066;
        v67[4] = this;
        v67[5] = a6;
        v34 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v34, v67);
        goto LABEL_69;
      }

      if (mSelector != 1735551332)
      {
        if (mSelector != 1735750501)
        {
          goto LABEL_75;
        }

        *a5 = a4;
        v20 = a3->mScope == 1768845428;
        v79 = 0;
        v80 = &v79;
        v81 = 0x2000000000;
        v82 = 0;
        v75 = 0;
        v76 = &v75;
        v77 = 0x2000000000;
        v78 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZNK14HALS_IOContext14GetStreamUsageER26AudioIOContext_StreamUsageRjb_block_invoke;
        v84 = &unk_1E8677050;
        v87 = this;
        v88 = a6;
        v89 = &v74;
        v90 = v20;
        v85 = &v79;
        v86 = &v75;
        v21 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v21, buf);
        if (*(v76 + 6))
        {
          v54 = __cxa_allocate_exception(0x10uLL);
          v55 = *(v76 + 6);
          *v54 = off_1F5991DD8;
          v54[2] = v55;
        }

        v74 = *(v80 + 6);
        _Block_object_dispose(&v75, 8);
        v22 = &v79;
        goto LABEL_63;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LODWORD(v84) = 0;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 0x40000000;
      v63[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32;
      v63[3] = &unk_1E8676F78;
      v63[5] = this;
      v63[6] = a6;
      v64 = a4;
      v63[4] = buf;
      v65 = v16;
      v32 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v32, v63);
      v24 = 56 * *(*&buf[8] + 24);
    }

    *a5 = v24;
LABEL_62:
    v22 = buf;
LABEL_63:
    _Block_object_dispose(v22, 8);
LABEL_71:
    v36 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector <= 1902539641)
  {
    if (mSelector <= 1852012898)
    {
      if (mSelector == 1752135523)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1193;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyHandleOverloadWithCatchup", buf, 0x12u);
          }

          v52 = __cxa_allocate_exception(0x10uLL);
          *v52 = off_1F5991DD8;
          v52[2] = 561211770;
        }

        AudioCaptureMode = (*(**(this + 13) + 736))(*(this + 13));
      }

      else
      {
        if (mSelector != 1836282994)
        {
          goto LABEL_75;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1090;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioIOContextProperty_MasterDevice", buf, 0x12u);
          }

          v45 = __cxa_allocate_exception(0x10uLL);
          *v45 = off_1F5991DD8;
          v45[2] = 561211770;
        }

        AudioCaptureMode = (*(**(this + 13) + 648))(*(this + 13));
      }

      goto LABEL_68;
    }

    if (mSelector == 1852012899)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1063;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyIOCycleUsage", buf, 0x12u);
        }

        v50 = __cxa_allocate_exception(0x10uLL);
        *v50 = off_1F5991DD8;
        v50[2] = 561211770;
      }

      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 0x40000000;
      v68[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_26;
      v68[3] = &__block_descriptor_tmp_27_12064;
      v68[4] = this;
      v68[5] = a6;
      v33 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v33, v68);
      goto LABEL_69;
    }

    if (mSelector != 1869838183)
    {
      if (mSelector != 1870030194)
      {
        goto LABEL_75;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1136;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDeviceProcessorOverload", buf, 0x12u);
        }

        v44 = __cxa_allocate_exception(0x10uLL);
        *v44 = off_1F5991DD8;
        v44[2] = 561211770;
      }

      *a6 = 0;
      goto LABEL_69;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1175;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyIOThreadOSWorkgroup", buf, 0x12u);
      }

      v47 = __cxa_allocate_exception(0x10uLL);
      *v47 = off_1F5991DD8;
      v47[2] = 561211770;
    }

    *a6 = (*(**(this + 13) + 704))(*(this + 13));
LABEL_53:
    v28 = 8;
LABEL_70:
    *a5 = v28;
    goto LABEL_71;
  }

  if (mSelector <= 1935959153)
  {
    if (mSelector != 1902539642)
    {
      if (mSelector == 1935763060)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1054;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
          }

          v48 = __cxa_allocate_exception(0x10uLL);
          *v48 = off_1F5991DD8;
          v48[2] = 561211770;
        }

        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 0x40000000;
        v69[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_24;
        v69[3] = &__block_descriptor_tmp_25_12062;
        v69[4] = this;
        v69[5] = a6;
        v70 = v16;
        v25 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v25, v69);
        goto LABEL_69;
      }

      v37 = 1919773028;
      goto LABEL_74;
    }

LABEL_44:
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1045;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyBufferFrameSize", buf, 0x12u);
      }

      v41 = __cxa_allocate_exception(0x10uLL);
      *v41 = off_1F5991DD8;
      v41[2] = 561211770;
    }

    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 0x40000000;
    v71[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_22;
    v71[3] = &__block_descriptor_tmp_23_12060;
    v71[4] = this;
    v71[5] = a6;
    v29 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v29, v71);
    goto LABEL_69;
  }

  switch(mSelector)
  {
    case 1935959154:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1184;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyIdentifySpeechDeviceToAllowDeviceRestart", buf, 0x12u);
        }

        v53 = __cxa_allocate_exception(0x10uLL);
        *v53 = off_1F5991DD8;
        v53[2] = 561211770;
      }

      AudioCaptureMode = (*(**(this + 13) + 720))(*(this + 13));
LABEL_68:
      *a6 = AudioCaptureMode;
LABEL_69:
      v28 = 4;
      goto LABEL_70;
    case 1936482681:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LODWORD(v84) = a4;
      v79 = 0;
      v80 = &v79;
      v81 = 0x2000000000;
      v82 = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 0x40000000;
      v62[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
      v62[3] = &unk_1E8676FA0;
      v62[6] = this;
      v62[7] = a6;
      v62[4] = &v79;
      v62[5] = buf;
      v62[8] = a3;
      v35 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v35, v62);
      if (*(v80 + 6))
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        v57 = *(v80 + 6);
        *v56 = off_1F5991DD8;
        v56[2] = v57;
      }

      *a5 = *(*&buf[8] + 24);
      _Block_object_dispose(&v79, 8);
      goto LABEL_62;
    case 1937077093:
      *a5 = a4;
      v17 = a3->mScope == 1768845428;
      v18 = *(**(this + 13) + 680);
      v19 = *MEMORY[0x1E69E9840];

      v18();
      return;
  }

LABEL_75:
  v38 = *MEMORY[0x1E69E9840];

  HALS_Object::GetPropertyData(this, v14, a3, a4, a5, a6);
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 40) + 104) + 608))(*(*(a1 + 40) + 104));
  **(a1 + 48) = result;
  return result;
}

void sub_1DE5B1234(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v2 + 32) + 8) + 24) = v4[2];
  }

  else
  {
    *(*(*(v2 + 32) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_22(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 104) + 304))(*(*(a1 + 32) + 104));
  **(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_24(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 104) + 760))(*(*(a1 + 32) + 104), *(a1 + 48));
  **(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 104) + 160))(*(*(a1 + 32) + 104));
  **(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  v4 = a1[7];
  v5 = *(a1[8] + 4);
  v6 = (*(**(v2 + 104) + 32))(*(v2 + 104), v5 == 1768845428);
  result = (*(**(v2 + 104) + 304))(*(v2 + 104));
  v8 = (16 * v6) | 8;
  if (*(v3 + 24) < v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_IOContext.cpp";
      v16 = 1024;
      v17 = 2251;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyStreamConfiguration", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  *v4 = v6;
  if (v6)
  {
    v9 = result;
    v10 = 0;
    v11 = v4 + 4;
    do
    {
      result = (*(**(v2 + 104) + 72))(*(v2 + 104), v5 == 1768845428, v10, &v14);
      *(v11 - 2) = v19;
      *(v11 - 1) = v18 * v9;
      *v11 = 0;
      v11 += 2;
      ++v10;
    }

    while (v6 != v10);
  }

  *(v3 + 24) = v8;
  *(*(a1[4] + 8) + 24) = 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5B1718(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5B1618);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_35(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(*(result + 40) + 168);
  v3 = (*(*(result + 40) + 176) - v2) >> 3;
  v4 = v3 >= v1 >> 3;
  v5 = v1 >> 3;
  if (!v4)
  {
    v5 = (*(*(result + 40) + 176) - v2) >> 3;
  }

  *(*(*(result + 32) + 8) + 24) = v5;
  if (*(*(*(result + 32) + 8) + 24))
  {
    v6 = 0;
    do
    {
      if (v3 == v6)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      *(*(result + 48) + 8 * v6) = *(v2 + 8 * v6);
      ++v6;
    }

    while (v6 < *(*(*(result + 32) + 8) + 24));
  }

  return result;
}

uint64_t ___ZNK14HALS_IOContext14GetStreamUsageER26AudioIOContext_StreamUsageRjb_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 48) + 104) + 664))(*(*(a1 + 48) + 104), *(a1 + 56), **(a1 + 64), *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5B1850(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v2 + 40) + 8) + 24) = v4[2];
  }

  else
  {
    *(*(*(v2 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
}

uint64_t HALS_IOContext::GetPropertyDataSize(HALS_IOContext *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  v8 = (*(*this + 96))(this, a2, a3, a6, a5);
  if ((v8 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  v11 = 8;
  if (a3->mSelector <= 1752135522)
  {
    if (mSelector > 1718839673)
    {
      if (mSelector <= 1735354733)
      {
        if (mSelector == 1718839674)
        {
          return 4;
        }

        if (mSelector == 1718843939)
        {
          return 16;
        }

        goto LABEL_41;
      }

      switch(mSelector)
      {
        case 1735354734:
          return 4;
        case 1735551332:
          v23 = 0;
          v24 = &v23;
          v25 = 0x2000000000;
          v26 = 0;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 0x40000000;
          v22[2] = ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
          v22[3] = &unk_1E8676DF0;
          v22[4] = &v23;
          v22[5] = this;
          v22[6] = a3;
          v15 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v15, v22);
          v11 = (56 * *(v24 + 6));
          break;
        case 1735750501:
          v23 = 0;
          v24 = &v23;
          v25 = 0x2000000000;
          v26 = 0;
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 0x40000000;
          v21[2] = ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
          v21[3] = &unk_1E8676E18;
          v21[4] = &v23;
          v21[5] = this;
          v21[6] = a3;
          v13 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v13, v21);
          v11 = (4 * *(v24 + 6) + 4);
          break;
        default:
          goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (mSelector <= 1634300530)
    {
      if (mSelector == 1633906541 || mSelector == 1633970532)
      {
        return v11;
      }

      goto LABEL_41;
    }

    if (mSelector == 1634300531)
    {
      return (*(this + 44) - *(this + 42)) & 0xFFFFFFF8;
    }

    if (mSelector == 1634955892)
    {
      return v11;
    }

    v12 = 1684108387;
  }

  else
  {
    if (mSelector > 1902539641)
    {
      if (mSelector <= 1935959153)
      {
        if (mSelector != 1902539642)
        {
          if (mSelector != 1919773028)
          {
            v12 = 1935763060;
            goto LABEL_28;
          }

          return v11;
        }

        return 4;
      }

      switch(mSelector)
      {
        case 1935959154:
          return 4;
        case 1936482681:
          v23 = 0;
          v24 = &v23;
          v25 = 0x2000000000;
          v26 = 0;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 0x40000000;
          v19[2] = ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
          v19[3] = &unk_1E8676E68;
          v19[4] = &v23;
          v19[5] = this;
          v19[6] = a3;
          v16 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v16, v19);
          v11 = (16 * *(v24 + 6)) | 8u;
          break;
        case 1937077093:
          v23 = 0;
          v24 = &v23;
          v25 = 0x2000000000;
          v26 = 0;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 0x40000000;
          v20[2] = ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
          v20[3] = &unk_1E8676E40;
          v20[4] = &v23;
          v20[5] = this;
          v20[6] = a3;
          v14 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v14, v20);
          v11 = (4 * *(v24 + 6) + 12);
          break;
        default:
          goto LABEL_41;
      }

LABEL_39:
      _Block_object_dispose(&v23, 8);
      return v11;
    }

    if (mSelector <= 1852012898)
    {
      if (mSelector == 1752135523)
      {
        return 4;
      }

      v12 = 1836282994;
    }

    else
    {
      if (mSelector == 1852012899)
      {
        return 4;
      }

      if (mSelector == 1869838183)
      {
        return v11;
      }

      v12 = 1870030194;
    }
  }

LABEL_28:
  if (mSelector == v12)
  {
    return 4;
  }

LABEL_41:

  return HALS_Object::GetPropertyDataSize(v8, v9, a3);
}

uint64_t ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(void *a1)
{
  result = (*(**(a1[5] + 104) + 32))(*(a1[5] + 104), *(a1[6] + 4) == 1768845428);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1DE5B1E98(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2(void *a1)
{
  result = (*(**(a1[5] + 104) + 32))(*(a1[5] + 104), *(a1[6] + 4) == 1768845428);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1DE5B1F24(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3(void *a1)
{
  result = (*(**(a1[5] + 104) + 32))(*(a1[5] + 104), *(a1[6] + 4) == 1768845428);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1DE5B1FB0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4(void *a1)
{
  result = (*(**(a1[5] + 104) + 32))(*(a1[5] + 104), *(a1[6] + 4) == 1768845428);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1DE5B203C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOContext::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  if (((*(*a1 + 96))(a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v5 = *a3;
  result = 1;
  if (*a3 <= 1752135522)
  {
    if (v5 > 1718839673)
    {
      if (v5 <= 1735354733)
      {
        if (v5 == 1718839674)
        {
          return result;
        }

        v7 = 1718843939;
LABEL_32:
        if (v5 == v7)
        {
          return 0;
        }

        goto LABEL_35;
      }

      if (v5 == 1735354734 || v5 == 1735551332)
      {
        return 0;
      }

      v8 = 1735750501;
    }

    else if (v5 <= 1634300530)
    {
      if (v5 == 1633906541)
      {
        return result;
      }

      v8 = 1633970532;
    }

    else
    {
      if (v5 == 1634300531)
      {
        return result;
      }

      if (v5 == 1634955892)
      {
        return 0;
      }

      v8 = 1684108387;
    }
  }

  else if (v5 <= 1902539641)
  {
    if (v5 > 1852012898)
    {
      if (v5 == 1852012899 || v5 == 1869838183)
      {
        return result;
      }

      v7 = 1870030194;
      goto LABEL_32;
    }

    if (v5 == 1752135523)
    {
      return result;
    }

    v8 = 1836282994;
  }

  else
  {
    if (v5 <= 1935959153)
    {
      if (v5 == 1902539642 || v5 == 1919773028)
      {
        return result;
      }

      v7 = 1935763060;
      goto LABEL_32;
    }

    if (v5 == 1935959154)
    {
      return result;
    }

    if (v5 == 1936482681)
    {
      return 0;
    }

    v8 = 1937077093;
  }

  if (v5 == v8)
  {
    return result;
  }

LABEL_35:

  return HALS_Object::IsPropertySettable(1, v4, a3);
}

BOOL HALS_IOContext::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 > 1836282993)
  {
    if (v3 > 1902539641)
    {
      if (v3 <= 1935959153)
      {
        if (v3 == 1902539642 || v3 == 1919773028)
        {
          return result;
        }

        v5 = 1935763060;
      }

      else if (v3 > 1937007733)
      {
        if (v3 == 1937007734)
        {
          return result;
        }

        v5 = 1937077093;
      }

      else
      {
        if (v3 == 1935959154)
        {
          return result;
        }

        v5 = 1936482681;
      }

LABEL_38:
      if (v3 == v5)
      {
        goto LABEL_39;
      }

      return 0;
    }

    if (v3 > 1869838182)
    {
      if (v3 == 1869838183 || v3 == 1870030194)
      {
        return result;
      }

      v6 = 1870098020;
    }

    else
    {
      if (v3 == 1836282994 || v3 == 1852012899)
      {
        return result;
      }

      v6 = 1869638759;
    }

LABEL_34:
    if (v3 == v6)
    {
      return result;
    }

    return 0;
  }

  if (v3 <= 1684108386)
  {
    if (v3 > 1634955891)
    {
      if (v3 == 1634955892 || v3 == 1650682995)
      {
        return result;
      }

      v6 = 1668047219;
    }

    else
    {
      if (v3 == 1633906541 || v3 == 1633970532)
      {
        return result;
      }

      v6 = 1634300531;
    }

    goto LABEL_34;
  }

  if (v3 <= 1735354733)
  {
    if (v3 == 1684108387 || v3 == 1718839674)
    {
      return result;
    }

    v6 = 1718843939;
    goto LABEL_34;
  }

  if (v3 <= 1735750500)
  {
    if (v3 == 1735354734)
    {
      return result;
    }

    v5 = 1735551332;
    goto LABEL_38;
  }

  if (v3 != 1735750501)
  {
    v6 = 1752135523;
    goto LABEL_34;
  }

LABEL_39:
  v7 = a3[1];
  return v7 == 1768845428 || v7 == 1869968496;
}

uint64_t HALS_IOContext::GetMIGDispatchQueue(HALS_IOContext *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

void HALS_IOContext::_Deactivate(HALS_IOContext *this)
{
  (*(**(this + 13) + 24))(*(this + 13));
  v2 = *(this + 15);
  if (v2)
  {
    HALS_IOProc::~HALS_IOProc(v2);
    MEMORY[0x1E12C1730]();
  }

  *(this + 15) = 0;
  free(*(this + 16));
  *(this + 16) = 0;
  free(*(this + 17));
  *(this + 17) = 0;
  *(this + 18) = 0;
  v3 = *(this + 12);
  *(this + 11) = 0;
  *(this + 12) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 2) = 0;
}

void HALS_IOContext::~HALS_IOContext(HALS_IOContext *this)
{
  HALS_IOContext::~HALS_IOContext(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F597F478;
  v2 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v4);
    MEMORY[0x1E12C1730]();
  }

  std::unique_ptr<HALS_IOContext::OverloadReporter>::~unique_ptr[abi:ne200100](this + 29);
  std::unique_ptr<HALS_IOContext::TimeCodeIssueReporter>::~unique_ptr[abi:ne200100](this + 26);
  std::unique_ptr<HALS_IOContext::IntervalReporter>::~unique_ptr[abi:ne200100](this + 25);
  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x1E12C1730](v8, 0x1000C40B62306B4);
  }

  v9 = *(this + 7);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  HALS_Object::~HALS_Object(this);
}

uint64_t *std::unique_ptr<HALS_IOContext::OverloadReporter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((v2 + 16), 0);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      std::default_delete<OverloadDescription>::operator()[abi:ne200100](v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C40878E4D35);
  }

  return a1;
}

uint64_t **std::unique_ptr<HALS_IOContext::TimeCodeIssueReporter>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v2, 0);
    MEMORY[0x1E12C1730](v2, 0x20C4093837F09);
  }

  return a1;
}

uint64_t *std::unique_ptr<HALS_IOContext::IntervalReporter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((v2 + 64), 0);
    MEMORY[0x1E12C1730](v2, 0x1020C401DDC20BDLL);
  }

  return a1;
}

void std::default_delete<OverloadDescription>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContext::HALS_IOContext(HALS_Object *a1, uint64_t a2, uint64_t a3, uint64_t a4, HALS_Object *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(a1, 1768907636, 0, a2, a5);
  *v5 = &unk_1F597F478;
  v5[7] = 0;
  v5[8] = 0;
  v5[6] = 0;
  operator new();
}

void sub_1DE5B4504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, HALS_DSPHostIntegrationPoint_IOContext::CachedDetails *a12, __int128 a13, void **a14, HALS_IOContextDescription *a15, HALS_IOThread *a16, uint64_t a17, uint64_t a18, uint64_t a19, HALS_ObjectMap *a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  std::mutex::unlock((v57 + 8));
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  HALS_ObjectMap::ReleaseObject(a20, v62);
  v63 = *(v56 + 2216);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  std::unique_ptr<HALS_IOContextHostedDSP>::~unique_ptr[abi:ne200100]((v56 + 2200));
  if (*(v56 + 2199) < 0)
  {
    operator delete(*a14);
  }

  std::thread::~thread((v56 + 2136));
  std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::~__hash_table(v56 + 2096);
  HALS_IOContextDescription::~HALS_IOContextDescription(a15);
  v64 = *(v56 + 1496);
  if (v64)
  {
    *(v56 + 1504) = v64;
    operator delete(v64);
  }

  std::__function::__value_func<void ()(IORunningState)>::~__value_func[abi:ne200100](v56 + 1456);
  v65 = *(v56 + 1432);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  v66 = *(v56 + 1416);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::~__value_func[abi:ne200100](v56 + 1128);
  HALS_IOThread::~HALS_IOThread(a16);
  v67 = *(v56 + 40);
  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::__shared_weak_count::~__shared_weak_count(v56);
  operator delete(v68);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v69 = *(v55 + 12);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  v70 = *(v55 + 9);
  *(v55 + 9) = 0;
  if (v70)
  {
    MEMORY[0x1E12C1730]();
  }

  v71 = *(v55 + 7);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  HALS_Object::~HALS_Object(v55);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALS_IOContext_Legacy_Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597F788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_IOContext_MCP_Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597F738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t ___ZNK14HALS_IOContext16GetNumberStreamsEb_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 40) + 104) + 32))(*(*(a1 + 40) + 104), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5B4E5C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE5B4EC8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_CreateIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *),void *)::$_0>(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(**a1 + 120))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "HALS_IOContext.cpp";
    v4 = 1024;
    v5 = 348;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_CreateIOProcID: only one IOProc at a time is supported", &v2, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE5B5100(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v4 = *(v2 + 120);
    if (v4)
    {
      HALS_IOProc::~HALS_IOProc(v4);
      MEMORY[0x1E12C1730]();
    }

    *(v2 + 120) = 0;
    free(*(v2 + 128));
    *(v2 + 128) = 0;
    free(*(v2 + 136));
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    **(v3 + 8) = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE5B5168(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE5B5170);
  }

  __clang_call_terminate(a1);
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_CreateIOProcIDWithBlock(dispatch_queue_s *,void({block_pointer})(AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*))::$_0>(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(**a1 + 120))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "HALS_IOContext.cpp";
    v4 = 1024;
    v5 = 388;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_CreateIOProcIDWithBlock: only one IOProc at a time is supported", &v2, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE5B53B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v2, 0x10A0C406C73CFA5);
    __cxa_begin_catch(exception_object);
    v6 = *(v3 + 120);
    if (v6)
    {
      HALS_IOProc::~HALS_IOProc(v6);
      MEMORY[0x1E12C1730]();
    }

    *(v3 + 120) = 0;
    free(*(v3 + 128));
    *(v3 + 128) = 0;
    free(*(v3 + 136));
    *(v3 + 136) = 0;
    *(v3 + 144) = 0;
    **(v4 + 8) = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE5B5444(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE5B544CLL);
  }

  __clang_call_terminate(a1);
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_DestroyIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 120) && *(v1 + 144) == (*a1)[1])
  {
    (*(**(v1 + 104) + 536))(*(v1 + 104));
    v2 = *(v1 + 120);
    if (v2)
    {
      HALS_IOProc::~HALS_IOProc(v2);
      MEMORY[0x1E12C1730]();
    }

    *(v1 + 120) = 0;
    free(*(v1 + 128));
    *(v1 + 128) = 0;
    free(*(v1 + 136));
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
  }
}

void sub_1DE5B5504(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_AddIOProc(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *),void *)::$_0>(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(**a1 + 120))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "HALS_IOContext.cpp";
    v4 = 1024;
    v5 = 456;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_AddIOProc: only one IOProc at a time is supported", &v2, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE5B5730(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = *(v2 + 120);
    if (v3)
    {
      HALS_IOProc::~HALS_IOProc(v3);
      MEMORY[0x1E12C1730]();
    }

    *(v2 + 120) = 0;
    free(*(v2 + 128));
    *(v2 + 128) = 0;
    free(*(v2 + 136));
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE5B5790(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE5B5798);
  }

  __clang_call_terminate(a1);
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_RemoveIOProc(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 120) && *(v1 + 144) == (*a1)[1])
  {
    (*(**(v1 + 104) + 536))(*(v1 + 104));
    v2 = *(v1 + 120);
    if (v2)
    {
      HALS_IOProc::~HALS_IOProc(v2);
      MEMORY[0x1E12C1730]();
    }

    *(v1 + 120) = 0;
    free(*(v1 + 128));
    *(v1 + 128) = 0;
    free(*(v1 + 136));
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
  }
}

void sub_1DE5B5850(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5B5808);
}

void sub_1DE5B585C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

UInt64 HALS_IOContext::Server_Internal_StartIOProcID(UInt64 this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, uint64_t a4)
{
  v7 = this;
  v22 = *MEMORY[0x1E69E9840];
  if (a3 && (a4 & 8) != 0)
  {
    (*(**(this + 104) + 520))(*(this + 104), a3, a4);
    mHostTime = a3->mHostTime;
    this = mach_absolute_time();
    if (mHostTime > this)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v9 = a3->mHostTime;
        v14 = 136315906;
        v15 = "HALS_IOContext.cpp";
        v16 = 1024;
        v17 = 521;
        v18 = 2048;
        v19 = v9;
        v20 = 2048;
        v21 = mach_absolute_time();
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext::Server_Internal_StartIOProcID: Attempting to start in the past with a start time that is in the future. Requested time: %llu  Current time: %llu", &v14, 0x26u);
      }

      this = mach_absolute_time();
      a3->mHostTime = this;
    }

    if ((a3->mFlags & 2) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "HALS_IOContext.cpp";
        v16 = 1024;
        v17 = 528;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_StartIOProcID: Invalid start time", &v14, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  v10 = *(v7 + 120);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (*(v7 + 144) != a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_IOContext.cpp";
      v16 = 1024;
      v17 = 534;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_StartIOProcID: failed to start because the IOProcID wasn't nullptr or wasn't registered", &v14, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    *v13 = off_1F5991DD8;
    v13[2] = 1852797029;
  }

  if ((*(v10 + 32) & 1) == 0)
  {
LABEL_12:
    this = (*(**(v7 + 104) + 528))(*(v7 + 104), a2, a3, a4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE5B5B98(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v3 + 32) = 0;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  JUMPOUT(0x1DE5B5C34);
}

void sub_1DE5B5C2C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE5B5C94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN14HALS_IOContext16PowerHintChangedEj_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 40) + 104) + 552))(*(*(a1 + 40) + 104), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5B5D14(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(HALS_IOContext::OverloadReporter *this)
{
  if (*this)
  {
    if (g_static_start_options == 1)
    {
LABEL_20:
      *this = 0;
      return;
    }
  }

  else if (*(this + 1) != 1 || g_static_start_options == 1)
  {
    goto LABEL_20;
  }

  v3 = *(this + 1);
  v29 = v3[2];
  v30 = v3[3];
  v31 = *(v3 + 8);
  v27 = *v3;
  v28 = v3[1];
  if (*(v3 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(v3 + 9), *(v3 + 10));
  }

  else
  {
    v32 = *(v3 + 3);
  }

  v4 = v3[15];
  v41 = v3[14];
  v42 = v4;
  v43 = v3[16];
  v5 = v3[11];
  v37 = v3[10];
  v38 = v5;
  v6 = v3[13];
  v39 = v3[12];
  v40 = v6;
  v7 = v3[7];
  v33 = v3[6];
  v34 = v7;
  v8 = v3[9];
  v35 = v3[8];
  v36 = v8;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v44 = v27;
  v45 = v28;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v32.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external(&__p, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    v58 = v41;
    v59 = v42;
    v60 = v43;
    v54 = v37;
    v55 = v38;
    v56 = v39;
    v57 = v40;
    v50 = v33;
    v51 = v34;
    v52 = v35;
    v53 = v36;
    operator delete(v14);
  }

  else
  {
    __p = v32;
    v9 = v3[15];
    v58 = v3[14];
    v59 = v9;
    v60 = v3[16];
    v10 = v3[11];
    v54 = v3[10];
    v55 = v10;
    v11 = v3[13];
    v56 = v3[12];
    v57 = v11;
    v12 = v3[7];
    v50 = v3[6];
    v51 = v12;
    v13 = v3[9];
    v52 = v3[8];
    v53 = v13;
  }

  if (*MEMORY[0x1E69E3C08])
  {
    v15 = *(this + 2);
    v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v16 + 16) = 0;
    *v16 = &unk_1F597F660;
    *(v16 + 8) = 0;
    v63 = v46;
    v64 = v47;
    v65 = v48;
    v61 = v44;
    v62 = v45;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v66, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v66[0] = __p;
    }

    v18 = v61;
    *(v16 + 40) = v62;
    v19 = v64;
    *(v16 + 56) = v63;
    *(v16 + 72) = v19;
    *(v16 + 88) = v65;
    *(v16 + 24) = v18;
    *(v16 + 96) = v66[0];
    v20 = v50;
    v21 = v51;
    v22 = v53;
    *(v16 + 152) = v52;
    *(v16 + 136) = v21;
    *(v16 + 120) = v20;
    v23 = v57;
    *(v16 + 216) = v56;
    v24 = v54;
    *(v16 + 200) = v55;
    *(v16 + 184) = v24;
    *(v16 + 168) = v22;
    v25 = v58;
    v26 = v60;
    *(v16 + 264) = v59;
    *(v16 + 280) = v26;
    *(v16 + 248) = v25;
    *(v16 + 232) = v23;
    *v16 = &unk_1F597F608;
    caulk::concurrent::messenger::enqueue(v15, v16);
    if (v17 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_1DE5B6060(void *a1)
{
  operator delete(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5B6028);
}

void sub_1DE5B60BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(void)::$_0,HALS_OverloadMessage &>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(void)::$_0,HALS_OverloadMessage &>::rt_cleanup::~rt_cleanup(uint64_t *a1)
{
  v2 = *a1;
  *v2 = &unk_1F597F660;
  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  caulk::concurrent::message::~message(v2);
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(void)::$_0,HALS_OverloadMessage &>::~rt_message_call(void **this)
{
  *this = &unk_1F597F660;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F597F660;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(void)::$_0,HALS_OverloadMessage &>::~message_call(void **this)
{
  *this = &unk_1F597F660;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F597F660;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  caulk::concurrent::message::~message(this);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals(unsigned int)::$_0,HALS_IntervalMessage &>::perform(uint64_t a1)
{
  v34 = a1;
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 88));
  if (v3)
  {
    HALS_IOContext::GetIssueReporters(&v41, v3);
    v39 = 0;
    v40 = 0;
    v38 = &v39;
    if (*(a1 + 32) == 1 && *(a1 + 48) == 1)
    {
      v4 = *(a1 + 24);
      v5 = *(a1 + 40);
      v6 = __udivti3();
      std::to_string(&v37, v6);
      std::string::basic_string[abi:ne200100]<0>(__p, "hardwareStartBegin_UptimeNs");
      v43 = __p;
      v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
      v8 = v7;
      if (*(v7 + 79) < 0)
      {
        operator delete(*(v7 + 56));
      }

      *(v8 + 56) = v37;
      *(&v37.__r_.__value_.__s + 23) = 0;
      v37.__r_.__value_.__s.__data_[0] = 0;
      if (v36 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }

      v9 = __udivti3();
      std::to_string(&v37, v9);
      std::string::basic_string[abi:ne200100]<0>(__p, "hardwareStartEnd_UptimeNs");
      v43 = __p;
      v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
      v11 = v10;
      if (*(v10 + 79) < 0)
      {
        operator delete(*(v10 + 56));
      }

      *(v11 + 56) = v37;
      *(&v37.__r_.__value_.__s + 23) = 0;
      v37.__r_.__value_.__s.__data_[0] = 0;
      if (v36 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }

      v12 = __udivti3();
      if (v5 < v4)
      {
        v12 = -v12;
      }

      std::to_string(&v37, v12);
      std::string::basic_string[abi:ne200100]<0>(__p, "hardwareStartDuration_Ns");
      v43 = __p;
      v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
      v14 = v13;
      if (*(v13 + 79) < 0)
      {
        operator delete(*(v13 + 56));
      }

      *(v14 + 56) = v37;
      *(&v37.__r_.__value_.__s + 23) = 0;
      v37.__r_.__value_.__s.__data_[0] = 0;
      if (v36 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(a1 + 64) == 1 && *(a1 + 80) == 1)
    {
      v15 = *(a1 + 56);
      v16 = *(a1 + 72);
      v17 = __udivti3();
      std::to_string(&v37, v17);
      std::string::basic_string[abi:ne200100]<0>(__p, "clientOutputSilentBegin_UptimeNs");
      v43 = __p;
      v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
      v19 = v18;
      if (*(v18 + 79) < 0)
      {
        operator delete(*(v18 + 56));
      }

      *(v19 + 56) = v37;
      *(&v37.__r_.__value_.__s + 23) = 0;
      v37.__r_.__value_.__s.__data_[0] = 0;
      if (v36 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }

      v20 = __udivti3();
      std::to_string(&v37, v20);
      std::string::basic_string[abi:ne200100]<0>(__p, "clientOutputSilentEnd_UptimeNs");
      v43 = __p;
      v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
      v22 = v21;
      if (*(v21 + 79) < 0)
      {
        operator delete(*(v21 + 56));
      }

      *(v22 + 56) = v37;
      *(&v37.__r_.__value_.__s + 23) = 0;
      v37.__r_.__value_.__s.__data_[0] = 0;
      if (v36 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }

      v23 = __udivti3();
      if (v16 < v15)
      {
        v23 = -v23;
      }

      std::to_string(&v37, v23);
      std::string::basic_string[abi:ne200100]<0>(__p, "clientOutputSilentDuration_Ns");
      v43 = __p;
      v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
      v25 = v24;
      if (*(v24 + 79) < 0)
      {
        operator delete(*(v24 + 56));
      }

      *(v25 + 56) = v37;
      *(&v37.__r_.__value_.__s + 23) = 0;
      v37.__r_.__value_.__s.__data_[0] = 0;
      if (v36 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v40)
    {
      std::to_string(&v37, 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "AudioAnalyticsRetainMessage");
      v43 = __p;
      v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
      v27 = v26;
      if (*(v26 + 79) < 0)
      {
        operator delete(*(v26 + 56));
      }

      *(v27 + 56) = v37;
      *(&v37.__r_.__value_.__s + 23) = 0;
      v37.__r_.__value_.__s.__data_[0] = 0;
      if (v36 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }

      v28 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(&v38);
      v37.__r_.__value_.__r.__words[0] = v28;
      v29 = v41;
      v30 = v42;
      if (v41 != v42)
      {
        v31 = v41;
        do
        {
          v32 = *v31;
          if (AudioStatisticsLibraryLoader(void)::once != -1)
          {
            dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_7791);
          }

          if (AudioStatisticsLibraryLoader(void)::libSym)
          {
            AudioStatisticsLibraryLoader(void)::libSym(v32, v28, 536870919, 5);
          }

          ++v31;
        }

        while (v31 != v30);
      }

      CFRelease(v28);
    }

    else
    {
      v29 = v41;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v39);
    if (v29)
    {
      operator delete(v29);
    }
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
  return caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals::$_0,HALS_IntervalMessage &>::rt_cleanup::~rt_cleanup(&v34);
}

void sub_1DE5B68A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, void *a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a23);
  if (a25)
  {
    operator delete(a25);
  }

  HALS_ObjectMap::ReleaseObject(v25, v27);
  caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals::$_0,HALS_IntervalMessage &>::rt_cleanup::~rt_cleanup(&a9);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals(unsigned int)::$_0,HALS_IntervalMessage &>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals(unsigned int)::$_0,HALS_IntervalMessage &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::perform(caulk::concurrent::message *a1)
{
  v20 = a1;
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 7));
  if (v3)
  {
    HALS_IOContext::GetIssueReporters(&v26, v3);
    v25[0] = 0;
    v25[1] = 0;
    v24 = v25;
    memset(&__str, 0, sizeof(__str));
    std::string::basic_string[abi:ne200100]<0>(__p, "issue_type");
    v28 = __p;
    v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v24, __p);
    if (*(v4 + 79) < 0)
    {
      *(v4 + 64) = 13;
      v5 = *(v4 + 56);
    }

    else
    {
      v5 = (v4 + 56);
      *(v4 + 79) = 13;
    }

    strcpy(v5, "timecodeIssue");
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(a1 + 6);
    if ((v6 & 2) != 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v8 = ",HostTimeOutOfBounds";
      }

      else
      {
        v8 = "HostTimeOutOfBounds";
      }

      if (size)
      {
        v9 = 20;
      }

      else
      {
        v9 = 19;
      }

      std::string::append(&__str, v8, v9);
      v6 = *(a1 + 6);
    }

    if ((v6 & 4) != 0)
    {
      v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __str.__r_.__value_.__l.__size_;
      }

      if (v10)
      {
        v11 = ",TimeStampOutOfLine";
      }

      else
      {
        v11 = "TimeStampOutOfLine";
      }

      if (v10)
      {
        v12 = 19;
      }

      else
      {
        v12 = 18;
      }

      std::string::append(&__str, v11, v12);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "clockResetReason");
    v28 = __p;
    v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v24, __p);
    std::string::operator=((v13 + 56), &__str);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(&v24);
    __p[0] = v14;
    v15 = v26;
    v16 = v27;
    if (v26 != v27)
    {
      v17 = v26;
      do
      {
        v18 = *v17;
        if (AudioStatisticsLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_9769);
        }

        if (AudioStatisticsLibraryLoader(void)::libSym)
        {
          AudioStatisticsLibraryLoader(void)::libSym(v18, v14, 7, 6);
        }

        ++v17;
      }

      while (v17 != v16);
    }

    CFRelease(v14);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v25[0]);
    if (v15)
    {
      operator delete(v15);
    }
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
  return caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::rt_cleanup::~rt_cleanup(&v20);
}