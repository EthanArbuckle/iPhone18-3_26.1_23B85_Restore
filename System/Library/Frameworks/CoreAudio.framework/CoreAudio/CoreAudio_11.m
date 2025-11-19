void std::__optional_destruct_base<AMCP::DAL::DAL_Time_Range,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 80) == 1)
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

    *(a1 + 80) = 0;
  }
}

BOOL caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==(uint64_t a1, uint64_t a2)
{
  if (!AMCP::DAL::DAL_Time::operator<(a2, (a2 + 40)))
  {
    return !AMCP::DAL::DAL_Time::operator<(a1, (a1 + 40));
  }

  result = AMCP::DAL::DAL_Time::operator==(a2, a1);
  if (result)
  {

    return AMCP::DAL::DAL_Time::operator==((a2 + 40), (a1 + 40));
  }

  return result;
}

void std::vector<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::DAL::Source_ID const,AMCP::DAL::Synchronizer_Source>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::DAL::Source_ID const,AMCP::DAL::Synchronizer_Source>,0>(uint64_t a1)
{
  AMCP::DAL::Synchronizer_Source::~Synchronizer_Source((a1 + 48));
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void AMCP::DAL::Synchronizer_Source::~Synchronizer_Source(AMCP::DAL::Synchronizer_Source *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 272) == 1)
  {
    v3 = *(this + 33);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(this + 28);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = *(this + 22);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::DAL::Synchronizer::Synchronizer(uint64_t a1, unint64_t *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  v3 = *a2;
  *(a1 + 48) = *a2;
  v4 = a2[1];
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a2;
    v5 = a2[1];
    *&v26 = *a2;
    *(&v26 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v3 = *a2;
      v6 = a2[1];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v26 = v3;
  }

  *buf = 2;
  *&v28[4] = 0;
  *&v28[12] = 0;
  v7 = *(&v26 + 1);
  *&v28[20] = v26;
  v26 = 0uLL;
  *&v8 = v3;
  *(&v8 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v7;
  LODWORD(v20.__vftable) = 2;
  v20.__imp_.__imp_ = 0;
  v21 = 0;
  v22 = v8;
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range((a1 + 64), buf, &v20);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  if (!*(a1 + 48))
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
      *v28 = "Synchronizer.cpp";
      *&v28[8] = 1024;
      *&v28[10] = 124;
      *&v28[14] = 2080;
      *&v28[16] = "not (m_timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v18);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0uLL;
    v23 = 0;
    v24 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    *&v28[28] = "AMCP::DAL::Synchronizer::Synchronizer(const Timebase_Ref &)";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    v30 = 124;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE2C5458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v32 = *(v30 - 152);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v26 + 56);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::~__hash_table(v27);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>(void *a1, unsigned int *a2)
{
  v4 = *a2;
  v5 = std::hash<AMCP::Terminal_Identifier>::operator()((a2 + 2));
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47)) + 3864292196u)) + 3864292196u;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = v7 & (*&v6 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v7)
    {
      if (std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>::operator()[abi:ne200100](i + 4, a2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = *a2;
  v5 = std::hash<AMCP::Terminal_Identifier>::operator()((a2 + 2));
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47)) + 3864292196u)) + 3864292196u;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = v7 & (*&v6 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v7 == v13)
    {
      if (std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>::operator()[abi:ne200100](i + 4, a2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>::operator()[abi:ne200100](_DWORD *a1, uint64_t a2)
{
  if (*a2 != *a1)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v6[0] = (a2 + 8);
  v6[1] = (a2 + 32);
  v6[2] = (a2 + 40);
  v5[0] = a1 + 2;
  v5[1] = a1 + 8;
  v5[2] = a1 + 10;
  return std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v6, v5);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::DAL::Source_ID const,AMCP::DAL::Synchronizer_Source>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(const void ***a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = (*a1)[1];
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v2[1];
  }

  if (v4 == v5 && (v3 >= 0 ? (v9 = *a1) : (v9 = **a1), v6 >= 0 ? (v10 = *a2) : (v10 = *v2), !memcmp(v9, v10, v4) && *a1[1] == **(a2 + 8)))
  {
    return *a1[2] == **(a2 + 16);
  }

  else
  {
    return 0;
  }
}

void AMCP::DAL::Synchronizer::_sweep_and_remove_sources(AMCP::DAL::Synchronizer *this)
{
  v2 = this + 24;
  v3 = *(this + 3);
  if (v3)
  {
    v4 = (this + 8);
    do
    {
      if (v3[200] == 1)
      {
        AMCP::DAL::Synchronizer_Source::get_source_id(__p, (v3 + 64));
        has_pending_range = AMCP::DAL::Synchronizer::_has_pending_range(this, __p);
        v6 = has_pending_range;
        if (SBYTE7(v36) < 0)
        {
          operator delete(__p[1]);
          if (!v6)
          {
LABEL_8:
            v8 = *(this + 16);
            v9 = *(v3 + 1);
            v10 = vcnt_s8(v8);
            v10.i16[0] = vaddlv_u8(v10);
            if (v10.u32[0] > 1uLL)
            {
              if (v9 >= *&v8)
              {
                v9 %= *&v8;
              }
            }

            else
            {
              v9 &= *&v8 - 1;
            }

            v7 = *v3;
            v11 = *(*v4 + 8 * v9);
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11 != v3);
            if (v12 == v2)
            {
              goto LABEL_55;
            }

            v13 = *(v12 + 1);
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= *&v8)
              {
                v13 %= *&v8;
              }
            }

            else
            {
              v13 &= *&v8 - 1;
            }

            v14 = *v3;
            if (v13 == v9)
            {
LABEL_27:
              if (v14)
              {
                goto LABEL_28;
              }
            }

            else
            {
LABEL_55:
              if (!v7)
              {
                goto LABEL_26;
              }

              v15 = *(v7 + 8);
              if (v10.u32[0] > 1uLL)
              {
                if (v15 >= *&v8)
                {
                  v15 %= *&v8;
                }
              }

              else
              {
                v15 &= *&v8 - 1;
              }

              v14 = *v3;
              if (v15 != v9)
              {
LABEL_26:
                *(*v4 + 8 * v9) = 0;
                v14 = *v3;
                goto LABEL_27;
              }

LABEL_28:
              v16 = *(v14 + 8);
              if (v10.u32[0] > 1uLL)
              {
                if (v16 >= *&v8)
                {
                  v16 %= *&v8;
                }
              }

              else
              {
                v16 &= *&v8 - 1;
              }

              if (v16 != v9)
              {
                *(*v4 + 8 * v16) = v12;
                v14 = *v3;
              }
            }

            *v12 = v14;
            *v3 = 0;
            --*(this + 4);
            __p[0] = v3;
            __p[1] = v2 - 16;
            LOBYTE(v35) = 1;
            *(&v35 + 1) = 0;
            HIDWORD(v35) = 0;
            std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>>>>::~unique_ptr[abi:ne200100](__p);
            goto LABEL_35;
          }
        }

        else if (!has_pending_range)
        {
          goto LABEL_8;
        }
      }

      v7 = *v3;
LABEL_35:
      v3 = v7;
    }

    while (v7);
  }

  if (!*(this + 4))
  {
    *&v17 = *(this + 6);
    v18 = *(this + 7);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *(this + 7);
      v30 = 2;
      v31 = 0;
      v32 = 0;
      v33 = v19;
      *&v17 = *(this + 6);
      *(&v17 + 1) = v20;
      v21 = v20 == 0;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v20 = 0;
      v30 = 2;
      v31 = 0;
      v32 = 0;
      v33 = v17;
      v21 = 1;
      *(&v17 + 1) = 0;
    }

    v26 = 2;
    v27 = 0;
    v28 = 0;
    v29 = v17;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(__p, &v30, &v26);
    *(this + 4) = *__p;
    *(this + 10) = v35;
    v22 = v36;
    v36 = 0uLL;
    v23 = *(this + 12);
    *(this + 88) = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    *(this + 104) = v37;
    *(this + 15) = v38;
    v24 = v39;
    v39 = 0uLL;
    v25 = *(this + 17);
    *(this + 8) = v24;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      if (*(&v39 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
      }
    }

    if (*(&v36 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
    }

    if (!v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    *(this + 168) = 1;
  }
}

void sub_1DE2C5CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((v27 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Synchronizer_Source::get_source_id(AMCP::DAL::Synchronizer_Source *this, uint64_t a2)
{
  *this = *a2;
  v4 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
  }

  *(this + 4) = *(a2 + 32);
  *(this + 10) = *(a2 + 40);
}

BOOL AMCP::DAL::Synchronizer::_has_pending_range(uint64_t a1, unsigned int *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
  if (!v3)
  {
    return 0;
  }

  v11 = *(v3 + 15);
  v4 = v3[18];
  v12 = v3[17];
  v13 = v4;
  v5 = v3[19];
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(v3 + 10);
  v6 = v3[23];
  v16 = v3[22];
  v17 = v6;
  v7 = v3[24];
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (AMCP::DAL::DAL_Time::operator<((a1 + 104), &v15))
  {
    sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v11);
    v9 = round(sample_time) < round(AMCP::DAL::DAL_Time::get_sample_time(&v15));
  }

  else
  {
    v9 = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v9;
}

void AMCP::DAL::Synchronizer::_get_latest_common_pending_time(AMCP::DAL::Synchronizer *this, uint64_t a2)
{
  AMCP::DAL::Synchronizer::_get_pending_time_range(v19, a2);
  *this = v22;
  v4 = v24;
  *(this + 2) = v23;
  *(this + 3) = v4;
  v5 = v25;
  *(this + 4) = v25;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  for (i = *(a2 + 24); i; i = *i)
  {
    if (AMCP::DAL::DAL_Time::get_host_time((i + 43)))
    {
      *v19 = *(i + 43);
      v8 = i[46];
      v7 = i[47];
      *&v19[16] = i[45];
      v20 = v8;
      v21 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (AMCP::DAL::DAL_Time::operator<((i + 15), (i + 20)) && (i[25] & 1) == 0)
      {
        v9 = i[19];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(i + 40);
        v11 = *(i + 21);
        v12 = i[23];
        v13 = i[24];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&v19[8] = v11;
        *v19 = v10;
        v14 = v21;
        v20 = v12;
        v21 = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      if (AMCP::DAL::DAL_Time::operator<(v19, (a2 + 104)))
      {
        v15 = v21;
      }

      else
      {
        v16 = AMCP::DAL::DAL_Time::operator<(v19, this);
        v15 = v21;
        if (v16)
        {
          *this = *v19;
          *(this + 8) = *&v19[8];
          v17 = v20;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = *(this + 4);
          *(this + 3) = v17;
          *(this + 4) = v15;
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }
}

void sub_1DE2C6014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(v13 + 32);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Synchronizer::_emit(void *a1, uint64_t a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = (a3 + 5);
  if (AMCP::DAL::DAL_Time::operator<(a3, (a3 + 5)))
  {
    if (AMCP::DAL::DAL_Time::operator<((a1 + 8), (a1 + 13)))
    {
      v7 = AMCP::DAL::DAL_Time::operator==(a3, (a1 + 13));
      if (!v7)
      {
        v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v23 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v7);
        }

        v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = *v25;
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          v26 = *v25;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v38 = "Synchronizer.cpp";
          v39 = 1024;
          v40 = 535;
          v41 = 2080;
          v42 = "not (is_contiguous)";
          _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s emitting gap range", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("emitting gap range", &v28);
        std::logic_error::logic_error(&v29, &v28);
        v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v30, &v29);
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = -1;
        v30.__vftable = &unk_1F5991430;
        v31 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
        v43 = "void AMCP::DAL::Synchronizer::_emit(const Source_ID &, const DAL::DAL_Time_Range &)";
        v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
        v45 = 535;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
      }
    }

    AMCP::DAL::DAL_Time::get_sample_time(a3);
    AMCP::DAL::DAL_Time::get_sample_time(v6);
    AMCP::DAL::DAL_Time::operator-(buf, v6, a3);
    if ((buf[0] & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(buf);
    }

    kdebug_trace();
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (AMCP::DAL::DAL_Time::operator<((a1 + 8), (a1 + 13)) || round(AMCP::DAL::DAL_Time::get_sample_time((a1 + 8))) != 0.0)
    {
      if (AMCP::DAL::DAL_Time::operator<(a3, (a1 + 8)))
      {
        v17 = a3;
      }

      else
      {
        v17 = (a1 + 8);
      }

      if (AMCP::DAL::DAL_Time::operator<((a1 + 13), v6))
      {
        v18 = v6;
      }

      else
      {
        v18 = (a1 + 13);
      }

      caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::set((a1 + 8), v17, v18);
    }

    else
    {
      *(a1 + 16) = *a3;
      a1[9] = a3[1];
      a1[10] = a3[2];
      v9 = a3[3];
      v8 = a3[4];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = a1[12];
      a1[11] = v9;
      a1[12] = v8;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      *(a1 + 26) = *(a3 + 10);
      a1[14] = a3[6];
      a1[15] = a3[7];
      v12 = a3[8];
      v11 = a3[9];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = a1[17];
      a1[16] = v12;
      a1[17] = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    v20 = a1[18];
    v19 = a1[19];
    while (v20 != v19)
    {
      v21 = *(v20 + 24);
      if (!v21)
      {
        goto LABEL_42;
      }

      (*(*v21 + 48))(v21, a2, a3);
      v20 += 32;
    }
  }

  else
  {
    v15 = a1[18];
    v14 = a1[19];
    while (v15 != v14)
    {
      v16 = *(v15 + 24);
      if (!v16)
      {
LABEL_42:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v16 + 48))(v16, a2, a3);
      v15 += 32;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1DE2C64D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  _Unwind_Resume(exception_object);
}

void caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a1 + 40) = *a3;
  *(a1 + 48) = *(a3 + 8);
  v8 = *(a3 + 24);
  *(a1 + 56) = *(a3 + 16);
  v9 = *(a3 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 72);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void AMCP::DAL::Synchronizer::_get_pending_time_range(AMCP::DAL::Synchronizer *this, uint64_t a2)
{
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(this, (a2 + 48));
  if (!*(a2 + 32))
  {
    return;
  }

  v4 = *(a2 + 24);
  v5 = *(v4 + 152);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *(v4 + 160);
  v6 = *(v4 + 184);
  v33 = *(v4 + 176);
  v7 = *(v4 + 192);
  if (!v7)
  {
    v38 = *(v4 + 160);
    v39 = *(v4 + 176);
    v40 = v6;
    v41 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = v32;
  v39 = v33;
  v40 = v6;
  v41 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (v5)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_7:
  for (i = *(a2 + 24); i; i = *i)
  {
    v32 = *(i + 15);
    v9 = i[18];
    v33 = i[17];
    *&v34 = v9;
    v10 = i[19];
    *(&v34 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v35 = *(i + 10);
    v11 = i[23];
    v36 = i[22];
    v12 = i[24];
    *&v37 = v11;
    *(&v37 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = AMCP::DAL::DAL_Time::operator<(&v38, &v35);
    v14 = &v35;
    if (!v13)
    {
      v14 = &v38;
    }

    LODWORD(v38) = *v14;
    v15 = &v35 + 8;
    if (!v13)
    {
      v15 = &v38 + 8;
    }

    *(&v38 + 1) = *v15;
    v16 = &v36;
    if (!v13)
    {
      v16 = &v39;
    }

    v39 = *v16;
    if (v13)
    {
      v17 = &v37;
    }

    else
    {
      v17 = &v40;
    }

    v18 = *v17;
    if (v13)
    {
      v19 = &v37 + 1;
    }

    else
    {
      v19 = &v41;
    }

    v20 = *v19;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v41;
    v40 = v18;
    v41 = v20;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (*(&v37 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
    }

    if (*(&v34 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
    }
  }

  v28 = *(a2 + 104);
  v22 = *(a2 + 128);
  v29 = *(a2 + 120);
  v30 = v22;
  v23 = *(a2 + 136);
  v31 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v32, &v28, &v38);
  *this = v32;
  *(this + 2) = v33;
  v24 = v34;
  v34 = 0uLL;
  v25 = *(this + 4);
  *(this + 24) = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  *(this + 40) = v35;
  *(this + 7) = v36;
  v26 = v37;
  v37 = 0uLL;
  v27 = *(this + 9);
  *(this + 4) = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (*(&v37 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
    }
  }

  if (*(&v34 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }
}

void sub_1DE2C68DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(v29);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Synchronizer::receive_data(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1);
  v6 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (!AMCP::DAL::DAL_Time::get_host_time((v6 + 43)))
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v32 = *a2;
      if (*(a2 + 31) >= 0)
      {
        v33 = a2 + 2;
      }

      else
      {
        v33 = *(a2 + 1);
      }

      *buf = 136316162;
      *&buf[4] = "Synchronizer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 189;
      *&buf[18] = 2080;
      *&buf[20] = "not (_is_anchored(source_id))";
      *&buf[28] = 1024;
      *&buf[30] = v32;
      *&buf[34] = 2080;
      *&buf[36] = v33;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data on unanchored source: %u  '%s'", buf, 0x2Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v49);
    __cxa_allocate_exception(0x40uLL);
    if (*(a2 + 31) >= 0)
    {
      v34 = a2 + 2;
    }

    else
    {
      v34 = *(a2 + 1);
    }

    caulk::make_string("Synchronizer::receive_data on unanchored source: %u  '%s'", &v48, *a2, v34);
    std::logic_error::logic_error(&v47, &v48);
    v47.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v54, &v47);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = -1;
    v54.__vftable = &unk_1F5991430;
    v55 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v54);
    *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    v61 = 189;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v53);
  }

  v7 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *buf = *(v7 + 43);
  v8 = v7[46];
  *&buf[16] = v7[45];
  *&buf[24] = v8;
  v9 = v7[47];
  *&buf[32] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = AMCP::DAL::DAL_Time::operator<((a3 + 40), buf);
  v11 = *&buf[32];
  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v10)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      *&buf[4] = "Synchronizer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 190;
      *&buf[18] = 2080;
      *&buf[20] = "not (received_range.end() >= _get_anchor_time(source_id))";
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data older than anchor", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v49);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Synchronizer::receive_data older than anchor", &v48);
    std::logic_error::logic_error(&v47, &v48);
    v47.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v54, &v47);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = -1;
    v54.__vftable = &unk_1F5991430;
    v55 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v54);
    *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    v61 = 190;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v53);
  }

  AMCP::DAL::Synchronizer::_check_sources_for_overloads(a1);
  if (!std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2))
  {
    goto LABEL_90;
  }

  v12 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = v12;
  if (*(v12 + 336) == 1)
  {
    v14 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==((v12 + 32), a3);
    if (!v14 && (v13[42] & 1) != 0)
    {
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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
        *buf = 136315650;
        *&buf[4] = "Synchronizer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 110;
        *&buf[18] = 2080;
        *&buf[20] = "not (m_current_range == range_to_commit or not m_current_range)";
        _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer_Source has seen two different ranges in the same cycle", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v49);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Synchronizer_Source has seen two different ranges in the same cycle", &v48);
      std::logic_error::logic_error(&v47, &v48);
      v47.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v54, &v47);
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = -1;
      v54.__vftable = &unk_1F5991430;
      v55 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v54);
      *&buf[32] = "BOOL AMCP::DAL::Synchronizer_Source::is_unique_range(const DAL_Time_Range &) const";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
      v61 = 110;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v53);
    }
  }

  else
  {
LABEL_90:
    if (AMCP::DAL::DAL_Time::operator<((a1 + 64), (a1 + 104)))
    {
      v19 = AMCP::DAL::DAL_Time::operator<((a1 + 104), (a3 + 40));
      if (!v19)
      {
        v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v35 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v19);
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
          *&buf[4] = "Synchronizer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 204;
          *&buf[18] = 2080;
          *&buf[20] = "not (received_range.end() > m_emitted_time_range.end())";
          _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data end of range already emitted", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v49);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Synchronizer::receive_data end of range already emitted", &v48);
        std::logic_error::logic_error(&v47, &v48);
        v47.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v54, &v47);
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59 = -1;
        v54.__vftable = &unk_1F5991430;
        v55 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v54);
        *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
        *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
        v61 = 204;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v53);
      }

      v20 = AMCP::DAL::DAL_Time::operator<(a3, (a1 + 104));
      if (v20)
      {
        v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v39 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v20);
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
          *&buf[4] = "Synchronizer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 205;
          *&buf[18] = 2080;
          *&buf[20] = "not (received_range.start() >= m_emitted_time_range.end())";
          _os_log_error_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data start of range already emitted", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v49);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Synchronizer::receive_data start of range already emitted", &v48);
        std::logic_error::logic_error(&v47, &v48);
        v47.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v54, &v47);
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59 = -1;
        v54.__vftable = &unk_1F5991430;
        v55 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v54);
        *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
        *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
        v61 = 205;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v53);
      }
    }

    if (std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2))
    {
      v21 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
      if (!v21)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if ((v21[25] & 1) == 0 && (v21[31] & 1) == 0)
      {
        AMCP::DAL::Synchronizer_Source::receive_data((v21 + 8), a3);
        AMCP::DAL::Synchronizer::_get_latest_common_pending_time(&v51, a1);
        v22 = AMCP::DAL::DAL_Time::operator<(&v51, (a1 + 104));
        if (v22)
        {
          v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v43 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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
            *&buf[4] = "Synchronizer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 216;
            *&buf[18] = 2080;
            *&buf[20] = "not (m_emitted_time_range.end() <= emit_end_time)";
            _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid time in Synchronizer", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Invalid time in Synchronizer", &v53);
          std::logic_error::logic_error(&v49, &v53);
          v49.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v54, &v49);
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = -1;
          v54.__vftable = &unk_1F5991430;
          v55 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v54);
          *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
          v61 = 216;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
        }

        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, (a1 + 104), &v51);
        AMCP::DAL::Synchronizer::_emit(a1, a2, buf);
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }
      }
    }

    AMCP::DAL::Synchronizer::_sweep_and_remove_sources(a1);
  }

  os_unfair_lock_unlock(a1);
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DE2C7814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v37 - 144));
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  os_unfair_lock_unlock(v36);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Synchronizer::_check_sources_for_overloads(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (!v2)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *&buf[4] = "Synchronizer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 494;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v26);
    std::logic_error::logic_error(&v27, &v26);
    v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v28, &v27);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5991430;
    v29 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
    v36 = "void AMCP::DAL::Synchronizer::_check_sources_for_overloads(const DAL_Time &)";
    *&v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    DWORD2(v37) = 494;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  if ((*(*v2 + 120))(v2))
  {
    (*(**(a1 + 48) + 32))(buf);
    v3 = *buf;
    v4 = (*(**(a1 + 48) + 144))(*(a1 + 48), 0);
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = v3 + v4;
      v7 = round(v6);
      do
      {
        if (AMCP::DAL::DAL_Time::get_host_time((v5 + 43)))
        {
          *buf = *(v5 + 15);
          v8 = v5[18];
          *&buf[16] = v5[17];
          *&buf[24] = v8;
          v9 = v5[19];
          v36 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = *(v5 + 10);
          v10 = v5[23];
          v38 = v5[22];
          v11 = v5[24];
          v39 = v10;
          v40 = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v37);
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (round(sample_time) < v7 && (v5[25] & 1) == 0)
          {
            v13 = v5[19];
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *buf = *(v5 + 10);
            v14 = v5[23];
            *&buf[16] = v5[22];
            v15 = v5[24];
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              v28 = *buf;
              v29 = *&buf[16];
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            else
            {
              v28 = *(v5 + 10);
              v29 = v5[22];
            }

            v30 = v14;
            v31 = v15;
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *&v16 = v14;
            *(&v16 + 1) = v15;
            LODWORD(v22) = 2;
            v23 = *&v6;
            v24 = v16;
            AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v28, &v22);
            AMCP::DAL::Synchronizer_Source::receive_data((v5 + 8), buf);
            if (v40)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }

            if (*(&v24 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
            }

            *(v5 + 248) = 1;
            std::__optional_destruct_base<AMCP::DAL::DAL_Time_Range,false>::reset[abi:ne200100]((v5 + 32));
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }
          }
        }

        v5 = *v5;
      }

      while (v5);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DE2C7E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a37);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__split_buffer<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void non-virtual thunk toHALS_PlugInDevice::~HALS_PlugInDevice(HALS_PlugInDevice *this)
{
  HALS_PlugInDevice::~HALS_PlugInDevice((this - 1456));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInDevice::~HALS_PlugInDevice((this - 1456));
}

void HALS_PlugInDevice::~HALS_PlugInDevice(HALS_PlugInDevice *this)
{
  v32 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5964468;
  v2 = (this + 1456);
  *(this + 182) = &unk_1F5964870;
  v3 = *(this + 394);
  if (v3)
  {
    v4 = HALS_ObjectMap::CopyObjectByObjectID(v3);
    v5 = v4;
    if (v4)
    {
      if (v4 != *(this + 196))
      {
        v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v6 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
          v20 = *(this + 394);
          v21 = *(this + 196);
          *buf = 136316162;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 94;
          v26 = 1024;
          v27 = v20;
          v28 = 2048;
          v29 = v5;
          v30 = 2048;
          v31 = v21;
          _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d IO Engine ID %u object from map %p is not the same as cached object %p", buf, 0x2Cu);
        }
      }

      (*(*v5 + 8))(v5);
      HALS_ObjectMap::ObjectIsDead(*(this + 196), v14);
    }

    else
    {
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
        v22 = *(this + 394);
        v23 = *(this + 196);
        *buf = 136315906;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 102;
        v26 = 1024;
        v27 = v22;
        v28 = 2048;
        v29 = v23;
        _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d IO Engine ID %u is not valid, ptr %p", buf, 0x22u);
      }
    }

    HALS_ObjectMap::ReleaseObject(v5, v15);
  }

  *(this + 196) = 0;
  *(this + 394) = 0;
  v24[0] = 0;
  v24[1] = 0;
  HALS_System::GetInstance(buf, 0, v24);
  if (*buf)
  {
    HALS_IOContext_Manager::destroy_engine_for_device(*(*buf + 1744), this);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1584));
  v16 = *(this + 193);
  if (v16)
  {
    *(this + 194) = v16;
    operator delete(v16);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(this + i + 1520);
    if (v18)
    {
      *(this + i + 1528) = v18;
      operator delete(v18);
    }
  }

  HALS_PlugInObject::~HALS_PlugInObject(v2);
  HALS_Device::~HALS_Device(this);
  v19 = *MEMORY[0x1E69E9840];
}

{
  HALS_PlugInDevice::~HALS_PlugInDevice(this);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE2C83B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PlugInDevice::ExecuteWorkSyncOnConfigChangeQueue(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN17HALS_PlugInDevice34ExecuteWorkSyncOnConfigChangeQueueENSt3__18functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_27_998;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a2);
  v3 = atomic_load((a1 + 1616));
  if (v3)
  {
    atomic_store(1u, (a1 + 1617));
  }

  dispatch_sync(*(a1 + 1584), block);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN17HALS_PlugInDevice34ExecuteWorkSyncOnConfigChangeQueueENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE2C84F8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_PlugInDevice::ConfigChange_HostedDSP(HALS_PlugInDevice *this, BOOL a2, int a3)
{
  v3 = 0x115CuLL;
  v4 = 0;
  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(this, &v3, a3);
}

void HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(uint64_t a1, __int128 *a2, int a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 1476);
  v5 = *(*(a1 + 1464) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN17HALS_PlugInDevice32HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEbj_block_invoke;
  block[3] = &__block_descriptor_tmp_25_1002;
  v9 = v5;
  v10 = v3;
  v7 = *a2;
  v8 = *(a2 + 2);
  v11 = a3;
  v12 = v4;
  AMCP::Utility::Dispatch_Queue::async(a1 + 1584, block);
}

void ___ZN17HALS_PlugInDevice32HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEbj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 56));
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 60));
  if (v3)
  {
    v4 = *(a1 + 40);
    v26 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2386;
      v38 = 2080;
      v39 = v3 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange: %s  --->", buf, 0x1Cu);
    }

    v33 = 0u;
    v34 = 0u;
    v8 = *(v3 + 4);
    strcpy(&v35, "bgfcbolg");
    BYTE1(v35.mElement) = 0;
    HIWORD(v35.mElement) = 0;
    HALS_NotificationManager::PropertiesChanged_Sync(v8, v6, 1, &v35, v7);
    memset(v32, 0, sizeof(v32));
    v31[0] = 0;
    v31[1] = 0;
    HALS_System::GetInstance(buf, 0, v31);
    v9 = *buf;
    v10 = (*(*v3 + 208))(v3);
    v11 = v10;
    if (v10)
    {
      CFRetain(v10);
      cf = v11;
      v12 = CFGetTypeID(v11);
      if (v12 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf = 0;
    }

    HALS_System::GetRawDeviceListUsingClockDevice(v9, v32, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v19 = *(v3 + 196);
    memset(__p, 0, sizeof(__p));
    if (v19)
    {
      (*(*v19 + 224))(v19, __p);
    }

    v28[0] = 0;
    v28[1] = 0;
    HALS_System::GetInstance(buf, 0, v28);
    HALS_IOContext_Manager::pause_contexts_for_device(*(*buf + 1744), v3);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v27[0] = 0;
    v27[1] = 0;
    HALS_System::GetInstance(buf, 0, v27);
    v21 = HALS_System::CopyClientByObjectID(*buf, v6);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    HALS_ObjectMap::RetainObject(v21, v20);
    HALS_ObjectMap::RetainObject(v21, v22);
    v36 = 0;
    operator new();
  }

  v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v14)
    {
      v16 = *(a1 + 60);
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2364;
      v38 = 1024;
      LODWORD(v39) = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange: Device %u is no longer valid, calling abort config change", buf, 0x18u);
    }

    if (*(a1 + 48) == 1)
    {
      v17 = *(v2 + 52);
      v18 = *(v2 + 53);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v17 + 96))(v17, *(a1 + 68), *(a1 + 32), *(a1 + 40));
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }
  }

  else if (v14)
  {
    v23 = *(a1 + 60);
    *buf = 136315650;
    *&buf[4] = "HALS_PlugInDevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2374;
    v38 = 1024;
    LODWORD(v39) = v23;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange: Failed to perform or abort config change request for device %u", buf, 0x18u);
  }

  HALS_ObjectMap::ReleaseObject(0, v15);
  HALS_ObjectMap::ReleaseObject(v2, v24);
  v25 = *MEMORY[0x1E69E9840];
}

void sub_1DE2C94D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a2)
  {
    _Block_object_dispose(&a19, 8);
    HALS_DeviceState::~HALS_DeviceState((v52 - 192));
    HALS_ObjectMap::ReleaseObject(v51, v54);
    HALS_ObjectMap::ReleaseObject(v51, v55);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE2C8FBCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE2C9730(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40)
{
  if (a2)
  {
    if (a27)
    {
      operator delete(a27);
    }

    if (a33)
    {
      operator delete(a33);
    }

    *(v40 - 192) = &a36;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v40 - 192);
    if (a39)
    {
      a40 = a39;
      operator delete(a39);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE2C9384);
  }

  JUMPOUT(0x1DE2C96B0);
}

void sub_1DE2C9788(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2C9790);
  }

  JUMPOUT(0x1DE2C96B0);
}

uint64_t std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ___ZN17HALS_PlugInDevice33_HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEj_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 40))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_PlugInDevice::UpdateStreams(HALS_PlugInDevice *this, BOOL *a2)
{
  *a2 = 0;
  v3 = *(this + 183);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 369);
  v8 = 0x6F75747073746D23;
  LODWORD(v9) = 0;
  v7 = (*(*v4 + 560))(v4, v6, 0, &v8, 0, 0) >> 2;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v10 = v7;
  operator new[]();
}

void sub_1DE2C9E6C(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2C9B18);
}

void sub_1DE2C9E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  MEMORY[0x1E12C1700](v46, v44);
  MEMORY[0x1E12C1700](v45, v44);
  _Unwind_Resume(a1);
}

void HALS_PlugInDevice::UpdateControls(HALS_PlugInDevice *this, BOOL *a2)
{
  *a2 = 0;
  v3 = *(this + 183);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 369);
  v8 = 0x676C6F626374726CLL;
  LODWORD(v9) = 0;
  v7 = (*(*v4 + 560))(v4, v6, 0, &v8, 0, 0) >> 2;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v10 = v7;
  operator new[]();
}

void sub_1DE2CA304(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CA0F4);
}

__n128 __Block_byref_object_copy__9(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN17HALS_PlugInDevice14UpdateControlsERb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v40 = *(*(a1 + 32) + 8);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v2 + 1544);
  v6 = *(v2 + 1552);
  if (v5 == v6)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v5;
      *(v9 + 13) = 0;
      if (*(v9 + 60) == 1)
      {
        v7 = v9;
      }

      else
      {
        v8 |= *(v9 + 20) == 1702259059;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  if (v1)
  {
    for (i = 0; i != v1; ++i)
    {
      v11 = *(v2 + 1544);
      v12 = *(v3 + 4 * i);
      v13 = *(v2 + 1552) - v11;
      if (v13)
      {
        v14 = v13 >> 3;
        while (*(*v11 + 92) != v12)
        {
          v11 += 8;
          if (!--v14)
          {
            goto LABEL_15;
          }
        }

        *(*v11 + 13) = 1;
      }

      else
      {
LABEL_15:
        if (v12)
        {
          v15 = *(v2 + 1464);
          v16 = *(v15 + 416);
          v17 = *(v15 + 424);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HALS_UCPlugInBase::Object_GetClass(v16, v12);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v18 = *(v2 + 1464);
          v19 = *(v18 + 416);
          v20 = *(v18 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HALS_UCPlugInBase::Object_GetBaseClass(v19, v12);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          operator new();
        }
      }
    }
  }

  if ((v8 & 1) == 0 && *(v2 + 1504) != *(v2 + 1496))
  {
    if ((*(v2 + 464) & 0x1FFFFFFFFLL) != 0x100000001 || !v7)
    {
      operator new();
    }

    *(v7 + 13) = 1;
  }

  v21 = (v2 + 1544);
  v22 = *(v2 + 1552);
  v23 = *(v2 + 1544);
  if (v22 == v23)
  {
    v26 = a1;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = a1;
    do
    {
      v27 = *&v23[8 * v24];
      if (*(v27 + 13))
      {
        ++v25;
      }

      else
      {
        *(v4 + 24) = 1;
        (*(*v27 + 8))(v27);
        HALS_ObjectMap::ObjectIsDead(v27, v28);
        v23 = *(v2 + 1544);
        v29 = &v23[8 * v24];
        v30 = *(v2 + 1552);
        v31 = v30 - (v29 + 8);
        if (v30 != v29 + 8)
        {
          memmove(v29, v29 + 8, v30 - (v29 + 8));
          v23 = *v21;
        }

        v22 = &v29[v31];
        *(v2 + 1552) = &v29[v31];
      }

      v24 = v25;
    }

    while (v25 < ((v22 - v23) >> 3));
  }

  v33 = *(v40 + 40);
  v32 = *(v40 + 48);
  if (v32 != v33)
  {
    do
    {
      v34 = *v33++;
      v41 = v34;
      *(v4 + 24) = 1;
      std::vector<HALS_Device *>::push_back[abi:ne200100](v2 + 1544, &v41);
    }

    while (v33 != v32);
    v23 = *(v2 + 1544);
    v22 = *(v2 + 1552);
  }

  if (v23 != v22)
  {
    v35 = v23;
    while (*(*v35 + 20) != 1702259059)
    {
      v35 += 8;
      if (v35 == v22)
      {
        goto LABEL_52;
      }
    }

    *(v2 + 464) = *(*v35 + 60);
    *(v2 + 468) = 1;
  }

LABEL_52:
  v36 = *(*(v26 + 48) + 8);
  if (v21 != (v36 + 40))
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v36 + 40), v23, v22, (v22 - v23) >> 3);
  }

  v37 = *(v36 + 40);
  v38 = *(v36 + 48);
  while (v37 != v38)
  {
    v39 = *v37++;
    HALS_ObjectMap::RetainObject(v39, v23);
  }
}

__n128 __Block_byref_object_copy__1020(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__1021(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN17HALS_PlugInDevice13UpdateStreamsEPb_block_invoke(uint64_t a1)
{
  v1 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 96);
  v5 = *(a1 + 100);
  v6 = *(a1 + 88);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v7 + 40);
  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 40);
  *(v7 + 48) = v9;
  v19 = v2;
  v10 = v2 + 1496;
  v11 = 1;
  while (1)
  {
    v12 = v11;
    v13 = *(v10 + 24 * v1);
    v14 = *(v10 + 24 * v1 + 8) - v13;
    if ((v14 & 0x7FFFFFFF8) != 0)
    {
      v15 = v14 >> 3;
      v16 = (v14 >> 3);
      do
      {
        if (!v15)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v17 = *v13++;
        *(v17 + 13) = 0;
        --v15;
        --v16;
      }

      while (v16);
    }

    v11 = 0;
    *(v8 + 40 + v1) = 0;
    v1 = 1;
    if ((v12 & 1) == 0)
    {
      v18 = *(v19 + 464) & 0x1FFFFFFFFLL;
      HALS_ReferenceStreamStateManager::ReferenceStreamIsEnabledForAnyClientOrContext(*(v19 + 448));
      operator new();
    }
  }
}

void HALS_PlugInDevice::_CopyStreamList(uint64_t a1, char *a2, void **a3)
{
  v4 = (a1 + 24 * a2 + 1496);
  if (v4 == a3)
  {
    v13 = a3[1];
  }

  else
  {
    v5 = *v4;
    v6 = *(a1 + 24 * a2 + 1504);
    v7 = v6 - *v4;
    v8 = a3[2];
    v9 = *a3;
    if (v8 - *a3 < v7)
    {
      v10 = v7 >> 3;
      if (v9)
      {
        a3[1] = v9;
        operator delete(v9);
        v8 = 0;
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      if (!(v10 >> 61))
      {
        v11 = v8 >> 2;
        if (v8 >> 2 <= v10)
        {
          v11 = v7 >> 3;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 61))
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
        }
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v14 = a3[1];
    v15 = v14 - v9;
    if (v14 - v9 >= v7)
    {
      if (v6 != v5)
      {
        memmove(v9, v5, v7);
      }

      v13 = &v9[v7];
    }

    else
    {
      if (v14 != v9)
      {
        memmove(*a3, v5, v14 - v9);
        v14 = a3[1];
      }

      a2 = &v5[v15];
      v16 = v6 - &v5[v15];
      if (v16)
      {
        memmove(v14, a2, v16);
      }

      v13 = &v14[v16];
    }

    a3[1] = v13;
  }

  for (i = *a3; i != v13; ++i)
  {
    v18 = *i;
    HALS_ObjectMap::RetainObject(v18, a2);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,false>(uint64_t result, const HALS_Stream **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  v123 = a2;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = StreamLessThan(*v8, *v9);
      if (result)
      {
        v77 = *v9;
        *v9 = *v8;
        goto LABEL_103;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v80 = v9 + 1;
      v82 = v9 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v9;
          do
          {
            v86 = *v84;
            v85 = v84[1];
            v84 = v80;
            result = StreamLessThan(v85, v86);
            if (result)
            {
              v87 = *v84;
              v88 = v83;
              while (1)
              {
                *(v9 + v88 + 8) = *(v9 + v88);
                if (!v88)
                {
                  break;
                }

                result = StreamLessThan(v87, *(v9 + v88 - 8));
                v88 -= 8;
                if ((result & 1) == 0)
                {
                  v89 = (v9 + v88 + 8);
                  goto LABEL_125;
                }
              }

              v89 = v9;
LABEL_125:
              *v89 = v87;
            }

            v80 = v84 + 1;
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v118 = *v7;
          v117 = v7[1];
          v7 = v80;
          result = StreamLessThan(v117, v118);
          if (result)
          {
            v119 = *v7;
            v120 = v7;
            do
            {
              v121 = v120;
              v122 = *--v120;
              *v121 = v122;
              result = StreamLessThan(v119, *(v121 - 2));
            }

            while ((result & 1) != 0);
            *v120 = v119;
          }

          v80 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v90 = v11 >> 1;
      v91 = v11 >> 1;
      do
      {
        v92 = v91;
        if (v90 >= v91)
        {
          v93 = (2 * v91) | 1;
          v94 = &v7[v93];
          if (2 * v91 + 2 < v10 && StreamLessThan(*v94, v94[1]))
          {
            ++v94;
            v93 = 2 * v92 + 2;
          }

          v95 = &v7[v92];
          result = StreamLessThan(*v94, *v95);
          if ((result & 1) == 0)
          {
            v96 = *v95;
            do
            {
              v97 = v95;
              v95 = v94;
              *v97 = *v94;
              if (v90 < v93)
              {
                break;
              }

              v98 = (2 * v93) | 1;
              v94 = &v7[v98];
              v99 = 2 * v93 + 2;
              if (v99 < v10)
              {
                v100 = StreamLessThan(*v94, v94[1]);
                if (v100)
                {
                  ++v94;
                }

                a2 = v123;
                if (v100)
                {
                  v98 = v99;
                }
              }

              result = StreamLessThan(*v94, v96);
              v93 = v98;
            }

            while (!result);
            *v95 = v96;
          }
        }

        v91 = v92 - 1;
      }

      while (v92);
      while (2)
      {
        v101 = 0;
        v102 = *v7;
        v103 = v7;
        do
        {
          v104 = &v103[v101];
          v105 = v104 + 1;
          v106 = (2 * v101) | 1;
          v107 = 2 * v101 + 2;
          if (v107 >= v10)
          {
            v101 = (2 * v101) | 1;
          }

          else
          {
            v109 = v104[2];
            v108 = v104 + 2;
            result = StreamLessThan(*(v108 - 1), v109);
            if (result)
            {
              v105 = v108;
              v101 = v107;
            }

            else
            {
              v101 = v106;
            }
          }

          *v103 = *v105;
          v103 = v105;
        }

        while (v101 <= ((v10 - 2) >> 1));
        if (v105 == --a2)
        {
LABEL_158:
          *v105 = v102;
        }

        else
        {
          *v105 = *a2;
          *a2 = v102;
          v110 = (v105 - v7 + 8) >> 3;
          v111 = v110 < 2;
          v112 = v110 - 2;
          if (!v111)
          {
            v113 = v112 >> 1;
            v114 = &v7[v112 >> 1];
            result = StreamLessThan(*v114, *v105);
            if (result)
            {
              v102 = *v105;
              do
              {
                v115 = v105;
                v105 = v114;
                *v115 = *v114;
                if (!v113)
                {
                  break;
                }

                v113 = (v113 - 1) >> 1;
                v114 = &v7[v113];
                result = StreamLessThan(*v114, v102);
              }

              while ((result & 1) != 0);
              goto LABEL_158;
            }
          }
        }

        v111 = v10-- <= 2;
        if (v111)
        {
          return result;
        }

        continue;
      }
    }

    v12 = v10 >> 1;
    if (v10 < 0x81)
    {
      v16 = StreamLessThan(*v7, v7[v12]);
      v17 = StreamLessThan(*v8, *v7);
      if (v16)
      {
        v18 = v7[v12];
        if (v17)
        {
          v7[v12] = *v8;
          *v8 = v18;
        }

        else
        {
          v7[v12] = *v7;
          *v7 = v18;
          if (StreamLessThan(*v8, v18))
          {
            v30 = *v7;
            *v7 = *v8;
            *v8 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v7;
        *v7 = *v8;
        *v8 = v21;
        if (StreamLessThan(*v7, v7[v12]))
        {
          v22 = v7[v12];
          v7[v12] = *v7;
          *v7 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = StreamLessThan(v7[v12], *v7);
    v14 = StreamLessThan(*v8, v7[v12]);
    if (v13)
    {
      v15 = *v7;
      if (v14)
      {
        *v7 = *v8;
        *v8 = v15;
      }

      else
      {
        *v7 = v7[v12];
        v7[v12] = v15;
        if (StreamLessThan(*v8, v15))
        {
          v23 = v7[v12];
          v7[v12] = *v8;
          *v8 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = v7[v12];
      v7[v12] = *v8;
      *v8 = v19;
      if (StreamLessThan(v7[v12], *v7))
      {
        v20 = *v7;
        *v7 = v7[v12];
        v7[v12] = v20;
      }
    }

    v24 = v12 - 1;
    v25 = StreamLessThan(v7[v12 - 1], v7[1]);
    v26 = StreamLessThan(*(a2 - 2), v7[v12 - 1]);
    if (v25)
    {
      v27 = v7[1];
      if (v26)
      {
        v7[1] = *(a2 - 2);
        *(a2 - 2) = v27;
      }

      else
      {
        v7[1] = v7[v24];
        v7[v24] = v27;
        if (StreamLessThan(*(a2 - 2), v27))
        {
          v31 = v7[v24];
          v7[v24] = *(a2 - 2);
          *(a2 - 2) = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = v7[v24];
      v7[v24] = *(a2 - 2);
      *(a2 - 2) = v28;
      if (StreamLessThan(v7[v24], v7[1]))
      {
        v29 = v7[1];
        v7[1] = v7[v24];
        v7[v24] = v29;
      }
    }

    v32 = v12 + 1;
    v33 = StreamLessThan(v7[v12 + 1], v7[2]);
    v34 = StreamLessThan(*(a2 - 3), v7[v12 + 1]);
    if (v33)
    {
      v35 = v7[2];
      if (v34)
      {
        v7[2] = *(a2 - 3);
        *(a2 - 3) = v35;
      }

      else
      {
        v7[2] = v7[v32];
        v7[v32] = v35;
        if (StreamLessThan(*(a2 - 3), v35))
        {
          v38 = v7[v32];
          v7[v32] = *(a2 - 3);
          *(a2 - 3) = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = v7[v32];
      v7[v32] = *(a2 - 3);
      *(a2 - 3) = v36;
      if (StreamLessThan(v7[v32], v7[2]))
      {
        v37 = v7[2];
        v7[2] = v7[v32];
        v7[v32] = v37;
      }
    }

    v39 = StreamLessThan(v7[v12], v7[v24]);
    v40 = StreamLessThan(v7[v32], v7[v12]);
    if (!v39)
    {
      v42 = v7[v12];
      if (!v40)
      {
        goto LABEL_54;
      }

      v43 = v7[v32];
      v7[v12] = v43;
      v7[v32] = v42;
      v44 = StreamLessThan(v43, v7[v24]);
      v42 = v7[v12];
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = v7[v24];
      v7[v24] = v42;
      v7[v12] = v45;
      goto LABEL_53;
    }

    v41 = v7[v24];
    if (v40)
    {
      v7[v24] = v7[v32];
      v7[v32] = v41;
      v42 = v7[v12];
    }

    else
    {
      v7[v24] = v7[v12];
      v7[v12] = v41;
      v46 = StreamLessThan(v7[v32], v41);
      v42 = v7[v12];
      if (v46)
      {
        v45 = v7[v32];
        v7[v12] = v45;
        v7[v32] = v42;
LABEL_53:
        v42 = v45;
      }
    }

LABEL_54:
    v47 = *v7;
    *v7 = v42;
    v7[v12] = v47;
LABEL_55:
    --a3;
    v48 = *v7;
    if ((a4 & 1) != 0 || (v49 = StreamLessThan(*(v7 - 1), *v7), v48 = *v7, v49))
    {
      v50 = v7;
      do
      {
        v51 = v50;
        v52 = v50[1];
        ++v50;
      }

      while (StreamLessThan(v52, v48));
      v53 = a2;
      if (v51 == v7)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = *--v53;
        }

        while (!StreamLessThan(v55, v48));
      }

      else
      {
        do
        {
          v54 = *--v53;
        }

        while (!StreamLessThan(v54, v48));
      }

      if (v50 < v53)
      {
        v56 = v50;
        v57 = v53;
        do
        {
          v58 = *v56;
          *v56 = *v57;
          *v57 = v58;
          do
          {
            v51 = v56;
            v59 = v56[1];
            ++v56;
          }

          while (StreamLessThan(v59, v48));
          do
          {
            v60 = *--v57;
          }

          while (!StreamLessThan(v60, v48));
        }

        while (v56 < v57);
      }

      if (v51 != v7)
      {
        *v7 = *v51;
      }

      *v51 = v48;
      a2 = v123;
      if (v50 < v53)
      {
        goto LABEL_76;
      }

      v61 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **>(v7, v51);
      v9 = v51 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **>(v51 + 1, v123);
      if (result)
      {
        a2 = v51;
        if (v61)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v61)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v9 = v51 + 1;
      }
    }

    else
    {
      result = StreamLessThan(*v7, *v8);
      if (result)
      {
        v9 = v7;
        do
        {
          v62 = v9[1];
          ++v9;
          result = StreamLessThan(v48, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = v7 + 1;
        do
        {
          v9 = v63;
          if (v63 >= a2)
          {
            break;
          }

          ++v63;
          result = StreamLessThan(v48, *v9);
        }

        while (!result);
      }

      v64 = a2;
      if (v9 < a2)
      {
        v64 = a2;
        do
        {
          v65 = *--v64;
          result = StreamLessThan(v48, v65);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v64)
      {
        v66 = *v9;
        *v9 = *v64;
        *v64 = v66;
        do
        {
          v67 = v9[1];
          ++v9;
        }

        while (!StreamLessThan(v48, v67));
        do
        {
          v68 = *--v64;
          result = StreamLessThan(v48, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v48;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(v9, v9 + 1, v9 + 2, v8);
    }

    if (v10 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(v9, v9 + 1, v9 + 2, v9 + 3);
      result = StreamLessThan(*v8, v9[3]);
      if (!result)
      {
        return result;
      }

      v70 = v9[3];
      v9[3] = *v8;
      *v8 = v70;
      result = StreamLessThan(v9[3], v9[2]);
      if (!result)
      {
        return result;
      }

      v72 = v9[2];
      v71 = v9[3];
      v73 = v9[1];
      v9[2] = v71;
      v9[3] = v72;
      result = StreamLessThan(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v9[1];
      v74 = v9[2];
      v76 = *v9;
      v9[1] = v74;
      v9[2] = v75;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v78 = StreamLessThan(v9[1], *v9);
  result = StreamLessThan(*v8, v9[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v116 = v9[1];
    v9[1] = *v8;
    *v8 = v116;
    v76 = *v9;
    v74 = v9[1];
LABEL_164:
    result = StreamLessThan(v74, v76);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v79 = *v9;
  if (result)
  {
    *v9 = *v8;
    *v8 = v79;
  }

  else
  {
    *v9 = v9[1];
    v9[1] = v79;
    result = StreamLessThan(*v8, v79);
    if (result)
    {
      v77 = v9[1];
      v9[1] = *v8;
LABEL_103:
      *v8 = v77;
    }
  }

  return result;
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(const HALS_Stream **a1, const HALS_Stream **a2, const HALS_Stream **a3, const HALS_Stream **a4)
{
  v8 = StreamLessThan(*a2, *a1);
  v9 = StreamLessThan(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (StreamLessThan(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (StreamLessThan(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = StreamLessThan(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = StreamLessThan(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = StreamLessThan(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **>(const HALS_Stream **a1, const HALS_Stream **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = StreamLessThan(a1[1], *a1);
        v14 = StreamLessThan(*(a2 - 1), a1[1]);
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v15;
          if (!StreamLessThan(*(a2 - 1), v15))
          {
            return 1;
          }

          v5 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        if (!StreamLessThan(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v6 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!StreamLessThan(a1[3], a1[2]))
        {
          return 1;
        }

        v8 = a1[2];
        v7 = a1[3];
        v9 = a1[1];
        a1[2] = v7;
        a1[3] = v8;
        if (!StreamLessThan(v7, v9))
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        break;
      default:
        goto LABEL_17;
    }

    if (StreamLessThan(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (StreamLessThan(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = StreamLessThan(a1[1], *a1);
  v17 = a1 + 2;
  v18 = StreamLessThan(a1[2], a1[1]);
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = a1[2];
      a1[2] = v19;
    }

    else
    {
      v24 = a1[2];
      *a1 = a1[1];
      a1[1] = v19;
      if (StreamLessThan(v24, v19))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = a1[1];
    v21 = a1[2];
    v23 = *a1;
    a1[1] = v21;
    a1[2] = v22;
    if (StreamLessThan(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if (StreamLessThan(*v25, *v17))
    {
      v28 = *v25;
      v29 = v26;
      while (1)
      {
        v30 = (a1 + v29);
        *(a1 + v29 + 24) = *(a1 + v29 + 16);
        if (v29 == -16)
        {
          break;
        }

        v29 -= 8;
        if (!StreamLessThan(v28, v30[1]))
        {
          v31 = (a1 + v29 + 24);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      *v31 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v17 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN17HALS_PlugInDevice33_HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::operator()(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1752122448 || *(a1 + 8) == 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

void std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::destroy_deallocate(HALS_ObjectMap **a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(a1[1], a2);

  operator delete(a1);
}

void std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::__clone(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5964910;
  *(a2 + 1) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__func(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F5964910;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__func(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F5964910;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);
  return a1;
}

void HALS_PlugInDevice::ConfigChange_HardwareReferenceStream(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN17HALS_PlugInDevice36ConfigChange_HardwareReferenceStreamEPK11HALS_Clientj_block_invoke;
  block[3] = &__block_descriptor_tmp_8_1026;
  v5 = v3;
  v6 = a3;
  block[4] = a1;
  block[5] = a2;
  AMCP::Utility::Dispatch_Queue::async(a1 + 1584, block);
}

void ___ZN17HALS_PlugInDevice36ConfigChange_HardwareReferenceStreamEPK11HALS_Clientj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 48));
  if (v4)
  {
    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 558;
      *&buf[18] = 2080;
      *&buf[20] = v2 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::ConfigChange_HardwareReferenceStream: %s  --->", buf, 0x1Cu);
    }

    memset(buf, 0, 32);
    memset(v46, 0, sizeof(v46));
    v6 = *(v2 + 16);
    strcpy(v47, "bgfcbolg");
    v47[9] = 0;
    *&v47[10] = 0;
    HALS_NotificationManager::PropertiesChanged_Sync(v6, 0, 1, v47, v5);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v7 = *(v2 + 1568);
    if (v7)
    {
      (*(*v7 + 224))(v7, &v43);
    }

    v42[0] = 0;
    v42[1] = 0;
    HALS_System::GetInstance(v47, 0, v42);
    HALS_IOContext_Manager::pause_contexts_for_device(*(*v47 + 1744), v2);
    if (*&v47[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
    }

    strcpy(v47, "ffidbolg");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v8);
    strcpy(v47, "egfcbolg");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v9);
    strcpy(v47, "#mtsbolg");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v10);
    strcpy(v47, "#mtstpni");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v11);
    strcpy(v47, "cntltpni");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v12);
    strcpy(v47, "tfastpni");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v13);
    memset(v47, 0, 24);
    HALS_Device::CopyStreamList(v2, 1, v47);
    v15 = *v47;
    v16 = *&v47[8];
    while (1)
    {
      if (v15 == v16)
      {
        v18 = 0;
        goto LABEL_16;
      }

      v17 = *v15;
      if ((*v15)[14] == 1)
      {
        break;
      }

      if (HALS_Stream::IsHardwareReferenceStream(v17))
      {
        v17 = *v15;
        break;
      }

      ++v15;
    }

    v18 = v17[4];
LABEL_16:
    v19 = HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(v47, v14);
    memset(v47, 0, 24);
    *&v47[24] = v18;
    __p = 0x676C6F627363686ELL;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v19, &__p, v20);
    __p = 0x676C6F6273666D74;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v47, &__p, v21);
    __p = 0x676C6F6273666D61;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v47, &__p, v22);
    __p = 0x676C6F6270667420;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v47, &__p, v23);
    __p = 0x676C6F6270667461;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v47, &__p, v24);
    std::vector<CAPropertyAddressList>::push_back[abi:ne200100](v46, v47);
    v25 = *(a1 + 52);
    __p = 0;
    v39 = 0;
    v40 = 0;
    v41 = v25;
    *&v37.mSelector = 0x676C6F626263766CLL;
    v37.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(&__p, &v37, v26);
    std::vector<CAPropertyAddressList>::push_back[abi:ne200100](v46, &__p);
    v27 = *(v2 + 1568);
    if (v27)
    {
      (*(*v27 + 960))(v27);
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (*v47)
    {
      operator delete(*v47);
    }

    v36[0] = 0;
    v36[1] = 0;
    HALS_System::GetInstance(v47, 0, v36);
    HALS_IOContext_Manager::rebuild_engine_for_device(*(*v47 + 1744), v2);
    if (*&v47[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 136315650;
      *&v47[4] = "HALS_PlugInDevice.cpp";
      *&v47[12] = 1024;
      *&v47[14] = 620;
      *&v47[18] = 2080;
      *&v47[20] = v2 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::ConfigChange_HardwareReferenceStream: %s  --- sending notifications", v47, 0x1Cu);
    }

    v28 = *(v2 + 1568);
    if (v28)
    {
      (*(*v28 + 248))(v28, buf);
    }

    kdebug_trace();
    v29 = *(a1 + 40);
    if (v29)
    {
      v30 = *(v29 + 16);
    }

    else
    {
      v30 = 0;
    }

    HALS_NotificationManager::GroupPropertiesChanged(1, *(v2 + 16), v30, buf, v46, &v43);
    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 136315650;
      *&v47[4] = "HALS_PlugInDevice.cpp";
      *&v47[12] = 1024;
      *&v47[14] = 636;
      *&v47[18] = 2080;
      *&v47[20] = v2 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::ConfigChange_HardwareReferenceStream: %s  --- restarting IO", v47, 0x1Cu);
    }

    v31 = *(v2 + 1568);
    if (v31)
    {
      (*(*v31 + 240))(v31);
      (*(**(v2 + 1568) + 232))(*(v2 + 1568), &v43);
    }

    v35[0] = 0;
    v35[1] = 0;
    HALS_System::GetInstance(v47, 0, v35);
    v32 = *(*v47 + 1744);
    os_unfair_lock_lock(v32 + 4);
    os_unfair_lock_unlock(v32 + 4);
    if (*&v47[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
    }

    v34[0] = 0;
    v34[1] = 0;
    HALS_System::GetInstance(v47, 0, v34);
    HALS_IOContext_Manager::resume_contexts_for_device(*(*v47 + 1744), v2);
    if (*&v47[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    *v47 = v46;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v47);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 653;
      *&buf[18] = 2080;
      *&buf[20] = v2 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::ConfigChange_HardwareReferenceStream: %s  <---", buf, 0x1Cu);
    }

    kdebug_trace();
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  v33 = *MEMORY[0x1E69E9840];
}

void sub_1DE2CC87C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser((v27 - 144), a2);
    v29 = __cxa_begin_catch(a1);
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v29);
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

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *(v27 - 144) = 136315394;
      *(v26 + 4) = "HALS_PlugInDevice.cpp";
      *(v27 - 132) = 1024;
      *(v26 + 14) = 615;
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception trying to notify about reference stream", (v27 - 144), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2CC510);
  }

  _Unwind_Resume(a1);
}

void sub_1DE2CC9EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x1DE2CCA08);
  }

  _Unwind_Resume(a1);
}

void sub_1DE2CCA58(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE2CCA60);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<CAPropertyAddressList>::push_back[abi:ne200100](void *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v25 = a1;
    if (v11)
    {
      std::allocator<CAPropertyAddressList>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (32 * v8);
    v22 = 0;
    v23 = v12;
    v24 = v12;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(v12, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
    v12[3] = a2[3];
    *&v24 = v24 + 32;
    v14 = *a1;
    v13 = a1[1];
    v26[0] = a1;
    v26[1] = &v28;
    v26[2] = &v29;
    v27 = 0;
    v15 = v23 + v14 - v13;
    v28 = v15;
    v29 = v15;
    if (v14 == v13)
    {
      v27 = 1;
    }

    else
    {
      v16 = (v23 + v14 - v13);
      v17 = v14;
      do
      {
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(v16, *v17, v17[1], 0xAAAAAAAAAAAAAAABLL * ((v17[1] - *v17) >> 2));
        v16[3] = v17[3];
        v17 += 4;
        v16 = v29 + 32;
        v29 += 32;
      }

      while (v17 != v13);
      v27 = 1;
      do
      {
        v18 = *v14;
        if (*v14)
        {
          v14[1] = v18;
          operator delete(v18);
        }

        v14 += 4;
      }

      while (v14 != v13);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CAPropertyAddressList>,CAPropertyAddressList*>>::~__exception_guard_exceptions[abi:ne200100](v26);
    v19 = *a1;
    *a1 = v15;
    v20 = a1[2];
    v21 = v24;
    *(a1 + 1) = v24;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v22 = v19;
    v23 = v19;
    result = std::__split_buffer<CAPropertyAddressList>::~__split_buffer(&v22);
    v7 = v21;
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
    v5[3] = a2[3];
    v7 = v5 + 4;
    a1[1] = v5 + 4;
  }

  a1[1] = v7;
  return result;
}

void sub_1DE2CCC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CAPropertyAddressList>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<CAPropertyAddressList>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioObjectPropertyAddress>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE2CCD58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<CAPropertyAddressList>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CAPropertyAddressList>,CAPropertyAddressList*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 32);
        v4 -= 32;
        v5 = v6;
        if (v6)
        {
          *(v2 - 24) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void HALS_PlugInDevice::PerformNonDriverConfigChange(HALS_PlugInDevice *this, BOOL a2, int a3)
{
  v3 = 0uLL;
  v4 = 0;
  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(this, &v3, a3);
}

void HALS_PlugInDevice::_SetDSPForClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x115CuLL;
  v4 = 0;
  if (a3)
  {
    LODWORD(a3) = *(a3 + 16);
  }

  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(a1, &v3, a3);
}

uint64_t HALS_PlugInDevice::InformOffloadsAvailableOnDevice(HALS_PlugInDevice *this, int a2, HALS_Client *a3, const DSP_Host_OffloadDictionary *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  v36[1] = 0;
  HALS_System::GetInstance(buf, 0, v36);
  v7 = *(*buf + 1800);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  v9 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  only_airpods_studio_voice_mic = AMCP::Feature_Flags::auacc_read_only_airpods_studio_voice_mic(v9);
  if (only_airpods_studio_voice_mic)
  {
    v11 = *(this + 183);
    if (v11)
    {
      v12 = *(v11 + 416);
      only_airpods_studio_voice_mic = *(v11 + 424);
      if (only_airpods_studio_voice_mic)
      {
        atomic_fetch_add_explicit(&only_airpods_studio_voice_mic->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](only_airpods_studio_voice_mic);
      }

      if (v12)
      {
        {
          if (a2)
          {
            v34 = 1768845428;
          }

          else
          {
            v34 = 1869968496;
          }

          HALS_PlugInDevice::InformOffloadsAvailableOnDevice(BOOL,HALS_Client *,DSP_Host_OffloadDictionary const&)::kAopaOffloadAvailable = 1685278561;
          *algn_1ECDAB164 = v34;
          dword_1ECDAB168 = 0;
        }

        v13 = *(this + 183);
        v14 = *(v13 + 416);
        v15 = *(v13 + 424);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a3)
        {
          v16 = *(a3 + 60);
        }

        else
        {
          v16 = 0;
        }

        v25 = (*(*v14 + 544))(v14, *(this + 369), v16, &HALS_PlugInDevice::InformOffloadsAvailableOnDevice(BOOL,HALS_Client *,DSP_Host_OffloadDictionary const&)::kAopaOffloadAvailable);
        v26 = v25;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (v26)
        {
          DSP_Host_OffloadDictionary::deep_copy(&v35);
        }

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

        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v33 = *(this + 4);
          *buf = 136315650;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2253;
          v38 = 1024;
          v39 = v33;
          _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp][offloads] Device ignores available DSP offloads property (Device ID: %d)", buf, 0x18u);
        }

        goto LABEL_45;
      }
    }

    if (v8 == 1)
    {
      v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v21 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(only_airpods_studio_voice_mic);
      }

      v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *v23;
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      else
      {
        v20 = *v23;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2240;
        v24 = "%32s:%-5d [hal_dsp][offloads] The owning plugin or UC plugin is null, nothing to set available offloads on.";
        goto LABEL_41;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(only_airpods_studio_voice_mic);
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

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2231;
      v24 = "%32s:%-5d [hal_dsp][offloads] Inform available offloads not called, feature flag is not set.";
LABEL_41:
      _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_DEFAULT, v24, buf, 0x12u);
    }
  }

LABEL_45:
  v31 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE2CD784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

const void *std::stringbuf::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t HALS_PlugInDevice::GetDefaultChannelLayoutPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, AudioChannelLayout *a4, _DWORD *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, unsigned int a12)
{
  *a6 = 0;
  a6[2] = a12;
  if (a12)
  {
    v14 = a6 + 4;
    v15 = a12;
    do
    {
      *(v14 - 1) = -1;
      *v14 = 0;
      v14[1] = 0;
      v14 = (v14 + 20);
      --v15;
    }

    while (v15);
  }

  *a5 = a10;
  v16 = *(a3 + 4);
  v22[0] = 1936879204;
  v22[1] = v16;
  v22[2] = 1735159650;
  v17 = *(a1 + 1464);
  v18 = *(v17 + 416);
  v19 = *(v17 + 424);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a9)
  {
    v20 = *(a9 + 240);
  }

  else
  {
    v20 = 0;
  }

  (*(*v18 + 568))(v18, *(a1 + 1476), v20, v22, 0, 0);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return HALS_Device::ThrowIfInvalidACL(a6, a4, a12);
}

void sub_1DE2CDA48(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CDA20);
}

void HALS_PlugInDevice::_ClientDescriptionChanged(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1464);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 1476);
  if (a2)
  {
    v8 = *(a2 + 240);
  }

  else
  {
    v8 = 0;
  }

  v25 = 0x676C6F6263646573;
  v26 = 0;
  v9 = (*(*v5 + 544))(v5, v7, v8, &v25);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9)
  {
    v10 = (*(*a1 + 736))(a1);
    if (*(a1 + 552) == v10)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v25 = Mutable;
      LOWORD(v26) = 257;
      CACFDictionary::AddUInt32(&v25, @"kind", 0);
      v24 = Mutable;
      v17 = *(a1 + 1464);
      v18 = *(v17 + 416);
      v19 = *(v17 + 424);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a1 + 1476);
      if (a2)
      {
        v21 = *(a2 + 240);
      }

      else
      {
        v21 = 0;
      }

      v22 = 0x676C6F6263646573;
      v23 = 0;
      (*(*v18 + 576))(v18, v20, v21, &v22, 0, 0, 8, &v24);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      CACFDictionary::~CACFDictionary(&v25);
    }

    else
    {
      v22 = *(v10 + 8);
      v11 = *(a1 + 1464);
      v12 = *(v11 + 416);
      v13 = *(v11 + 424);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(a1 + 1476);
      if (a2)
      {
        v15 = *(a2 + 240);
      }

      else
      {
        v15 = 0;
      }

      v25 = 0x676C6F6263646573;
      v26 = 0;
      (*(*v12 + 576))(v12, v14, v15, &v25, 0, 0, 8, &v22);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }
}

void sub_1DE2CDCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_PlugInDevice::_CopyControlByDescription(HALS_PlugInDevice *this, HALS_Object *a2, int a3, int a4)
{
  for (i = *(this + 193); i != *(this + 194); ++i)
  {
    v5 = *i;
    if (*(*i + 5) == a2 && *(v5 + 12) == a3 && *(v5 + 13) == a4)
    {
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v5, a2);
  return v5;
}

HALS_ObjectMap *HALS_PlugInDevice::_CopyControlByIndex(HALS_PlugInDevice *this, HALS_Object *a2)
{
  v2 = *(this + 193);
  if (a2 >= ((*(this + 194) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_PlugInDevice::_CopyControls(HALS_PlugInDevice *this, HALS_Device::BasicControlList *a2)
{
  v2 = *(this + 193);
  for (i = *(this + 194); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_PlugInDevice::_CopyStreamList(uint64_t a1, unsigned int a2, void *a3)
{
  a3[1] = *a3;
  v4 = a1 + 24 * a2;
  std::vector<HALS_Stream *>::reserve(a3, (*(v4 + 1504) - *(v4 + 1496)) >> 3);
  v6 = *(v4 + 1496);
  for (i = *(v4 + 1504); v6 != i; ++v6)
  {
    HALS_ObjectMap::RetainObject(*v6, v5);
    v8 = *v6;
    v10 = a3[1];
    v9 = a3[2];
    if (v10 >= v9)
    {
      v12 = (v10 - *a3) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a3;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v11 = 8 * v12 + 8;
      v17 = a3[1] - *a3;
      v18 = v16 - v17;
      memcpy(v16 - v17, *a3, v17);
      v19 = *a3;
      *a3 = v18;
      a3[1] = v11;
      a3[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    a3[1] = v11;
  }
}

void *std::vector<HALS_Stream *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t HALS_PlugInDevice::_GetTotalNumberChannels(HALS_PlugInDevice *this, unsigned int a2)
{
  v2 = this + 24 * a2;
  v3 = *(v2 + 187);
  if (v3 == *(v2 + 188))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + 1496;
  do
  {
    v6 = *v3++;
    v7 = v6[4];
    v11 = 0x676C6F6270667420;
    v12 = 0;
    v13 = 0;
    (*(*v6 + 120))(v6, v7, &v11, 40, &v13, v9, 0, 0, 0);
    v4 = (v10 + v4);
  }

  while (v3 != *(v5 + 1));
  return v4;
}

uint64_t HALS_PlugInDevice::_CopyDefaultElementName(HALS_PlugInDevice *this, int a2, int a3)
{
  v14[0] = 1818454126;
  v14[1] = a2;
  v14[2] = a3;
  v4 = *(this + 183);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 544))(v5, *(this + 369), 0, v14);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(this + 183);
  v9 = *(v8 + 416);
  v10 = *(v8 + 424);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 369);
  v16 = 0;
  v15 = 0;
  (*(*v9 + 568))(v9, v11, 0, v14, 0, 0, 8, &v15, &v16);
  v12 = v16;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v12;
}

void sub_1DE2CE288(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_Device::MaximumPastData(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F62646D7064;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

uint64_t HALS_Device::AvailablePastData(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6264617064;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

BOOL HALS_Device::SupportsPastData(HALS_Device *this)
{
  v2 = *(this + 4);
  v8 = 0x676C6F6264737064;
  v9 = 0;
  v3 = (*(*this + 96))(this, v2, &v8, 0);
  result = 0;
  if (v3)
  {
    v5 = *(this + 4);
    v6 = 0x676C6F6264737064;
    v7 = 0;
    v11 = 0;
    v10 = 0;
    (*(*this + 120))(this, v5, &v6, 4, &v10, &v11, 0, 0, 0);
    return v11 != 0;
  }

  return result;
}

uint64_t HALS_PlugInDevice::_CopyIOEngine(HALS_PlugInDevice *this, HALS_Object *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v4 == v3 || v4 == 1701733488)
  {
    if (v4 == 1701733488 || v4 != v3)
    {
LABEL_13:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "HALS_PlugInDevice.cpp";
        v12 = 1024;
        v13 = 909;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::_GetIOEngine: EndPoints shouldn't need engines", &v10, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }
  }

  else if (v3 == 1701733488)
  {
    goto LABEL_13;
  }

  HALS_ObjectMap::RetainObject(*(this + 196), a2);
  result = *(this + 196);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

HALS_ObjectMap *HALS_PlugInDevice::_CopyStreamByIndex(HALS_PlugInDevice *this, HALS_Object *a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 188);
  v5 = *(v3 + 187);
  if (a3 >= ((v4 - v5) >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 8 * a3);
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  return v6;
}

BOOL HALS_PlugInDevice::IsClockStable(HALS_PlugInDevice *this)
{
  v5 = 0x676C6F6263737462;
  v6 = 0;
  if (!(*(*this + 96))(this, *(this + 4), &v5, 0))
  {
    return 1;
  }

  v3 = 4;
  v4 = 0;
  (*(*this + 120))(this, *(this + 4), &v5, 4, &v3, &v4, 0, 0, 0);
  return v4 != 0;
}

void sub_1DE2CE710(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CE6ECLL);
}

uint64_t HALS_PlugInDevice::GetClockAlgorithm(HALS_PlugInDevice *this)
{
  v2 = 1768518246;
  v7 = 1768518246;
  v5 = 0x676C6F62636C6F6BLL;
  v6 = 0;
  if ((*(*this + 96))(this, *(this + 4), &v5, 0))
  {
    v4 = 4;
    (*(*this + 120))(this, *(this + 4), &v5, 4, &v4, &v7, 0, 0, 0);
    return v7;
  }

  return v2;
}

void sub_1DE2CE7EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CE7D4);
}

uint64_t HALS_Device::GetClockDomain(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F62636C6B64;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

uint64_t HALS_PlugInDevice::create_mcp_engine(HALS_PlugInDevice *this)
{
  v1 = *(this + 183);
  v3 = *(this + 369);
  return (*(**(v1 + 416) + 144))(*(v1 + 416), v1, this, &v3);
}

uint64_t HALS_PlugInDevice::DoAnyQueuesHaveWorkAfterFlush(HALS_PlugInDevice *this)
{
  v1 = atomic_load(this + 817);
  if (v1 & 1) != 0 || (v2 = atomic_load(this + 1153), (v2))
  {
    v3 = atomic_load(this + 1617);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void HALS_PlugInDevice::FlushAllQueues(HALS_PlugInDevice *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 784));
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1120));

  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1584));
}

BOOL HALS_PlugInDevice::CanBeAggregated(HALS_PlugInDevice *this)
{
  if (g_static_start_options != 1)
  {
    return 1;
  }

  v7 = v1;
  v8 = v2;
  v5 = 0x676C6F6264767362;
  v6 = 0;
  v4 = 0;
  (*(*this + 120))(this, *(this + 4), &v5, 4, &v4 + 4, &v4, 0, 0, 0);
  return (v4 & 0x100) == 0;
}

void sub_1DE2CE9E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CE9BCLL);
}

const void *HALS_Device::CopyDeviceUID(HALS_Device *this)
{
  result = *(this + 13);
  if (result)
  {
    CFRetain(result);
    return *(this + 13);
  }

  return result;
}

void HALS_PlugInDevice::SetPropertyData(HALS_PlugInDevice *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, uint64_t a4, float *a5, uint64_t a6, _DWORD *a7, AudioObjectPropertyAddress *a8)
{
  v66 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, a2))
  {
    v18 = atomic_load(this + 40);
    if (a8)
    {
      v19 = a8[20].mSelector;
    }

    else
    {
      v19 = getpid();
    }

    if (v18 != -1 && v18 != v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = 136315394;
        v63 = "HALS_PlugInDevice.cpp";
        v64 = 1024;
        v65 = 2131;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: the given process does not own hog mode", &v62, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560492391;
    }

    mSelector = a3->mSelector;
  }

  if (mSelector > 1702392684)
  {
    if (mSelector <= 1818850161)
    {
      if (mSelector == 1702392685)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v62 = 136315394;
            v63 = "HALS_PlugInDevice.cpp";
            v64 = 1024;
            v65 = 2198;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioDevicePropertyExternalSecureMute", &v62, 0x12u);
          }

          v56 = __cxa_allocate_exception(0x10uLL);
          *v56 = off_1F5991DD8;
          v56[2] = 561211770;
        }

        v30 = *(this + 183);
        v22 = *(v30 + 416);
        v23 = *(v30 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a8)
        {
          v25 = a8[20].mSelector;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_90;
      }

      if (mSelector != 1818850145)
      {
        goto LABEL_68;
      }
    }

    else if (mSelector != 1818850162)
    {
      if (mSelector == 1886546294)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v62 = 136315394;
            v63 = "HALS_PlugInDevice.cpp";
            v64 = 1024;
            v65 = 2157;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioEndPointDevicePropertyIsPrivate", &v62, 0x12u);
          }

          v61 = __cxa_allocate_exception(0x10uLL);
          *v61 = off_1F5991DD8;
          v61[2] = 561211770;
        }

        v36 = *(this + 183);
        v22 = *(v36 + 416);
        v23 = *(v36 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a8)
        {
          v25 = a8[20].mSelector;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_90;
      }

      if (mSelector == 1853059700)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v62 = 136315394;
            v63 = "HALS_PlugInDevice.cpp";
            v64 = 1024;
            v65 = 2137;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", &v62, 0x12u);
          }

          v58 = __cxa_allocate_exception(0x10uLL);
          *v58 = off_1F5991DD8;
          v58[2] = 561211770;
        }

        v26 = *(this + 183);
        v22 = *(v26 + 416);
        v23 = *(v26 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a8)
        {
          v25 = a8[20].mSelector;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

    if (a4 <= 0xB)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = 136315394;
        v63 = "HALS_PlugInDevice.cpp";
        v64 = 1024;
        v65 = 2165;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioObjectPropertyListenerAdded or kAudioObjectPropertyListenerRemoved", &v62, 0x12u);
      }

      v54 = __cxa_allocate_exception(0x10uLL);
      *v54 = off_1F5991DD8;
      v54[2] = 561211770;
    }

    v28 = *(this + 183);
    v22 = *(v28 + 416);
    v23 = *(v28 + 424);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(this + 369);
    if (a8)
    {
      v25 = a8[20].mSelector;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_90;
  }

  if (mSelector <= 1685087595)
  {
    if (mSelector == 1633906541)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v62 = 136315394;
          v63 = "HALS_PlugInDevice.cpp";
          v64 = 1024;
          v65 = 2144;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioEndPointDevicePropertyComposition", &v62, 0x12u);
        }

        v55 = __cxa_allocate_exception(0x10uLL);
        *v55 = off_1F5991DD8;
        v55[2] = 561211770;
      }

      v29 = *(this + 183);
      v22 = *(v29 + 416);
      v23 = *(v29 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(this + 369);
      if (a8)
      {
        v25 = a8[20].mSelector;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_90;
    }

    if (mSelector == 1634169456)
    {
      v27 = *(this + 183);
      v22 = *(v27 + 416);
      v23 = *(v27 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(this + 369);
      if (a8)
      {
        v25 = a8[20].mSelector;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_90;
    }

    goto LABEL_68;
  }

  if (mSelector == 1685087596)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = 136315394;
        v63 = "HALS_PlugInDevice.cpp";
        v64 = 1024;
        v65 = 2172;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioDevicePropertyEnableListening", &v62, 0x12u);
      }

      v59 = __cxa_allocate_exception(0x10uLL);
      *v59 = off_1F5991DD8;
      v59[2] = 561211770;
    }

    v31 = *(this + 183);
    v22 = *(v31 + 416);
    v23 = *(v31 + 424);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(this + 369);
    if (a8)
    {
      v25 = a8[20].mSelector;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_90;
  }

  if (mSelector != 1685414763)
  {
    if (mSelector == 1702248804)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v62 = 136315394;
          v63 = "HALS_PlugInDevice.cpp";
          v64 = 1024;
          v65 = 2205;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioDevicePropertyExternalVoiceActivityDetectionEnable", &v62, 0x12u);
        }

        v57 = __cxa_allocate_exception(0x10uLL);
        *v57 = off_1F5991DD8;
        v57[2] = 561211770;
      }

      v21 = *(this + 183);
      v22 = *(v21 + 416);
      v23 = *(v21 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(this + 369);
      if (a8)
      {
        v25 = a8[20].mSelector;
      }

      else
      {
        v25 = 0;
      }

LABEL_90:
      (*(*v22 + 576))(v22, v24, v25, a3, 0, 0, a4, a5);
      goto LABEL_106;
    }

LABEL_68:
    if (!HALS_Device::HasProperty(this, v17, a3, a8))
    {
      if (!(*(*(this + 182) + 24))(this + 1456, a3->mSelector))
      {
        goto LABEL_110;
      }

      v37 = *(this + 183);
      v38 = *(v37 + 416);
      v23 = *(v37 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a8)
      {
        v39 = a8[20].mSelector;
      }

      else
      {
        v39 = 0;
      }

      (*(*v38 + 576))(v38, *(this + 369), v39, a3, a6, a7, a4, a5);
LABEL_106:
      if (v23)
      {
        v50 = *MEMORY[0x1E69E9840];

        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        return;
      }

LABEL_110:
      v51 = *MEMORY[0x1E69E9840];
      return;
    }

    goto LABEL_99;
  }

  if (a4 <= 0xF)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v62 = 136315394;
      v63 = "HALS_PlugInDevice.cpp";
      v64 = 1024;
      v65 = 2180;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessDuck", &v62, 0x12u);
    }

    v60 = __cxa_allocate_exception(0x10uLL);
    *v60 = off_1F5991DD8;
    v60[2] = 561211770;
  }

  v32 = *(this + 183);
  v33 = *(v32 + 416);
  v34 = *(v32 + 424);
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a8)
  {
    v35 = a8[20].mSelector;
  }

  else
  {
    v35 = 0;
  }

  v40 = (*(*v33 + 544))(v33, *(this + 369), v35, a3);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v40)
  {
    v41 = *(this + 183);
    v42 = *(v41 + 416);
    v43 = *(v41 + 424);
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a8)
    {
      v44 = a8[20].mSelector;
    }

    else
    {
      v44 = 0;
    }

    v45 = (*(*v42 + 552))(v42, *(this + 369), v44, a3);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v45)
    {
      v46 = *(this + 183);
      v47 = *(v46 + 416);
      v23 = *(v46 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a8)
      {
        v48 = a8[20].mSelector;
      }

      else
      {
        v48 = 0;
      }

      (*(*v47 + 576))(v47, *(this + 369), v48, a3, 0, 0, 16, a5);
      goto LABEL_106;
    }
  }

LABEL_99:
  v49 = *MEMORY[0x1E69E9840];

  HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1DE2CF890(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInDevice::GetPropertyData(HALS_PlugInDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, AudioChannelLayout *a4, unsigned int *a5, unsigned int *a6, uint64_t a7, int *a8, HALS_Client *a9)
{
  v312 = *MEMORY[0x1E69E9840];
  v307[0] = 0;
  v16 = (*(*this + 704))(this, a9);
  v18 = a3;
  mSelector = a3->mSelector;
  mScope = a3->mScope;
  if (a3->mSelector > 1751737453)
  {
    v27 = v17;
    v28 = *&v16;
    if (mSelector <= 1851878763)
    {
      if (mSelector <= 1818850161)
      {
        if (mSelector <= 1818452845)
        {
          switch(mSelector)
          {
            case 1751737454:
LABEL_172:
              if (a4 <= 3)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v310 = 1024;
                  v311 = 1853;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyIsHidden", buf, 0x12u);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                *exception = off_1F5991DD8;
                exception[2] = 561211770;
              }

              *buf = *&a3->mSelector;
              *&buf[8] = a3->mElement;
              *buf = 1751737454;
              if (!(*(*this + 96))(this, a2, buf, a9))
              {
                goto LABEL_455;
              }

              v94 = *(this + 183);
              v95 = *(v94 + 416);
              v96 = *(v94 + 424);
              if (v96)
              {
                atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v97 = *(this + 369);
              v98 = a9 ? *(a9 + 60) : 0;
              LODWORD(__p) = 0;
              v308[0] = 0;
              (*(*v95 + 568))(v95, v97, v98, buf, 0, 0, 4, v308, &__p);
              *a6 = __p;
              if (!v96)
              {
                goto LABEL_455;
              }

              goto LABEL_528;
            case 1768124270:
              if (a4 <= 7)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v310 = 1024;
                  v311 = 1878;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyIcon", buf, 0x12u);
                }

                v277 = __cxa_allocate_exception(0x10uLL);
                *v277 = off_1F5991DD8;
                v277[2] = 561211770;
              }

              v113 = *(this + 183);
              v48 = *(v113 + 416);
              v49 = *(v113 + 424);
              v51 = a6;
              if (v49)
              {
                atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v50 = *(this + 369);
              if (a9)
              {
                v52 = *(a9 + 60);
              }

              else
              {
                v52 = 0;
              }

              break;
            case 1768777573:
              if (a4 <= 7)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v310 = 1024;
                  v311 = 1886;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyRawImageData", buf, 0x12u);
                }

                v262 = __cxa_allocate_exception(0x10uLL);
                *v262 = off_1F5991DD8;
                v262[2] = 561211770;
              }

              v47 = *(this + 183);
              v48 = *(v47 + 416);
              v49 = *(v47 + 424);
              if (v49)
              {
                atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v50 = *(this + 369);
              v51 = a6;
              if (a9)
              {
                v52 = *(a9 + 60);
              }

              else
              {
                v52 = 0;
              }

              break;
            default:
              goto LABEL_325;
          }

          goto LABEL_421;
        }

        if (mSelector == 1818452846)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v310 = 1024;
              v311 = 1501;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyElementCategoryName", buf, 0x12u);
            }

            v288 = __cxa_allocate_exception(0x10uLL);
            *v288 = off_1F5991DD8;
            v288[2] = 561211770;
          }

          v145 = *(this + 183);
          v48 = *(v145 + 416);
          v49 = *(v145 + 424);
          v51 = a6;
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v50 = *(this + 369);
          if (a9)
          {
            v52 = *(a9 + 60);
          }

          else
          {
            v52 = 0;
          }

          goto LABEL_421;
        }

        if (mSelector == 1818455662)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v310 = 1024;
              v311 = 1509;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyElementNumberName", buf, 0x12u);
            }

            v278 = __cxa_allocate_exception(0x10uLL);
            *v278 = off_1F5991DD8;
            v278[2] = 561211770;
          }

          v118 = *(this + 183);
          v48 = *(v118 + 416);
          v49 = *(v118 + 424);
          v51 = a6;
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v50 = *(this + 369);
          if (a9)
          {
            v52 = *(a9 + 60);
          }

          else
          {
            v52 = 0;
          }

          goto LABEL_421;
        }

        if (mSelector != 1818850145)
        {
          goto LABEL_325;
        }
      }

      else
      {
        if (mSelector > 1819173228)
        {
          if (mSelector > 1819634019)
          {
            if (mSelector == 1819634020)
            {
              if (a4 <= 7)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v310 = 1024;
                  v311 = 2000;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyLegacyUIDList", buf, 0x12u);
                }

                v285 = __cxa_allocate_exception(0x10uLL);
                *v285 = off_1F5991DD8;
                v285[2] = 561211770;
              }

              v133 = *(this + 183);
              v134 = *(v133 + 416);
              v96 = *(v133 + 424);
              if (v96)
              {
                atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v135 = *(this + 369);
              if (a9)
              {
                v136 = *(a9 + 60);
              }

              strcpy(buf, "diulbolg");
              buf[9] = 0;
              *&buf[10] = 0;
              __p = 0;
              v308[0] = 0;
              (*(*v134 + 568))(v134);
              *a6 = 0;
              if (!v96)
              {
                goto LABEL_455;
              }

LABEL_528:
              v218 = v96;
              goto LABEL_454;
            }

            if (mSelector != 1836411236)
            {
              goto LABEL_325;
            }

            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v310 = 1024;
                v311 = 1545;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyModelUID", buf, 0x12u);
              }

              v270 = __cxa_allocate_exception(0x10uLL);
              *v270 = off_1F5991DD8;
              v270[2] = 561211770;
            }

            v83 = *(this + 183);
            v48 = *(v83 + 416);
            v49 = *(v83 + 424);
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = *(this + 369);
            v51 = a6;
            if (a9)
            {
              v52 = *(a9 + 60);
            }

            else
            {
              v52 = 0;
            }

            goto LABEL_421;
          }

          if (mSelector != 1819173229)
          {
            if (mSelector == 1819569763)
            {
              if (a4 <= 3)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v310 = 1024;
                  v311 = 1633;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyLatency", buf, 0x12u);
                }

                v259 = __cxa_allocate_exception(0x10uLL);
                *v259 = off_1F5991DD8;
                v259[2] = 561211770;
              }

              v35 = *(this + 183);
              v36 = *(v35 + 416);
              v37 = *(v35 + 424);
              if (v37)
              {
                atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v38 = *(this + 369);
              if (a9)
              {
                v39 = *(a9 + 60);
              }

              else
              {
                v39 = 0;
              }

              *buf = 0;
              LODWORD(__p) = 0;
              (*(*v36 + 568))(v36, v38, v39, a3, 0, 0, 4, &__p, buf);
              v200 = *buf;
              if (v37)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v37);
              }

              if ((*(*this + 448))(this))
              {
                v200 += HALS_Device::GetStreamDSPLatency(this, (mScope == 1768845428));
              }

              if (v27)
              {
                v200 = (v28 / (*(*this + 272))(this) * v200);
              }

              if (a9)
              {
                DSPLatencyForClient = HALS_Device::GetDSPLatencyForClient(this, mScope == 1768845428, a9);
                if ((DSPLatencyForClient & 0x100000000) != 0)
                {
                  v200 += DSPLatencyForClient;
                }
              }

              *a6 = v200;
              goto LABEL_455;
            }

            goto LABEL_325;
          }

          goto LABEL_185;
        }

        if (mSelector != 1818850162)
        {
          if (mSelector == 1819107691)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v310 = 1024;
                v311 = 1493;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
              }

              v275 = __cxa_allocate_exception(0x10uLL);
              *v275 = off_1F5991DD8;
              v275[2] = 561211770;
            }

            v111 = *(this + 183);
            v48 = *(v111 + 416);
            v49 = *(v111 + 424);
            v51 = a6;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = *(this + 369);
            if (a9)
            {
              v52 = *(a9 + 60);
            }

            else
            {
              v52 = 0;
            }
          }

          else
          {
            if (mSelector != 1819111268)
            {
              goto LABEL_325;
            }

            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v310 = 1024;
                v311 = 1485;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyModelName", buf, 0x12u);
              }

              v264 = __cxa_allocate_exception(0x10uLL);
              *v264 = off_1F5991DD8;
              v264[2] = 561211770;
            }

            v57 = *(this + 183);
            v48 = *(v57 + 416);
            v49 = *(v57 + 424);
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = *(this + 369);
            v51 = a6;
            if (a9)
            {
              v52 = *(a9 + 60);
            }

            else
            {
              v52 = 0;
            }
          }

          goto LABEL_421;
        }
      }

      if (a4 <= 0xB)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 1917;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyListenerAdded or kAudioObjectPropertyListenerRemoved", buf, 0x12u);
        }

        v252 = __cxa_allocate_exception(0x10uLL);
        *v252 = off_1F5991DD8;
        v252[2] = 561211770;
      }

      a6[2] = 0;
      *a6 = 0;
      v62 = 12;
      goto LABEL_456;
    }

    if (mSelector <= 1920168546)
    {
      if (mSelector > 1886546293)
      {
        if (mSelector > 1919251301)
        {
          if (mSelector != 1919251302)
          {
            if (mSelector != 1919512167)
            {
              goto LABEL_325;
            }

            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v310 = 1024;
                v311 = 1667;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyZeroTimeStampPeriod", buf, 0x12u);
              }

              v272 = __cxa_allocate_exception(0x10uLL);
              *v272 = off_1F5991DD8;
              v272[2] = 561211770;
            }

            v85 = a3;
            v86 = *(this + 183);
            v87 = *(v86 + 416);
            v88 = *(v86 + 424);
            if (v88)
            {
              atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v89 = (*(*v87 + 24))(v87);
            v65 = a6;
            if (v88)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v88);
            }

            v90 = *(this + 183);
            v91 = *(v90 + 416);
            v23 = *(v90 + 424);
            if (v89)
            {
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v92 = *(this + 369);
              if (a9)
              {
                v93 = *(a9 + 60);
              }

              strcpy(buf, "zisfbolg");
              buf[9] = 0;
              *&buf[10] = 0;
              LODWORD(__p) = 0;
              v308[0] = 0;
              (*(*v91 + 568))(v91);
              v239 = 0;
LABEL_534:
              *v65 = v239;
              if (!v23)
              {
                goto LABEL_455;
              }

LABEL_453:
              v218 = v23;
LABEL_454:
              std::__shared_weak_count::__release_shared[abi:ne200100](v218);
              goto LABEL_455;
            }

            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v179 = *(this + 369);
            v180 = v85;
            if (a9)
            {
              v181 = *(a9 + 60);
            }

            else
            {
              v181 = 0;
            }

            goto LABEL_533;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v310 = 1024;
              v311 = 2031;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyWantsStreamFormatsRestored", buf, 0x12u);
            }

            v297 = __cxa_allocate_exception(0x10uLL);
            *v297 = off_1F5991DD8;
            v297[2] = 561211770;
          }

          v157 = *(this + 183);
          v158 = *(v157 + 416);
          v159 = *(v157 + 424);
          v160 = a6;
          if (v159)
          {
            atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v161 = *(this + 369);
          if (a9)
          {
            v162 = *(a9 + 60);
          }

          else
          {
            v162 = 0;
          }

          strcpy(buf, "fserbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          v220 = (*(*v158 + 544))(v158, v161, v162, buf);
          if (v159)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v159);
          }

          if (v220)
          {
            v221 = *(this + 183);
            v222 = *(v221 + 416);
            v96 = *(v221 + 424);
            if (v96)
            {
              atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v223 = *(this + 369);
            if (a9)
            {
              v224 = *(a9 + 60);
            }

            strcpy(buf, "fserbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            LODWORD(__p) = 0;
            v308[0] = 0;
            (*(*v222 + 568))(v222);
LABEL_527:
            *v160 = __p;
            if (!v96)
            {
              goto LABEL_455;
            }

            goto LABEL_528;
          }
        }

        else
        {
          if (mSelector == 1886546294)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v310 = 1024;
                v311 = 1908;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioEndPointDevicePropertyIsPrivate", buf, 0x12u);
              }

              v293 = __cxa_allocate_exception(0x10uLL);
              *v293 = off_1F5991DD8;
              v293[2] = 561211770;
            }

            v153 = *(this + 183);
            v22 = *(v153 + 416);
            v23 = *(v153 + 424);
            v25 = a6;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = *(this + 369);
            if (a9)
            {
              v26 = *(a9 + 60);
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_451;
          }

          if (mSelector != 1919251299)
          {
            goto LABEL_325;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v310 = 1024;
              v311 = 2016;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyWantsControlsRestored", buf, 0x12u);
            }

            v257 = __cxa_allocate_exception(0x10uLL);
            *v257 = off_1F5991DD8;
            v257[2] = 561211770;
          }

          v29 = *(this + 183);
          v30 = *(v29 + 416);
          v31 = *(v29 + 424);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = *(this + 369);
          if (a9)
          {
            v33 = *(a9 + 60);
          }

          else
          {
            v33 = 0;
          }

          v160 = a6;
          strcpy(buf, "cserbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          v213 = (*(*v30 + 544))(v30, v32, v33, buf);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (v213)
          {
            v214 = *(this + 183);
            v215 = *(v214 + 416);
            v96 = *(v214 + 424);
            if (v96)
            {
              atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v216 = *(this + 369);
            if (a9)
            {
              v217 = *(a9 + 60);
            }

            strcpy(buf, "cserbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            LODWORD(__p) = 0;
            v308[0] = 0;
            (*(*v215 + 568))(v215);
            goto LABEL_527;
          }
        }

        v199 = 1;
        goto LABEL_467;
      }

      if (mSelector != 1851878764)
      {
        if (mSelector == 1853059619)
        {
          NumberStreams = HALS_IODevice::GetNumberStreams(this, 0);
          if (NumberStreams || HALS_IODevice::GetNumberStreams(this, 1))
          {
            v122 = HALS_IODevice::CopyStreamByIndex(this, NumberStreams == 0, 0);
            if (v122)
            {
              NumberAvailablePhysicalFormats = HALS_Stream::GetNumberAvailablePhysicalFormats(v122);
            }

            else
            {
              NumberAvailablePhysicalFormats = 0;
            }

            v308[0] = NumberAvailablePhysicalFormats;
            operator new[]();
          }

          strcpy(buf, "#rsnbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          if (a9)
          {
            v240 = *(a9 + 60);
          }

          else
          {
            v240 = 0;
          }

          v241 = *(this + 183);
          v242 = *(v241 + 416);
          v243 = *(v241 + 424);
          if (v243)
          {
            atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v244 = (*(*v242 + 544))(v242, *(this + 369), v240, buf);
          if (v243)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v243);
          }

          if (v244)
          {
            v245 = *(this + 183);
            v246 = *(v245 + 416);
            v247 = *(v245 + 424);
            if (v247)
            {
              atomic_fetch_add_explicit(&v247->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v246 + 568))(v246, *(this + 369), v240, buf, 0, 0, a4, a5, a6);
            if (v247)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v247);
            }

            goto LABEL_457;
          }

          if ((v27 & 1) == 0)
          {
            v248 = *(this + 183);
            v249 = *(v248 + 416);
            v250 = *(v248 + 424);
            if (v250)
            {
              atomic_fetch_add_explicit(&v250->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v251 = *(this + 369);
            __p = 0x676C6F626E737274;
            LODWORD(v305) = 0;
            *v308 = 0;
            v307[1] = 0;
            (*(*v249 + 568))(v249);
            v28 = 0.0;
            if (v250)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v250);
            }
          }

          if (a4 < 0x10)
          {
            v62 = 0;
          }

          else
          {
            *a6 = v28;
            *(a6 + 1) = v28;
            v62 = 16;
          }

          goto LABEL_456;
        }

        if (mSelector != 1853059700)
        {
          goto LABEL_325;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1759;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
          }

          v267 = __cxa_allocate_exception(0x10uLL);
          *v267 = off_1F5991DD8;
          v267[2] = 561211770;
        }

        if ((v17 & 1) == 0)
        {
          v175 = *(this + 183);
          v176 = *(v175 + 416);
          v49 = *(v175 + 424);
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v177 = *(this + 369);
          if (a9)
          {
            v178 = *(a9 + 60);
          }

          else
          {
            v178 = 0;
          }

          *buf = 0;
          LODWORD(__p) = 0;
          (*(*v176 + 568))(v176, v177, v178, a3, 0, 0, 8, &__p, buf);
          *a6 = *buf;
          if (!v49)
          {
            goto LABEL_424;
          }

          goto LABEL_422;
        }

        *a6 = v16;
LABEL_424:
        v62 = 8;
LABEL_456:
        *a5 = v62;
        goto LABEL_457;
      }

LABEL_185:
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 1477;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
        }

        v254 = __cxa_allocate_exception(0x10uLL);
        *v254 = off_1F5991DD8;
        v254[2] = 561211770;
      }

      v100 = *(this + 183);
      v101 = *(v100 + 416);
      v102 = *(v100 + 424);
      v103 = a6;
      if (v102)
      {
        atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v104 = *(this + 369);
      if (a9)
      {
        v105 = *(a9 + 60);
      }

      strcpy(buf, "manlbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      __p = 0;
      v308[0] = 0;
      (*(*v101 + 568))(v101);
      goto LABEL_410;
    }

    if (mSelector <= 1936290670)
    {
      if (mSelector == 1920168547)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1870;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyResourceBundle", buf, 0x12u);
          }

          v291 = __cxa_allocate_exception(0x10uLL);
          *v291 = off_1F5991DD8;
          v291[2] = 561211770;
        }

        *a6 = HALS_PlugInObject::CopyResourceBundlePath(this + 1456, a9);
        goto LABEL_424;
      }

      if (mSelector == 1935763060)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1698;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
          }

          v282 = __cxa_allocate_exception(0x10uLL);
          *v282 = off_1F5991DD8;
          v282[2] = 561211770;
        }

        v125 = *(this + 183);
        v126 = *(v125 + 416);
        v127 = *(v125 + 424);
        v128 = a6;
        if (v127)
        {
          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v129 = *(this + 369);
        if (a9)
        {
          v130 = *(a9 + 60);
        }

        else
        {
          v130 = 0;
        }

        *buf = 0;
        LODWORD(__p) = 0;
        (*(*v126 + 568))(v126, v129, v130, a3, 0, 0, 4, &__p, buf);
        v202 = *buf;
        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v127);
        }

        if (v27)
        {
          v202 = (v28 / (*(*this + 272))(this) * v202);
          v128 = a6;
        }

        *v128 = v202;
        goto LABEL_455;
      }

      if (mSelector != 1936092276)
      {
        goto LABEL_325;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 1621;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultSystemDevice", buf, 0x12u);
        }

        v269 = __cxa_allocate_exception(0x10uLL);
        *v269 = off_1F5991DD8;
        v269[2] = 561211770;
      }

      v71 = a3;
      v72 = (*(*this + 544))(this, mScope == 1768845428, a9);
      v65 = a6;
      *a6 = v72 != 0;
      if (!v72)
      {
        goto LABEL_455;
      }

      v73 = *(this + 183);
      v74 = *(v73 + 416);
      v75 = *(v73 + 424);
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v76 = *(a9 + 60);
      }

      else
      {
        v76 = 0;
      }

      v229 = (*(*v74 + 544))(v74, *(this + 369), v76, a3);
      v230 = v229;
      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        if ((v230 & 1) == 0)
        {
          goto LABEL_455;
        }
      }

      else if (!v229)
      {
        goto LABEL_455;
      }

      v232 = *(this + 183);
      v91 = *(v232 + 416);
      v23 = *(v232 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v179 = *(this + 369);
      v180 = v71;
      if (a9)
      {
        v181 = *(a9 + 60);
      }

      else
      {
        v181 = 0;
      }

LABEL_533:
      *buf = 0;
      LODWORD(__p) = 0;
      (*(*v91 + 568))(v91, v179, v181, v180, 0, 0, 4, &__p, buf);
      v239 = *buf;
      goto LABEL_534;
    }

    if (mSelector <= 1936879203)
    {
      if (mSelector == 1936290671)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1933;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertySupportsIsolatedIO", buf, 0x12u);
          }

          v295 = __cxa_allocate_exception(0x10uLL);
          *v295 = off_1F5991DD8;
          v295[2] = 561211770;
        }

        v155 = *(this + 183);
        v22 = *(v155 + 416);
        v23 = *(v155 + 424);
        v25 = a6;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_451;
      }

      if (mSelector == 1936876644)
      {
        v302 = a3;
        TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
        v41 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
        v42 = caulk::numeric::exceptional_add<unsigned int>(v41);
        v307[0] = v42;
        if (v42 > a4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1751;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDefaultChannelLayout", buf, 0x12u);
          }

          v260 = __cxa_allocate_exception(0x10uLL);
          *v260 = off_1F5991DD8;
          v260[2] = 561211770;
        }

        BYTE4(v301) = mScope == 1768845428;
        LODWORD(v301) = TotalNumberChannelsForClient;
        (*(*this + 936))(this, a2, v302, a4, a5, a6, a7, a8, a9, v42, v307, v301);
        goto LABEL_457;
      }

      goto LABEL_325;
    }

    if (mSelector != 1936879204)
    {
      if (mSelector == 1953653102)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1553;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyTransportType", buf, 0x12u);
          }

          v273 = __cxa_allocate_exception(0x10uLL);
          *v273 = off_1F5991DD8;
          v273[2] = 561211770;
        }

        v99 = *(this + 183);
        v22 = *(v99 + 416);
        v23 = *(v99 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        v25 = a6;
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_451;
      }

      goto LABEL_325;
    }

    v163 = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
    v164 = caulk::numeric::exceptional_mul<unsigned int>(v163);
    v165 = caulk::numeric::exceptional_add<unsigned int>(v164);
    if (v165 > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        v310 = 1024;
        v311 = 1714;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyPreferredChannelLayout", buf, 0x12u);
      }

      v298 = __cxa_allocate_exception(0x10uLL);
      *v298 = off_1F5991DD8;
      v298[2] = 561211770;
    }

    v166 = v165;
    *a6 = 0;
    a6[2] = v163;
    if (v163)
    {
      v167 = v163;
      v168 = a6 + 4;
      do
      {
        *(v168 - 1) = -1;
        *v168 = 0;
        v168[1] = 0;
        v168 = (v168 + 20);
        --v167;
      }

      while (v167);
    }

    *a5 = v165;
    v169 = *(this + 183);
    v170 = *(v169 + 416);
    v171 = *(v169 + 424);
    if (v171)
    {
      atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a9)
    {
      v172 = *(a9 + 60);
    }

    else
    {
      v172 = 0;
    }

    (*(*v170 + 568))(v170, *(this + 369), v172, a3, 0, 0, v166);
    if (v171)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v171);
    }

    v306[0] = 0;
    v306[1] = 0;
    HALS_System::GetInstance(&__p, 0, v306);
    *buf = HALS_SettingsManager::ReadSetting(*(__p + 222), *(this + 15));
    *&buf[8] = 1;
    if (v305)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v305);
    }

    __p = 0;
    LOWORD(v305) = 1;
    if (mScope == 1768845428)
    {
      v225 = @"input.surround";
    }

    else
    {
      if (a3->mScope != 1869968496)
      {
LABEL_479:
        HALS_Device::ThrowIfInvalidACL(a6, a4, v163);
        CACFDictionary::~CACFDictionary(&__p);
        CACFDictionary::~CACFDictionary(buf);
        goto LABEL_457;
      }

      v225 = @"output.surround";
    }

    CACFDictionary::GetCACFDictionary(buf, v225, &__p);
    if (__p)
    {
      HALS_Device::ConstructLayoutFromDictionary(&__p, a6, v226);
    }

    goto LABEL_479;
  }

  if (mSelector <= 1684107363)
  {
    if (mSelector > 1635087470)
    {
      if (mSelector > 1668049763)
      {
        if (mSelector > 1668510817)
        {
          if (mSelector == 1668510818)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v310 = 1024;
                v311 = 1690;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockIsStable", buf, 0x12u);
              }

              v284 = __cxa_allocate_exception(0x10uLL);
              *v284 = off_1F5991DD8;
              v284[2] = 561211770;
            }

            v132 = *(this + 183);
            v22 = *(v132 + 416);
            v23 = *(v132 + 424);
            v25 = a6;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = *(this + 369);
            if (a9)
            {
              v26 = *(a9 + 60);
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_451;
          }

          if (mSelector == 1668641652)
          {
            v77 = a4 / 0xC;
            if (*(this + 372) < a4 / 0xC)
            {
              v77 = *(this + 372);
            }

            if (v77)
            {
              v78 = 0;
              v79 = 0;
              do
              {
                if (v79 < *(this + 372))
                {
                  v80 = &a6[v78];
                  v81 = (*(this + 185) + v78 * 4);
                  v82 = *v81;
                  v80[2] = *(v81 + 2);
                  *v80 = v82;
                }

                ++v79;
                v78 += 3;
              }

              while (3 * v77 != v78);
            }

            v62 = 12 * v77;
            goto LABEL_456;
          }
        }

        else
        {
          if (mSelector == 1668049764)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v310 = 1024;
                v311 = 1592;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockDomain", buf, 0x12u);
              }

              v283 = __cxa_allocate_exception(0x10uLL);
              *v283 = off_1F5991DD8;
              v283[2] = 561211770;
            }

            v131 = *(this + 183);
            v22 = *(v131 + 416);
            v23 = *(v131 + 424);
            v25 = a6;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = *(this + 369);
            if (a9)
            {
              v26 = *(a9 + 60);
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_451;
          }

          if (mSelector == 1668050795)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v310 = 1024;
                v311 = 1682;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockAlgorithm", buf, 0x12u);
              }

              v258 = __cxa_allocate_exception(0x10uLL);
              *v258 = off_1F5991DD8;
              v258[2] = 561211770;
            }

            v34 = *(this + 183);
            v22 = *(v34 + 416);
            v23 = *(v34 + 424);
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = *(this + 369);
            v25 = a6;
            if (a9)
            {
              v26 = *(a9 + 60);
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_451;
          }
        }

        goto LABEL_325;
      }

      if (mSelector == 1635087471)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 2008;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyAllowsAutoRoute", buf, 0x12u);
          }

          v279 = __cxa_allocate_exception(0x10uLL);
          *v279 = off_1F5991DD8;
          v279[2] = 561211770;
        }

        v119 = *(this + 183);
        v22 = *(v119 + 416);
        v23 = *(v119 + 424);
        v25 = a6;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_451;
      }

      if (mSelector != 1667330160)
      {
        if (mSelector == 1667658618)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v310 = 1024;
              v311 = 1976;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyCalculateBufferFrameSize", buf, 0x12u);
            }

            v263 = __cxa_allocate_exception(0x10uLL);
            *v263 = off_1F5991DD8;
            v263[2] = 561211770;
          }

          v53 = *(this + 183);
          v54 = *(v53 + 416);
          v23 = *(v53 + 424);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v55 = *(this + 369);
          v25 = a6;
          if (a9)
          {
            v56 = *(a9 + 60);
          }

          else
          {
            v56 = 0;
          }

          *buf = 0;
          LODWORD(__p) = 0;
          (*(*v54 + 568))(v54, v55, v56, v18, a7, a8, 4, &__p, buf);
LABEL_452:
          *v25 = *buf;
          if (!v23)
          {
LABEL_455:
            v62 = 4;
            goto LABEL_456;
          }

          goto LABEL_453;
        }

        goto LABEL_325;
      }

      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 1530;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyConfigurationApplication", buf, 0x12u);
        }

        v274 = __cxa_allocate_exception(0x10uLL);
        *v274 = off_1F5991DD8;
        v274[2] = 561211770;
      }

      v106 = *(this + 183);
      v107 = *(v106 + 416);
      v108 = *(v106 + 424);
      v109 = a6;
      if (v108)
      {
        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v110 = *(a9 + 60);
      }

      else
      {
        v110 = 0;
      }

      v183 = a3;
      v184 = (*(*v107 + 544))(v107, *(this + 369), v110);
      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      }

      if (!v184)
      {
        *a6 = CFRetain(@"com.apple.audio.AudioMIDISetup");
        goto LABEL_424;
      }

      v185 = *(this + 183);
      v186 = *(v185 + 416);
      v49 = *(v185 + 424);
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v187 = *(this + 369);
      v188 = v183;
      if (a9)
      {
        v189 = *(a9 + 60);
      }

      else
      {
        v189 = 0;
      }

      goto LABEL_509;
    }

    if (mSelector <= 1634038356)
    {
      if (mSelector != 1633903475)
      {
        if (mSelector != 1633906541)
        {
          if (mSelector != 1634038341)
          {
            goto LABEL_325;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v310 = 1024;
              v311 = 2089;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDeviceEngineReplacerIsEnabled", buf, 0x12u);
            }

            v261 = __cxa_allocate_exception(0x10uLL);
            *v261 = off_1F5991DD8;
            v261[2] = 561211770;
          }

          v43 = *(this + 183);
          v44 = *(v43 + 416);
          v45 = *(v43 + 424);
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (a9)
          {
            v46 = *(a9 + 60);
          }

          else
          {
            v46 = 0;
          }

          v65 = a6;
          v190 = a3;
          v191 = (*(*v44 + 544))(v44, *(this + 369), v46);
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          if ((v191 & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v310 = 1024;
              v311 = 2091;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: does not support property kAudioDeviceEngineReplacerIsEnabled", buf, 0x12u);
            }

            v299 = __cxa_allocate_exception(0x10uLL);
            *v299 = off_1F5991DD8;
            v299[2] = 1970171760;
          }

          v192 = *(this + 183);
          v91 = *(v192 + 416);
          v23 = *(v192 + 424);
          v180 = v190;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v179 = *(this + 369);
          if (a9)
          {
            v181 = *(a9 + 60);
          }

          else
          {
            v181 = 0;
          }

          goto LABEL_533;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1894;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioEndPointDevicePropertyComposition", buf, 0x12u);
          }

          v276 = __cxa_allocate_exception(0x10uLL);
          *v276 = off_1F5991DD8;
          v276[2] = 561211770;
        }

        v112 = *(this + 183);
        v48 = *(v112 + 416);
        v49 = *(v112 + 424);
        v51 = a6;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = *(this + 369);
        if (a9)
        {
          v52 = *(a9 + 60);
        }

        else
        {
          v52 = 0;
        }

LABEL_421:
        *buf = 0;
        LODWORD(__p) = 0;
        (*(*v48 + 568))(v48, v50, v52, v18, 0, 0, 8, &__p, buf);
        *v51 = *buf;
        if (v49)
        {
LABEL_422:
          v203 = v49;
          goto LABEL_423;
        }

        goto LABEL_424;
      }

      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 1992;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyAccessEntitlementName", buf, 0x12u);
        }

        v286 = __cxa_allocate_exception(0x10uLL);
        *v286 = off_1F5991DD8;
        v286[2] = 561211770;
      }

      v137 = *(this + 183);
      v138 = *(v137 + 416);
      v102 = *(v137 + 424);
      v103 = a6;
      if (v102)
      {
        atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v139 = *(this + 369);
      if (a9)
      {
        v140 = *(a9 + 60);
      }

      strcpy(buf, "sccabolg");
      buf[9] = 0;
      *&buf[10] = 0;
      __p = 0;
      v308[0] = 0;
      (*(*v138 + 568))(v138);
LABEL_410:
      *v103 = __p;
      if (v102)
      {
        v203 = v102;
LABEL_423:
        std::__shared_weak_count::__release_shared[abi:ne200100](v203);
        goto LABEL_424;
      }

      goto LABEL_424;
    }

    if (mSelector == 1634038357)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 2078;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDeviceEngineReplacerUID", buf, 0x12u);
        }

        v287 = __cxa_allocate_exception(0x10uLL);
        *v287 = off_1F5991DD8;
        v287[2] = 561211770;
      }

      v141 = *(this + 183);
      v142 = *(v141 + 416);
      v143 = *(v141 + 424);
      v109 = a6;
      if (v143)
      {
        atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v144 = *(a9 + 60);
      }

      else
      {
        v144 = 0;
      }

      v204 = a3;
      v205 = (*(*v142 + 544))(v142, *(this + 369), v144);
      if (v143)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v143);
      }

      if ((v205 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 2080;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: does not support property kAudioDeviceEngineReplacerUID", buf, 0x12u);
        }

        v300 = __cxa_allocate_exception(0x10uLL);
        *v300 = off_1F5991DD8;
        v300[2] = 1970171760;
      }

      v206 = *(this + 183);
      v186 = *(v206 + 416);
      v49 = *(v206 + 424);
      v188 = v204;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v187 = *(this + 369);
      if (a9)
      {
        v189 = *(a9 + 60);
      }

      else
      {
        v189 = 0;
      }

LABEL_509:
      *buf = 0;
      LODWORD(__p) = 0;
      (*(*v186 + 568))(v186, v187, v189, v188, 0, 0, 8, &__p, buf);
      v233 = *buf;
      goto LABEL_521;
    }

    if (mSelector == 1634169456)
    {
      v114 = *(this + 183);
      v115 = *(v114 + 416);
      v116 = *(v114 + 424);
      if (v116)
      {
        atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v117 = *(a9 + 60);
      }

      else
      {
        v117 = 0;
      }

      goto LABEL_344;
    }

    if (mSelector != 1634429294)
    {
      goto LABEL_325;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        v310 = 1024;
        v311 = 1561;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyRelatedDevices", buf, 0x12u);
      }

      v265 = __cxa_allocate_exception(0x10uLL);
      *v265 = off_1F5991DD8;
      v265[2] = 561211770;
    }

    v58 = *(this + 183);
    v59 = *(v58 + 416);
    v60 = *(v58 + 424);
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a9)
    {
      v61 = *(a9 + 60);
    }

    else
    {
      v61 = 0;
    }

    v160 = a6;
    v193 = a3;
    v194 = (*(*v59 + 544))(v59, *(this + 369), v61);
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    if (v194)
    {
      v195 = *(this + 183);
      v196 = *(v195 + 416);
      v197 = *(v195 + 424);
      if (v197)
      {
        atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v198 = *(a9 + 60);
      }

      else
      {
        v198 = 0;
      }

      (*(*v196 + 568))(v196, *(this + 369), v198, v193, a7, a8, a4, a5, a6);
      if (v197)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v197);
      }

      v234 = *a5;
      if (v234 >= 4)
      {
        v235 = v234 >> 2;
        do
        {
          v236 = HALS_PlugIn::CopyObjectByUCID(*(this + 183), *v160);
          if (v236)
          {
            v238 = *(v236 + 4);
          }

          else
          {
            v238 = 0;
          }

          *v160 = v238;
          HALS_ObjectMap::ReleaseObject(v236, v237);
          ++v160;
          --v235;
        }

        while (v235);
      }

      goto LABEL_457;
    }

    v199 = *(this + 4);
LABEL_467:
    *v160 = v199;
    goto LABEL_455;
  }

  if (mSelector > 1685278577)
  {
    if (mSelector > 1702392684)
    {
      if (mSelector <= 1735356004)
      {
        if (mSelector == 1702392685)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v310 = 1024;
              v311 = 2100;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyExternalSecureMute", buf, 0x12u);
            }

            v294 = __cxa_allocate_exception(0x10uLL);
            *v294 = off_1F5991DD8;
            v294[2] = 561211770;
          }

          v154 = *(this + 183);
          v22 = *(v154 + 416);
          v23 = *(v154 + 424);
          v25 = a6;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = *(this + 369);
          if (a9)
          {
            v26 = *(a9 + 60);
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_451;
        }

        if (mSelector != 1735354734)
        {
          goto LABEL_325;
        }

LABEL_190:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1601;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
          }

          v255 = __cxa_allocate_exception(0x10uLL);
          *v255 = off_1F5991DD8;
          v255[2] = 561211770;
        }

        *a6 = (*(**(this + 196) + 688))(*(this + 196));
        goto LABEL_455;
      }

      if (mSelector == 1735356005)
      {
        goto LABEL_190;
      }

      if (mSelector != 1751412337)
      {
        goto LABEL_325;
      }

      goto LABEL_172;
    }

    if (mSelector != 1685278578)
    {
      if (mSelector == 1685287012)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1925;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertySupportsPastData", buf, 0x12u);
          }

          v281 = __cxa_allocate_exception(0x10uLL);
          *v281 = off_1F5991DD8;
          v281[2] = 561211770;
        }

        v124 = *(this + 183);
        v22 = *(v124 + 416);
        v23 = *(v124 + 424);
        v25 = a6;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_451;
      }

      if (mSelector == 1702248804)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 2108;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyExternalVoiceActivityDetectionEnable", buf, 0x12u);
          }

          v268 = __cxa_allocate_exception(0x10uLL);
          *v268 = off_1F5991DD8;
          v268[2] = 561211770;
        }

        v70 = *(this + 183);
        v22 = *(v70 + 416);
        v23 = *(v70 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        v25 = a6;
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_451;
      }

      goto LABEL_325;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        v310 = 1024;
        v311 = 2045;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDSPOffloadRequested", buf, 0x12u);
      }

      v290 = __cxa_allocate_exception(0x10uLL);
      *v290 = off_1F5991DD8;
      v290[2] = 561211770;
    }

    v147 = *(this + 183);
    v148 = *(v147 + 416);
    v149 = *(v147 + 424);
    v109 = a6;
    if (v149)
    {
      atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v150 = *(this + 369);
    if (a9)
    {
      v151 = *(a9 + 60);
    }

    else
    {
      v151 = 0;
    }

    *buf = *&a3->mSelector;
    v207 = a3;
    *&buf[8] = a3->mElement;
    v208 = (*(*v148 + 544))(v148, v150, v151, buf);
    if (v149)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v149);
    }

    if (!v208)
    {
      *a6 = 0;
      goto LABEL_424;
    }

    v209 = *(this + 183);
    v210 = *(v209 + 416);
    v49 = *(v209 + 424);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v211 = *(this + 369);
    if (a9)
    {
      v212 = *(a9 + 60);
    }

    *buf = *&v207->mSelector;
    *&buf[8] = v207->mElement;
    __p = 0;
    v308[0] = 0;
    (*(*v210 + 568))(v210);
    v233 = 0;
LABEL_521:
    *v109 = v233;
    if (!v49)
    {
      goto LABEL_424;
    }

    goto LABEL_422;
  }

  if (mSelector > 1684893795)
  {
    if (mSelector > 1685222500)
    {
      if (mSelector == 1685222501)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 2070;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyWantsDisplayRouting", buf, 0x12u);
          }

          v296 = __cxa_allocate_exception(0x10uLL);
          *v296 = off_1F5991DD8;
          v296[2] = 561211770;
        }

        v156 = *(this + 183);
        v22 = *(v156 + 416);
        v23 = *(v156 + 424);
        v25 = a6;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_451;
      }

      if (mSelector == 1685276755)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1968;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertySupportsHeySiri", buf, 0x12u);
          }

          v271 = __cxa_allocate_exception(0x10uLL);
          *v271 = off_1F5991DD8;
          v271[2] = 561211770;
        }

        v84 = *(this + 183);
        v22 = *(v84 + 416);
        v23 = *(v84 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        v25 = a6;
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_451;
      }
    }

    else
    {
      if (mSelector == 1684893796)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1952;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyMaximumPastData", buf, 0x12u);
          }

          v292 = __cxa_allocate_exception(0x10uLL);
          *v292 = off_1F5991DD8;
          v292[2] = 561211770;
        }

        v152 = *(this + 183);
        v22 = *(v152 + 416);
        v23 = *(v152 + 424);
        v25 = a6;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_451;
      }

      if (mSelector == 1685087596)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v310 = 1024;
            v311 = 1960;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyEnableListening", buf, 0x12u);
          }

          v256 = __cxa_allocate_exception(0x10uLL);
          *v256 = off_1F5991DD8;
          v256[2] = 561211770;
        }

        v21 = *(this + 183);
        v22 = *(v21 + 416);
        v23 = *(v21 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        v25 = a6;
        if (a9)
        {
          v26 = *(a9 + 60);
        }

        else
        {
          v26 = 0;
        }

LABEL_451:
        *buf = 0;
        LODWORD(__p) = 0;
        (*(*v22 + 568))(v22, v24, v26, v18, 0, 0, 4, &__p, buf);
        goto LABEL_452;
      }
    }

    goto LABEL_325;
  }

  switch(mSelector)
  {
    case 1684107364:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 1941;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyAvailablePastData", buf, 0x12u);
        }

        v289 = __cxa_allocate_exception(0x10uLL);
        *v289 = off_1F5991DD8;
        v289[2] = 561211770;
      }

      v146 = *(this + 183);
      v22 = *(v146 + 416);
      v23 = *(v146 + 424);
      v25 = a6;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(this + 369);
      if (a9)
      {
        v26 = *(a9 + 60);
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_451;
    case 1684301171:
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 1984;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceDescription", buf, 0x12u);
        }

        v280 = __cxa_allocate_exception(0x10uLL);
        *v280 = off_1F5991DD8;
        v280[2] = 561211770;
      }

      v120 = *(this + 183);
      v48 = *(v120 + 416);
      v49 = *(v120 + 424);
      v51 = a6;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = *(this + 369);
      if (a9)
      {
        v52 = *(a9 + 60);
      }

      else
      {
        v52 = 0;
      }

      goto LABEL_421;
    case 1684434036:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v310 = 1024;
          v311 = 1609;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultDevice", buf, 0x12u);
        }

        v266 = __cxa_allocate_exception(0x10uLL);
        *v266 = off_1F5991DD8;
        v266[2] = 561211770;
      }

      v63 = a3;
      v64 = (*(*this + 544))(this, mScope == 1768845428, a9, a3);
      v65 = a6;
      *a6 = v64 != 0;
      if (!v64)
      {
        goto LABEL_455;
      }

      v66 = *(this + 183);
      v67 = *(v66 + 416);
      v68 = *(v66 + 424);
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v69 = *(a9 + 60);
      }

      else
      {
        v69 = 0;
      }

      v227 = (*(*v67 + 544))(v67, *(this + 369), v69, a3);
      v228 = v227;
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        if ((v228 & 1) == 0)
        {
          goto LABEL_455;
        }
      }

      else if (!v227)
      {
        goto LABEL_455;
      }

      v231 = *(this + 183);
      v91 = *(v231 + 416);
      v23 = *(v231 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v179 = *(this + 369);
      v180 = v63;
      if (a9)
      {
        v181 = *(a9 + 60);
      }

      else
      {
        v181 = 0;
      }

      goto LABEL_533;
  }

LABEL_325:
  if (HALS_Device::HasProperty(this, v17, a3, a9))
  {
    v173 = *MEMORY[0x1E69E9840];

    HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
    return;
  }

  if (!(*(*(this + 182) + 24))(this + 1456, a3->mSelector))
  {
LABEL_457:
    v219 = *MEMORY[0x1E69E9840];
    return;
  }

  v174 = *(this + 183);
  v115 = *(v174 + 416);
  v116 = *(v174 + 424);
  if (v116)
  {
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a9)
  {
    v117 = *(a9 + 60);
  }

  else
  {
    v117 = 0;
  }

LABEL_344:
  (*(*v115 + 568))(v115, *(this + 369), v117, a3, a7, a8, a4, a5, a6);
  if (!v116)
  {
    goto LABEL_457;
  }

  v182 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v116);
}

void sub_1DE2D48F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

unint64_t HALS_Stream::GetNumberAvailablePhysicalFormats(HALS_Stream *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6270667461;
  v4 = 0;
  return (*(*this + 112))(this, v1, &v3, 0, 0, 0) / 0x38uLL;
}

uint64_t HALS_Stream::GetAvailablePhysicalFormats(HALS_Stream *this, int a2, unsigned int *a3, AudioStreamRangedDescription *a4)
{
  v5 = *(this + 4);
  v7 = 0x676C6F6270667461;
  v8 = 0;
  v9 = 0;
  result = (*(*this + 120))(this, v5, &v7, (56 * a2), &v9, a4, 0, 0, 0);
  *a3 = v9 / 0x38;
  return result;
}

void *std::vector<CAAudioValueRange>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    v2 = result[1] - *result;
    std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void *std::vector<CAAudioValueRange>::__assign_with_size[abi:ne200100]<CAAudioValueRange*,CAAudioValueRange*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (!(v11 >> 60))
      {
        std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](v11);
      }
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
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

uint64_t caulk::numeric::exceptional_mul<unsigned int>(unsigned int a1)
{
  result = 20 * a1;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
    __cxa_throw(exception, off_1E8672F70, MEMORY[0x1E69E5290]);
  }

  return result;
}

uint64_t caulk::numeric::exceptional_add<unsigned int>(int a1)
{
  v1 = __CFADD__(a1, 12);
  result = (a1 + 12);
  if (v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
    __cxa_throw(exception, off_1E8672F70, MEMORY[0x1E69E5290]);
  }

  return result;
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

uint64_t HALS_PlugInDevice::GetPropertyDataSize(HALS_PlugInDevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, uint64_t a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  mSelector = a3->mSelector;
  v12 = 8;
  if (a3->mSelector > 1685278577)
  {
    if (mSelector > 1851878763)
    {
      if (mSelector <= 1919251298)
      {
        if (mSelector == 1851878764)
        {
          return v12;
        }

        if (mSelector == 1853059619)
        {
          NumberStreams = HALS_IODevice::GetNumberStreams(this, 0);
          if (NumberStreams || HALS_IODevice::GetNumberStreams(this, 1))
          {
            v26 = HALS_IODevice::CopyStreamByIndex(this, NumberStreams == 0, 0);
            if (v26)
            {
              NumberAvailablePhysicalFormats = HALS_Stream::GetNumberAvailablePhysicalFormats(v26);
            }

            else
            {
              NumberAvailablePhysicalFormats = 0;
            }

            v43 = NumberAvailablePhysicalFormats;
            operator new[]();
          }

          __p = 0x676C6F626E737223;
          LODWORD(v42) = 0;
          if (a6)
          {
            v32 = a6[20].mSelector;
          }

          else
          {
            v32 = 0;
          }

          v34 = *(this + 183);
          v35 = *(v34 + 416);
          v36 = *(v34 + 424);
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = (*(*v35 + 544))(v35, *(this + 369), v32, &__p);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (!v37)
          {
            return 16;
          }

          v38 = *(this + 183);
          v39 = *(v38 + 416);
          v40 = *(v38 + 424);
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = (*(*v39 + 560))(v39, *(this + 369), v32, &__p, 0, 0);
          if (!v40)
          {
            return v12;
          }

          v33 = v40;
          goto LABEL_86;
        }

        v19 = 1886546294;
      }

      else if (mSelector > 1920168546)
      {
        if (mSelector == 1920168547)
        {
          return v12;
        }

        v19 = 1936290671;
      }

      else
      {
        if (mSelector == 1919251299)
        {
          return 4;
        }

        v19 = 1919251302;
      }

      goto LABEL_47;
    }

    if (mSelector <= 1818850144)
    {
      if (mSelector == 1685278578)
      {
        return v12;
      }

      if (mSelector == 1702248804)
      {
        return 4;
      }

      v19 = 1702392685;
      goto LABEL_47;
    }

    if (mSelector <= 1819173228)
    {
      if (mSelector == 1818850145 || mSelector == 1818850162)
      {
        return 12;
      }

      goto LABEL_59;
    }

    if (mSelector == 1819173229)
    {
      return v12;
    }

    v18 = 1836411236;
    goto LABEL_41;
  }

  if (mSelector > 1667658617)
  {
    if (mSelector <= 1668641651)
    {
      if (mSelector == 1667658618 || mSelector == 1668050795)
      {
        return 4;
      }

      v19 = 1668510818;
      goto LABEL_47;
    }

    if (mSelector > 1685222500)
    {
      if (mSelector == 1685222501)
      {
        return 4;
      }

      v19 = 1685276755;
      goto LABEL_47;
    }

    if (mSelector == 1668641652)
    {
      return (12 * *(this + 372));
    }

    v18 = 1684301171;
LABEL_41:
    if (mSelector == v18)
    {
      return v12;
    }

    goto LABEL_59;
  }

  if (mSelector <= 1634038356)
  {
    if (mSelector == 1633903475 || mSelector == 1633906541)
    {
      return v12;
    }

    v19 = 1634038341;
    goto LABEL_47;
  }

  if (mSelector > 1634429293)
  {
    if (mSelector == 1634429294)
    {
      v21 = *(this + 183);
      v22 = *(v21 + 416);
      v23 = *(v21 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a6)
      {
        v24 = a6[20].mSelector;
      }

      else
      {
        v24 = 0;
      }

      v30 = (*(*v22 + 544))(v22, *(this + 369), v24, a3);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v30)
      {
        v31 = *(this + 183);
        v14 = *(v31 + 416);
        v15 = *(v31 + 424);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *(this + 369);
        if (a6)
        {
          v17 = a6[20].mSelector;
        }

        else
        {
          v17 = 0;
        }

LABEL_84:
        v12 = (*(*v14 + 560))(v14, v16, v17, a3, a4, a5);
        if (v15)
        {
          v33 = v15;
LABEL_86:
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        return v12;
      }

      return 4;
    }

    v19 = 1635087471;
LABEL_47:
    if (mSelector != v19)
    {
      goto LABEL_59;
    }

    return 4;
  }

  if (mSelector == 1634038357)
  {
    return v12;
  }

  if (mSelector == 1634169456)
  {
    v13 = *(this + 183);
    v14 = *(v13 + 416);
    v15 = *(v13 + 424);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(this + 369);
    if (a6)
    {
      v17 = a6[20].mSelector;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_84;
  }

LABEL_59:
  if (!HALS_Device::HasProperty(this, a2, a3, a6))
  {
    if (!(*(*(this + 182) + 24))(this + 1456, a3->mSelector))
    {
      return 0;
    }

    v29 = *(this + 183);
    v14 = *(v29 + 416);
    v15 = *(v29 + 424);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(this + 369);
    if (a6)
    {
      v17 = a6[20].mSelector;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_84;
  }

  return HALS_Device::GetPropertyDataSize(this, v28, a3, a4, a5, a6);
}

void sub_1DE2D5624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInDevice::IsPropertySettable(HALS_PlugInDevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  v7 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1685222500)
  {
    if (mSelector <= 1667658617)
    {
      if (mSelector <= 1634038356)
      {
        if (mSelector == 1633903475)
        {
          return v7;
        }

        if (mSelector != 1633906541)
        {
          v9 = 1634038341;
          goto LABEL_25;
        }

        v17 = *(this + 5);
        v16 = *(this + 6);
        if (v17 == v16 || v17 == 1701078390)
        {
          if (v17 != 1701078390 && v17 == v16)
          {
            return 0;
          }
        }

        else if (v16 != 1701078390)
        {
          return 0;
        }

        v23 = *(this + 183);
        v24 = *(v23 + 416);
        v25 = *(v23 + 424);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = *(this + 369);
        if (a4)
        {
          v27 = a4[20].mSelector;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_91;
      }

      if (mSelector == 1634038357)
      {
        return v7;
      }

      if (mSelector == 1634169456)
      {
        v21 = *(this + 5);
        v20 = *(this + 6);
        if (v21 == v20 || v21 == 1701078390)
        {
          if (v21 != 1701078390 && v21 == v20)
          {
            return 0;
          }
        }

        else if (v20 != 1701078390)
        {
          return 0;
        }

        v29 = *(this + 183);
        v24 = *(v29 + 416);
        v25 = *(v29 + 424);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = *(this + 369);
        if (a4)
        {
          v27 = a4[20].mSelector;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_91;
      }

      v9 = 1635087471;
      goto LABEL_25;
    }

    if (mSelector <= 1668641651)
    {
      v10 = mSelector == 1667658618 || mSelector == 1668050795;
      v11 = 1668510818;
      goto LABEL_41;
    }

    if (mSelector == 1668641652 || mSelector == 1684301171)
    {
      return v7;
    }

    v12 = 1685087596;
    goto LABEL_35;
  }

  if (mSelector <= 1818850161)
  {
    if (mSelector <= 1702248803)
    {
      v10 = mSelector == 1685222501 || mSelector == 1685276755;
      v11 = 1685278578;
      goto LABEL_41;
    }

    if (mSelector != 1702248804 && mSelector != 1702392685)
    {
      v12 = 1818850145;
LABEL_35:
      if (mSelector != v12)
      {
        goto LABEL_59;
      }
    }

    return 1;
  }

  if (mSelector <= 1919251301)
  {
    if (mSelector != 1818850162)
    {
      if (mSelector == 1886546294)
      {
        v19 = *(this + 5);
        v18 = *(this + 6);
        if (v19 == v18 || v19 == 1701078390)
        {
          if (v19 != 1701078390 && v19 == v18)
          {
            return 0;
          }
        }

        else if (v18 != 1701078390)
        {
          return 0;
        }

        v28 = *(this + 183);
        v24 = *(v28 + 416);
        v25 = *(v28 + 424);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = *(this + 369);
        if (a4)
        {
          v27 = a4[20].mSelector;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_91;
      }

      v9 = 1919251299;
LABEL_25:
      if (mSelector != v9)
      {
        goto LABEL_59;
      }

      return v7;
    }

    return 1;
  }

  v10 = mSelector == 1919251302 || mSelector == 1920168547;
  v11 = 1936290671;
LABEL_41:
  if (v10 || mSelector == v11)
  {
    return v7;
  }

LABEL_59:
  if (!HALS_Device::HasProperty(this, a2, a3, a4))
  {
    if ((*(*(this + 182) + 24))(this + 1456, a3->mSelector))
    {
      v30 = *(this + 183);
      v24 = *(v30 + 416);
      v25 = *(v30 + 424);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(this + 369);
      if (a4)
      {
        v27 = a4[20].mSelector;
      }

      else
      {
        v27 = 0;
      }

LABEL_91:
      v7 = (*(*v24 + 552))(v24, v26, v27, a3);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      return v7;
    }

    return 0;
  }

  return HALS_Device::IsPropertySettable(this, v22, a3, a4);
}

void sub_1DE2D5B80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInDevice::HasProperty(HALS_PlugInDevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1702248803)
  {
    if (mSelector <= 1668641651)
    {
      if (mSelector > 1634169455)
      {
        if (mSelector <= 1667658617)
        {
          if (mSelector == 1634169456)
          {
            v59 = *(this + 5);
            v58 = *(this + 6);
            if (v59 == v58 || v59 == 1701078390)
            {
              if (v59 != 1701078390 && v59 == v58)
              {
                return 0;
              }
            }

            else if (v58 != 1701078390)
            {
              return 0;
            }

            v64 = *(this + 183);
            v10 = *(v64 + 416);
            v11 = *(v64 + 424);
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v12 = *(this + 369);
            if (a4)
            {
              v13 = a4[20].mSelector;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            if (mSelector != 1635087471)
            {
              goto LABEL_172;
            }

            v31 = *(this + 183);
            v10 = *(v31 + 416);
            v11 = *(v31 + 424);
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v12 = *(this + 369);
            if (a4)
            {
              v13 = a4[20].mSelector;
            }

            else
            {
              v13 = 0;
            }
          }
        }

        else
        {
          switch(mSelector)
          {
            case 1667658618:
              v52 = *(this + 183);
              v10 = *(v52 + 416);
              v11 = *(v52 + 424);
              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v12 = *(this + 369);
              if (a4)
              {
                v13 = a4[20].mSelector;
              }

              else
              {
                v13 = 0;
              }

              break;
            case 1668050795:
              v46 = *(this + 183);
              v10 = *(v46 + 416);
              v11 = *(v46 + 424);
              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v12 = *(this + 369);
              if (a4)
              {
                v13 = a4[20].mSelector;
              }

              else
              {
                v13 = 0;
              }

              break;
            case 1668510818:
              v9 = *(this + 183);
              v10 = *(v9 + 416);
              v11 = *(v9 + 424);
              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v12 = *(this + 369);
              if (a4)
              {
                v13 = a4[20].mSelector;
              }

              else
              {
                v13 = 0;
              }

              break;
            default:
              goto LABEL_172;
          }
        }

        goto LABEL_233;
      }

      if (mSelector > 1634038340)
      {
        if (mSelector != 1634038341 && mSelector != 1634038357)
        {
          goto LABEL_172;
        }

        v23 = *(this + 183);
        v10 = *(v23 + 416);
        v11 = *(v23 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_233;
      }

      if (mSelector != 1633903475)
      {
        if (mSelector != 1633906541)
        {
          goto LABEL_172;
        }

        v20 = *(this + 5);
        v19 = *(this + 6);
        if (v20 == v19 || v20 == 1701078390)
        {
          if (v20 != 1701078390 && v20 == v19)
          {
            return 0;
          }
        }

        else if (v19 != 1701078390)
        {
          return 0;
        }

        v62 = *(this + 183);
        v10 = *(v62 + 416);
        v11 = *(v62 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_233;
      }

      v35 = *(this + 183);
      v36 = *(v35 + 416);
      v28 = *(v35 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = *(this + 369);
      if (a4)
      {
        v38 = a4[20].mSelector;
      }

      else
      {
        v38 = 0;
      }

      v67 = 0x676C6F6261636373;
      v68 = 0;
      v61 = (*(*v36 + 544))(v36, v37, v38, &v67);
      goto LABEL_220;
    }

    if (mSelector <= 1685087595)
    {
      if (mSelector <= 1684301170)
      {
        if (mSelector == 1668641652)
        {
          return *(this + 372) != 0;
        }

        if (mSelector != 1684107364)
        {
          goto LABEL_172;
        }

        v21 = *(this + 183);
        v10 = *(v21 + 416);
        v11 = *(v21 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_233;
      }

      if (mSelector != 1684301171)
      {
        if (mSelector != 1684893796)
        {
          goto LABEL_172;
        }

        v24 = *(this + 183);
        v10 = *(v24 + 416);
        v11 = *(v24 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_233;
      }

      v39 = *(this + 183);
      v40 = *(v39 + 416);
      v28 = *(v39 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v41 = *(this + 369);
      if (a4)
      {
        v42 = a4[20].mSelector;
      }

      else
      {
        v42 = 0;
      }

      v67 = 0x676C6F6264646573;
      v68 = 0;
      v61 = (*(*v40 + 544))(v40, v41, v42, &v67);
      goto LABEL_220;
    }

    if (mSelector <= 1685276754)
    {
      if (mSelector == 1685087596)
      {
        v60 = *(this + 183);
        v10 = *(v60 + 416);
        v11 = *(v60 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        if (mSelector != 1685222501)
        {
          goto LABEL_172;
        }

        v32 = *(this + 183);
        v10 = *(v32 + 416);
        v11 = *(v32 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      goto LABEL_233;
    }

    if (mSelector == 1685276755)
    {
      v53 = *(this + 183);
      v10 = *(v53 + 416);
      v11 = *(v53 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_233;
    }

    if (mSelector == 1685278578)
    {
      v47 = *(this + 183);
      v10 = *(v47 + 416);
      v11 = *(v47 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_233;
    }

    v15 = 1685287012;
LABEL_36:
    if (mSelector != v15)
    {
      goto LABEL_172;
    }

    v17 = *(this + 183);
    v10 = *(v17 + 416);
    v11 = *(v17 + 424);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 369);
    if (a4)
    {
      v13 = a4[20].mSelector;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_233;
  }

  if (mSelector <= 1819111267)
  {
    if (mSelector <= 1818452845)
    {
      if (mSelector > 1768124269)
      {
        if (mSelector != 1768124270 && mSelector != 1768777573)
        {
          goto LABEL_172;
        }

        v22 = *(this + 183);
        v10 = *(v22 + 416);
        v11 = *(v22 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      else if (mSelector == 1702248804)
      {
        v34 = *(this + 183);
        v10 = *(v34 + 416);
        v11 = *(v34 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        if (mSelector != 1702392685)
        {
          goto LABEL_172;
        }

        v18 = *(this + 183);
        v10 = *(v18 + 416);
        v11 = *(v18 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else if (mSelector <= 1818850144)
    {
      if (mSelector == 1818452846)
      {
        v54 = *(this + 183);
        v10 = *(v54 + 416);
        v11 = *(v54 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        if (mSelector != 1818455662)
        {
          goto LABEL_172;
        }

        v25 = *(this + 183);
        v10 = *(v25 + 416);
        v11 = *(v25 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else if (mSelector == 1818850145 || mSelector == 1818850162)
    {
      v33 = *(this + 183);
      v10 = *(v33 + 416);
      v11 = *(v33 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      if (mSelector != 1819107691)
      {
        goto LABEL_172;
      }

      v14 = *(this + 183);
      v10 = *(v14 + 416);
      v11 = *(v14 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }
    }

    goto LABEL_233;
  }

  if (mSelector <= 1886546293)
  {
    if (mSelector <= 1819634019)
    {
      if (mSelector != 1819111268)
      {
        v8 = 1819173229;
LABEL_88:
        if (mSelector == v8)
        {
          v26 = *(this + 183);
          v27 = *(v26 + 416);
          v28 = *(v26 + 424);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = *(this + 369);
          if (a4)
          {
            v30 = a4[20].mSelector;
          }

          else
          {
            v30 = 0;
          }

          v67 = 0x676C6F626C6E616DLL;
          v68 = 0;
          v61 = (*(*v27 + 544))(v27, v29, v30, &v67);
          goto LABEL_220;
        }

LABEL_172:
        if (HALS_Device::HasProperty(this, a2, a3, a4))
        {
          return 1;
        }

        if ((*(*(this + 182) + 24))(this + 1456, a3->mSelector))
        {
          v65 = *(this + 183);
          v10 = *(v65 + 416);
          v11 = *(v65 + 424);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = *(this + 369);
          if (a4)
          {
            v13 = a4[20].mSelector;
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_233;
        }

        return 0;
      }

      v55 = *(this + 183);
      v10 = *(v55 + 416);
      v11 = *(v55 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }

LABEL_233:
      v16 = (*(*v10 + 544))(v10, v12, v13, a3);
      if (v11)
      {
        v66 = v11;
        goto LABEL_235;
      }

      return v16;
    }

    if (mSelector != 1819634020)
    {
      if (mSelector != 1836411236)
      {
        v8 = 1851878764;
        goto LABEL_88;
      }

      v43 = *(this + 183);
      v10 = *(v43 + 416);
      v11 = *(v43 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_233;
    }

    v48 = *(this + 183);
    v49 = *(v48 + 416);
    v28 = *(v48 + 424);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = *(this + 369);
    if (a4)
    {
      v51 = a4[20].mSelector;
    }

    else
    {
      v51 = 0;
    }

    v67 = 0x676C6F626C756964;
    v68 = 0;
    v61 = (*(*v49 + 544))(v49, v50, v51, &v67);
LABEL_220:
    v16 = v61;
    if (v28)
    {
      v66 = v28;
LABEL_235:
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      return v16;
    }

    return v16;
  }

  v16 = 1;
  if (mSelector <= 1919251301)
  {
    if (mSelector != 1886546294)
    {
      if (mSelector == 1919251299)
      {
        return v16;
      }

      goto LABEL_172;
    }

    v57 = *(this + 5);
    v56 = *(this + 6);
    if (v57 == v56 || v57 == 1701078390)
    {
      if (v57 != 1701078390 && v57 == v56)
      {
        return 0;
      }
    }

    else if (v56 != 1701078390)
    {
      return 0;
    }

    v63 = *(this + 183);
    v10 = *(v63 + 416);
    v11 = *(v63 + 424);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 369);
    if (a4)
    {
      v13 = a4[20].mSelector;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_233;
  }

  if (mSelector == 1919251302)
  {
    return v16;
  }

  if (mSelector != 1920168547)
  {
    v15 = 1936290671;
    goto LABEL_36;
  }

  v44 = this + 1456;

  return HALS_PlugInObject::HasResourceBundle(v44, a4);
}