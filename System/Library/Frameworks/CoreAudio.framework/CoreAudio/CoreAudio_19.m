void sub_1DE35C824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    std::__split_buffer<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::~__split_buffer(&a18);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::make_available_format_list(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *(v2 + 16);
      v11[0] = *v2;
      v11[1] = v5;
      v12 = *(v2 + 32);
      v13 = *&v11[0];
      v14 = *&v11[0];
      AMCP::add_available_format(a2, v11);
      v2 += 40;
    }

    while (v2 != v3);
    v6 = *a2;
    v7 = a2[1];
    while (1)
    {
      if (v6 == v7)
      {
        return;
      }

      v8 = *v6;
      v9 = *(v6 + 8);
      if (*v6 == v9)
      {
        break;
      }

      v10 = *v8;
      if (*v8 == *(v9 - 8))
      {
        goto LABEL_9;
      }

LABEL_10:
      v6 += 64;
    }

    v10 = 0.0;
LABEL_9:
    *(v6 + 24) = v10;
    goto LABEL_10;
  }
}

{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      AMCP::add_available_format(a2, v2);
      v2 += 56;
    }

    while (v2 != v3);
    v5 = *a2;
    v6 = a2[1];
    while (1)
    {
      if (v5 == v6)
      {
        return;
      }

      v7 = *v5;
      v8 = *(v5 + 8);
      if (*v5 == v8)
      {
        break;
      }

      v9 = *v7;
      if (*v7 == *(v8 - 8))
      {
        goto LABEL_9;
      }

LABEL_10:
      v5 += 64;
    }

    v9 = 0.0;
LABEL_9:
    *(v5 + 24) = v9;
    goto LABEL_10;
  }
}

uint64_t AMCP::get_stream_property_traits_list(AMCP *this)
{
  {
    AMCP::get_stream_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_stream_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_stream_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_stream_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_stream_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_stream_property_traits_list(void)::$_0 &&>>()
{
  v24[6] = *MEMORY[0x1E69E9840];
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
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v24, 1718449187, 1, 0, 0, &AMCP::Property_Traits<1718449187u>::k_valid_scopes, &AMCP::Property_Traits<1735554416u>::k_valid_scopes, 0, 1885762657, 1);
  operator new();
}

void sub_1DE35D104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1200;
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

void HALS_Client::RemoveMuter(HALS_Object *a1, int a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN11HALS_Client11RemoveMuterEN4AMCP9DirectionEj_block_invoke;
  v5[3] = &unk_1E8673A50;
  v6 = 0;
  v7 = a2;
  v5[4] = &v8;
  v5[5] = a1;
  v3 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v3, v5);
  if (*(v9 + 24) == 1)
  {
    HALS_Client::UpdateMuteStateOnContexts(a1);
    strcpy(&v4, "tmopbolg");
    BYTE1(v4.mElement) = 0;
    HIWORD(v4.mElement) = 0;
    HALS_Object::PropertiesChanged(a1, *(a1 + 4), *(a1 + 4), 1, &v4);
  }

  _Block_object_dispose(&v8, 8);
}

void ___ZN11HALS_Client11RemoveMuterEN4AMCP9DirectionEj_block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = v2 + 72;
  v4 = (v2 + 72 + 40 * *(a1 + 48));
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(v4, *(a1 + 52));
  *(*(*(a1 + 32) + 8) + 24) = v5 != 0;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v6 = v4[1];
    v7 = v5[1];
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      if (v7 >= *&v6)
      {
        v7 %= *&v6;
      }
    }

    else
    {
      v7 &= *&v6 - 1;
    }

    v9 = *(*v4 + 8 * v7);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v5);
    if (v10 == v4 + 2)
    {
      goto LABEL_19;
    }

    v11 = v10[1];
    if (v8.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v7)
    {
LABEL_19:
      if (!*v5)
      {
        goto LABEL_20;
      }

      v12 = *(*v5 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v7)
      {
LABEL_20:
        *(*v4 + 8 * v7) = 0;
      }
    }

    v13 = *v5;
    if (*v5)
    {
      v14 = *(v13 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v14 >= *&v6)
        {
          v14 %= *&v6;
        }
      }

      else
      {
        v14 &= *&v6 - 1;
      }

      if (v14 != v7)
      {
        *(*v4 + 8 * v14) = v10;
        v13 = *v5;
      }
    }

    *v10 = v13;
    *v5 = 0;
    --v4[3];
    operator delete(v5);
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v15);
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

    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (*(v2 + 759) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(v2 + 736), *(v2 + 744));
      }

      else
      {
        v35 = *(v2 + 736);
      }

      v21 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
      v22 = v35.__r_.__value_.__r.__words[0];
      v23 = *(v2 + 16);
      get_muter_name(&__p, *(a1 + 52));
      v24 = &v35;
      if (v21 < 0)
      {
        v24 = v22;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v26 = *(a1 + 52);
      *buf = 136316418;
      v37 = "HALS_Client.cpp";
      v38 = 1024;
      v39 = 1595;
      v40 = 2082;
      v41 = v24;
      v42 = 1024;
      v43 = v23;
      v44 = 2082;
      v45 = p_p;
      v46 = 1024;
      v47 = v26;
      _os_log_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_Client::RemoveMuter: Process %{public}s (%u) unmuted by %{public}s (%u)", buf, 0x32u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v20);
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

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v3 + 40 * *(a1 + 48);
      get_muter_strings(&v35, *(v31 + 16), *(v31 + 24));
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v35;
      }

      else
      {
        v32 = v35.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v37 = "HALS_Client.cpp";
      v38 = 1024;
      v39 = 1596;
      v40 = 2080;
      v41 = v32;
      _os_log_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_Client::RemoveMuter:\t\tCurrent muters: (%s)", buf, 0x1Cu);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_1DE35D68C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Client::UpdateMuteStateOnContexts(_DWORD *a1)
{
  (*(*a1 + 208))(&__p);
  v2 = __p;
  v3 = v14;
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = HALS_ObjectMap::CopyObjectByObjectID(v4);
    v7 = v5;
    if (v5)
    {
      v8 = (*(**(v5 + 104) + 584))(*(v5 + 104), 0);
      ShouldMuteContext = HALS_Client::ShouldMuteContext(a1, 0, v4);
      if (v8 != ShouldMuteContext)
      {
        (*(**(v7 + 13) + 592))(*(v7 + 13), 0, ShouldMuteContext);
      }
    }

    HALS_ObjectMap::ReleaseObject(v7, v6);
    ++v2;
  }

  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v11, 0, v10);
  if (v11)
  {
    HALS_System::ProcessPropertyChanged(v11, a1[4], 1886350708, 1735159650, 1);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_1DE35D818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_Client::ShouldMuteContext(_DWORD *a1, int a2, HALS_ObjectMap *a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x5002000000;
  v17 = __Block_byref_object_copy__35;
  v18 = __Block_byref_object_dispose__36;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZNK11HALS_Client17ShouldMuteContextEN4AMCP9DirectionEj_block_invoke;
  v12[3] = &unk_1E8673A78;
  v12[4] = &v14;
  v12[5] = a1;
  v13 = a2;
  v5 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v5, v12);
  if (v15[8])
  {
    v6 = HALS_ObjectMap::CopyObjectByObjectID(a3);
    v8 = v6;
    if (v6 && **(v6 + 72) == a1[4])
    {
      v9 = v15 + 7;
      while (1)
      {
        v9 = *v9;
        v10 = v9 != 0;
        if (!v9)
        {
          break;
        }

        v7 = *(v9 + 20);
        if ((v7 & 0x100000000) == 0 || HALS_IOContext::IncludesDevice(v8, v7))
        {
          v10 = 1;
          break;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    HALS_ObjectMap::ReleaseObject(v8, v7);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v14, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v19);
  return v10;
}

void sub_1DE35D9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v9 + 40);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v5 = *(a2 + 56);
  v3 = a2 + 56;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 56) = v5;
  *(result + 48) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 64) = v7;
  *(result + 72) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 56;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void ___ZNK11HALS_Client17ShouldMuteContextEN4AMCP9DirectionEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40) + 40 * *(a1 + 48) + 72;
  v2 = *(*(a1 + 32) + 8);
  v3 = (v2 + 40);
  if (v2 + 40 != v1)
  {
    *(v2 + 72) = *(*(a1 + 40) + 40 * *(a1 + 48) + 104);
    v4 = *(v1 + 16);
    v5 = *(v2 + 48);
    if (!v5)
    {
      goto LABEL_8;
    }

    for (i = 0; i != v5; ++i)
    {
      *(*v3 + 8 * i) = 0;
    }

    v7 = *(v2 + 56);
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    if (v7)
    {
      while (v4)
      {
        v8 = *(v4 + 4);
        *(v7 + 4) = v8;
        v9 = *(v4 + 5);
        *(v7 + 24) = *(v4 + 24);
        *(v7 + 5) = v9;
        v10 = *v7;
        v7[1] = v8;
        inserted = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_prepare(v3, v8, v7 + 4);
        std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_perform(v3, v7, inserted);
        v4 = *v4;
        v7 = v10;
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      do
      {
        v12 = *v7;
        operator delete(v7);
        v7 = v12;
      }

      while (v12);
    }

    else
    {
LABEL_8:
      if (v4)
      {
        operator new();
      }
    }
  }
}

void sub_1DE35DBF0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 4) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void get_muter_name(std::string *a1, HALS_ObjectMap *a2)
{
  if (!HALS_ObjectMap::IsObjectMapped(a2))
  {
LABEL_7:

    std::to_string(a1, a2);
    return;
  }

  v4 = *(HALS_ObjectMap::CopyObjectByObjectID(a2) + 20);
  if (v4 != 1668050548)
  {
    if (v4 == 1952672883)
    {
      v5 = HALS_ObjectMap::CopyObjectByObjectID(a2);
      HALS_Tap::GetName(&cf, *(v5 + 56));
      if (cf)
      {
        CFRelease(cf);
        HALS_Tap::GetName(&cf, *(v5 + 56));
        v6 = cf;
        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(a1, cf);
        CFRelease(v6);
      }

      else
      {
        HALS_Tap::GetUID(&cf, *(v5 + 64));
        v9 = cf;
        if (!cf)
        {
          v13 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v13, "Could not construct");
          __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(a1, cf);
        CFRelease(v9);
      }

      return;
    }

    goto LABEL_7;
  }

  v7 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  if (*(v7 + 759) < 0)
  {
    v10 = *(v7 + 736);
    v11 = *(v7 + 744);

    std::string::__init_copy_ctor_external(a1, v10, v11);
  }

  else
  {
    v8 = *(v7 + 736);
    a1->__r_.__value_.__r.__words[2] = *(v7 + 752);
    *&a1->__r_.__value_.__l.__data_ = v8;
  }
}

void sub_1DE35E24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void get_muter_strings(std::string *a1, uint64_t **a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    v3 = a2;
    for (i = a3 - 1; ; --i)
    {
      get_muter_name(&__p, *(v3 + 4));
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::string::append(a1, v6, v7);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (i)
      {
        goto LABEL_13;
      }

LABEL_14:
      v3 = *v3;
      if (!v3)
      {
        return;
      }
    }

    if (!i)
    {
      goto LABEL_14;
    }

LABEL_13:
    std::string::append(a1, ", ", 2uLL);
    goto LABEL_14;
  }
}

void sub_1DE35E340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *HALS_Tap::GetName(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void *HALS_Tap::GetUID(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void ___ZN11HALS_Client8AddMuterEN4AMCP9DirectionEjNSt3__18optionalIjEE_block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = v2 + 72;
  v4 = *(a1 + 60);
  v5 = (v2 + 72 + 40 * *(a1 + 56));
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(v5, v4);
  *(*(*(a1 + 32) + 8) + 24) = v6 == 0;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = 1;
  }

  else
  {
    v8 = *(a1 + 68);
    v9 = *(v6 + 24);
    v10 = v9 == v8;
    v7 = v9 != v8;
    v10 = !v10 || v9 == 0;
    if (!v10)
    {
      v7 = *(v6 + 5) != *(a1 + 64);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || *(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = v5[1];
    if (!*&v11)
    {
      goto LABEL_27;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v4;
      if (*&v11 <= v4)
      {
        v13 = v4 % v11.i32[0];
      }
    }

    else
    {
      v13 = (v11.i32[0] - 1) & v4;
    }

    v14 = *(*v5 + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v4)
      {
        if (*(v15 + 4) == v4)
        {
          v17 = *(a1 + 64);
          *(v15 + 24) = *(a1 + 68);
          *(v15 + 5) = v17;
          LOBYTE(v17) = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v17 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (*(v2 + 759) < 0)
            {
              std::string::__init_copy_ctor_external(&v38, *(v2 + 736), *(v2 + 744));
            }

            else
            {
              v38 = *(v2 + 736);
            }

            v22 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
            v23 = v38.__r_.__value_.__r.__words[0];
            v24 = *(v2 + 16);
            get_muter_name(&__p, *(a1 + 60));
            if (v22 >= 0)
            {
              v25 = &v38;
            }

            else
            {
              v25 = v23;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            v27 = *(a1 + 60);
            v28 = *(a1 + 68);
            v29 = "all devices";
            if (*(a1 + 68))
            {
              v29 = "device ID ";
              v28 = *(a1 + 64);
            }

            *buf = 136316930;
            v40 = "HALS_Client.cpp";
            v41 = 1024;
            v42 = 1567;
            v43 = 2082;
            v44 = v25;
            v45 = 1024;
            v46 = v24;
            v47 = 2082;
            v48 = p_p;
            v49 = 1024;
            v50 = v27;
            v51 = 2080;
            v52 = v29;
            v53 = 1024;
            v54 = v28;
            _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_Client::AddMuter: Process %{public}s (%u) muted by %{public}s (%u) for %s%u", buf, 0x42u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v38.__r_.__value_.__l.__data_);
            }
          }

          v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v30 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v21);
          }

          v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            v33 = *v32;
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          else
          {
            v33 = *v32;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v3 + 40 * *(a1 + 56);
            get_muter_strings(&v38, *(v34 + 16), *(v34 + 24));
            if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v35 = &v38;
            }

            else
            {
              v35 = v38.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            v40 = "HALS_Client.cpp";
            v41 = 1024;
            v42 = 1568;
            v43 = 2080;
            v44 = v35;
            _os_log_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_Client::AddMuter:\t\tCurrent muters: (%s)", buf, 0x1Cu);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v38.__r_.__value_.__l.__data_);
            }
          }

          break;
        }
      }

      else
      {
        if (v12.u32[0] > 1uLL)
        {
          if (v16 >= *&v11)
          {
            v16 %= *&v11;
          }
        }

        else
        {
          v16 &= *&v11 - 1;
        }

        if (v16 != v13)
        {
          goto LABEL_27;
        }
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_27;
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_1DE35EB34(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void AMCP::Utility::SecTask::release(const void **this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }
}

void HALS_Client::GetBundleIDString(UInt8 *this, uint64_t a2)
{
  v3 = *(a2 + 248);
  if (v3 && (CFRetain(v3), (v5 = *(a2 + 248)) != 0))
  {
    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(this, v5);
    CFRelease(v5);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void sub_1DE35ED6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void ___ZN11HALS_Client28StopListeningToAllPropertiesEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  while (v2 != v3)
  {
    v5 = *v2;
    v2 += 10;
    v4 = v5;
    v6 = *(a1 + 40);
    if (v5 == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 10;
    }

    if (v4 == v6)
    {
      v8 = &v2[v7];
      v9 = v8 - 10;
      v10 = v8;
      if (v8 != v3)
      {
        do
        {
          *v9 = *v10;
          v11 = *(v9 + 1);
          v13 = *(v10 + 1);
          v12 = *(v10 + 2);
          v14 = v12 - v13;
          v15 = *(v9 + 3);
          if (v15 - v11 < (v12 - v13))
          {
            if (v11)
            {
              *(v9 + 2) = v11;
              operator delete(v11);
              v15 = 0;
              *(v9 + 1) = 0;
              *(v9 + 2) = 0;
              *(v9 + 3) = 0;
            }

            v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2);
            if (v16 <= 0x1555555555555555)
            {
              v17 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 2);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0xAAAAAAAAAAAAAAALL)
              {
                v18 = 0x1555555555555555;
              }

              else
              {
                v18 = v16;
              }

              std::vector<AudioObjectPropertyAddress>::__vallocate[abi:ne200100]((v9 + 2), v18);
            }

            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v19 = *(v9 + 2);
          v20 = v19 - v11;
          if (v19 - v11 >= v14)
          {
            while (v13 != v12)
            {
              v25 = *v13;
              *(v11 + 2) = *(v13 + 2);
              *v11 = v25;
              v11 += 12;
              v13 = (v13 + 12);
            }

            *(v9 + 2) = v11;
          }

          else
          {
            if (v19 != v11)
            {
              v21 = (v13 + v20);
              do
              {
                v22 = *v13;
                *(v11 + 2) = *(v13 + 2);
                *v11 = v22;
                v11 += 12;
                v13 = (v13 + 12);
                v20 -= 12;
              }

              while (v20);
              v19 = *(v9 + 2);
              v13 = v21;
            }

            v23 = v19;
            if (v13 != v12)
            {
              v23 = v19;
              do
              {
                v24 = *v13;
                *(v23 + 2) = *(v13 + 2);
                *v23 = v24;
                v23 += 12;
                v13 = (v13 + 12);
              }

              while (v13 != v12);
            }

            *(v9 + 2) = v23;
          }

          *(v9 + 4) = *(v10 + 4);
          v10 += 10;
          v9 += 10;
        }

        while (v10 != v3);
        v3 = *(v1 + 160);
      }

      while (v3 != v9)
      {
        v26 = *(v3 - 4);
        if (v26)
        {
          *(v3 - 3) = v26;
          operator delete(v26);
        }

        v3 -= 10;
      }

      *(v1 + 160) = v9;
      return;
    }
  }
}

void HALS_Client::SetNonMixableFormat(HALS_Client *this, int a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11HALS_Client19SetNonMixableFormatEj_block_invoke;
  v3[3] = &__block_descriptor_tmp_14_3135;
  v3[4] = this;
  v4 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void ___ZN11HALS_Client19SetNonMixableFormatEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = v2[23];
  v3 = v2[24];
  if (v4 >= v3)
  {
    v6 = v2[22];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 2;
    v9 = v8 + 1;
    if ((v8 + 1) >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = v8;
    v13 = (4 * v8);
    v14 = *(a1 + 40);
    v15 = &v13[-v12];
    *v13 = v14;
    v5 = v13 + 1;
    memcpy(v15, v6, v7);
    v16 = v2[22];
    v2[22] = v15;
    v2[23] = v5;
    v2[24] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = *(a1 + 40);
    v5 = v4 + 4;
  }

  v2[23] = v5;
}

void ___ZNK11HALS_Client33SendSleepingIsAllowedNotificationEv_block_invoke(uint64_t a1)
{
  v1 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
  v3 = v1;
  if (v1)
  {
    (*(*v1 + 40))(v1);
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

uint64_t ___ZN11HALS_Client46UpdateStartCountAndMaybeNotifyProcessIsRunningEjb_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 328);
  if (*(result + 48))
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2 - 1;
  }

  *(v1 + 328) = v3;
  *(*(*(result + 32) + 8) + 24) = v3 < 2;
  return result;
}

void HALS_Client::SendIsRunningSomewhereElse(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = a1[4];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN11HALS_Client26SendIsRunningSomewhereElseEjRKNSt3__16vectorI26RunningIOContextClientInfoNS0_9allocatorIS2_EEEE_block_invoke;
  v5[3] = &unk_1E86739C0;
  v5[6] = a1;
  v5[7] = a3;
  v6 = a2;
  v7 = v3;
  v5[4] = v8;
  v5[5] = v10;
  v4 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v4, v5);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

void sub_1DE35F2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void ___ZN11HALS_Client26SendIsRunningSomewhereElseEjRKNSt3__16vectorI26RunningIOContextClientInfoNS0_9allocatorIS2_EEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = v2[38];
  v3 = v2[39];
  v5 = v3 - v4;
  if (v3 == v4)
  {
    v7 = v2[39];
  }

  else
  {
    v6 = v5 >> 3;
    v7 = v2[38];
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[8 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v6 += ~(v6 >> 1);
      if (v11 < *(a1 + 64))
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
  }

  if (v3 == v7)
  {
    v12 = *(a1 + 64);
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = v7;
    if (*v7 == v12)
    {
      goto LABEL_41;
    }
  }

  v14 = v2 + 39;
  v15 = v2[40];
  if (v3 >= v15)
  {
    v18 = (v5 >> 3) + 1;
    if (v18 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v19 = v7 - v4;
    v20 = v15 - v4;
    v21 = (v15 - v4) >> 2;
    if (v21 > v18)
    {
      v18 = v21;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v18;
    }

    v23 = v19 >> 3;
    if (v22)
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v22);
    }

    v13 = 8 * v23;
    v24 = 8 * v23;
    if (!v23)
    {
      if (v19 < 1)
      {
        if (v7 == v4)
        {
          v28 = 1;
        }

        else
        {
          v28 = v19 >> 2;
        }

        std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v28);
      }

      v13 -= ((v19 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
      v24 = v13;
    }

    *v13 = v12;
    v29 = v24 + 8;
    memcpy((v24 + 8), v7, v2[39] - v7);
    v30 = v2[38];
    v42 = (v29 + v2[39] - v7);
    v2[39] = v7;
    v31 = v7 - v30;
    v32 = (v13 - (v7 - v30));
    memcpy(v32, v30, v31);
    v33 = v2[38];
    v2[38] = v32;
    *v14 = v42;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    v16 = v7 - v3;
    if (v7 == v3)
    {
      *v3 = v12;
      *v14 = v3 + 8;
    }

    else
    {
      if (v3 < 8)
      {
        v17 = v2[39];
      }

      else
      {
        *v3 = *(v3 - 1);
        v17 = v3 + 8;
      }

      *v14 = v17;
      if (v3 != v7 + 8)
      {
        v25 = v3 - 16;
        v26 = v3 - 4;
        v27 = v16 + 8;
        do
        {
          *(v26 - 1) = *v25;
          *v26 = *(v25 + 1);
          v26 -= 8;
          v25 -= 8;
          v27 += 8;
        }

        while (v27);
      }

      *v7 = v12;
      *(v7 + 1) = 0;
    }

    v13 = v7;
  }

LABEL_41:
  *(*(*(a1 + 32) + 8) + 24) = *(v13 + 4);
  v34 = *(a1 + 56);
  v35 = *v34;
  v36 = v34[1];
  if (*v34 == v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = 0;
    do
    {
      v38 = *(v35 + 2);
      v40 = *v35;
      v35 += 12;
      v39 = v40;
      if (v38 == *(a1 + 68))
      {
        v41 = 0;
      }

      else
      {
        v41 = v39;
      }

      v37 += v41;
    }

    while (v35 != v36);
  }

  *(*(*(a1 + 40) + 8) + 24) = v37;
  *(v13 + 4) = *(*(*(a1 + 40) + 8) + 24);
}

void sub_1DE35F5B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11HALS_Client23DevicesStartedByContextERKNSt3__16vectorIjNS0_9allocatorIjEEEES6__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (HALS_Client::ActiveDeviceList::TryToAddToActiveDeviceList(v2 + 360, **(a1 + 40), *(*(a1 + 40) + 8)))
  {
    HALS_Client::NotifyClientsAboutInputDeviceListChange(v2);
  }

  if (HALS_Client::ActiveDeviceList::TryToAddToActiveDeviceList(v2 + 336, **(a1 + 48), *(*(a1 + 48) + 8)))
  {
    HALS_Client::NotifyClientsAboutOutputDeviceListChange(v2);
  }
}

void sub_1DE35F628(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Client::ActiveDeviceList::TryToAddToActiveDeviceList(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (a2 == a3)
  {
    v6 = 0;
  }

  else
  {
    v4 = a2;
    v6 = 0;
    v7 = *(a1 + 8);
    do
    {
      v8 = *v4;
      v9 = *a1;
      v10 = *a1;
      if (*a1 == v7)
      {
LABEL_6:
        v11 = *(a1 + 16);
        if (v7 >= v11)
        {
          v12 = v7 - v9;
          v13 = v7 - v9;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v15 = v11 - v9;
          if (v15 >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v17 = v13;
          v18 = (8 * v13);
          v19 = v8 | 0x100000000;
          v20 = &v18[-v17];
          *v18 = v19;
          v7 = v18 + 1;
          memcpy(v20, v9, v12);
          *a1 = v20;
          *(a1 + 8) = v7;
          *(a1 + 16) = 0;
          if (v9)
          {
            operator delete(v9);
          }
        }

        else
        {
          *v7++ = v8 | 0x100000000;
        }

        *(a1 + 8) = v7;
        v6 = 1;
      }

      else
      {
        while (v8 != *v10)
        {
          if (++v10 == v7)
          {
            goto LABEL_6;
          }
        }
      }

      ++v4;
    }

    while (v4 != a3);
  }

  return v6 & 1;
}

void HALS_Client::NotifyClientsAboutInputDeviceListChange(HALS_Client *this)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  if (v4)
  {
    v2 = *(this + 4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke_2;
    block[3] = &__block_descriptor_tmp_115_8136;
    block[4] = v4;
    v7 = v2;
    v8 = 0x696E707470647623;
    v9 = 0;
    AMCP::Utility::Dispatch_Queue::async(v4 + 880, block);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void HALS_Client::NotifyClientsAboutOutputDeviceListChange(HALS_Client *this)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  if (v4)
  {
    v2 = *(this + 4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke_2;
    block[3] = &__block_descriptor_tmp_115_8136;
    block[4] = v4;
    v7 = v2;
    v8 = 0x6F75747070647623;
    v9 = 0;
    AMCP::Utility::Dispatch_Queue::async(v4 + 880, block);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void ___ZN11HALS_Client23DevicesStoppedByContextERKNSt3__16vectorIjNS0_9allocatorIjEEEES6__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (HALS_Client::ActiveDeviceList::TryToRemoveFromActiveDeviceList(v2 + 45, **(a1 + 40), *(*(a1 + 40) + 8)))
  {
    HALS_Client::NotifyClientsAboutInputDeviceListChange(v2);
  }

  if (HALS_Client::ActiveDeviceList::TryToRemoveFromActiveDeviceList(v2 + 42, **(a1 + 48), *(*(a1 + 48) + 8)))
  {
    HALS_Client::NotifyClientsAboutOutputDeviceListChange(v2);
  }
}

void sub_1DE35F988(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Client::ActiveDeviceList::TryToRemoveFromActiveDeviceList(char **a1, int *a2, int *a3)
{
  if (a2 == a3)
  {
    v6 = 0;
  }

  else
  {
    v4 = a2;
    v6 = 0;
    v7 = *a1;
    v8 = a1[1];
    do
    {
      if (v7 != v8)
      {
        v9 = *v4;
        v10 = v7;
        while (1)
        {
          if (v9 == *v10)
          {
            v11 = *(v10 + 1) - 1;
            *(v10 + 1) = v11;
            if (!v11)
            {
              break;
            }
          }

          v10 += 8;
          if (v10 == v8)
          {
            goto LABEL_12;
          }
        }

        v12 = v8 - (v10 + 8);
        if (v8 != v10 + 8)
        {
          memmove(v10, v10 + 8, v8 - (v10 + 8));
          v7 = *a1;
        }

        v8 = &v10[v12];
        a1[1] = &v10[v12];
        v6 = 1;
      }

LABEL_12:
      ++v4;
    }

    while (v4 != a3);
  }

  return v6 & 1;
}

id get_TSPDumpOptions_ReasonString(void)
{
  if (atomic_load_explicit(&get_TSPDumpOptions_ReasonString(void)::once_flag, memory_order_acquire) != -1)
  {
    v6[1] = v0;
    v7 = v1;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&get_TSPDumpOptions_ReasonString(void)::once_flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<get_TSPDumpOptions_ReasonString(void)::$_0 &&>>);
    v1 = v7;
  }

  v2 = get_TSPDumpOptions_ReasonString(void)::s_symbol;

  return v2;
}

void Symbol<BOOL (*)(int,NSDictionary *)>::initialize()
{
  v0 = &weak_tailspin_dump_output_with_options_sync;
  if (atomic_load_explicit(&qword_1ECDAAA60, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_1ECDAAA60, &v1, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<BOOL (*)(int,NSDictionary *)>::initialize(void)::{lambda(void)#1} &&>>);
  }
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<BOOL (*)(int,NSDictionary *)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void *get_address_for_symbol(const char *a1)
{
  result = dlopen("/usr/lib/libtailspin.dylib", 1);
  if (result)
  {
    return dlsym(result, a1);
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<get_TSPDumpOptions_ReasonString(void)::$_0 &&>>()
{
  v0 = *get_address_for_symbol("TSPDumpOptions_ReasonString");

  objc_storeStrong(&get_TSPDumpOptions_ReasonString(void)::s_symbol, v0);
}

void Symbol<void (*)(tailspin_config *)>::initialize(uint64_t a1)
{
  v2 = (a1 + 16);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *)>::initialize(void)::{lambda(void)#1} &&>>);
  }
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void Symbol<BOOL (*)(tailspin_config *)>::initialize(uint64_t a1)
{
  v2 = (a1 + 16);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<BOOL (*)(tailspin_config *)>::initialize(void)::{lambda(void)#1} &&>>);
  }
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<BOOL (*)(tailspin_config *)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void Symbol<tailspin_config * (*)(void)>::initialize()
{
  v0 = &weak_tailspin_config_create_with_current_state;
  if (atomic_load_explicit(&qword_1ECDAA970, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_1ECDAA970, &v1, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<tailspin_config * (*)(void)>::initialize(void)::{lambda(void)#1} &&>>);
  }
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<tailspin_config * (*)(void)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void sub_1DE360A48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Symbol<void (*)(tailspin_config *,unsigned long long)>::operator()<tailspin_config *&,unsigned long long>(void (**a1)(void, void), void *a2, void *a3)
{
  v6 = (a1 + 2);
  v7 = a1;
  if (atomic_load_explicit(v6, memory_order_acquire) != -1)
  {
    v9 = &v7;
    v8 = &v9;
    std::__call_once(v6, &v8, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,unsigned long long)>::initialize(void)::{lambda(void)#1} &&>>);
  }

  if (*a1)
  {
    (*a1)(*a2, *a3);
  }
}

void Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v8 = &weak_tailspin_kdbg_filter_subclass_set;
  if (atomic_load_explicit(&qword_1ECDAA9D0, memory_order_acquire) != -1)
  {
    v10 = &v8;
    v9 = &v10;
    std::__call_once(&qword_1ECDAA9D0, &v9, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::initialize(void)::{lambda(void)#1} &&>>);
  }

  if (weak_tailspin_kdbg_filter_subclass_set)
  {
    weak_tailspin_kdbg_filter_subclass_set(*a1, *a2, *a3, *a4);
  }
}

void Symbol<void (*)(tailspin_config *)>::operator()<tailspin_config *&>(void (**a1)(void), void *a2)
{
  Symbol<void (*)(tailspin_config *)>::initialize(a1);
  if (*a1)
  {
    (*a1)(*a2);
  }
}

void Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = &weak_tailspin_kdbg_filter_class_set;
  if (atomic_load_explicit(&qword_1ECDAAA18, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(&qword_1ECDAAA18, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::initialize(void)::{lambda(void)#1} &&>>);
  }

  if (weak_tailspin_kdbg_filter_class_set)
  {
    weak_tailspin_kdbg_filter_class_set(*a1, *a2, *a3);
  }
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,int,BOOL)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,unsigned long)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,unsigned long long)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

void Symbol<void (*)(tailspin_config *,BOOL)>::initialize()
{
  v0 = &weak_tailspin_enabled_set;
  if (atomic_load_explicit(&qword_1ECDAA940, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_1ECDAA940, &v1, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,BOOL)>::initialize(void)::{lambda(void)#1} &&>>);
  }
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,BOOL)>::initialize(void)::{lambda(void)#1} &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  result = get_address_for_symbol(*(*v1 + 8));
  *v2 = result;
  return result;
}

id get_TSPDumpOptions_MaxTimestamp(void)
{
  if (atomic_load_explicit(&get_TSPDumpOptions_MaxTimestamp(void)::once_flag, memory_order_acquire) != -1)
  {
    v6[1] = v0;
    v7 = v1;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&get_TSPDumpOptions_MaxTimestamp(void)::once_flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<get_TSPDumpOptions_MaxTimestamp(void)::$_0 &&>>);
    v1 = v7;
  }

  v2 = get_TSPDumpOptions_MaxTimestamp(void)::s_symbol;

  return v2;
}

id get_TSPDumpOptions_MinTimestamp(void)
{
  if (atomic_load_explicit(&get_TSPDumpOptions_MinTimestamp(void)::once_flag, memory_order_acquire) != -1)
  {
    v6[1] = v0;
    v7 = v1;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&get_TSPDumpOptions_MinTimestamp(void)::once_flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<get_TSPDumpOptions_MinTimestamp(void)::$_0 &&>>);
    v1 = v7;
  }

  v2 = get_TSPDumpOptions_MinTimestamp(void)::s_symbol;

  return v2;
}

id get_TSPDumpOptions_MinTraceBufferDurationSec(void)
{
  if (atomic_load_explicit(&get_TSPDumpOptions_MinTraceBufferDurationSec(void)::once_flag, memory_order_acquire) != -1)
  {
    v6[1] = v0;
    v7 = v1;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&get_TSPDumpOptions_MinTraceBufferDurationSec(void)::once_flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<get_TSPDumpOptions_MinTraceBufferDurationSec(void)::$_0 &&>>);
    v1 = v7;
  }

  v2 = get_TSPDumpOptions_MinTraceBufferDurationSec(void)::s_symbol;

  return v2;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<get_TSPDumpOptions_MinTraceBufferDurationSec(void)::$_0 &&>>()
{
  v0 = *get_address_for_symbol("TSPDumpOptions_MinTraceBufferDurationSec");

  objc_storeStrong(&get_TSPDumpOptions_MinTraceBufferDurationSec(void)::s_symbol, v0);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<get_TSPDumpOptions_MinTimestamp(void)::$_0 &&>>()
{
  v0 = *get_address_for_symbol("TSPDumpOptions_MinTimestamp");

  objc_storeStrong(&get_TSPDumpOptions_MinTimestamp(void)::s_symbol, v0);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<get_TSPDumpOptions_MaxTimestamp(void)::$_0 &&>>()
{
  v0 = *get_address_for_symbol("TSPDumpOptions_MaxTimestamp");

  objc_storeStrong(&get_TSPDumpOptions_MaxTimestamp(void)::s_symbol, v0);
}

void ___ZN13HALB_Tailspin17DumpTailspinAsyncEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 8);
  v5 = __udivti3();
  if (v3 >= v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  if (v6 >= 5000000000)
  {
    *(v2 + 8) = v3;
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    [HALB_TailspinImpl dumpTailspinSync:v8 forReason:v9];
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1DE36168C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE361678);
}

void __destroy_helper_block_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void __copy_helper_block_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void System_Core_Graph_Host::simple_property_changed_async(System_Core_Graph_Host *this, unsigned int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  *__p = 0u;
  *v8 = 0u;
  v9 = 1065353216;
  v4 = *a3;
  v5 = *(a3 + 7);
  v6 = *(a3 + 2);
  operator new();
}

void AMCP::Core::Conductor::properties_changed_async(id *a1, uint64_t a2, uint64_t a3)
{
  v8[42] = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v8, a1 + 46);
  v5 = a1[1];
  v6 = *a1;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(&__p, a3);
  operator new();
}

void sub_1DE361A00(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<AMCP::Core::Conductor::properties_changed_async(unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>> const&)::{lambda(void)#1},std::default_delete<AMCP::Core::Conductor::properties_changed_async(unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v2 + 24);
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x1E12C1730](v2, 0x10A0C4071FF95D2);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<AMCP::Core::Conductor::properties_changed_async(unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>> const&)::{lambda(void)#1}>(dispatch_queue_s *,AMCP::Core::Conductor::properties_changed_async(unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>> const&)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  __p[5] = *MEMORY[0x1E69E9840];
  v50 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (!*a1)
      {
LABEL_70:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_71;
      }

      v6 = *(a1 + 16);
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v3);
      }

      v8 = StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *(v9 + 16);
      switch(v11)
      {
        case 3:
          v21 = *v8;
          v22 = **v8;
          v14 = v21[1];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!*MEMORY[0x1E69E3C08])
          {
            goto LABEL_72;
          }

          v15 = *(v22 + 8);
          v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
          v17 = v16;
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          *(v16 + 20) = 1;
          *(v16 + 24) = "Conductor.cpp";
          *(v16 + 32) = (v6 << 32) | 0x1D0;
          v18 = &unk_1F5990A60;
          break;
        case 2:
          v19 = *v8;
          v20 = **v8;
          v14 = v19[1];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!*MEMORY[0x1E69E3C08])
          {
            goto LABEL_72;
          }

          v15 = *(v20 + 8);
          v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
          v17 = v16;
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          *(v16 + 20) = 2;
          *(v16 + 24) = "Conductor.cpp";
          *(v16 + 32) = (v6 << 32) | 0x1D0;
          v18 = &unk_1F5990A08;
          break;
        case 1:
          v12 = *v8;
          v13 = **v8;
          v14 = v12[1];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!*MEMORY[0x1E69E3C08])
          {
            goto LABEL_72;
          }

          v15 = *(v13 + 8);
          v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
          v17 = v16;
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          *(v16 + 20) = 0;
          *(v16 + 24) = "Conductor.cpp";
          *(v16 + 32) = (v6 << 32) | 0x1D0;
          v18 = &unk_1F59909B0;
          break;
        default:
          goto LABEL_25;
      }

      *v16 = v18;
      caulk::concurrent::messenger::enqueue(v15, v17);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

LABEL_25:
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      kdebug_trace();
      *v53 = 0u;
      *v54 = 0u;
      v55 = 1065353216;
      std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(v56, a1 + 24);
      v57 = 0u;
      v58 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 1065353216;
      v62 = 1065353216;
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(0);
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(0);
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(0);
      LODWORD(v65) = v6;
      std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(&v65 + 8, v53);
      std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(v68, v56);
      std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(v69, &v57);
      std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(__p, &v60);
      memset(v51, 0, sizeof(v51));
      v52 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>> const&>(v51, v65);
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(__p[2]);
      v23 = __p[0];
      __p[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v69[2]);
      v24 = v69[0];
      v69[0] = 0;
      if (v24)
      {
        operator delete(v24);
      }

      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v68[2]);
      v25 = v68[0];
      v68[0] = 0;
      if (v25)
      {
        operator delete(v25);
      }

      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(*(&v66 + 1));
      v26 = *(&v65 + 1);
      *(&v65 + 1) = 0;
      if (v26)
      {
        operator delete(v26);
      }

      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>::unordered_map(v68, v51);
      AMCP::Core::Conductor::call_external_begin_config_change_observers(v5, 0, v6, 0, &v65);
      v64 = v6;
      v63 = 0;
      AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,unsigned int,true,std::less<unsigned int>>::call_observers_sync<unsigned int &,BOOL &,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&>(v5 + 1184, &v64, &v64, &v63, &v65);
      v64 = v6;
      v63 = 0;
      AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,unsigned int,true,std::less<unsigned int>>::call_observers_sync<unsigned int &,BOOL &,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&>(v5 + 1400, &v64, &v64, &v63, &v65);
      AMCP::Core::Conductor::call_external_end_config_change_observers(v5, v6, 0, &v65);
      v27 = kdebug_trace();
      v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v28 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v27);
      }

      v29 = StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = *(v30 + 16);
      if (v32 == 3)
      {
        v42 = *v29;
        v43 = **v29;
        v35 = v42[1];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_72;
        }

        v36 = *(v43 + 8);
        v37 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        v38 = v37;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        *(v37 + 20) = 1;
        *(v37 + 24) = "Conductor.cpp";
        *(v37 + 32) = (v6 << 32) | 0x1E7;
        v39 = &unk_1F5990B68;
      }

      else
      {
        if (v32 != 2)
        {
          if (v32 != 1)
          {
LABEL_56:
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

            std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::~__hash_table(v68);
            if (*(&v66 + 1))
            {
              *&v67 = *(&v66 + 1);
              operator delete(*(&v66 + 1));
            }

            if (v65)
            {
              *(&v65 + 1) = v65;
              operator delete(v65);
            }

            std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::~__hash_table(v51);
            std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v61);
            v44 = v60;
            *&v60 = 0;
            if (v44)
            {
              operator delete(v44);
            }

            std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v58);
            v45 = v57;
            *&v57 = 0;
            if (v45)
            {
              operator delete(v45);
            }

            std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v56[2]);
            v46 = v56[0];
            v56[0] = 0;
            if (v46)
            {
              operator delete(v46);
            }

            std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v54[0]);
            v47 = v53[0];
            v53[0] = 0;
            if (v47)
            {
              operator delete(v47);
            }

            goto LABEL_70;
          }

          v33 = *v29;
          v34 = **v29;
          v35 = v33[1];
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*MEMORY[0x1E69E3C08])
          {
            v36 = *(v34 + 8);
            v37 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
            v38 = v37;
            *(v37 + 8) = 0;
            *(v37 + 16) = 0;
            *(v37 + 20) = 0;
            *(v37 + 24) = "Conductor.cpp";
            *(v37 + 32) = (v6 << 32) | 0x1E7;
            v39 = &unk_1F5990AB8;
            goto LABEL_54;
          }

LABEL_72:
          __break(1u);
        }

        v40 = *v29;
        v41 = **v29;
        v35 = v40[1];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_72;
        }

        v36 = *(v41 + 8);
        v37 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        v38 = v37;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        *(v37 + 20) = 2;
        *(v37 + 24) = "Conductor.cpp";
        *(v37 + 32) = (v6 << 32) | 0x1E7;
        v39 = &unk_1F5990B10;
      }

LABEL_54:
      *v37 = v39;
      caulk::concurrent::messenger::enqueue(v36, v38);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      goto LABEL_56;
    }
  }

LABEL_71:
  result = std::unique_ptr<AMCP::Core::Conductor::properties_changed_async(unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>> const&)::{lambda(void)#1},std::default_delete<AMCP::Core::Conductor::properties_changed_async(unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v50);
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE362150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a39)
    {
      operator delete(a39);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void System_Core_Graph_Host::~System_Core_Graph_Host(System_Core_Graph_Host *this)
{
  *this = &unk_1F59680E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59680E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1DE362408(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    v1[10].__shared_owners_ = v6;
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(v3);
  std::shared_mutex::~shared_mutex[abi:ne200100](v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v7);
  _Unwind_Resume(a1);
}

void ___ZN10applesauce8dispatch2v19sync_implIZN4AMCP4Core11System_Core5startERKNSt3__16vectorINS_2CF9StringRefENS6_9allocatorIS9_EEEESE_E3__0EEvP16dispatch_queue_sOT_NS6_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = **(a1 + 32);
  *__p = 0u;
  *v4 = 0u;
  v5 = 1065353216;
  v6 = 0x676C6F6269646E74;
  LODWORD(v7) = 0;
  LODWORD(cf[0]) = 1;
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
}

void sub_1DE363194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Core::Driver_Manager>::__on_zero_shared(uint64_t a1)
{
  v1 = (a1 + 24);
  if (*(a1 + 24))
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((a1 + 24));
    v2 = *v1;

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<AMCP::Core::Driver_Manager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5968238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE3634F0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[79];
}

uint64_t std::__function::__value_func<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<BOOL ()(applesauce::CF::StringRef)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[81];
}

uint64_t std::__function::__value_func<BOOL ()(applesauce::CF::StringRef)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(applesauce::CF::StringRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[83];
}

uint64_t std::__function::__value_func<std::optional<unsigned int> ()(applesauce::CF::StringRef)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::optional<unsigned int> ()(applesauce::CF::StringRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[85];
}

uint64_t std::__function::__value_func<std::unordered_set<AMCP::Wire_Description> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::unordered_set<AMCP::Wire_Description> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()(unsigned int)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[87];
}

uint64_t std::__function::__value_func<std::unordered_set<AMCP::Wire_Description> ()(unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::unordered_set<AMCP::Wire_Description> ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[89];
}

uint64_t std::__function::__value_func<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[91];
}

uint64_t std::__function::__value_func<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[93];
}

uint64_t std::__function::__value_func<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_8,std::allocator<AMCP::Core::System_Core::build_core(void)::$_8>,void ()(AMCP::Power_State)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_8,std::allocator<AMCP::Core::System_Core::build_core(void)::$_8>,void ()(AMCP::Power_State)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, int *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 1);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, off_1E86795A0[v2]);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "System_Core.cpp";
    v16 = 1024;
    v17 = 235;
    v18 = 2080;
    v19 = v8;
    _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_INFO, "%32s:%-5d System::update_power_state: %s", buf, 0x1Cu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(v3 + 32);
  (*(*(v9 + 2696) + 40))(buf, v9 + 2696);
  __p[0] = (v9 + 2704);
  (*(*(v9 + 2696) + 16))(&__p[1], v9 + 2696);
  v12 = v2;
  v13 = v9 + 3112;
  v14 = 0;
  operator new();
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_8,std::allocator<AMCP::Core::System_Core::build_core(void)::$_8>,void ()(AMCP::Power_State)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5968888;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>())
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
      std::__function::__value_func<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_7,std::allocator<AMCP::Core::System_Core::build_core(void)::$_7>,std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_7,std::allocator<AMCP::Core::System_Core::build_core(void)::$_7>,std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *v28 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v29 = v3;
  v30 = v4;
  v31 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v35 = *(a2 + 72);
  *__p = v5;
  v33 = v6;
  v34 = v7;
  AMCP::Graph::Wire_Index::get_wires_for_terminal(&v51, (*(*(a1 + 8) + 32) + 2760), v28);
  v8 = v52;
  v27 = v51;
  if (v51 == v52)
  {
LABEL_14:
    v12 = v27;
    *a3 = 0;
    *(a3 + 64) = 0;
    goto LABEL_15;
  }

  v9 = v51;
  while (1)
  {
    v10 = *v9;
    if (*(*v9 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(v38, *(v10 + 40), *(v10 + 48));
    }

    else
    {
      *v38 = *(v10 + 40);
      *&v38[16] = *(v10 + 56);
    }

    *&v38[24] = *(v10 + 64);
    LODWORD(v39[0]) = *(v10 + 72);
    v36[0].__r_.__value_.__r.__words[0] = v38;
    v36[0].__r_.__value_.__l.__size_ = &v38[24];
    v36[0].__r_.__value_.__r.__words[2] = v39;
    v53[0] = __p;
    v53[1] = &v34;
    v53[2] = &v35;
    if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v36, v53))
    {
      if ((v38[23] & 0x80000000) != 0)
      {
        operator delete(*v38);
      }

      goto LABEL_13;
    }

    v11 = *(v10 + 408);
    if ((v38[23] & 0x80000000) != 0)
    {
      operator delete(*v38);
    }

    if (v11)
    {
      break;
    }

LABEL_13:
    v9 += 8;
    if (v9 == v8)
    {
      goto LABEL_14;
    }
  }

  if (*(v10 + 408) == 1)
  {
    AMCP::Graph::Graph_Wire::Connection::Connection(v38, (v10 + 192));
  }

  else
  {
    LODWORD(v46[0]) = 0;
    v44 = 0u;
    v45 = 0u;
    *v42 = 0u;
    *v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    *v39 = 0u;
    memset(v38, 0, sizeof(v38));
    *(v46 + 4) = 64;
    v47 = 0;
    v48 = 0;
    v49 = 1;
    memset(v50, 0, sizeof(v50));
  }

  *v37 = 0;
  memset(v36, 0, sizeof(v36));
  *&v37[8] = 64;
  *&v37[12] = 0;
  v37[14] = 0;
  v14 = *(v10 + 416);
  v13 = *(v10 + 424);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = 0;
LABEL_31:
    v16 = 1;
    goto LABEL_32;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (!v14)
  {
    goto LABEL_34;
  }

  v14 = *(v10 + 416);
  v15 = *(v10 + 424);
  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = 0;
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_32:
  v17 = (*(*v14 + 16))(v14);
  std::string::operator=(v36, v17);
  if ((v16 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_34:
  v19 = *(v10 + 432);
  v18 = *(v10 + 440);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_43;
    }

    v20 = 0;
LABEL_40:
    v21 = 1;
    goto LABEL_41;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  if (!v19)
  {
    goto LABEL_43;
  }

  v19 = *(v10 + 432);
  v20 = *(v10 + 440);
  if (!v20)
  {
    goto LABEL_40;
  }

  v21 = 0;
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_41:
  v22 = (*(*v19 + 16))(v19);
  std::string::operator=(v36, v22);
  if ((v21 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_43:
  v23 = vand_s8(vmovn_s32(vtstq_s32(v45, v45)), 0x1000100010001);
  *v37 = vuzp1_s8(v23, v23).u32[0];
  *&v37[4] = v46[0];
  v37[12] = v43[1] != v44;
  v37[13] = v47 != 0;
  v37[14] = *&v50[3] != *&v50[5];
  if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v36[0].__r_.__value_.__l.__data_, v36[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *a3 = v36[0];
  }

  if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 24), v36[1].__r_.__value_.__l.__data_, v36[1].__r_.__value_.__l.__size_);
    v25 = SHIBYTE(v36[1].__r_.__value_.__r.__words[2]);
    *(a3 + 48) = *v37;
    *(a3 + 55) = *&v37[7];
    *(a3 + 64) = 1;
    if (v25 < 0)
    {
      operator delete(v36[1].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 24) = *&v36[1].__r_.__value_.__l.__data_;
    v24 = *v37;
    *(a3 + 40) = *(&v36[1].__r_.__value_.__l + 2);
    *(a3 + 48) = v24;
    *(a3 + 55) = *&v37[7];
    *(a3 + 64) = 1;
  }

  v12 = v27;
  if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36[0].__r_.__value_.__l.__data_);
  }

  if (*&v50[3])
  {
    *&v50[5] = *&v50[3];
    operator delete(*&v50[3]);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v43[1])
  {
    *&v44 = v43[1];
    operator delete(v43[1]);
  }

  if (SHIBYTE(v43[0]) < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[1]);
  }

  if ((v38[23] & 0x80000000) != 0)
  {
    operator delete(*v38);
  }

LABEL_15:
  if (v12)
  {
    operator delete(v12);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }
}

void sub_1DE364A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void *__p, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v29 + 23) < 0)
  {
    operator delete(*a9);
  }

  std::pair<std::string,std::string>::~pair(&a21);
  AMCP::Graph::Graph_Wire::Connection::~Connection(&a29);
  if (__p)
  {
    operator delete(__p);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&a11);
  _Unwind_Resume(a1);
}

void AMCP::Wire_Identifier::~Wire_Identifier(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_7,std::allocator<AMCP::Core::System_Core::build_core(void)::$_7>,std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59687F8;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>())
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
      std::__function::__value_func<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_6,std::allocator<AMCP::Core::System_Core::build_core(void)::$_6>,void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_6,std::allocator<AMCP::Core::System_Core::build_core(void)::$_6>,void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>::operator()(uint64_t a1, uint64_t a2, int *a3, __int128 *a4, __int128 *a5)
{
  v5 = *a3;
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = a5[3];
  v6 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>((*(*(a1 + 8) + 32) + 2840), a2);
  if (v6)
  {
    v7 = v6;
    v8 = v6[12];
    v9 = v7[13];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8)
    {
      v18 = v5;
      v19 = v14;
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = v10;
      v24 = v11;
      v25 = v12;
      v26 = v13;
      v29 = 0;
      v27 = 0;
      v28 = 0;
      caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(v8, &v18);
    }

    if (v9)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_6,std::allocator<AMCP::Core::System_Core::build_core(void)::$_6>,void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5968768;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>())
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
      std::__function::__value_func<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_5,std::allocator<AMCP::Core::System_Core::build_core(void)::$_5>,void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_5,std::allocator<AMCP::Core::System_Core::build_core(void)::$_5>,void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>::operator()(uint64_t a1, uint64_t a2, int *a3, __int128 *a4)
{
  v4 = *a3;
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>((*(*(a1 + 8) + 32) + 2840), a2);
  if (v5)
  {
    v6 = v5;
    v7 = v5[12];
    v8 = v6[13];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v13 = v4;
      v14 = v9;
      v15 = v10;
      v16 = v11;
      v17 = v12;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(v7, &v13);
    }

    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_5,std::allocator<AMCP::Core::System_Core::build_core(void)::$_5>,void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59686D8;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::unordered_set<AMCP::Wire_Description> ()(unsigned int)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()>>())
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
      std::__function::__value_func<std::unordered_set<AMCP::Wire_Description> ()>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::unordered_set<AMCP::Wire_Description> ()>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::unordered_set<AMCP::Wire_Description> ()>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::unordered_set<AMCP::Wire_Description> ()>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_4,std::allocator<AMCP::Core::System_Core::build_core(void)::$_4>,std::unordered_set<AMCP::Wire_Description> ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_4,std::allocator<AMCP::Core::System_Core::build_core(void)::$_4>,std::unordered_set<AMCP::Wire_Description> ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5968648;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>())
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
      std::__function::__value_func<std::unordered_set<AMCP::Wire_Description> ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::unordered_set<AMCP::Wire_Description> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_3,std::allocator<AMCP::Core::System_Core::build_core(void)::$_3>,std::unordered_set<AMCP::Wire_Description> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_3,std::allocator<AMCP::Core::System_Core::build_core(void)::$_3>,std::unordered_set<AMCP::Wire_Description> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[42] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 8) + 32);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  (*(*(v3 + 2696) + 40))(v6);
  v5[0] = &unk_1F596C7B8;
  v5[1] = v3 + 2704;
  v5[2] = a2;
  v5[3] = v5;
  AMCP::IO_Core::exception_safe_dispatch(v6[0], v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v6);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DE36581C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(va1);
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_3,std::allocator<AMCP::Core::System_Core::build_core(void)::$_3>,std::unordered_set<AMCP::Wire_Description> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59685B8;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>())
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
      std::__function::__value_func<std::optional<unsigned int> ()(applesauce::CF::StringRef)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::optional<unsigned int> ()(applesauce::CF::StringRef)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_2,std::allocator<AMCP::Core::System_Core::build_core(void)::$_2>,std::optional<unsigned int> ()(applesauce::CF::StringRef)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_2,std::allocator<AMCP::Core::System_Core::build_core(void)::$_2>,std::optional<unsigned int> ()(applesauce::CF::StringRef)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  cf = *a2;
  *a2 = 0;
  AMCP::IO_Core::Graph_Manager::get_node_id((*(*(a1 + 8) + 32) + 2696), &cf);
}

void sub_1DE365B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_2,std::allocator<AMCP::Core::System_Core::build_core(void)::$_2>,std::optional<unsigned int> ()(applesauce::CF::StringRef)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5968528;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(applesauce::CF::StringRef)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(applesauce::CF::StringRef)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<BOOL ()(applesauce::CF::StringRef)>>())
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
      std::__function::__value_func<BOOL ()(applesauce::CF::StringRef)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<BOOL ()(applesauce::CF::StringRef)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(applesauce::CF::StringRef)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(applesauce::CF::StringRef)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_1,std::allocator<AMCP::Core::System_Core::build_core(void)::$_1>,BOOL ()(applesauce::CF::StringRef)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_1,std::allocator<AMCP::Core::System_Core::build_core(void)::$_1>,BOOL ()(applesauce::CF::StringRef)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v6[42] = *MEMORY[0x1E69E9840];
  cf = *a2;
  *a2 = 0;
  v2 = *(a1 + 8) + 2696;
  v4 = 0;
  (*(*v2 + 40))(v6);
  v5 = 0;
  operator new();
}

void sub_1DE365ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_1,std::allocator<AMCP::Core::System_Core::build_core(void)::$_1>,BOOL ()(applesauce::CF::StringRef)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5968498;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>())
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
      std::__function::__value_func<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_0,std::allocator<AMCP::Core::System_Core::build_core(void)::$_0>,std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_0,std::allocator<AMCP::Core::System_Core::build_core(void)::$_0>,std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>::operator()(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *(a2 + 24);
  v13 = *(a2 + 5);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v6 = *a3;
  v7 = *(a3 + 2);
  *a3 = 0;
  *(a3 + 1) = 0;
  v8 = *(a3 + 24);
  v9 = *(a3 + 5);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  v5 = *(a1 + 8);
  AMCP::IO_Core::Graph_Manager::modify_graph(a4);
}

void sub_1DE366270(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x1DE366224);
}

void sub_1DE366284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  AMCP::Modify_Graph_Destroy_List::~Modify_Graph_Destroy_List(&a9);
  AMCP::Graph_Description::~Graph_Description(&a15);
  _Unwind_Resume(a1);
}

void AMCP::Modify_Graph_Destroy_List::~Modify_Graph_Destroy_List(void **this)
{
  v2 = this + 3;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void AMCP::Graph_Description::~Graph_Description(void **this)
{
  v2 = this + 3;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v9 = v4 - 3;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
        v6 = *(v4 - 11);
        if (v6)
        {
          *(v4 - 10) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 14);
        if (v7)
        {
          *(v4 - 13) = v7;
          operator delete(v7);
        }

        if (*(v4 - 129) < 0)
        {
          operator delete(*(v4 - 19));
        }

        v8 = v4 - 24;
        if (*(v4 - 169) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 24;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 15;
        for (i = 0x1FFFFFFFFFFFFFFDLL; i != -9; i -= 3)
        {
          v8 = &v6[i];
          std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v8);
        }

        if (*(v6 - 57) < 0)
        {
          operator delete(*(v6 - 10));
        }

        if (*(v6 - 89) < 0)
        {
          operator delete(*(v6 - 14));
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__func<AMCP::Core::System_Core::build_core(void)::$_0,std::allocator<AMCP::Core::System_Core::build_core(void)::$_0>,std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5968408;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP4Core19Operation_Utilities25make_object_list_propertyIjJEEENS_10shared_ptrINS3_9OperationEEERNS3_6BrokerERKNS2_7AddressESD_RKT_DpRKT0_EUlvE_NS_9allocatorISL_EEFNS_6vectorIjNSM_IjEEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities25make_object_list_propertyIjJEEENSt3__110shared_ptrINS0_9OperationEEERNS0_6BrokerERKNS_7AddressESB_RKT_DpRKT0_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP4Core19Operation_Utilities25make_object_list_propertyIjJEEENS_10shared_ptrINS3_9OperationEEERNS3_6BrokerERKNS2_7AddressESD_RKT_DpRKT0_EUlvE_NS_9allocatorISL_EEFNS_6vectorIjNSM_IjEEEEvEEclEv@<X0>(uint64_t a1@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v5[0] = &unk_1F5968378;
  v5[1] = a1 + 16;
  v5[2] = a1 + 28;
  v5[3] = v5;
  AMCP::Core::Broker::fetch_object_ids_if (a2, v2, v5);
  result = std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities43fetch_object_ids_with_properties_and_valuesIjJENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerERKNS2_7AddressERKT_DpOT0_EUlSJ_E_NS9_ISN_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core16Broker_Utilities43fetch_object_ids_with_properties_and_valuesIjJENSt3__19enable_ifILb1EvEEEENS3_6vectorIjNS3_9allocatorIjEEEERNS0_6BrokerERKNS_7AddressERKT_DpOT0_EUlSH_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities43fetch_object_ids_with_properties_and_valuesIjJENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerERKNS2_7AddressERKT_DpOT0_EUlSJ_E_NS9_ISN_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5968378;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP4Core19Operation_Utilities25make_object_list_propertyIjJEEENS_10shared_ptrINS3_9OperationEEERNS3_6BrokerERKNS2_7AddressESD_RKT_DpRKT0_EUlvE_NS_9allocatorISL_EEFNS_6vectorIjNSM_IjEEEEvEE7__cloneEPNS0_6__baseISR_EE(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F5968308;
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

void std::__shared_ptr_emplace<AMCP::Core::Conductor>::__on_zero_shared(uint64_t a1)
{
  AMCP::Core::Conductor::flush_work_queues((a1 + 24));
  AMCP::DAL::get_timestamp_writer_queue(v2);
  AMCP::Utility::Dispatch_Queue::flush_all_work(AMCP::DAL::get_timestamp_writer_queue(void)::s_timestamp_writer_queue);
  *(a1 + 2720) = &unk_1F5990218;
  v3 = *(a1 + 3160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::IO_Core::Graph_Manager::~Graph_Manager((a1 + 2720));
  v6 = (a1 + 2680);
  std::vector<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector_Map<unsigned long long,std::function<void ()>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::condition_variable::~condition_variable((a1 + 2616));
  std::condition_variable::~condition_variable((a1 + 2568));
  std::mutex::~mutex((a1 + 2504));
  AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::~Map(a1 + 2288);
  AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::~Map(a1 + 2072);
  v6 = (a1 + 2032);
  std::vector<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector_Map<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::condition_variable::~condition_variable((a1 + 1968));
  std::condition_variable::~condition_variable((a1 + 1920));
  std::mutex::~mutex((a1 + 1856));
  AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::~Map(a1 + 1640);
  AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,unsigned int,true,std::less<unsigned int>>::~Map(a1 + 1424);
  AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,unsigned int,true,std::less<unsigned int>>::~Map(a1 + 1208);
  v6 = (a1 + 1176);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::condition_variable::~condition_variable((a1 + 1128));
  std::mutex::~mutex((a1 + 1064));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a1 + 728));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a1 + 392));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a1 + 56));
  v4 = *(a1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::__shared_ptr_emplace<AMCP::Core::Conductor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59681E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<System_Core_Graph_Host *,std::shared_ptr<AMCP::Graph::Graph_Host>::__shared_ptr_default_delete<AMCP::Graph::Graph_Host,System_Core_Graph_Host>,std::allocator<System_Core_Graph_Host>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP5Graph10Graph_HostEE27__shared_ptr_default_deleteIS3_22System_Core_Graph_HostEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<System_Core_Graph_Host *,std::shared_ptr<AMCP::Graph::Graph_Host>::__shared_ptr_default_delete<AMCP::Graph::Graph_Host,System_Core_Graph_Host>,std::allocator<System_Core_Graph_Host>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<System_Core_Graph_Host *,std::shared_ptr<AMCP::Graph::Graph_Host>::__shared_ptr_default_delete<AMCP::Graph::Graph_Host,System_Core_Graph_Host>,std::allocator<System_Core_Graph_Host>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Core::Broker>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 432);
  *(a1 + 432) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  std::condition_variable::~condition_variable((a1 + 376));
  std::condition_variable::~condition_variable((a1 + 328));
  std::mutex::~mutex((a1 + 264));
  v5 = *(a1 + 240);
  if (v5)
  {
    *(a1 + 248) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(a1 + 192);
  std::condition_variable::~condition_variable((a1 + 136));
  std::condition_variable::~condition_variable((a1 + 88));

  std::mutex::~mutex((a1 + 24));
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,0>(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<AMCP::Core::Broker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598C790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Core::System_Core>::__on_zero_shared(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v1 = a1;
  v30 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    a1 = AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v26 = 136315394;
        v27 = "System_Core.cpp";
        v28 = 1024;
        v29 = 65;
        v18 = v17;
        v19 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v18, v19, "%32s:%-5d Destroying System_Core", &v26, 0x12u);
      }

      break;
    case 2:
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
        v26 = 136315394;
        v27 = "System_Core.cpp";
        v28 = 1024;
        v29 = 65;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Destroying System_Core", &v26, 0x12u);
      }

      break;
    case 1:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
        v26 = 136315394;
        v27 = "System_Core.cpp";
        v28 = 1024;
        v29 = 65;
        v18 = v9;
        v19 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::mutex::~mutex((v1 + 104));
  v20 = *(v1 + 12);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v1 + 10);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(v1 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = *(v1 + 6);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = *(v1 + 4);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1DE366F98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<AMCP::Core::System_Core>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5968148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::Core::System_Core::stop(void)::$_0,std::allocator<AMCP::Core::System_Core::stop(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core11System_Core4stopEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Core::System_Core::stop(void)::$_0,std::allocator<AMCP::Core::System_Core::stop(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = v1[6];
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *v3;
    v3 += 2;
    (*(*v5 + 16))(v5);
  }

  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](v2);
  v6 = v1[7];
  v1[6] = 0;
  v1[7] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v1[2];
  v16[0] = &unk_1F596A9E8;
  v17 = v16;
  AMCP::Core::Broker::fetch_object_ids_if (&v15, v7, v16);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v16);
  begin = v15.__begin_;
  end = v15.__end_;
  while (begin != end)
  {
    v10 = begin;
    do
    {
      v11 = *v10++;
      AMCP::Core::Broker::destroy_core(v7, v11);
    }

    while (v10 != end);
    v16[0] = &unk_1F596AA68;
    v17 = v16;
    AMCP::Core::Broker::fetch_object_ids_if (&v14, v7, v16);
    if (begin)
    {
      operator delete(begin);
    }

    v13 = *&v14.__begin_;
    std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v16);
    end = *(&v13 + 1);
    begin = v13;
  }

  if (begin)
  {
    operator delete(begin);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<AMCP::Core::System_Core::stop(void)::$_0,std::allocator<AMCP::Core::System_Core::stop(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5968288;
  a2[1] = v2;
  return result;
}

void Testing_TCC_And_Input_Status_Handler::ReportRecordingStateToSystemStatus(uint64_t a1, uint64_t a2, int a3, char a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK36Testing_TCC_And_Input_Status_Handler34ReportRecordingStateToSystemStatusERK13audit_token_tN28TCC_And_Input_Status_Handler19RecordingStatusTypeEb_block_invoke;
  block[3] = &__block_descriptor_tmp_3244;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  v6 = a4;
  AMCP::Utility::Dispatch_Queue::async(a1 + 8, block);
}

void Testing_TCC_And_Input_Status_Handler::_ReportRecordingStateToSystemStatus(int a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      byte_1ECDAAA70 = a2;
    }
  }

  else
  {
    v8 = v2;
    v9 = v3;
    byte_1ECDAAA6F = a2;
    v5[0] = 0;
    v5[1] = 0;
    HALS_System::GetInstance(&v6, 0, v5);
    v4 = *(v6 + 1768);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t Testing_TCC_And_Input_Status_Handler::get_test_state(Testing_TCC_And_Input_Status_Handler *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3802000000;
  v9 = __Block_byref_object_copy__3246;
  v10 = __Block_byref_object_dispose__3247;
  v11 = 257;
  v12[0] = 0;
  *(v12 + 3) = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK36Testing_TCC_And_Input_Status_Handler14get_test_stateEv_block_invoke;
  v5[3] = &unk_1E8673B00;
  v5[4] = &v6;
  v1 = atomic_load(this + 40);
  if (v1)
  {
    atomic_store(1u, this + 41);
  }

  dispatch_sync(*(this + 1), v5);
  v2 = v7[5];
  v3 = *(v7 + 48);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __Block_byref_object_copy__3246(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

uint64_t ___ZNK36Testing_TCC_And_Input_Status_Handler14get_test_stateEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  *(v1 + 40) = Testing_TCC_And_Input_Status_Handler::g_current_test_state;
  *(v1 + 48) = byte_1ECDAAA70;
  return result;
}

void Testing_TCC_And_Input_Status_Handler::set_test_state(uint64_t a1, uint64_t a2, char a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN36Testing_TCC_And_Input_Status_Handler14set_test_stateEN28TCC_And_Input_Status_Handler10Test_StateE_block_invoke;
  v4[3] = &__block_descriptor_tmp_2_3249;
  v4[4] = a2;
  v5 = a3;
  v3 = atomic_load((a1 + 40));
  if (v3)
  {
    atomic_store(1u, (a1 + 41));
  }

  dispatch_sync(*(a1 + 8), v4);
}

uint64_t ___ZN36Testing_TCC_And_Input_Status_Handler14set_test_stateEN28TCC_And_Input_Status_Handler10Test_StateE_block_invoke(uint64_t result)
{
  Testing_TCC_And_Input_Status_Handler::g_current_test_state = *(result + 32);
  byte_1ECDAAA70 = *(result + 40);
  return result;
}

uint64_t Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(uint64_t a1, _OWORD *a2, int a3, uint64_t a4)
{
  v19[5] = *MEMORY[0x1E69E9840];
  *v11 = a1;
  *&v11[8] = *a2;
  *&v11[24] = a2[1];
  *&v11[40] = a3;
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v12, a4);
  v5 = atomic_load((a1 + 40));
  if (v5)
  {
    atomic_store(1u, (a1 + 41));
  }

  if (*(a1 + 336) != 1)
  {
    v8 = *(a1 + 8);
    operator new();
  }

  v17 = *v11;
  v18[0] = *&v11[16];
  *(v18 + 12) = *&v11[28];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v19, v12);
  v6 = *(a1 + 328);
  v7 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZNK36Testing_TCC_And_Input_Status_Handler47EvaluateAndDispatchRecordingStateToSystemStatusERK13audit_token_tN28TCC_And_Input_Status_Handler19RecordingStatusTypeENSt3__18functionIFbvEEEE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_11_3250;
  v14 = v17;
  v15[0] = v18[0];
  *(v15 + 12) = *(v18 + 12);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v16, v19);
  dispatch_group_async(v6, v7, block);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v19);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v12);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE367768(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v2 + 48);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v1 + 48);
  _Unwind_Resume(a1);
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZNK36Testing_TCC_And_Input_Status_Handler47EvaluateAndDispatchRecordingStateToSystemStatusERK13audit_token_tN28TCC_And_Input_Status_Handler19RecordingStatusTypeENSt3__18functionIFbvEEEE3__0EEvOT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = (*(*v2 + 48))(v2);
  v4 = *(a1 + 72);

  Testing_TCC_And_Input_Status_Handler::_ReportRecordingStateToSystemStatus(v4, v3);
}

uint64_t *std::unique_ptr<Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(audit_token_t const&,TCC_And_Input_Status_Handler::RecordingStatusType,std::function<BOOL ()(void)>)::$_0,std::default_delete<Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(audit_token_t const&,TCC_And_Input_Status_Handler::RecordingStatusType,std::function<BOOL ()(void)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v2 + 48);
    MEMORY[0x1E12C1730](v2, 0x1060C4042E346BELL);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(audit_token_t const&,TCC_And_Input_Status_Handler::RecordingStatusType,std::function<BOOL ()(void)>)::$_0 &>(dispatch_queue_s *,Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(audit_token_t const&,TCC_And_Input_Status_Handler::RecordingStatusType,std::function<BOOL ()(void)>)::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  v2 = *(a1 + 72);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = (*(*v2 + 48))(v2);
  Testing_TCC_And_Input_Status_Handler::_ReportRecordingStateToSystemStatus(*(a1 + 40), v3);
  return std::unique_ptr<Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(audit_token_t const&,TCC_And_Input_Status_Handler::RecordingStatusType,std::function<BOOL ()(void)>)::$_0,std::default_delete<Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(audit_token_t const&,TCC_And_Input_Status_Handler::RecordingStatusType,std::function<BOOL ()(void)>)::$_0>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_1DE3678D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(audit_token_t const&,TCC_And_Input_Status_Handler::RecordingStatusType,std::function<BOOL ()(void)>)::$_0,std::default_delete<Testing_TCC_And_Input_Status_Handler::EvaluateAndDispatchRecordingStateToSystemStatus(audit_token_t const&,TCC_And_Input_Status_Handler::RecordingStatusType,std::function<BOOL ()(void)>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c193_ZTSZNK36Testing_TCC_And_Input_Status_Handler47EvaluateAndDispatchRecordingStateToSystemStatusERK13audit_token_tN28TCC_And_Input_Status_Handler19RecordingStatusTypeENSt3__18functionIFbvEEEE3__0(_OWORD *a1, _OWORD *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  *(a1 + 60) = *(a2 + 60);
  a1[2] = v2;
  a1[3] = v3;
  return std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100]((a1 + 5), (a2 + 5));
}

void Testing_TCC_And_Input_Status_Handler::~Testing_TCC_And_Input_Status_Handler(Testing_TCC_And_Input_Status_Handler *this)
{
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 8));

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 8));
}

void Testing_TCC_And_Input_Status_Handler::Testing_TCC_And_Input_Status_Handler(Testing_TCC_And_Input_Status_Handler *this)
{
  object[42] = *MEMORY[0x1E69E9840];
  Testing_PlatformBehaviors::get_tcc_and_input_status_handler(void)const::tcc_handler = &unk_1F5968918;
  qword_1ECDAB258 = 0;
  unk_1ECDAB260 = 0;
  unk_1ECDAB240 = 0u;
  word_1ECDAB250 = 0;
  xmmword_1ECDAB230 = 0u;
  qword_1ECDAB268 = 0;
  unk_1ECDAB270 = 850045863;
  xmmword_1ECDAB278 = 0u;
  unk_1ECDAB288 = 0u;
  xmmword_1ECDAB298 = 0u;
  unk_1ECDAB2A8 = 0u;
  xmmword_1ECDAB2B8 = 0u;
  qword_1ECDAB2C8 = 850045863;
  unk_1ECDAB2D0 = 0u;
  unk_1ECDAB2E0 = 0u;
  unk_1ECDAB2F0 = 0u;
  unk_1ECDAB300 = 0u;
  unk_1ECDAB310 = 0u;
  qword_1ECDAB320 = 850045863;
  xmmword_1ECDAB328 = 0u;
  unk_1ECDAB338 = 0u;
  xmmword_1ECDAB348 = 0u;
  unk_1ECDAB358 = 0u;
  qword_1ECDAB368 = dispatch_semaphore_create(0);
  byte_1ECDAB370 = 0;
  byte_1ECDAB378 = 0;
  byte_1ECDAB380 = 0;
  AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(object, "HAL Test System Status Queue");
  AMCP::Utility::Dispatch_Queue::operator=(&xmmword_1ECDAB230, object[0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(object);
  v1 = *MEMORY[0x1E69E9840];
}

void ADS::LevelControl::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, int a7, float *a8, _DWORD *a9, uint64_t a10)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*a4 == 1818453110)
  {
    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_LevelControl.cpp";
        v33 = 1024;
        v34 = 205;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::LevelControl::SetPropertyData: wrong size for the data for kAudioLevelControlPropertyDecibelValue", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    MaximumDB = CAVolumeCurve::GetMaximumDB((a1 + 216));
    v18 = *&MaximumDB;
    if (*(a1 + 240))
    {
      v19 = *(*(a1 + 224) + 36);
    }

    else
    {
      v19 = 0.0;
    }

    v21 = *a8;
    v22 = *(a1 + 120);
    *buf = a1 + 120;
    v23 = (*(v22 + 16))(a1 + 120);
    buf[8] = v23;
    if (v19 >= v21)
    {
      v24 = v19;
    }

    else
    {
      v24 = v21;
    }

    if (v24 >= v18)
    {
      v24 = v18;
    }

    *(a1 + 208) = CAVolumeCurve::ConvertDBToRaw((a1 + 216), v24);
    *a9 = 2;
    v25 = *(a1 + 116);
    LODWORD(v30) = 1818453110;
    HIDWORD(v30) = v25;
    v31 = 0;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &v30);
    v26 = *(a1 + 116);
    LODWORD(v30) = 1818456950;
    HIDWORD(v30) = v26;
    v31 = 0;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &v30);
    if (v23)
    {
      (*(*(a1 + 120) + 24))(a1 + 120);
    }

    goto LABEL_20;
  }

  if (*a4 == 1818456950)
  {
    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_LevelControl.cpp";
        v33 = 1024;
        v34 = 189;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::LevelControl::SetPropertyData: wrong size for the data for kAudioLevelControlPropertyScalarValue", buf, 0x12u);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      *v28 = off_1F5991DD8;
      v28[2] = 561211770;
    }

    v12 = *a8;
    v14 = *(a1 + 120);
    v13 = (a1 + 120);
    *buf = a1 + 120;
    v15 = (*(v14 + 16))(a1 + 120);
    buf[8] = v15;
    v13[22] = CAVolumeCurve::ConvertScalarToRaw((v13 + 24), fminf(fmaxf(v12, 0.0), 1.0));
    *a9 = 1;
    v16 = *(v13 - 1);
    LODWORD(v30) = 1818456950;
    HIDWORD(v30) = v16;
    v31 = 0;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &v30);
    if (v15)
    {
      (*(*v13 + 24))(v13);
    }

LABEL_20:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  v20 = *MEMORY[0x1E69E9840];

  ADS::BaseObject::SetPropertyData(a1, a2);
}

void sub_1DE367EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ADS::LevelControl::GetPropertyData(ADS::LevelControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, double *a9)
{
  v36 = *MEMORY[0x1E69E9840];
  mSelector = a4->mSelector;
  if (a4->mSelector <= 1818453109)
  {
    if (mSelector == 1818453106)
    {
      if (a7 <= 0xF)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v32 = 136315394;
          v33 = "ADS_LevelControl.cpp";
          v34 = 1024;
          v35 = 138;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::LevelControl::GetPropertyData: not enough space for the return value of kAudioLevelControlPropertyDecibelRange for the volume control", &v32, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      if (*(this + 30))
      {
        v21 = *(*(this + 28) + 36);
      }

      else
      {
        v21 = 0.0;
      }

      *a9 = v21;
      MaximumDB = CAVolumeCurve::GetMaximumDB((this + 216));
      a9[1] = *&MaximumDB;
      v24 = 16;
      goto LABEL_33;
    }

    if (mSelector != 1818453107)
    {
      goto LABEL_21;
    }

    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = 136315394;
        v33 = "ADS_LevelControl.cpp";
        v34 = 1024;
        v35 = 161;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::LevelControl::GetPropertyData: not enough space for the return value of kAudioLevelControlPropertyConvertDecibelsToScalar for the volume control", &v32, 0x12u);
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      *v31 = off_1F5991DD8;
      v31[2] = 561211770;
    }

    v14 = *a9;
    v15 = CAVolumeCurve::GetMaximumDB((this + 216));
    if (*(this + 30))
    {
      v16 = *(*(this + 28) + 36);
    }

    else
    {
      v16 = 0.0;
    }

    if (v16 < v14)
    {
      v16 = v14;
    }

    if (v16 < *&v15)
    {
      *&v15 = v16;
    }

    v25 = CAVolumeCurve::ConvertDBToRaw((this + 216), *&v15);
    v20 = CAVolumeCurve::ConvertRawToScalar((this + 216), v25);
LABEL_32:
    *a9 = v20;
    v24 = 4;
LABEL_33:
    *a8 = v24;
    goto LABEL_34;
  }

  switch(mSelector)
  {
    case 0x6C636476u:
      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v32 = 136315394;
          v33 = "ADS_LevelControl.cpp";
          v34 = 1024;
          v35 = 129;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::LevelControl::GetPropertyData: not enough space for the return value of kAudioLevelControlPropertyDecibelValue for the volume control", &v32, 0x12u);
        }

        v27 = __cxa_allocate_exception(0x10uLL);
        *v27 = off_1F5991DD8;
        v27[2] = 561211770;
      }

      v12 = (this + 120);
      v17 = (*(*(this + 15) + 16))(this + 120);
      CAVolumeCurve::ConvertRawToDB((v12 + 24), v12[22]);
      *a9 = v18;
      *a8 = 4;
      if (!v17)
      {
        goto LABEL_34;
      }

LABEL_7:
      (*(*v12 + 24))(v12);
LABEL_34:
      v26 = *MEMORY[0x1E69E9840];
      return;
    case 0x6C637364u:
      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v32 = 136315394;
          v33 = "ADS_LevelControl.cpp";
          v34 = 1024;
          v35 = 146;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::LevelControl::GetPropertyData: not enough space for the return value of kAudioLevelControlPropertyDecibelValue for the volume control", &v32, 0x12u);
        }

        v28 = __cxa_allocate_exception(0x10uLL);
        *v28 = off_1F5991DD8;
        v28[2] = 561211770;
      }

      v19 = CAVolumeCurve::ConvertScalarToRaw((this + 216), fminf(fmaxf(*a9, 0.0), 1.0));
      CAVolumeCurve::ConvertRawToDB((this + 216), v19);
      goto LABEL_32;
    case 0x6C637376u:
      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v32 = 136315394;
          v33 = "ADS_LevelControl.cpp";
          v34 = 1024;
          v35 = 119;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::LevelControl::GetPropertyData: not enough space for the return value of kAudioLevelControlPropertyScalarValue for the volume control", &v32, 0x12u);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        *v29 = off_1F5991DD8;
        v29[2] = 561211770;
      }

      v12 = (this + 120);
      v13 = (*(*(this + 15) + 16))(this + 120);
      *a9 = CAVolumeCurve::ConvertRawToScalar((v12 + 24), v12[22]);
      *a8 = 4;
      if (!v13)
      {
        goto LABEL_34;
      }

      goto LABEL_7;
  }

LABEL_21:
  v22 = *MEMORY[0x1E69E9840];

  ADS::Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE36858C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ADS::LevelControl::GetPropertyDataSize(ADS::LevelControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  mSelector = a4->mSelector;
  v7 = 4;
  if (a4->mSelector > 1818453106)
  {
    if (mSelector > 1818456931)
    {
      v8 = mSelector == 1818456932;
      v9 = 29558;
    }

    else
    {
      v8 = mSelector == 1818453107;
      v9 = 25718;
    }

    v11 = v9 | 0x6C630000;
    if (!v8 && mSelector != v11)
    {
      return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
    }

    return v7;
  }

  if (mSelector == 1667591277 || mSelector == 1668506480)
  {
    return v7;
  }

  if (mSelector == 1818453106)
  {
    return 16;
  }

  return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

uint64_t ADS::LevelControl::IsPropertySettable(ADS::LevelControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  v4 = 0;
  mSelector = a4->mSelector;
  if (a4->mSelector <= 1818453109)
  {
    if (mSelector - 1818453106 >= 2 && mSelector != 1667591277 && mSelector != 1668506480)
    {
      return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
    }

    return v4;
  }

  switch(mSelector)
  {
    case 0x6C637376u:
      return 1;
    case 0x6C637364u:
      return v4;
    case 0x6C636476u:
      return 1;
  }

  return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
}

uint64_t ADS::LevelControl::HasProperty(ADS::LevelControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  if (a4->mScope != *(this + 29))
  {
    return 0;
  }

  mSelector = a4->mSelector;
  v5 = 1;
  if (a4->mSelector <= 1818453105)
  {
    v7 = mSelector == 1667591277;
    v8 = 1668506480;
  }

  else
  {
    v7 = mSelector - 1818453106 <= 4 && ((1 << (mSelector - 114)) & 0x13) != 0 || mSelector == 1818456932;
    v8 = 1818456950;
  }

  if (!v7 && mSelector != v8)
  {
    return ADS::BaseObject::HasProperty(this, a2, a3, a4);
  }

  return v5;
}

void ADS::LevelControl::~LevelControl(ADS::LevelControl *this)
{
  ADS::LevelControl::~LevelControl(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59689E8;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 29));
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

void *std::map<CARawPoint,CADBPoint>::map[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 28);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void ADS::Control::~Control(ADS::Control *this)
{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));
  ADS::BaseObject::~BaseObject(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

uint64_t ADS::LevelControl::LevelControl(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v10 = ADS::Control::Control(a1, a2, a3, a4, a5, 1818588780);
  *v10 = &unk_1F59689E8;
  *(v10 + 52) = a6;
  *(v10 + 54) = *a7;
  std::map<CARawPoint,CADBPoint>::map[abi:ne200100](v10 + 28, (a7 + 8));
  *(a1 + 248) = *(a7 + 32);
  return a1;
}

void sub_1DE368B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE368D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void sub_1DE3690C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE369670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ADS::BaseObject::~BaseObject(ADS::BaseObject *this)
{
  *this = &unk_1F5968A68;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
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

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((this + 24));
}

void HALS_DSPRequest::~HALS_DSPRequest(HALS_DSPRequest *this)
{
  HALS_DSPRequest::~HALS_DSPRequest(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5968AD0;
  v2 = *(this + 89);
  if (v2)
  {
    *(this + 90) = v2;
    operator delete(v2);
  }

  *this = &unk_1F598DC40;
  v4 = (this + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DC90;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

uint64_t std::shared_ptr<DSP_Host_OffloadDictionary>::operator=[abi:ne200100]<DSP_Host_OffloadDictionary,std::default_delete<DSP_Host_OffloadDictionary>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0uLL;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::default_delete<DSP_Host_OffloadDictionary>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DSP_Host_OffloadDictionary  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI26DSP_Host_OffloadDictionaryEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<DSP_Host_OffloadDictionary  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPRequest::CreateStreamConfiguration(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  NumberStreams = HALS_IODevice::GetNumberStreams(*a3, a4 == 1768845428);
  v7 = *(a3 + 8);
  if (v7)
  {
    v15 = *(v7 + 96);
    v17 = *(a2 + 696) == a4;
  }

  else
  {
    v17 = 0;
  }

  if (NumberStreams)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN14DSP_Host_Types19StreamConfigurationENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (v17)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreams);
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a3 + 8);
      v13 = *(v12 + 8);
      LODWORD(v12) = *(v12 + 96);
      LODWORD(v18.__r_.__value_.__l.__data_) = 136315906;
      *(v18.__r_.__value_.__r.__words + 4) = "HALS_DSPRequest.cpp";
      WORD2(v18.__r_.__value_.__r.__words[1]) = 1024;
      *(&v18.__r_.__value_.__r.__words[1] + 6) = 206;
      WORD1(v18.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(v18.__r_.__value_.__r.__words[2]) = v13;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_INFO, "%32s:%-5d [hal_dsp] A specified stream (Device ID %d / Index %d) no longer exists; io context update required.", &v18, 0x1Eu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE36A734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, DSP_Dictionariable::DictionariableKvp *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  a29 = a12;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t HALS_Stream::GetTerminalType(HALS_Stream *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F627465726DLL;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

uint64_t HALS_Stream::IsHardwareReferenceStream(HALS_Stream *this)
{
  if (*(this + 14) == 1)
  {
    return 0;
  }

  v15 = v4;
  v16 = v3;
  v17 = v1;
  v18 = v2;
  v7 = *(this + 4);
  v11 = 0x676C6F6274617073;
  v12 = 0;
  result = (*(*this + 96))(this, v7, &v11, 0);
  if (result)
  {
    v8 = *(this + 4);
    v9 = 0x676C6F6274617073;
    v10 = 0;
    v14 = 0;
    v13 = 0;
    (*(*this + 120))(this, v8, &v9, 4, &v13, &v14, 0, 0, 0);
    return v14 != 0;
  }

  return result;
}

uint64_t HALS_DSPRequest::GetDataSourceType(HALS_DSPRequest *this, const HALS_Device *a2)
{
  v2 = (*(*this + 648))(this, 1685287523, a2, 0);
  v4 = v2;
  if (v2)
  {
    SelectorControlValue = HALS_Control::GetSelectorControlValue(v2);
    v6 = SelectorControlValue & 0xFFFFFF00;
    v7 = SelectorControlValue;
    v8 = 0x100000000;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  return v8 | v6 | v7;
}

uint64_t HALS_Control::GetSelectorControlValue(HALS_Control *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6273636369;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

void HALS_DSPRequest::CreateDeviceDescription(HALS_DSPRequest::IODeviceInfo const&)const::$_2::operator()(void **a1, int a2, uint64_t a3)
{
  v10 = a2;
  v11 = 1869968496;
  if ((*(***a1 + 96))(**a1, *(**a1 + 16), &v10, 0))
  {
    v5 = (*(***a1 + 112))(**a1, *(**a1 + 16), &v10, 0, 0, 0);
    if (v5)
    {
      v6 = v5;
      std::vector<char>::vector[abi:ne200100](__p, v5);
      v7 = __p[0];
      v8 = 0;
      (*(***a1 + 120))(**a1, *(**a1 + 16), &v10, v6, &v8, __p[0], 0, 0, 0);
      DSP_Host_Types::AudioChannelConfiguration::operator=(a3, v7);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1DE36ACA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned int,std::optional<unsigned long>>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t Testing_PlatformBehaviors::get_system_port(Testing_PlatformBehaviors *this)
{
  result = *(this + 2);
  if (!result)
  {
    result = HALB_MachPort::CreatePort(4);
    *(this + 2) = result;
  }

  return result;
}

uint64_t *Testing_PlatformBehaviors::get_tcc_and_input_status_handler(Testing_PlatformBehaviors *this)
{
  {
    if (v2)
    {
      Testing_TCC_And_Input_Status_Handler::Testing_TCC_And_Input_Status_Handler(v2);
    }
  }

  return &Testing_PlatformBehaviors::get_tcc_and_input_status_handler(void)const::tcc_handler;
}

uint64_t Testing_PlatformBehaviors::get_settings_behavior(Testing_PlatformBehaviors *this)
{
  if (Testing_PlatformBehaviors::s_test_configuration == 5)
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  if (Testing_PlatformBehaviors::s_test_configuration == 4)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t *embedded_PlatformBehaviors::get_tcc_and_input_status_handler(embedded_PlatformBehaviors *this)
{
  {
    embedded_PlatformBehaviors::get_tcc_and_input_status_handler(void)const::tcc_handler = &unk_1F5968CA8;
  }

  return &embedded_PlatformBehaviors::get_tcc_and_input_status_handler(void)const::tcc_handler;
}

uint64_t *HALS_PlatformBehaviors::get_platform_behaviors(HALS_PlatformBehaviors *this)
{
  if (g_static_start_options == 1)
  {
    {
      return &HALS_PlatformBehaviors::get_platform_behaviors(void)::testing;
    }

    v3 = &HALS_PlatformBehaviors::get_platform_behaviors(void)::testing;
    {
      return &HALS_PlatformBehaviors::get_platform_behaviors(void)::testing;
    }

    HALS_PlatformBehaviors::get_platform_behaviors(void)::testing = &unk_1F5968B48;
    dword_1ECDAB218 = 0;
    goto LABEL_11;
  }

  {
    v3 = &HALS_PlatformBehaviors::get_platform_behaviors(void)::embedded;
    {
      HALS_PlatformBehaviors::get_platform_behaviors(void)::embedded = &unk_1F5968BF8;
LABEL_11:
      __cxa_guard_release(v2);
      return v3;
    }
  }

  return &HALS_PlatformBehaviors::get_platform_behaviors(void)::embedded;
}

void HALS_Box::GetPropertyData(HALS_Box *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, unsigned int a7, uint64_t *a8, HALS_Client *a9)
{
  v40 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1651861859)
  {
    if (mSelector > 1668575851)
    {
      if (mSelector == 1668575852)
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x2000000000;
        v32 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZNK8HALS_Box17GetBoxControlListEjPvRj_block_invoke;
        v34 = &unk_1E8673BA0;
        v35 = &v29;
        v36 = this;
        LODWORD(v38) = a4;
        v37 = a6;
        v19 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v19, buf);
        *a5 = 4 * *(v30 + 6);
        _Block_object_dispose(&v29, 8);
        goto LABEL_47;
      }

      if (mSelector == 1870098020)
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x2000000000;
        v32 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZNK8HALS_Box45GetNumberOfControlsAndCopyIDsUsingClassFilterEjPKjPj_block_invoke;
        v34 = &unk_1E8673B78;
        v39 = a7 >> 2;
        v37 = a8;
        v38 = a6;
        v35 = &v29;
        v36 = this;
        v23 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v23, buf);
        v24 = *(v30 + 6);
        _Block_object_dispose(&v29, 8);
        v21 = 4 * v24;
        goto LABEL_46;
      }

      if (mSelector != 1953653102)
      {
        goto LABEL_49;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Box.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 334;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::GetPropertyData: bad property data size for kAudioBoxPropertyTransportType", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }
    }

    else
    {
      switch(mSelector)
      {
        case 1651861860:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Box.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 325;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioObjectPropertyModelName", buf, 0x12u);
            }

            v27 = __cxa_allocate_exception(0x10uLL);
            *v27 = off_1F5991DD8;
            v27[2] = 561211770;
          }

          v16 = *(this + 9);
          if (v16)
          {
            CFRetain(v16);
            v17 = *(this + 9);
          }

          else
          {
            v17 = 0;
          }

          *a6 = v17;
          v21 = 8;
          goto LABEL_46;
        case 1652060006:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Box.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 388;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::GetPropertyData: bad property data size for kAudioBoxPropertyHasAudio", buf, 0x12u);
            }

            v20 = __cxa_allocate_exception(0x10uLL);
            *v20 = off_1F5991DD8;
            v20[2] = 561211770;
          }

          break;
        case 1652060014:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Box.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 379;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::GetPropertyData: bad property data size for kAudioBoxPropertyHasAudio", buf, 0x12u);
            }

            v13 = __cxa_allocate_exception(0x10uLL);
            *v13 = off_1F5991DD8;
            v13[2] = 561211770;
          }

          break;
        default:
          goto LABEL_49;
      }
    }

LABEL_44:
    *a6 = 0;
LABEL_45:
    v21 = 4;
LABEL_46:
    *a5 = v21;
    goto LABEL_47;
  }

  if (mSelector > 1651010920)
  {
    switch(mSelector)
    {
      case 1651010921:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Box.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 361;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::GetPropertyData: bad property data size for kAudioBoxPropertyHasAudio", buf, 0x12u);
          }

          v18 = __cxa_allocate_exception(0x10uLL);
          *v18 = off_1F5991DD8;
          v18[2] = 561211770;
        }

        break;
      case 1651013225:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Box.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 352;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::GetPropertyData: bad property data size for kAudioBoxPropertyHasAudio", buf, 0x12u);
          }

          v28 = __cxa_allocate_exception(0x10uLL);
          *v28 = off_1F5991DD8;
          v28[2] = 561211770;
        }

        break;
      case 1651536495:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Box.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 370;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::GetPropertyData: bad property data size for kAudioBoxPropertyHasAudio", buf, 0x12u);
          }

          v14 = __cxa_allocate_exception(0x10uLL);
          *v14 = off_1F5991DD8;
          v14[2] = 561211770;
        }

        break;
      default:
        goto LABEL_49;
    }

    goto LABEL_44;
  }

  if (mSelector == 1650682915 || mSelector == 1650751011)
  {
    *a5 = 0;
LABEL_47:
    v22 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector == 1651007861)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Box.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 343;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::GetPropertyData: bad property data size for kAudioBoxPropertyHasAudio", buf, 0x12u);
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      *v26 = off_1F5991DD8;
      v26[2] = 561211770;
    }

    *a6 = 1;
    goto LABEL_45;
  }

LABEL_49:
  v25 = *MEMORY[0x1E69E9840];

  HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

void ___ZNK8HALS_Box17GetBoxControlListEjPvRj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56) >> 2;
  v5 = (*(*v2 + 216))(v2);
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(*v2 + 224))(v2, v6);
      if (v8)
      {
        *(v3 + 4 * v7++) = *(v8 + 4);
      }

      HALS_ObjectMap::ReleaseObject(v8, v9);
      v6 = (v6 + 1);
    }

    while (v4 != v6);
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
}

void ___ZNK8HALS_Box45GetNumberOfControlsAndCopyIDsUsingClassFilterEjPKjPj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(*v2 + 216))(v2);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = (*(*v2 + 224))(v2, v5);
      v8 = v6;
      v9 = *(a1 + 64);
      v10 = *(a1 + 48);
      if (v9)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_12;
      }

      v12 = *(v6 + 20);
      v13 = 1;
      do
      {
        v14 = *v10++;
        IsSubClass = HALB_Info::IsSubClass(v12, v14);
        if (IsSubClass)
        {
          break;
        }
      }

      while (v13++ < v9);
      if (IsSubClass)
      {
LABEL_12:
        *(*(a1 + 56) + 4 * (*(*(*(a1 + 32) + 8) + 24))++) = *(v8 + 4);
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      v5 = (v5 + 1);
    }

    while (v5 != v4);
  }
}

uint64_t HALS_Box::GetPropertyDataSize(HALS_Box *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1651861859)
  {
    if (mSelector > 1651010920)
    {
      if (mSelector == 1651010921 || mSelector == 1651013225)
      {
        return 4;
      }

      v7 = 1651536495;
    }

    else
    {
      if (mSelector == 1650682915 || mSelector == 1650751011)
      {
        return 0;
      }

      v7 = 1651007861;
    }

    goto LABEL_16;
  }

  if (mSelector <= 1668575851)
  {
    if (mSelector == 1651861860)
    {
      return 8;
    }

    if (mSelector == 1652060006)
    {
      return 4;
    }

    v7 = 1652060014;
    goto LABEL_16;
  }

  if (mSelector == 1668575852)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = ___ZNK8HALS_Box17GetNumberControlsEv_block_invoke;
    v15 = &unk_1E8673B28;
    v16 = &v20;
    v17 = this;
    v9 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v9, &v12);
LABEL_22:
    v11 = *(v21 + 6);
    _Block_object_dispose(&v20, 8);
    return (4 * v11);
  }

  if (mSelector == 1870098020)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = ___ZNK8HALS_Box35GetNumberOfControlsUsingClassFilterEjPKj_block_invoke;
    v15 = &unk_1E8673B50;
    v19 = a4 >> 2;
    v17 = this;
    v18 = a5;
    v16 = &v20;
    v10 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v10, &v12);
    goto LABEL_22;
  }

  v7 = 1953653102;
LABEL_16:
  if (mSelector == v7)
  {
    return 4;
  }

  return HALS_Object::GetPropertyDataSize(this, a2, a3);
}

uint64_t ___ZNK8HALS_Box17GetNumberControlsEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 216))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE36BFD0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK8HALS_Box35GetNumberOfControlsUsingClassFilterEjPKj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(*v2 + 216))(v2);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = (*(*v2 + 224))(v2, v5);
      v8 = v6;
      v9 = *(a1 + 56);
      v10 = *(a1 + 48);
      if (v9)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_12;
      }

      v12 = *(v6 + 20);
      v13 = 1;
      do
      {
        v14 = *v10++;
        IsSubClass = HALB_Info::IsSubClass(v12, v14);
        if (IsSubClass)
        {
          break;
        }
      }

      while (v13++ < v9);
      if (IsSubClass)
      {
LABEL_12:
        ++*(*(*(a1 + 32) + 8) + 24);
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      v5 = (v5 + 1);
    }

    while (v5 != v4);
  }
}

uint64_t HALS_Box::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 <= 1651536494)
  {
    if (v4 <= 1651007860)
    {
      v5 = v4 == 1650682915;
      v6 = 1650751011;
    }

    else
    {
      v5 = v4 == 1651007861 || v4 == 1651010921;
      v6 = 1651013225;
    }

LABEL_19:
    if (!v5 && v4 != v6)
    {
      return HALS_Object::IsPropertySettable(0, a2, a3);
    }

    return result;
  }

  if (v4 <= 1652060013)
  {
    v5 = v4 == 1651536495 || v4 == 1651861860;
    v6 = 1652060006;
    goto LABEL_19;
  }

  if (v4 != 1953653102 && v4 != 1668575852)
  {
    if (v4 == 1652060014)
    {
      return 1;
    }

    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  return result;
}

uint64_t HALS_Box::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 > 1652060005)
  {
    if (v3 > 1869638758)
    {
      if (v3 > 1937007733)
      {
        if (v3 == 1937007734)
        {
          return result;
        }

        v5 = 1953653102;
      }

      else
      {
        if (v3 == 1869638759)
        {
          return result;
        }

        v5 = 1870098020;
      }
    }

    else if (v3 > 1668047218)
    {
      if (v3 == 1668047219)
      {
        return result;
      }

      v5 = 1668575852;
    }

    else
    {
      if (v3 == 1652060006)
      {
        return result;
      }

      v5 = 1652060014;
    }
  }

  else
  {
    if (v3 > 1651010920)
    {
      if (v3 > 1651536494)
      {
        if (v3 == 1651536495)
        {
          return result;
        }

        v5 = 1651861860;
        goto LABEL_25;
      }

      if (v3 == 1651010921)
      {
        return result;
      }

      v6 = 30313;
    }

    else
    {
      if (v3 <= 1650751010)
      {
        if (v3 == 1650682915)
        {
          return result;
        }

        v5 = 1650682995;
        goto LABEL_25;
      }

      if (v3 == 1650751011)
      {
        return result;
      }

      v6 = 24949;
    }

    v5 = v6 | 0x62680000;
  }

LABEL_25:
  if (v3 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_Box::GetMIGDispatchQueue(HALS_Box *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

uint64_t HALS_Box::GetCommandGate(HALS_Box *this)
{
  return *(this + 6);
}

{
  return *(this + 6);
}

void HALS_Box::~HALS_Box(HALS_Box *this)
{
  HALS_Box::~HALS_Box(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5968D08;
  v2 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  CACFString::~CACFString((this + 72));
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  HALS_Object::~HALS_Object(this);
}

void HALS_Box::HALS_Box(HALS_Box *this, HALS_DeviceManager *a2, const __CFString *a3, uint64_t a4, HALS_Object *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(this, 1633841016, 0, a2, a5);
  *v6 = &unk_1F5968D08;
  *(v6 + 72) = a3;
  v8 = (v6 + 72);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 80) = 1;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  if (a3)
  {
    *v15 = 256;
    CACFString::GetCString(a3, (v6 + 88), v15, v7);
    if (*v8)
    {
      v9 = CFStringGetLength(*v8) + 1;
    }

    else
    {
      v9 = 1;
    }

    *v14 = v9;
    MEMORY[0x1EEE9AC00]();
    CACFString::GetCString(*v8, (v14 - ((v10 + 15) & 0x1FFFFFFF0) + 8), v14, v11);
    operator new[]();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    buf = 136315394;
    buf_4 = "HALS_Box.cpp";
    v18 = 1024;
    v19 = 37;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::HALS_Box: all boxes have to have a UID", &buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE36C778(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1700](v3, v4);
  CACFString::~CACFString(v2);
  v6 = *(v1 + 7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  HALS_Object::~HALS_Object(v1);
  _Unwind_Resume(a1);
}

CFIndex OS::CF::String::AsCString(CFIndex this, UInt8 *a2, uint64_t a3)
{
  *a2 = 0;
  usedBufLen = 1;
  v3 = *(this + 8);
  if (v3)
  {
    v7.length = CFStringGetLength(*(this + 8));
    v7.location = 0;
    this = CFStringGetBytes(v3, v7, 0x8000100u, 0, 0, a2, a3 - 1, &usedBufLen);
    a2[usedBufLen] = 0;
  }

  return this;
}

void sub_1DE36CC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DSP_ADM;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

CFComparisonResult HALS_IOContext_MCP_Impl::GetOwningDeviceID(const __CFDictionary **this)
{
  if (this[14])
  {
    cf[0] = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
    if (!cf[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v15 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    if (!v15)
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "Could not construct");
      __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v17, this[14], cf[0], &v15);
    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(cf[0]);
  }

  else
  {
    v17 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    if (!v17)
    {
      v10 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v10, "Could not construct");
      __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v2 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  cf[0] = v2;
  if (!v2)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "Could not construct");
    __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v17, cf);
  CFRelease(v2);
  if (v3 == kCFCompareEqualTo)
  {
    goto LABEL_15;
  }

  v14[0] = 0;
  v14[1] = 0;
  HALS_System::GetInstance(&v15, 0, v14);
  *cf = 0u;
  v12 = 0u;
  v13 = 1065353216;
  v4 = HALS_System::CopyDeviceByUID(v15, v17, 0, cf);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(cf);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v4)
  {
    v3 = v4[4];
  }

  HALS_ObjectMap::ReleaseObject(v4, v5);
  if (!v4)
  {
LABEL_15:
    v3 = kCFCompareEqualTo;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v3;
}

uint64_t HALS_IOContext_MCP_Impl::GetSafetyOffset(HALS_IOContext_MCP_Impl *this, uint64_t a2)
{
  result = *(this + 32);
  if (result)
  {
    result = (*(*result + 120))(result);
    if (result)
    {
      return (*(**(this + 32) + 144))(*(this + 32), a2);
    }
  }

  return result;
}

double HALS_IOContext_MCP_Impl::GetActualSampleRate(HALS_IOContext_MCP_Impl *this)
{
  v2 = *(this + 32);
  if (!v2 || !(*(*v2 + 120))(v2))
  {
    return 0.0;
  }

  v3 = *(**(this + 32) + 152);

  v3();
  return result;
}

uint64_t HALS_IOContext_MCP_Impl::GetStreamInfo(uint64_t result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int a5)
{
  v5 = a3 / 0x38;
  v6 = result + 24 * a5;
  v7 = *(v6 + 192);
  v8 = *(v6 + 200);
  v9 = (v6 + 192);
  v10 = -991146299 * ((v8 - v7) >> 3);
  if (a3 / 0x38 >= v10)
  {
    v5 = v10;
  }

  *a4 = v5;
  if (v5)
  {
    v11 = *v9;
    HALS_IOContext_MCP_Impl::get_owning_device_for_stream(result);
  }

  return result;
}

void HALS_IOContext_MCP_Impl::get_owning_device_for_stream(uint64_t a1)
{
  v11 = 0x676C6F626E756964;
  LODWORD(v12) = 0;
  v2 = *(a1 + 56);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(a1 + 48);
    if (v5)
    {
      AMCP::Core::Core::call_operation_function<applesauce::CF::StringRef>(&v13, v5, &v11);
    }

    else
    {
      v13 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v13 = 0;
  }

  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v8, 0, v10);
  if (v13)
  {
    v6 = *(v8.__r_.__value_.__r.__words[0] + 1744);
    applesauce::CF::convert_to<std::string,0>(__p, v13);
    os_unfair_lock_lock(v6 + 4);
    HALS_IOContext_Manager_Impl::find_wires_for_context(&v11, &v6[6], __p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE36D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a23;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&__p);
  applesauce::CF::StringRef::~StringRef((v23 - 96));
  _Unwind_Resume(a1);
}

void AMCP::Core::Core::call_operation_function<applesauce::CF::StringRef>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
  {
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

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v31 = "Core.h";
      v32 = 1024;
      v33 = 198;
      v34 = 2080;
      v35 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v28, a2, a3);
  if (!v28)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      v31 = "Core.h";
      v32 = 1024;
      v33 = 202;
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
    v36 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = applesauce::CF::StringRef, Argument_Types = <>]";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v38 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  AMCP::Core::Operation::call_function<applesauce::CF::StringRef>(a1, v28);
  v7 = v29;
  if (v29)
  {
    v8 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE36DBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 145));
  v27 = *(v25 - 136);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_MCP_Impl::CopyIOThreadOSWorkgroup(HALS_IOContext_MCP_Impl *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    if (*(this + 6))
    {
      HALS_IOContext_MCP_Impl::get_simple_mcp_property<2003267184u>(v9, this);
      v6 = caulk::mach::details::retain_os_object(v10, v5);
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v9);
    }

    else
    {
      v6 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void HALS_IOContext_MCP_Impl::get_simple_mcp_property<2003267184u>(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2[7];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v5 = v4;
    if (v4)
    {
      v6 = a2[6];
      if (v6)
      {
        AMCP::Core::Core::get_simple_required_property<2003267184u>(a1, v6);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a2[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a2);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v18 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136315906;
    v20 = "HALS_IOContext_MCP_Impl.cpp";
    v21 = 1024;
    v22 = 107;
    v23 = 1024;
    v24 = v13;
    v25 = 2080;
    v26 = v14;
    _os_log_debug_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v11 = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = v11;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE36DF60(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContext_MCP_Impl::get_debug_device_name(HALS_IOContext_MCP_Impl *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v9 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    cf = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    if (!cf)
    {
      v6 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v6, "Could not construct");
      __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(this, *(a2 + 112), v9, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v4 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    *this = v4;
    if (!v4)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
      __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }
}

void AMCP::Core::Core::get_simple_required_property<2003267184u>(uint64_t a1, AMCP::Core::Core *this)
{
  v42 = *MEMORY[0x1E69E9840];
  v25 = 0x676C6F6277676E70;
  v26 = 0;
  has_property = AMCP::Core::Core::has_property(this, &v25);
  if (!has_property)
  {
LABEL_17:
    LOBYTE(v32) = 0;
    v37 = 0;
LABEL_18:
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = 4;
      strcpy(__p, "wgnp");
      *buf = 136316418;
      *v39 = "Core.h";
      *&v39[8] = 1024;
      *&v39[10] = 391;
      *&v39[14] = 2080;
      *&v39[16] = "optional_value.operator BOOL() == true";
      *&v39[24] = 2080;
      *&v39[26] = __p;
      *&v39[34] = 1024;
      strcpy(&v39[36], "bolg");
      v39[41] = 4;
      *&v39[42] = 0;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  AMCP::Core::Core::find_operation(&v30, this, &v25);
  v6 = v30;
  if (v30)
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7))
    {
      AMCP::Core::Operation::call_function<caulk::mach::os_workgroup_interval_managed>(buf, v6);
      memset(v35, 0, sizeof(v35));
      v34 = 0u;
      v36 = 0;
      v32 = MEMORY[0x1E69E3C20] + 16;
      v33 = *&v39[4];
      *&v39[4] = 0;
      caulk::mach::details::release_os_object(0, v8);
      v9 = *v35;
      v10 = v34;
      v11 = *&v35[16];
      v34 = *&v39[12];
      *v35 = *&v39[28];
      *&v35[16] = *&v39[44];
      *&v39[44] = v11;
      *&v39[12] = v10;
      *&v39[28] = v9;
      LOBYTE(v11) = v35[24];
      v35[24] = v40;
      v40 = v11;
      LOBYTE(v11) = v36;
      v36 = v41;
      v41 = v11;
      v37 = 1;
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(buf);
LABEL_5:
      v12 = 0;
      goto LABEL_10;
    }

    v13 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v13))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(__p, v6);
      AMCP::Thing::convert_to<caulk::mach::os_workgroup_interval_managed>(buf, __p);
      memset(v35, 0, sizeof(v35));
      v34 = 0u;
      v36 = 0;
      v32 = MEMORY[0x1E69E3C20] + 16;
      v33 = *&v39[4];
      *&v39[4] = 0;
      caulk::mach::details::release_os_object(0, v14);
      v15 = *v35;
      v16 = v34;
      v17 = *&v35[16];
      v34 = *&v39[12];
      *v35 = *&v39[28];
      *&v35[16] = *&v39[44];
      *&v39[44] = v17;
      *&v39[12] = v16;
      *&v39[28] = v15;
      LOBYTE(v17) = v35[24];
      v35[24] = v40;
      v40 = v17;
      LOBYTE(v17) = v36;
      v36 = v41;
      v41 = v17;
      v37 = 1;
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(buf);
      if (v29)
      {
        v29(0, __p, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v12 = 1;
LABEL_10:
  has_property = v31;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v12)
  {
    goto LABEL_17;
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_18;
  }

  *a1 = MEMORY[0x1E69E3C18] + 16;
  v18 = caulk::mach::details::retain_os_object(v33, v5);
  v19 = *v35;
  *(a1 + 16) = v34;
  *(a1 + 32) = v19;
  *(a1 + 41) = *&v35[9];
  *a1 = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 8) = v18;
  *(a1 + 57) = v36;
  if (v37 == 1)
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v32);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE36E580(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_MCP_Impl::GetIOThreadOSWorkgroup(HALS_IOContext_MCP_Impl *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    if (*(this + 6))
    {
      HALS_IOContext_MCP_Impl::get_simple_mcp_property<2003267184u>(v8, this);
      v5 = v9;
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v8);
    }

    else
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void HALS_IOContext_MCP_Impl::SetIOThreadOSWorkgroup(HALS_IOContext_MCP_Impl *this, os_workgroup_s *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(this + 7);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!*(this + 6))
      {
LABEL_23:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_24;
      }

      caulk::mach::os_workgroup_interval_managed::from_get(&v28, a2);
      v7 = *(this + 7);
      if (v7)
      {
        v7 = std::__shared_weak_count::lock(v7);
        v8 = v7;
        if (v7)
        {
          v9 = *(this + 6);
          if (v9)
          {
            cf = 0x676C6F6277676E70;
            v27 = 0;
            if (AMCP::Core::Core::is_property_settable(v9, &cf))
            {
              AMCP::Core::Core::find_operation(&__p, v9, &cf);
              v10 = __p;
              if (__p)
              {
                v11 = AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>();
                if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v11))
                {
                  AMCP::Core::Operation::call_function<void,caulk::mach::os_workgroup_interval_managed const&>(v10, &v28);
                }

                else
                {
                  v21 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
                  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v21))
                  {
                    *&buf_4[4] = 0uLL;
                    *&v31 = 0;
                    *(&v31 + 1) = AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::dispatch;
                    operator new();
                  }
                }
              }

              if (v24)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v24);
              }
            }

LABEL_21:
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_22:
            caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v28);
            v16 = *(this + 5);
            v17 = v16[4];
            *&v28.mSelector = 0x676C6F626F737767;
            v28.mElement = 0;
            HALS_Object::PropertiesChanged(v16, v17, 0, 1, &v28);
            goto LABEL_23;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(*(this + 5) + 16);
        HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, this);
        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(&__p, cf);
        if (v25 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        buf = 136315906;
        *buf_4 = "HALS_IOContext_MCP_Impl.cpp";
        *&buf_4[8] = 1024;
        *&buf_4[10] = 121;
        *&buf_4[14] = 1024;
        *&buf_4[16] = v19;
        LOWORD(v31) = 2080;
        *(&v31 + 2) = p_p;
        _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", &buf, 0x22u);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1DE36E9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t caulk::mach::os_workgroup_interval_managed::from_get(caulk::mach::os_workgroup_interval_managed *this, os_workgroup_s *a2)
{
  v3 = caulk::mach::details::retain_os_object(a2, a2);
  caulk::mach::details::release_os_object(0, v4);
  *this = MEMORY[0x1E69E3C18] + 16;
  *(this + 1) = v3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 41) = 0u;
  caulk::mach::details::release_os_object(0, v5);
  *this = MEMORY[0x1E69E3C20] + 16;
  *(this + 57) = 0;

  return caulk::mach::details::release_os_object(0, v6);
}

void HALS_IOContext_MCP_Impl::GetIOProcStreamUsage(HALS_IOContext_MCP_Impl *this, AudioHardwareIOProcStreamUsage *a2, unsigned int *a3, char a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v5 = *(this + 5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK23HALS_IOContext_MCP_Impl20GetIOProcStreamUsageER30AudioHardwareIOProcStreamUsageRjb_block_invoke;
  v9[3] = &unk_1E8673C08;
  v10 = a4;
  v9[6] = this;
  v9[7] = a3;
  v9[8] = a2;
  v9[4] = &v15;
  v9[5] = &v11;
  v6 = (*(*v5 + 64))(v5);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  if (*(v12 + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v8 = *(v12 + 6);
    *exception = off_1F5991DD8;
    exception[2] = v8;
  }

  *a3 = *(v16 + 6);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

void sub_1DE36EC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK23HALS_IOContext_MCP_Impl20GetIOProcStreamUsageER30AudioHardwareIOProcStreamUsageRjb_block_invoke(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(result + 72);
  v2 = *(result + 48);
  v3 = *(result + 56);
  v4 = 0x4EC4EC4EC4EC4EC5 * ((*(v2 + 24 * *(result + 72) + 200) - *(v2 + 24 * *(result + 72) + 192)) >> 3);
  *(*(*(result + 32) + 8) + 24) = 330382100 * ((*(v2 + 24 * *(result + 72) + 200) - *(v2 + 24 * *(result + 72) + 192)) >> 3) + 12;
  if (*v3 < *(*(*(result + 32) + 8) + 24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "HALS_IOContext_MCP_Impl.cpp";
      v17 = 1024;
      v18 = 1085;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyIOProcStreamUsage", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v5 = *(result + 64);
  *(v5 + 8) = v4;
  if (v4)
  {
    v6 = 0;
    v7 = v1 == 0;
    v8 = 88;
    if (!v7)
    {
      v8 = 64;
    }

    v9 = (v2 + v8);
    v10 = v9[1];
    v11 = v5 + 12;
    do
    {
      if (v10 <= v6)
      {
        LODWORD(v12) = 1;
      }

      else
      {
        v12 = (*(*v9 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1;
      }

      *(v11 + 4 * v6++) = v12;
    }

    while (v4 != v6);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE36EE1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v11 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v12 = v11[2];
    }

    else
    {
      v12 = 2003329396;
    }

    *(*(*(a10 + 40) + 8) + 24) = v12;
    __cxa_end_catch();
    JUMPOUT(0x1DE36ED38);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_MCP_Impl::SetIOProcStreamUsage(HALS_IOContext_MCP_Impl *this, const AudioHardwareIOProcStreamUsage *a2, unsigned int a3, unsigned int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xB)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "HALS_IOContext_MCP_Impl.cpp";
      v17 = 1024;
      v18 = 577;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioDevicePropertyIOProcStreamUsage", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v4 = (a3 + 0x3FFFFFFF4) >> 2;
  mNumberStreams = a2->mNumberStreams;
  if (mNumberStreams >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = mNumberStreams;
  }

  if (-991146299 * ((*(this + 3 * a4 + 25) - *(this + 3 * a4 + 24)) >> 3) < v4)
  {
    v4 = -991146299 * ((*(this + 3 * a4 + 25) - *(this + 3 * a4 + 24)) >> 3);
  }

  if (v4)
  {
    v6 = 0;
    v7 = 64;
    if (!a4)
    {
      v7 = 88;
    }

    v8 = *(this + v7);
    do
    {
      v9 = v6 >> 6;
      v10 = 1 << v6;
      if (a2->mStreamIsOn[v6])
      {
        v11 = *(v8 + 8 * v9) | v10;
      }

      else
      {
        v11 = *(v8 + 8 * v9) & ~v10;
      }

      *(v8 + 8 * v9) = v11;
      ++v6;
    }

    while (v4 != v6);
  }

  HALS_IOContext_MCP_Impl::UpdateContext(this);
  result = 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE36F00C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE36EF2CLL);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_MCP_Impl::UpdateContext(HALS_IOContext_MCP_Impl *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(this + 14);
  if (v1)
  {
    v2 = HALS_IOContext_MCP_Impl::SetComposition(this, v1);
    if (v2)
    {
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v2);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315394;
        v9 = "HALS_IOContext_MCP_Impl.cpp";
        v10 = 1024;
        v11 = 358;
        _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d Error setting IOC composition.", &v8, 0x12u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_IOContext_MCP_Impl::SetComposition(HALS_IOContext_MCP_Impl *this, const __CFDictionary *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = applesauce::CF::DictionaryRef::from_get(&v40, a2);
  v4 = v40;
  if (!v40)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 484;
      *&buf[18] = 2080;
      *&buf[20] = "not (description)";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s SetComposition called with null description", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("SetComposition called with null description", &valuePtr);
    std::logic_error::logic_error(&v32, &valuePtr);
    v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5991430;
    v34 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v33);
    v42 = "virtual OSStatus HALS_IOContext_MCP_Impl::SetComposition(CFDictionaryRef)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_MCP_Impl.cpp";
    v44 = 484;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
  }

  CFRetain(v40);
  v28 = v4;
  v33.__vftable = CFStringCreateWithBytes(0, "device id", 9, 0x8000100u, 0);
  if (!v33.__vftable)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(buf, v4, v33.__vftable, &cf);
  v5 = *buf;
  if (!*buf)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not construct");
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = applesauce::CF::convert_to<unsigned int,0>(*buf);
  CFRelease(v5);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33.__vftable)
  {
    CFRelease(v33.__vftable);
  }

  v7 = HALS_ObjectMap::CopyObjectByObjectID(v6);
  if (v7)
  {
    v9 = v7[38];
    v10 = v7[39] << 32;
  }

  else
  {
    v10 = 0x200000000;
    v9 = 1;
  }

  HALS_ObjectMap::ReleaseObject(v7, v8);
  CFRelease(v4);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  *&buf[24] = 0;
  v33.__vftable = 0;
  v11 = *(this + 7);
  if (v11 && *(v11 + 8) != -1)
  {
    operator new();
  }

  v12 = *(this + 5);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1174405120;
  v25[2] = ___ZN23HALS_IOContext_MCP_Impl14SetCompositionEPK14__CFDictionary_block_invoke;
  v25[3] = &unk_1F5969170;
  v25[5] = this;
  v13 = v40;
  if (v40)
  {
    CFRetain(v40);
  }

  v26 = v13;
  v27 = v10 | v9;
  v25[4] = buf;
  v14 = (*(*v12 + 64))(v12);
  HALB_CommandGate::ExecuteCommand(v14, v25);
  v15 = *(*&buf[8] + 24);
  if (v26)
  {
    CFRelease(v26);
  }

  _Block_object_dispose(buf, 8);
  if (v40)
  {
    CFRelease(v40);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1DE36F6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, Buffer_Size_Notifier *a35)
{
  std::unique_ptr<Buffer_Size_Notifier>::reset[abi:ne200100](&a35);
  _Block_object_dispose((v35 - 144), 8);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 - 152));
  _Unwind_Resume(a1);
}

void ___ZN23HALS_IOContext_MCP_Impl14SetCompositionEPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v101[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v2 + 8) == -1;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v1 + 112);
  v5 = *(a1 + 48);
  *(v1 + 112) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v69 = v3;
  v75 = 0;
  v76 = 0;
  HALS_System::GetInstance(&v77, 0, &v75);
  v6 = *(v77 + 1744);
  v7 = *(v1 + 112);
  if (v7)
  {
    v8 = *(v1 + 40);
    v9 = *(v8 + 16);
    v10 = **(v8 + 72);
    CFRetain(v7);
    v74 = v7;
    os_unfair_lock_lock(v6 + 4);
    CFRetain(v7);
    cf = v7;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    CFRetain(v7);
    v82 = v7;
    v11 = applesauce::CF::details::at_key<char const(&)[10]>(v7, "device id");
    if (v11)
    {
      v12 = applesauce::CF::convert_as<unsigned int,0>(v11);
      if ((v12 & 0x100000000) != 0)
      {
        HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object(&v6[10], v12);
      }
    }

    CFRelease(v7);
    HALS_IOContext_Manager_Impl::get_graph_builder();
  }

  v74 = 0;
  os_unfair_lock_lock(v6 + 4);
  cf = 0;
  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  v79 = 0;
  v80 = 0;
  *buf = &v93 + 8;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v92;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  if (cf)
  {
    CFRelease(cf);
  }

  os_unfair_lock_unlock(v6 + 4);
  v14 = v79;
  v13 = v80;
  if (v80)
  {
    atomic_fetch_add_explicit(&v80->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (!v13)
  {
    if (v69)
    {
      goto LABEL_103;
    }

    goto LABEL_37;
  }

  if (v13->__shared_owners_ != -1 && v69)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = *(v1 + 56);
    *(v1 + 48) = v14;
    *(v1 + 56) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    v72 = 0;
    v73 = 0;
    HALS_System::GetInstance(&v83, 0, &v72);
    v16 = *(v83 + 1740);
    v88 = 0x676C6F626E64696FLL;
    LODWORD(v89) = 0;
    v18 = *(v1 + 8);
    v17 = *(v1 + 16);
    if (v17)
    {
      atomic_fetch_add_explicit(v17 + 2, 1uLL, memory_order_relaxed);
    }

    __p[0] = &unk_1F5969288;
    __p[1] = v18;
    __p[2] = v17;
    __p[3] = __p;
    v19 = *(v1 + 56);
    if (v19)
    {
      v19 = std::__shared_weak_count::lock(v19);
      v20 = v19;
      if (v19)
      {
        v21 = *(v1 + 48);
        if (v21)
        {
          std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](buf, __p);
          AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(v21, &v88, buf);
          std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](buf);
          goto LABEL_47;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v19);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(*(v1 + 40) + 16);
      HALS_IOContext_MCP_Impl::get_debug_device_name(v101, v1);
      if (!v101[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(&v92, v101[0]);
      if ((SBYTE7(v93) & 0x80u) == 0)
      {
        v58 = &v92;
      }

      else
      {
        v58 = v92;
      }

      *buf = 136315906;
      *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 95;
      v97 = 1024;
      v98 = v57;
      v99 = 2080;
      *v100 = v58;
      _os_log_debug_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
      if (SBYTE7(v93) < 0)
      {
        operator delete(v92);
      }

      if (v101[0])
      {
        CFRelease(v101[0]);
      }
    }

    if (!v20)
    {
LABEL_48:
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](__p);
      strcpy(buf, "revobolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v28 = *(*(v1 + 40) + 16);
      *&v92 = &unk_1F5969308;
      DWORD2(v92) = v28;
      *(&v93 + 1) = &v92;
      HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<std::function<void ()>>(v1, buf, &v92);
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](&v92);
      strcpy(buf, "pbdnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v30 = *(v1 + 8);
      v29 = *(v1 + 16);
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 16), 1uLL, memory_order_relaxed);
      }

      v88 = &unk_1F5969388;
      v89 = v30;
      v90 = v29;
      v91 = &v88;
      HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<std::function<void ()>>(v1, buf, &v88);
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](&v88);
      strcpy(buf, "pednbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v32 = *(v1 + 8);
      v31 = *(v1 + 16);
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 16), 1uLL, memory_order_relaxed);
      }

      v101[0] = &unk_1F5969408;
      v101[1] = v32;
      v101[2] = v31;
      v101[3] = v101;
      HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<std::function<void ()>>(v1, buf, v101);
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v101);
      HALS_IOContext_MCP_Impl::set_simple_mcp_value<1718839674u>(v1, (v1 + 248));
      strcpy(buf, "sppibolg");
      buf[9] = 0;
      *&buf[10] = 0;
      HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<AMCP::Power_State>(v1, buf, v16);
      v33 = *(v1 + 56);
      if (v33)
      {
        v34 = *(*(v1 + 40) + 72);
        v33 = std::__shared_weak_count::lock(v33);
        v35 = v33;
        if (v33)
        {
          v33 = *(v1 + 48);
          if (v33)
          {
            AMCP::Core::Core::set_simple_property_value<1885630071u>(v33, (v34 + 42));
            goto LABEL_64;
          }
        }
      }

      else
      {
        v35 = 0;
      }

      v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v36 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v33);
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
        v59 = *(*(v1 + 40) + 16);
        HALS_IOContext_MCP_Impl::get_debug_device_name(v85, v1);
        if (!v85[0])
        {
          v66 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v66, "Could not construct");
          __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(&v86, v85[0]);
        if (v87 >= 0)
        {
          v60 = &v86;
        }

        else
        {
          v60 = v86;
        }

        *buf = 136315906;
        *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 121;
        v97 = 1024;
        v98 = v59;
        v99 = 2080;
        *v100 = v60;
        _os_log_debug_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (v85[0])
        {
          CFRelease(v85[0]);
        }
      }

      if (!v35)
      {
LABEL_65:
        v40 = *(v1 + 56);
        if (v40)
        {
          v41 = *(*(v1 + 40) + 72);
          v40 = std::__shared_weak_count::lock(v40);
          v42 = v40;
          if (v40)
          {
            v40 = *(v1 + 48);
            if (v40)
            {
              AMCP::Core::Core::set_simple_property_value<1885627511u>(v40, (v41 + 43));
              goto LABEL_77;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v43 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v40);
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

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v61 = *(*(v1 + 40) + 16);
          HALS_IOContext_MCP_Impl::get_debug_device_name(v85, v1);
          if (!v85[0])
          {
            v67 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v67, "Could not construct");
            __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(&v86, v85[0]);
          if (v87 >= 0)
          {
            v62 = &v86;
          }

          else
          {
            v62 = v86;
          }

          *buf = 136315906;
          *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 121;
          v97 = 1024;
          v98 = v61;
          v99 = 2080;
          *v100 = v62;
          _os_log_debug_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
          if (SHIBYTE(v87) < 0)
          {
            operator delete(v86);
          }

          if (v85[0])
          {
            CFRelease(v85[0]);
          }
        }

        if (!v42)
        {
LABEL_78:
          std::vector<BOOL>::resize(v1 + 64, -991146299 * ((*(v1 + 224) - *(v1 + 216)) >> 3), 1);
          std::vector<BOOL>::resize(v1 + 88, -991146299 * ((*(v1 + 200) - *(v1 + 192)) >> 3), 1);
          v47 = *(v1 + 56);
          if (v47)
          {
            v47 = std::__shared_weak_count::lock(v47);
            v48 = v47;
            if (v47)
            {
              v49 = *(v1 + 48);
              if (v49)
              {
                *&v86 = 0x676C6F626D746D62;
                DWORD2(v86) = 0;
                AMCP::Core::Core::get_property_value(buf, v49, &v86);
                AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Timebase>>(&v86, buf);
                if (*&v100[6])
                {
                  (*&v100[6])(0, buf, 0, 0);
                }

LABEL_91:
                std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                v54 = v86;
LABEL_92:
                v55 = *(v1 + 264);
                *(v1 + 256) = v54;
                if (v55)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
                }

                v86 = 0uLL;
                HALS_System::GetInstance(buf, 0, &v86);
                HALS_System::ProcessPropertyChanged(*buf, **(*(v1 + 40) + 72), 1885632035, 1869968496, 1);
                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                }

                v85[0] = 0;
                v85[1] = 0;
                HALS_System::GetInstance(buf, 0, v85);
                HALS_System::ProcessPropertyChanged(*buf, **(*(v1 + 40) + 72), 1885632035, 1768845428, 1);
                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                }

                if (v84)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v84);
                }

                if (v73)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v73);
                }

                goto LABEL_102;
              }
            }
          }

          else
          {
            v48 = 0;
          }

          v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v50 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v47);
          }

          v52 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v51 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
            v53 = *v52;
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }

          else
          {
            v53 = *v52;
          }

          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v63 = *(*(v1 + 40) + 16);
            HALS_IOContext_MCP_Impl::get_debug_device_name(v85, v1);
            if (!v85[0])
            {
              v68 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v68, "Could not construct");
              __cxa_throw(v68, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::convert_to<std::string,0>(&v86, v85[0]);
            if (v87 >= 0)
            {
              v64 = &v86;
            }

            else
            {
              v64 = v86;
            }

            *buf = 136315906;
            *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1534;
            v97 = 1024;
            v98 = v63;
            v99 = 2080;
            *v100 = v64;
            _os_log_debug_impl(&dword_1DE1F9000, v53, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
            if (SHIBYTE(v87) < 0)
            {
              operator delete(v86);
            }

            if (v85[0])
            {
              CFRelease(v85[0]);
            }
          }

          v54 = 0uLL;
          v86 = 0u;
          if (!v48)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }

LABEL_77:
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        goto LABEL_78;
      }

LABEL_64:
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      goto LABEL_65;
    }

LABEL_47:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    goto LABEL_48;
  }

  if (!v69 && v13->__shared_owners_ == -1)
  {
LABEL_37:
    v22 = *(*(v1 + 40) + 16);
    v23 = *(v1 + 464);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN23HALS_IOContext_MCP_Impl14SetCompositionEPK14__CFDictionary_block_invoke_2;
    block[3] = &__block_descriptor_tmp_15;
    v71 = v22;
    AMCP::Utility::Dispatch_Queue::async(v23, block);
    if (!v13)
    {
      goto LABEL_103;
    }
  }

LABEL_102:
  std::__shared_weak_count::__release_weak(v13);
LABEL_103:
  v56 = *MEMORY[0x1E69E9840];
}