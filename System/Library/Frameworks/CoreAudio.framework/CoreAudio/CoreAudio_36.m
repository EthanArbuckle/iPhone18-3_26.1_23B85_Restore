uint64_t AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[130];
}

uint64_t AMCP::Thing::convert_to<AMCP::Resampler_Type>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
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

  v14 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
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

void sub_1DE4B0830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *std::__function::__value_func<void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4B0B58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v10, "scale");
  v2 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((v1 + 48), v10);
  if (v2)
  {
    v3 = AMCP::Thing::convert_to<BOOL>((v2 + 5));
  }

  else
  {
    v3 = 0;
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
    if (v3)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

LABEL_6:
  __p[0] = 0;
  __p[1] = 0;
  AMCP::DAL::DAL_Settings::DAL_Settings(v10, __p);
  std::string::basic_string[abi:ne200100]<0>(__p, "get latency");
  AMCP::DAL::DAL_Settings::add<BOOL>(v10, __p, 1);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  __p[0] = *(v1 + 104);
  __p[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 136))(v4, __p, v10);
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(v10);
  return v6;
}

void sub_1DE4B0D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void sub_1DE4B0D8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE4B0D84);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59736E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59736E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59736E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5973658;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::~__func(void *a1)
{
  *a1 = &unk_1F5973658;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::~__func(void *a1)
{
  *a1 = &unk_1F5973658;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59735C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F59735C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F59735C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 208) - 1;
  *(v1 + 208) = v2;
  if (!v2)
  {
    v3 = *(v1 + 144);
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5973548;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5973548;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5973548;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59734C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59734C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59734C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, int *a2, uint64_t a3, AMCP::DAL::DAL_Time **a4, uint64_t *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = *a4;
  if (a4[1] - *a4 != 88)
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
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 117;
      *&buf[18] = 2080;
      *&buf[20] = "not (sources.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Converter nodes should never be connected to more than one incoming buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Converter nodes should never be connected to more than one incoming buffer", &v39);
    std::logic_error::logic_error(&v41, &v39);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v41);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    __p.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v43 = "auto AMCP::Graph::Converter::get_proc()::(anonymous class)::operator()(Object_ID, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &) const";
    *(&v43 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    LODWORD(v44) = 117;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v30);
  }

  v7 = *a5;
  if (a5[1] - *a5 != 88)
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
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 118;
      *&buf[18] = 2080;
      *&buf[20] = "not (dests.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Converter nodes should never be connected to more than one outgoing buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Converter nodes should never be connected to more than one outgoing buffer", &v39);
    std::logic_error::logic_error(&v41, &v39);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v41);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    __p.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v43 = "auto AMCP::Graph::Converter::get_proc()::(anonymous class)::operator()(Object_ID, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &) const";
    *(&v43 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    LODWORD(v44) = 118;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v30);
  }

  v10 = *a2;
  v11 = *(a1 + 1);
  v12 = *(v5 + 4);
  v30[0] = *(v5 + 3);
  v30[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v7 + 32);
  v41.__vftable = *(v7 + 24);
  v41.__imp_.__imp_ = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Timed_Segment::get_format(v40, *(v5 + 10));
  AMCP::DAL::DAL_Timed_Segment::get_format(&v39, *(v7 + 80));
  AMCP::Graph::Converter::update_settings(v11, v30, &v41, v40, &v39);
  std::string::basic_string[abi:ne200100]<0>(buf, "volume processing");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((v11 + 48), buf);
  if (v14 && AMCP::Thing::convert_to<BOOL>((v14 + 5)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "volume connection");
    v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((v11 + 48), &__p) != 0;
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p.__vftable);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  else if (!v15)
  {
    goto LABEL_29;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "volume connection");
  __p.__vftable = 0;
  __p.__imp_.__imp_ = 0;
  AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(&v38, (v11 + 48), buf, &__p);
  if (__p.__imp_.__imp_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__imp_.__imp_);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v16 = v38.n128_u64[0];
  caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(&__p, v38.n128_u64[0]);
  if ((v37 & 1) == 0 && *&__p.__imp_.__imp_ == 0.0)
  {
    sample_time = AMCP::DAL::DAL_Time::get_sample_time(v5);
    caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(buf, v16);
    v43 = 0u;
    v44 = 0u;
    *&buf[16] = 0u;
    *&buf[8] = sample_time;
    v45 = 1;
    caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(v16, buf);
  }

  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = AMCP::DAL::DAL_Time::get_sample_time(v5);
  v19 = AMCP::DAL::DAL_Time::get_sample_time((v5 + 40));
  caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(buf, v16);
  v46 = v18;
  v47 = v19;
  caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(v16, buf);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v38.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38.n128_u64[1]);
  }

LABEL_29:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v20 = *(v11 + 136);
  if (v20)
  {
    AMCP::DAL::create_timestamp_data(buf, (a3 + 80), *(*a4 + 3), *(*a4 + 4));
    (*(**v20 + 16))(*v20, buf, *a4);
    std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(buf);
  }

  *buf = &unk_1F59732E0;
  *&buf[8] = v11;
  *&buf[16] = v10;
  *&buf[24] = 0;
  *&v43 = 0;
  AMCP::Graph::process_once_across_timebases(*(v11 + 40), a4, a5, buf);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE4B1F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, std::__shared_weak_count *a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::process_once_across_timebases(int a1, AMCP::DAL::DAL_Time **a2, void *a3, uint64_t a4)
{
  v264 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *(*a2 + 2);
  v10 = *(*a2 + 3);
  *&v235.__r_.__value_.__l.__data_ = **a2;
  v235.__r_.__value_.__r.__words[2] = v9;
  *&v236 = v10;
  v11 = *(v8 + 4);
  *(&v236 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(v8 + 7);
  v13 = *(v8 + 8);
  v237 = *(v8 + 40);
  v238 = v12;
  *&v239 = v13;
  v14 = *(v8 + 9);
  *(&v239 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = (*(*a4 + 32))(a4);
  memset(&__p[8], 0, 32);
  *__p = 0;
  LODWORD(v255) = 0;
  (*(*v15 + 96))(v15, __p, &v235, 0);
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  v207 = v235;
  v208 = v236;
  if (*(&v236 + 1))
  {
    atomic_fetch_add_explicit((*(&v236 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v209 = v237;
  v210 = v238;
  v211 = v239;
  if (*(&v239 + 1))
  {
    atomic_fetch_add_explicit((*(&v239 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v15 + 160))(__p, v15, &v207);
  if (*(&v211 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v211 + 1));
  }

  if (*(&v208 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v208 + 1));
  }

  *&v202.__r_.__value_.__r.__words[1] = 0u;
  v203 = 0u;
  LODWORD(v202.__r_.__value_.__l.__data_) = 0;
  LODWORD(v204) = 0;
  AMCP::DAL::Writable_Range::pad_and_receive_data(__p, &v202, *a2);
  memset(&v185, 0, sizeof(v185));
  v230 = v235;
  v231 = v236;
  if (*(&v236 + 1))
  {
    atomic_fetch_add_explicit((*(&v236 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v232 = v237;
  v233 = v238;
  v234 = v239;
  if (*(&v239 + 1))
  {
    atomic_fetch_add_explicit((*(&v239 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v15 + 144))(&v223, v15, &v230);
  v16 = 0x2E8BA2E8BA2E8BA3 * ((v185.__r_.__value_.__l.__size_ - v185.__r_.__value_.__r.__words[0]) >> 3);
  v17 = v16 + 1;
  if ((v16 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((v185.__r_.__value_.__r.__words[2] - v185.__r_.__value_.__r.__words[0]) >> 3) > v17)
  {
    v17 = 0x5D1745D1745D1746 * ((v185.__r_.__value_.__r.__words[2] - v185.__r_.__value_.__r.__words[0]) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((v185.__r_.__value_.__r.__words[2] - v185.__r_.__value_.__r.__words[0]) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v18 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v18 = v17;
  }

  v197 = &v185;
  if (v18)
  {
    v18 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Readable_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>>(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = (v18 + 88 * v16);
  *&v195 = v18;
  *(&v195 + 1) = v20;
  *(&v196 + 1) = v18 + 88 * v19;
  v21 = v223;
  *(v20 + 2) = *v224;
  *v20 = v21;
  *(v20 + 24) = *&v224[8];
  *&v224[16] = 0;
  *&v224[8] = 0;
  v22 = v225;
  *(v20 + 7) = *v226;
  *(v20 + 40) = v22;
  *(v20 + 4) = *&v226[8];
  *&v226[8] = 0uLL;
  *(v20 + 10) = v227;
  *&v196 = v20 + 88;
  v23 = &v20[v185.__r_.__value_.__r.__words[0] - v185.__r_.__value_.__l.__size_];
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>,AMCP::DAL::Readable_Range*>(v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_, v23);
  v24 = v185.__r_.__value_.__r.__words[0];
  v25 = v185.__r_.__value_.__r.__words[2];
  v185.__r_.__value_.__r.__words[0] = v23;
  v174 = v196;
  *&v185.__r_.__value_.__r.__words[1] = v196;
  *&v196 = v24;
  *(&v196 + 1) = v25;
  *&v195 = v24;
  *(&v195 + 1) = v24;
  std::__split_buffer<AMCP::DAL::Readable_Range,caulk::rt_allocator<AMCP::DAL::Readable_Range> &>::~__split_buffer(&v195);
  v185.__r_.__value_.__l.__size_ = v174;
  if (*&v226[16])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v226[16]);
  }

  if (*&v224[16])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v224[16]);
  }

  if (*(&v234 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
  }

  if (*(&v231 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v231 + 1));
  }

  v190 = v185;
  memset(&v185, 0, sizeof(v185));
  v191 = 1;
  v223.__vftable = &v185;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](&v223);
  if (SBYTE7(v203) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__size_);
  }

  if (*&v256[16])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v256[16]);
  }

  if (*&__p[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
  }

  if (*(&v239 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v239 + 1));
  }

  v26 = *(&v236 + 1);
  if (*(&v236 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v236 + 1));
  }

  if (v191)
  {
    v27 = &v190;
  }

  else
  {
    v27 = a2;
  }

  p_size = &v190.__r_.__value_.__l.__size_;
  if (!v191)
  {
    p_size = (a2 + 1);
  }

  if (*p_size - v27->__r_.__value_.__r.__words[0] != 88)
  {
    v118 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v118 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v26);
    }

    v120 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v119 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v119)
    {
      atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
      v121 = *v120;
      std::__shared_weak_count::__release_shared[abi:ne200100](v119);
    }

    else
    {
      v121 = *v120;
    }

    if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 619;
      *&__p[18] = 2080;
      *&__p[20] = "not (sources.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v121, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Converter should have one source range", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v195);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Converter should have one source range", &v207);
    std::logic_error::logic_error(&v202, &v207);
    v202.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v223, &v202);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 619;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v230);
  }

  v29 = *a3;
  if (a3[1] - *a3 != 88)
  {
    v122 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v122 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v26);
    }

    v124 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v123 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v123)
    {
      atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
      v125 = *v124;
      std::__shared_weak_count::__release_shared[abi:ne200100](v123);
    }

    else
    {
      v125 = *v124;
    }

    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 620;
      *&__p[18] = 2080;
      *&__p[20] = "not (dests.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v125, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Converter should have one dest range", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v195);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Converter should have one dest range", &v207);
    std::logic_error::logic_error(&v202, &v207);
    v202.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v223, &v202);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 620;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v230);
  }

  v30 = *(v29 + 16);
  v31 = *(v29 + 24);
  *&v185.__r_.__value_.__l.__data_ = *v29;
  v185.__r_.__value_.__r.__words[2] = v30;
  *&v186 = v31;
  v32 = *(v29 + 32);
  *(&v186 + 1) = v32;
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = *(v29 + 56);
  v34 = *(v29 + 64);
  v187 = *(v29 + 40);
  v188 = v33;
  *&v189 = v34;
  v35 = *(v29 + 72);
  *(&v189 + 1) = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(v184, *(v27->__r_.__value_.__r.__words[0] + 80), v27->__r_.__value_.__r.__words[0]);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v185);
  AMCP::DAL::DAL_Time::get_sample_time(&v187);
  v37 = AMCP::DAL::DAL_Time::get_sample_time(&v185);
  AMCP::DAL::DAL_Time::get_sample_time(&v187);
  if (sample_time != floor(v37))
  {
    v126 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v126 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v38);
    }

    v128 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v127 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v127)
    {
      atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      v129 = *v128;
      std::__shared_weak_count::__release_shared[abi:ne200100](v127);
    }

    else
    {
      v129 = *v128;
    }

    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 625;
      *&__p[18] = 2080;
      *&__p[20] = "not (dest_range.get_range().start().get_double() == dest_range.get_range().start().floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v129, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v195);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We should have no fractional samples", &v207);
    std::logic_error::logic_error(&v202, &v207);
    v202.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v223, &v202);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 625;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v230);
  }

  AMCP::DAL::DAL_Time::get_sample_time(&v185);
  v39 = AMCP::DAL::DAL_Time::get_sample_time(&v187);
  AMCP::DAL::DAL_Time::get_sample_time(&v185);
  if (v39 != floor(AMCP::DAL::DAL_Time::get_sample_time(&v187)))
  {
    v130 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v130 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v40);
    }

    v132 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v131 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v131)
    {
      atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
      v133 = *v132;
      std::__shared_weak_count::__release_shared[abi:ne200100](v131);
    }

    else
    {
      v133 = *v132;
    }

    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 626;
      *&__p[18] = 2080;
      *&__p[20] = "not (dest_range.get_range().end().get_double() == dest_range.get_range().end().floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v133, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v195);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We should have no fractional samples", &v207);
    std::logic_error::logic_error(&v202, &v207);
    v202.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v223, &v202);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 626;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v230);
  }

  v41 = v27->__r_.__value_.__r.__words[0];
  v42 = AMCP::DAL::DAL_Time::get_sample_time(v27->__r_.__value_.__l.__data_);
  AMCP::DAL::DAL_Time::get_sample_time((v41 + 40));
  v43 = v27->__r_.__value_.__r.__words[0];
  v44 = AMCP::DAL::DAL_Time::get_sample_time(v27->__r_.__value_.__l.__data_);
  AMCP::DAL::DAL_Time::get_sample_time((v43 + 40));
  if (v42 != floor(v44))
  {
    v134 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v134 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v45);
    }

    v136 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v135 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v135)
    {
      atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
      v137 = *v136;
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    else
    {
      v137 = *v136;
    }

    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 627;
      *&__p[18] = 2080;
      *&__p[20] = "not (sources[0].get_time_range().get_range().start().get_double() == sources[0].get_time_range().get_range().start().floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v137, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v195);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We should have no fractional samples", &v207);
    std::logic_error::logic_error(&v202, &v207);
    v202.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v223, &v202);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 627;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v230);
  }

  v46 = v27->__r_.__value_.__r.__words[0];
  AMCP::DAL::DAL_Time::get_sample_time(v27->__r_.__value_.__l.__data_);
  v47 = AMCP::DAL::DAL_Time::get_sample_time((v46 + 40));
  v48 = v27->__r_.__value_.__r.__words[0];
  AMCP::DAL::DAL_Time::get_sample_time(v27->__r_.__value_.__l.__data_);
  if (v47 != floor(AMCP::DAL::DAL_Time::get_sample_time((v48 + 40))))
  {
    v138 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v138 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v49);
    }

    v140 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v139 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v139)
    {
      atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
      v141 = *v140;
      std::__shared_weak_count::__release_shared[abi:ne200100](v139);
    }

    else
    {
      v141 = *v140;
    }

    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 628;
      *&__p[18] = 2080;
      *&__p[20] = "not (sources[0].get_time_range().get_range().end().get_double() == sources[0].get_time_range().get_range().end().floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v141, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v195);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We should have no fractional samples", &v207);
    std::logic_error::logic_error(&v202, &v207);
    v202.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v223, &v202);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 628;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v230);
  }

  v50 = v184[0];
  if ((v184[1] - v184[0]) != 96)
  {
    v142 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v142 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v49);
    }

    v144 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v143 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v143)
    {
      atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
      v145 = *v144;
      std::__shared_weak_count::__release_shared[abi:ne200100](v143);
    }

    else
    {
      v145 = *v144;
    }

    if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 630;
      *&__p[18] = 2080;
      *&__p[20] = "not (source_ranges.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v145, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should only ever have one source after copying from the ring buffer into the temp fixed buffer.", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v195);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We should only ever have one source after copying from the ring buffer into the temp fixed buffer.", &v207);
    std::logic_error::logic_error(&v202, &v207);
    v202.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v223, &v202);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 630;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v230);
  }

  v175 = *a3;
  v179 = v185;
  v180 = v186;
  if (*(&v186 + 1))
  {
    atomic_fetch_add_explicit((*(&v186 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v181 = v187;
  v182 = v188;
  v183 = v189;
  if (*(&v189 + 1))
  {
    atomic_fetch_add_explicit((*(&v189 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(**(v27->__r_.__value_.__r.__words[0] + 80) + 56))(&v177);
  (*(**(*a3 + 80) + 56))(&v176);
  v195 = *(v50 + 1);
  v51 = *(v50 + 5);
  *&v196 = v50[4];
  *(&v196 + 1) = v51;
  v52 = *(v50 + 6);
  v197 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v198 = *(v50 + 7);
  v53 = *(v50 + 10);
  v199 = *(v50 + 9);
  v200 = v53;
  v54 = *(v50 + 11);
  v201 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1)
  {
    AMCP::DAL::DAL_Time::operator-(v192, &v181, &v179);
    if ((v192[0] & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(v192);
    }

    v235.__r_.__value_.__r.__words[0] = 0;
    v55 = (*(*a4 + 24))(a4, 1, &v235, round(v193));
    v56 = v55 + AMCP::DAL::DAL_Time::get_sample_time((v50 + 2));
    v57 = *(v50 + 5);
    v58 = *(v50 + 6);
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v223.__vftable) = 2;
    *&v223.__imp_.__imp_ = v56;
    *v224 = 0;
    *&v224[8] = v57;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(__p, (v50 + 2), &v223);
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    v59 = *&__p[32];
    v195 = *__p;
    v60 = *&__p[24];
    *&__p[32] = 0;
    *&__p[24] = 0;
    *&v196 = *&__p[16];
    *(&v196 + 1) = v60;
    v197 = v59;
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    v198 = v255;
    v61 = *&v256[8];
    v199 = *v256;
    v62 = *&v256[16];
    *&v256[8] = 0uLL;
    v200 = v61;
    v201 = v62;
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      if (*&v256[16])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v256[16]);
      }
    }

    if (*&__p[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
    }

    if (v194)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v194);
    }

    v52 = v59;
    v54 = v62;
  }

  else
  {
    AMCP::DAL::DAL_Time::operator-(&v223, (v50 + 7), (v50 + 2));
    if ((v223.__vftable & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(&v223);
    }

    imp = v223.__imp_.__imp_;
    if (*&v224[16])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v224[16]);
    }

    v235.__r_.__value_.__r.__words[0] = imp;
    v64 = (*(*a4 + 24))(a4, 0, &v235, *&imp);
    v65 = v64 + AMCP::DAL::DAL_Time::get_sample_time(&v179);
    v66 = v180;
    v67 = *(&v180 + 1);
    if (*(&v180 + 1))
    {
      atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v223.__vftable) = 2;
    *&v223.__imp_.__imp_ = v65;
    *v224 = 0;
    *&v224[8] = v66;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(__p, &v179, &v223);
    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }

    v68 = *&__p[24];
    v69 = *(&v180 + 1);
    v179 = *__p;
    *&__p[32] = 0;
    *&__p[24] = 0;
    v180 = v68;
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

    v181 = v255;
    v182 = *v256;
    v70 = *&v256[8];
    *&v256[8] = 0uLL;
    v71 = *(&v183 + 1);
    v183 = v70;
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
      if (*&v256[16])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v256[16]);
      }
    }

    if (*&__p[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
    }
  }

  v73 = *(&v180 + 1);
  v72 = v180;
  if (*(&v180 + 1))
  {
    v74 = 1;
    atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
    v75 = *(&v180 + 1);
    v76 = v180;
    if (*(&v180 + 1))
    {
      v74 = 0;
      atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v75 = 0;
    v74 = 1;
    v76 = v180;
  }

  v77 = (v72 | v76) == 0;
  if (!v72 || !v76)
  {
LABEL_121:
    if (v74)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  v78 = (*(*v72 + 16))(v72);
  v72 = (*(*v76 + 16))(v76);
  v79 = *(v78 + 23);
  if (v79 >= 0)
  {
    v80 = *(v78 + 23);
  }

  else
  {
    v80 = *(v78 + 8);
  }

  v81 = *(v72 + 23);
  v82 = v81;
  if ((v81 & 0x80u) != 0)
  {
    v81 = *(v72 + 8);
  }

  if (v80 == v81)
  {
    if (v79 >= 0)
    {
      v83 = v78;
    }

    else
    {
      v83 = *v78;
    }

    if (v82 >= 0)
    {
      v84 = v72;
    }

    else
    {
      v84 = *v72;
    }

    v72 = memcmp(v83, v84, v80);
    v77 = v72 == 0;
    goto LABEL_121;
  }

  v77 = 0;
  if ((v74 & 1) == 0)
  {
LABEL_122:
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

LABEL_123:
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (!v77)
  {
    v146 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v146 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v72);
    }

    v148 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v147 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v147)
    {
      atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
      v149 = *v148;
      std::__shared_weak_count::__release_shared[abi:ne200100](v147);
    }

    else
    {
      v149 = *v148;
    }

    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 516;
      *&__p[18] = 2080;
      *&__p[20] = "not (is_same_timebase(destination_range.start().get_clock(), destination_range.start().get_clock()))";
      _os_log_error_impl(&dword_1DE1F9000, v149, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v260);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v207);
    std::logic_error::logic_error(&v202, &v207);
    v202.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v223, &v202);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "Process_Range_Results AMCP::Graph::process_variable_size_range(Buffer_Alignment, const Cross_Timebase_Processor &, const AMCP::DAL::Buffer_Time_Translator::Translation_Range &, AMCP::DAL::Writable_Range &, DAL::DAL_Time_Range, const DAL::Container, DAL::Container)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 516;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v230);
  }

  v85 = v177;
  v86 = v178;
  if (v178)
  {
    atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v171 = v176;
  v87 = *(&v176 + 1);
  if (*(&v176 + 1))
  {
    atomic_fetch_add_explicit((*(&v176 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v173 = v87;
  AMCP::DAL::DAL_Timed_Segment::translate_range(&v241, *(v175 + 80), &v179);
  if (0xAAAAAAAAAAAAAAABLL * ((v242 - v241) >> 5) >= 2)
  {
    v172 = v86;
    v88 = (*(*a4 + 40))(a4);
    memset(&__p[8], 0, 32);
    *__p = 0;
    LODWORD(v255) = 0;
    (*(*v88 + 96))(v88, __p, &v179, 0);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    v230 = v179;
    v231 = v180;
    if (*(&v180 + 1))
    {
      atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v232 = v181;
    v233 = v182;
    v234 = v183;
    if (*(&v183 + 1))
    {
      atomic_fetch_add_explicit((*(&v183 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v88 + 160))(&v235, v88, &v230);
    if (*(&v234 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
    }

    if (*(&v231 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v231 + 1));
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(v229, v240, &v179);
    v90 = v229[0];
    if ((v229[1] - v229[0]) == 96)
    {
      v91 = *(v229[0] + 1);
      v92 = *(v229[0] + 4);
      v93 = *(v229[0] + 5);
      v223 = *v229[0];
      *v224 = v91;
      *&v224[16] = v92;
      *&v225 = v93;
      v94 = *(v229[0] + 6);
      *(&v225 + 1) = v94;
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v95 = *(v90 + 9);
      v96 = *(v90 + 10);
      *v226 = *(v90 + 7);
      *&v226[16] = v95;
      v227 = v96;
      v97 = *(v90 + 11);
      v228 = v97;
      if (v97)
      {
        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v222 = v223;
      (*(*v88 + 56))(&v220, v88);
      v218 = v85;
      v219 = v172;
      if (v172)
      {
        atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v216 = v220;
      v217 = v221;
      if (v221)
      {
        atomic_fetch_add_explicit(&v221->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a4 + 16))(__p, a4, &v218, v50, &v216, &v222);
      v98 = *__p;
      v99 = *&__p[8];
      v100 = *&__p[16];
      if (v217)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v217);
      }

      if (v219)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v219);
      }

      v101 = AMCP::DAL::DAL_Time::get_sample_time(&v179);
      v103 = round(AMCP::DAL::DAL_Time::get_sample_time(&v181) - v101);
      v104 = round(v100 - v99);
      if (v103 != v104)
      {
        v154 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v154 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v102);
        }

        v156 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v155 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v155)
        {
          atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
          v157 = *v156;
          std::__shared_weak_count::__release_shared[abi:ne200100](v155);
        }

        else
        {
          v157 = *v156;
        }

        if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "Converter.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 466;
          *&__p[18] = 2080;
          *&__p[20] = "not (destination_range.get_range().length() == processed_range.length())";
          _os_log_error_impl(&dword_1DE1F9000, v157, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v244);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", v260);
        std::logic_error::logic_error(v212, v260);
        *v212 = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v207, v212);
        v208 = 0uLL;
        *&v209 = 0;
        DWORD2(v209) = -1;
        v207.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v207.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v207);
        *&__p[32] = "Process_Range_Results AMCP::Graph::process_data_into_destination(const Cross_Timebase_Processor &, const DAL::DAL_Time_Range &, const AMCP::DAL::Buffer_Time_Translator::Translation_Range &, AMCP::DAL::Writable_Range &, const DAL::Container, DAL::Container)";
        *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
        DWORD2(v255) = 466;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v247);
      }

      if (round(*&v223.__imp_.__imp_ - *&v223.__vftable) != v104)
      {
        v158 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v158 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v102);
        }

        v160 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v159 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v159)
        {
          atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
          v161 = *v160;
          std::__shared_weak_count::__release_shared[abi:ne200100](v159);
        }

        else
        {
          v161 = *v160;
        }

        if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "Converter.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 467;
          *&__p[18] = 2080;
          *&__p[20] = "not (temp_buffer_translated_range.m_local_range.length() == processed_range.length())";
          _os_log_error_impl(&dword_1DE1F9000, v161, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v244);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", v260);
        std::logic_error::logic_error(v212, v260);
        *v212 = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v207, v212);
        v208 = 0uLL;
        *&v209 = 0;
        DWORD2(v209) = -1;
        v207.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v207.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v207);
        *&__p[32] = "Process_Range_Results AMCP::Graph::process_data_into_destination(const Cross_Timebase_Processor &, const DAL::DAL_Time_Range &, const AMCP::DAL::Buffer_Time_Translator::Translation_Range &, AMCP::DAL::Writable_Range &, const DAL::Container, DAL::Container)";
        *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
        DWORD2(v255) = 467;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v247);
      }

      (*(*v88 + 56))(&v215, v88);
      *__p = v223;
      *&__p[16] = *v224;
      *&__p[32] = *&v224[16];
      *&v255 = v93;
      *(&v255 + 1) = v94;
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v256 = *v226;
      *&v256[16] = *&v226[16];
      v257 = v96;
      v258 = v97;
      if (v97)
      {
        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v259 = v215;
      v215 = 0uLL;
      *&v212[8] = 0u;
      v213 = 0u;
      *v212 = v98;
      v214 = 0;
      AMCP::DAL::Writable_Range::commit_direct_write(v240, v212, __p);
      v202 = v179;
      v203 = v180;
      if (*(&v180 + 1))
      {
        atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v204 = v181;
      v205 = v182;
      v206 = v183;
      if (*(&v183 + 1))
      {
        atomic_fetch_add_explicit((*(&v183 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v88 + 144))(&v207, v88, &v202);
      v86 = v172;
      v105 = AMCP::DAL::DAL_Time::operator<(&v209, &v207);
      if (v105)
      {
        v162 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v162 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v105);
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
          *v260 = 136315650;
          *&v260[4] = "DAL_Timed_Segment.cpp";
          *&v260[12] = 1024;
          *&v260[14] = 181;
          *&v260[18] = 2080;
          *&v260[20] = "not (incoming_data.get_time_range().end() >= incoming_data.get_time_range().start())";
          _os_log_error_impl(&dword_1DE1F9000, v165, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Writable_Range::RecieveData: Bad time range", v260, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v253);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Writable_Range::RecieveData: Bad time range", &v245);
        std::logic_error::logic_error(&v246, &v245);
        v246.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v247, &v246);
        v250 = 0;
        v249 = 0;
        v251 = 0;
        v252 = -1;
        v247.__vftable = &unk_1F5991430;
        v248 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v247);
        v261 = "void AMCP::DAL::Writable_Range::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
        v262 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v263 = 181;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v243);
      }

      AMCP::DAL::DAL_Time::operator-(v260, &v181, &v179);
      AMCP::DAL::DAL_Time::operator-(&v247, &v209, &v207);
      v106 = AMCP::DAL::DAL_Time_Delta::operator==(v260, &v247);
      if (v250)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v250);
      }

      v107 = v261;
      if (v261)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v261);
      }

      if (!v106)
      {
        v166 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v166 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v107);
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
          *v260 = 136315650;
          *&v260[4] = "DAL_Timed_Segment.cpp";
          *&v260[12] = 1024;
          *&v260[14] = 182;
          *&v260[18] = 2080;
          *&v260[20] = "not (write_range.length() == incoming_data.get_time_range().length())";
          _os_log_error_impl(&dword_1DE1F9000, v169, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v260, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v253);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", &v245);
        std::logic_error::logic_error(&v246, &v245);
        v246.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v247, &v246);
        v250 = 0;
        v249 = 0;
        v251 = 0;
        v252 = -1;
        v247.__vftable = &unk_1F5991430;
        v248 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v260, &v247);
        v261 = "void AMCP::DAL::Writable_Range::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
        v262 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v263 = 182;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v243);
      }

      (*(**(v175 + 80) + 32))(*(v175 + 80), v212, &v207, &v179);
      if (*(&v211 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v211 + 1));
      }

      if (*(&v208 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v208 + 1));
      }

      if (*(&v206 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v206 + 1));
      }

      if (*(&v203 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v203 + 1));
      }

      if (SBYTE7(v213) < 0)
      {
        operator delete(*&v212[8]);
      }

      if (*(&v259 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v259 + 1));
      }

      if (v258)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v258);
      }

      if (*(&v255 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v255 + 1));
      }

      if (v221)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v221);
      }

      if (v97)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v97);
      }

      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
      }

      *__p = v229;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
      if (*(&v239 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v239 + 1));
      }

      v108 = *(&v236 + 1);
      if (!*(&v236 + 1))
      {
        goto LABEL_229;
      }

LABEL_228:
      std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      goto LABEL_229;
    }

LABEL_287:
    v150 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v150 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v89);
    }

    v152 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v151 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
      v153 = *v152;
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
    }

    else
    {
      v153 = *v152;
    }

    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 456;
      *&__p[18] = 2080;
      *&__p[20] = "not (temp_buffer_translated_ranges.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v153, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s temp_buffer local range needs to be contiguous!", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v212);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("temp_buffer local range needs to be contiguous!", &v202);
    std::logic_error::logic_error(&v247, &v202);
    v247.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v223, &v247);
    *&v224[16] = 0;
    *&v224[8] = 0;
    *&v225 = 0;
    DWORD2(v225) = -1;
    v223.__vftable = &unk_1F5991430;
    *v224 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v223);
    *&__p[32] = "Process_Range_Results AMCP::Graph::process_data_into_destination(const Cross_Timebase_Processor &, const DAL::DAL_Time_Range &, const AMCP::DAL::Buffer_Time_Translator::Translation_Range &, AMCP::DAL::Writable_Range &, const DAL::Container, DAL::Container)";
    *&v255 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v255) = 456;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v260);
  }

  if (v242 - v241 != 96)
  {
    goto LABEL_286;
  }

  v207.__r_.__value_.__r.__words[0] = v85;
  v207.__r_.__value_.__l.__size_ = v86;
  if (v86)
  {
    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v230.__r_.__value_.__l.__data_ = v171;
  if (v173)
  {
    atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a4 + 16))(__p, a4, &v207, v50, &v230);
  v109 = *__p;
  v170 = *&__p[8];
  if (v230.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230.__r_.__value_.__l.__size_);
  }

  if (v207.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v207.__r_.__value_.__l.__size_);
  }

  v110 = v241;
  if (v242 == v241)
  {
LABEL_286:
    v89 = CAAssertRtn();
    goto LABEL_287;
  }

  v112 = *(v241 + 4);
  v111 = *(v241 + 5);
  *v224 = *(v241 + 1);
  *&v224[16] = v112;
  *&v225 = v111;
  v113 = *(v241 + 6);
  *(&v225 + 1) = v113;
  if (v113)
  {
    atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = *(v110 + 9);
  v114 = *(v110 + 10);
  *v226 = *(v110 + 7);
  *&v226[16] = v115;
  v227 = v114;
  v116 = *(v110 + 11);
  v228 = v116;
  if (v116)
  {
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v223 = v170;
  if (v173)
  {
    atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *__p = v223;
  *&__p[16] = *v224;
  *&__p[32] = *&v224[16];
  *&v255 = v111;
  *(&v255 + 1) = v113;
  if (v113)
  {
    atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v256 = *v226;
  *&v256[16] = *&v226[16];
  v257 = v114;
  v258 = v116;
  if (v116)
  {
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v259 = v171;
  *&v235.__r_.__value_.__r.__words[1] = 0u;
  v236 = 0u;
  LODWORD(v235.__r_.__value_.__l.__data_) = v109;
  LODWORD(v237) = 0;
  AMCP::DAL::Writable_Range::commit_direct_write(*(v175 + 80), &v235, __p);
  if (SBYTE7(v236) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__size_);
  }

  if (*(&v259 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v259 + 1));
  }

  if (v258)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v258);
  }

  if (*(&v255 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v255 + 1));
  }

  if (v116)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v116);
  }

  if (v113)
  {
    v108 = v113;
    goto LABEL_228;
  }

LABEL_229:
  *__p = &v241;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v173)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v173);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (*(&v176 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v176 + 1));
  }

  if (v178)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v178);
  }

  if (*(&v183 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v183 + 1));
  }

  if (*(&v180 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v180 + 1));
  }

  *__p = v184;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (*(&v189 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v189 + 1));
  }

  if (*(&v186 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v186 + 1));
  }

  if (v191 == 1)
  {
    *__p = &v190;
    std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  v117 = *MEMORY[0x1E69E9840];
}

void sub_1DE4B4F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (STACK[0x310])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x310]);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a55);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a21);
  STACK[0x4D0] = &a32;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4D0]);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a35);
  if (a48 == 1)
  {
    STACK[0x4D0] = &a45;
    std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4D0]);
  }

  _Unwind_Resume(a1);
}

void AMCP::DAL::Writable_Range::Direct_Write_Range::~Direct_Write_Range(AMCP::DAL::Writable_Range::Direct_Write_Range *this)
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

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void AMCP::DAL::Buffer_Time_Translator::Translation_Range::~Translation_Range(AMCP::DAL::Buffer_Time_Translator::Translation_Range *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(__n128 *a1, void *a2, void *a3, __n128 *a4)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, a3);
  if (v6)
  {

    AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(a1, (v6 + 5));
  }

  else
  {
    result = *a4;
    *a1 = *a4;
    a4->n128_u64[0] = 0;
    a4->n128_u64[1] = 0;
  }

  return result;
}

double caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(uint64_t a1, unsigned int *a2)
{
  v16 = 0;
  v3 = atomic_load(a2);
  if ((v3 & 2) != 0)
  {
    v5 = a2 + 16;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = &v5[48 * ((v3 & 4) == 0)];
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = &v5[48 * v6], explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 30);
        *(a1 + 96) = *(v7 + 26);
        *(a1 + 112) = v9;
        v10 = *(v7 + 38);
        *(a1 + 128) = *(v7 + 34);
        *(a1 + 144) = v10;
        v11 = *(v7 + 14);
        *(a1 + 32) = *(v7 + 10);
        *(a1 + 48) = v11;
        v12 = *(v7 + 22);
        *(a1 + 64) = *(v7 + 18);
        *(a1 + 80) = v12;
        v13 = *(v7 + 2);
        v14 = *(v7 + 6);
        *a1 = v13;
        *(a1 + 16) = v14;
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v16);
      v3 = atomic_load(a2);
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *a1 = 1065353216;
    *&v13 = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0;
    *(a1 + 128) = 1;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  return *&v13;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5973448;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5973448;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5973448;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59733B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59733B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59733B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::operator()(AMCP::Graph::File_Capture_Settings *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  v2 = *(v1 + 208);
  *(v1 + 208) = v2 + 1;
  if (!v2)
  {
    AMCP::Graph::File_Capture_Settings::instance(a1);
    if (HIBYTE(AMCP::Graph::File_Capture_Settings::instance(void)::s_instance) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v12, "write");
      v13 = 0u;
      v14 = 0u;
      LOBYTE(v13) = 1;
      v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v16, "create unique name");
      v17 = 0u;
      v18 = 0u;
      LOBYTE(v17) = 1;
      v19 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v20, "write time stamps");
      v21 = 0u;
      v22 = 0u;
      LOBYTE(v21) = 1;
      v23 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      get_audio_capture_folder(__p);
      std::string::basic_string[abi:ne200100]<0>(v24, "file location");
      v25 = *__p;
      v26 = v9;
      v27 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v9 = 0;
      v28 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<char const* const&,std::string const&,0>(&v29, "name", (v1 + 16));
      asbd_to_dictionary(&cf, (v1 + 168));
      std::string::basic_string[abi:ne200100]<0>(v30, "asbd");
      v33 = 0;
      v34 = 0;
      v31 = cf;
      v32 = 0;
      cf = 0;
      v35 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
      v10[0] = &v12;
      v10[1] = 6;
      AMCP::DAL::DAL_Settings::DAL_Settings(v11, v10);
      v3 = 384;
      while (1)
      {
        v4 = (&v12 + v3);
        v5 = *&v11[v3 + 48];
        if (v5)
        {
          v5(0, v4 - 5, 0, 0);
        }

        if (*(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
        }

        v3 -= 64;
        if (!v3)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(v9) < 0)
          {
            operator delete(__p[0]);
          }

          std::allocate_shared[abi:ne200100]<AMCP::DAL::File,std::allocator<AMCP::DAL::File>,CA::StreamDescription const&,AMCP::DAL::DAL_Settings &,0>();
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE4B5EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5973338;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5973338;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5973338;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_emplace<AMCP::Graph::Node_Proc>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 368);
  if (v2)
  {
    std::function<void ()>::operator()(v2, 0);
  }

  v3 = *(a1 + 608);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 568);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 536);
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](a1 + 504);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](a1 + 472);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](a1 + 440);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](a1 + 408);
  std::__function::__value_func<void ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](a1 + 376);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 344);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 312);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](a1 + 280);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](a1 + 248);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](a1 + 216);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 184);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 152);
  std::__function::__value_func<std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__value_func[abi:ne200100](a1 + 120);
  std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__value_func[abi:ne200100](a1 + 88);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__value_func[abi:ne200100](a1 + 56);

  return std::__function::__value_func<void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__value_func[abi:ne200100](a1 + 24);
}

uint64_t std::__function::__value_func<void ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<AMCP::Graph::Node_Proc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5988158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t CAStreamRangedDescription::Sorter(CAStreamRangedDescription *this, const AudioStreamRangedDescription *a2, const AudioStreamRangedDescription *a3)
{
  v3 = *(this + 2);
  v4 = v3 != 0;
  mFormatID = a2->mFormat.mFormatID;
  if (!v3)
  {
    v10 = 0;
LABEL_22:
    v6 = v3 == 1819304813;
    v8 = mFormatID == 1819304813;
    goto LABEL_23;
  }

  v6 = v3 == 1819304813;
  if (mFormatID)
  {
    v7 = v3 == mFormatID;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v12 = mFormatID != 1819304813 && v3 < mFormatID;
    v10 = v3 == 1819304813 || v12;
    goto LABEL_22;
  }

  v8 = mFormatID == 1819304813;
  if (v3 == 1819304813 && mFormatID == 1819304813)
  {
    mFormatFlags = a2->mFormat.mFormatFlags;
    v4 = (mFormatFlags & 0x40) == 0;
    if ((*(this + 12) & 0x40) != 0)
    {
      v10 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 1;
      if ((mFormatFlags & 0x40) != 0)
      {
        return v8 & 1;
      }

      v10 = 0;
      v4 = 0;
    }

    v6 = 1;
  }

  else
  {
    v10 = 0;
    v4 = 0;
  }

LABEL_23:
  v14 = !v6 || v4 || v8 == 0;
  if (!v14 && (*(this + 3) & 1) != (a2->mFormat.mFormatFlags & 1))
  {
    v10 = a2->mFormat.mFormatFlags;
    LOBYTE(v4) = 1;
  }

  LOBYTE(v8) = v10;
  if (!v4)
  {
    v8 = *(this + 8);
    if (!v8 || (mBitsPerChannel = a2->mFormat.mBitsPerChannel, v16 = v8 == mBitsPerChannel, LOBYTE(v8) = v8 > mBitsPerChannel, !mBitsPerChannel) || v16)
    {
      v17 = *(this + 5);
      if (v17 != 0.0)
      {
        v18 = *(this + 6);
        if (v18 != 0.0)
        {
          mMinimum = a2->mSampleRateRange.mMinimum;
          if (mMinimum != 0.0)
          {
            mMaximum = a2->mSampleRateRange.mMaximum;
            if (mMaximum != 0.0)
            {
              if (v18 < mMinimum)
              {
                if (v17 >= mMinimum)
                {
                  LOBYTE(v8) = 1;
                  return v8 & 1;
                }

                goto LABEL_55;
              }

              if (v17 < mMinimum && v18 >= mMinimum && v18 <= mMaximum || v17 < mMinimum && v18 > mMaximum || v17 != mMinimum || v18 != mMaximum)
              {
                if (v17 >= mMinimum)
                {
                  LOBYTE(v8) = v18 != mMaximum || v17 != mMinimum;
                  return v8 & 1;
                }

LABEL_55:
                LOBYTE(v8) = 0;
                return v8 & 1;
              }
            }
          }
        }
      }

      v22 = *this;
      if (*this == 0.0 || (mSampleRate = a2->mFormat.mSampleRate, a2->mFormat.mSampleRate == 0.0) || v22 == mSampleRate)
      {
        v8 = *(this + 7);
        if (v8)
        {
          mChannelsPerFrame = a2->mFormat.mChannelsPerFrame;
          v7 = v8 == mChannelsPerFrame;
          LOBYTE(v8) = v8 < mChannelsPerFrame;
          if (v7 || mChannelsPerFrame == 0)
          {
            LOBYTE(v8) = v10;
          }
        }

        else
        {
          LOBYTE(v8) = v10;
        }
      }

      else
      {
        LOBYTE(v8) = v22 > mSampleRate;
      }
    }
  }

  return v8 & 1;
}

uint64_t HALS_IOProcessorFactory::dsp_processor_factory_worker(HALS_IOProcessorFactory *this)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5973950;
  v3[3] = v3;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1DE4B66AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StaticContainer<anonymous namespace::FactoryStaticsObjects>::init_statics(uint64_t a1)
{
  {
    v9 = &v7;
    v8 = &v9;
  }

  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(StaticContainerBase::s_statics_initializable);
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        v6 = *(a1 + 24);
        if (!v6)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v6 + 48))(v6);
      }

      std::mutex::unlock(v4);
    }
  }
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::owning_engine_info(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    __assert_rtn("owning_engine_info", "HALS_IOProcessorFactory.cpp", 501, "engine_index.has_value()");
  }

  v4 = *(a2 + 112);
  if (a3 >= (*(a2 + 120) - v4) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v4 + (a3 << 7));
}

void anonymous namespace::DSP_IOProcessorFactory::set_processor(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    __assert_rtn("set_processor", "HALS_IOProcessorFactory.cpp", 486, "engine_index.has_value()");
  }

  v5 = *(a2 + 112);
  if (a4 >= (*(a2 + 120) - v5) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v5 + (a4 << 7) + 104) = a3;
}

void *anonymous namespace::DSP_IOProcessorFactory::set_initial_volume(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 1) == 0)
  {
    __assert_rtn("set_initial_volume", "HALS_IOProcessorFactory.cpp", 471, "engine_index.has_value()");
  }

  v8 = (*(*a1 + 72))(a1, a3, a4, a5);
  v9 = *(a2 + 16);
  v10 = *(a3 + 8);
  (*(**(v8 + 88) + 280))();
  v11 = *(a3 + 112);
  if (a4 >= (*(a3 + 120) - v11) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  return HALS_IOProcessor::Volume_RampTo(*(v11 + (a4 << 7) + 104));
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::io_processor_custom_unit(uint64_t a1, void *a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    __assert_rtn("io_processor_custom_unit", "HALS_IOProcessorFactory.cpp", 457, "engine_index.has_value()");
  }

  v4 = a2[14];
  if (a3 >= (a2[15] - v4) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = v4 + (a3 << 7);
  v8 = a2[22];
  v6 = a2 + 22;
  v7 = v8;
  if (v8)
  {
    v9 = v6;
    do
    {
      v10 = *(v7 + 28);
      v11 = v10 >= 6;
      v12 = v10 < 6;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 != v6)
    {
      v13 = *(v9 + 7) <= 6u && *(v5 + 100) == 0;
      if (v13 && !*(v5 + 112))
      {
        operator new();
      }
    }
  }

  return *(v5 + 112);
}

void sub_1DE4B6B74(_Unwind_Exception *a1)
{
  v4 = *(v2 + 144);
  if (v4)
  {
    *(v2 + 152) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::~__value_func[abi:ne200100](v2 + 32);
  MEMORY[0x1E12C1730](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::is_reference_stream(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    __assert_rtn("is_reference_stream", "HALS_IOProcessorFactory.cpp", 429, "engine_index.has_value()");
  }

  v6 = *(a2 + 112);
  if (a3 >= (*(a2 + 120) - v6) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = **((*(*a1 + 72))(a1, a2, a3) + 88);
  result = (*(v7 + 336))();
  if (result)
  {
    result = HALS_IODevice::CopyStreamByIndex(result, *(a2 + 8), *(v6 + (a3 << 7) + 96));
    if (result)
    {
      if (*(result + 56) == 1)
      {
        return 1;
      }

      else
      {

        return HALS_Stream::IsHardwareReferenceStream(result);
      }
    }
  }

  return result;
}

double anonymous namespace::DSP_IOProcessorFactory::local_format@<D0>(uint64_t a1@<X1>, unsigned int a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    __assert_rtn("local_format", "HALS_IOProcessorFactory.cpp", 395, "engine_index.has_value()");
  }

  if (*(a1 + 108))
  {
    v4 = *(a1 + 112);
    if (a2 >= ((*(a1 + 120) - v4) >> 7))
    {
      *(a4 + 32) = 0;
      *&v6 = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return *&v6;
    }

    v5 = v4 + (a2 << 7);
    v6 = *(v5 + 56);
    v7 = *(v5 + 72);
    *a4 = v6;
    *(a4 + 16) = v7;
    v8 = *(v5 + 88);
  }

  else
  {
    v6 = *(a1 + 416);
    v9 = *(a1 + 432);
    *a4 = v6;
    *(a4 + 16) = v9;
    v8 = *(a1 + 448);
  }

  *(a4 + 32) = v8;
  return *&v6;
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::allocate_output_processor(_anonymous_namespace_::DSP_IOProcessorFactory *this, const HALS_IOProcessorFactory *a2, HALS_IOStreamInfo *a3, const HALS_IOStackDescription *a4)
{
  if (*(a3 + 15) != *(a3 + 14))
  {
    v8 = 0;
    do
    {
      HALS_IOProcessorFactoryWorker::do_allocate_processor(this, a2, a3, v8++, 1, a4);
    }

    while (v8 < (*(a3 + 15) - *(a3 + 14)) >> 7);
  }

  return 0;
}

uint64_t HALS_IOProcessorFactoryWorker::do_allocate_processor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, HALS_IOStackDescription *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 72))(a1, a3, a4, a5);
  if (*(result + 88) && *(a2 + 8))
  {
    v12 = result;
    memset(&v29, 0, sizeof(v29));
    (*(*a1 + 32))(&v29, a1, a3, a4, a5);
    v26 = *(v12 + 4 * *(a3 + 8) + 424);
    v13 = *(a2 + 8);
    if (a6)
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 2) - *(a6 + 1)) >> 3) < 2;
      memset(&v28, 0, sizeof(v28));
      HALS_IOStackDescription::GetFormat(a6, &v28);
      v14 = *(a2 + 8);
    }

    else
    {
      v28 = v29;
      v14 = v13;
    }

    v28.mSampleRate = (*(**(v14 + 88) + 344))(*(v14 + 88));
    if (*(a2 + 16))
    {
      v15 = (*(**(*(a2 + 8) + 88) + 344))(*(*(a2 + 8) + 88));
      if (v15 != v29.mSampleRate)
      {
        v17 = HALS_ObjectMap::CopyObjectByObjectID(*(a2 + 16));
        if (v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a2 + 20);
          buf[0] = 136315650;
          *&buf[1] = "HALS_IOProcessorFactory.cpp";
          v31 = 1024;
          v32 = 311;
          v33 = 1024;
          v34 = v18;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOProcessorFactoryWorker::do_allocate_processor: sample rate conversion no longer enables drift correction by default [IOC: %u]", buf, 0x18u);
        }

        HALS_ObjectMap::ReleaseObject(v17, v16);
      }
    }

    v19 = *(a3 + 8);
    (*(*a1 + 40))(a1, a3, a4, a5);
    *(a3 + 68);
    (*(*a1 + 48))(a1, a3, a4, a5);
    if (v12 != v13)
    {
      v20 = *(v12 + 377);
    }

    v21 = *(v12 + 384);
    v22 = *(a3 + 8);
    v23 = *(v12 + 380);
    operator new();
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4B72DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::allocate_processor(_anonymous_namespace_::DSP_IOProcessorFactory *this, const HALS_IOProcessorFactory *a2, HALS_IOStreamInfo *a3)
{
  v105[19] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 14);
  v82 = (a3 + 112);
  v6 = *(a3 + 15);
  if (v6 != v5)
  {
    v8 = this;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v5 + v9;
      if (*(v5 + v9 + 100) == 4)
      {
        *(v11 + 104) = 0;
        *(v11 + 112) = 0;
      }

      else
      {
        v3 = v3 & 0xFFFFFFFFFFFFFF00 | 1;
        this = HALS_IOProcessorFactoryWorker::do_allocate_processor(v8, a2, a3, v10, v3, 0);
        v5 = *(a3 + 14);
        v6 = *(a3 + 15);
      }

      ++v10;
      v9 += 128;
    }

    while (v10 < (v6 - v5) >> 7);
  }

  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v89);
      v81 = v15;
      if (*(a3 + 23) == 1)
      {
        v16 = a3 + 176;
        v17 = *(a3 + 22);
        if (!v17)
        {
          goto LABEL_23;
        }

        v18 = a3 + 176;
        do
        {
          v19 = *(v17 + 7);
          v20 = v19 >= 9;
          v21 = v19 < 9;
          if (v20)
          {
            v18 = v17;
          }

          v17 = *&v17[8 * v21];
        }

        while (v17);
        if (v18 == v16 || *(v18 + 7) >= 0xAu)
        {
LABEL_23:
          v18 = a3 + 176;
        }

        v86 = v16 != v18;
      }

      else
      {
        v86 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "[hal_dsp] HALS_IODSPInfo::GetDebugDescription() ", 48);
      v22 = MEMORY[0x1E12C11C0](&v90, v82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ":", 1);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(v102, MEMORY[0x1E69E5318]);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(v102);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "[hal_dsp] Adapted: ", 19);
      if (*(a3 + 272))
      {
        v24 = "OK";
      }

      else
      {
        v24 = "PENDING/FAILED";
      }

      if (*(a3 + 272))
      {
        v25 = 2;
      }

      else
      {
        v25 = 14;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v24, v25);
      if (*(a3 + 273))
      {
        v26 = " (bypass)";
      }

      else
      {
        v26 = "";
      }

      if (*(a3 + 273))
      {
        v27 = 9;
      }

      else
      {
        v27 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v26, v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, " | Frame Count: ", 16);
      v28 = MEMORY[0x1E12C1210](&v90, *(a3 + 69));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " | Isolated Use Case ID: ", 25);
      if (*(a3 + 228) == 1)
      {
        v29.i32[0] = bswap32(*(a3 + 56));
        v30 = vzip1_s8(v29, v29);
        v31.i64[0] = 0x1F0000001FLL;
        v31.i64[1] = 0x1F0000001FLL;
        v32.i64[0] = 0x5F0000005FLL;
        v32.i64[1] = 0x5F0000005FLL;
        v33 = vbsl_s8(vmovn_s32(vcgtq_u32(v32, vsraq_n_s32(v31, vshlq_n_s32(vmovl_u16(v30), 0x18uLL), 0x18uLL))), v30, 0x2E002E002E002ELL);
        v34 = 4;
        v102[23] = 4;
        *v102 = vuzp1_s8(v33, v33).u32[0];
        v102[4] = 0;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v102, "N/A");
        v34 = v102[23];
      }

      if ((v34 & 0x80u) == 0)
      {
        v35 = v102;
      }

      else
      {
        v35 = *v102;
      }

      if ((v34 & 0x80u) == 0)
      {
        v36 = v34;
      }

      else
      {
        v36 = *&v102[8];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v35, v36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " | DSP Offloads: ", 17);
      v37 = *(a3 + 24);
      if (v37)
      {
        DSP_Host_OffloadDictionary::get_debug_string(__p, v37);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "N/A");
      }

      if ((SBYTE7(v96) & 0x80u) == 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      if ((SBYTE7(v96) & 0x80u) == 0)
      {
        v39 = BYTE7(v96);
      }

      else
      {
        v39 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v38, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " | Latency: ", 12);
      if (*(a3 + 164) == 1)
      {
        std::to_string(&v101, *(a3 + 40));
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v101, "(missing)");
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v101;
      }

      else
      {
        v40 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v101.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v101.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v40, size);
      std::ios_base::getloc((v28 + *(*v28 - 24)));
      v42 = std::locale::use_facet(&v100, MEMORY[0x1E69E5318]);
      (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&v100);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v96) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v102[23] & 0x80000000) != 0)
      {
        operator delete(*v102);
      }

      v43 = *(a3 + 14);
      v44 = *(a3 + 15);
      if (v43 != v44)
      {
        v45 = 0;
        v46 = v43 + 56;
        v47 = *(MEMORY[0x1E69E54D8] + 64);
        v84 = v47;
        v85 = *MEMORY[0x1E69E54D8];
        v83 = *(MEMORY[0x1E69E54D8] + 72);
        do
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "[hal_dsp] ", 10);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v102);
          CA::StreamDescription::AsString(&v101, v46, v48, v49);
          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v100, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
            if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v99, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
              goto LABEL_78;
            }
          }

          else
          {
            v100 = v101;
          }

          v99 = v101;
LABEL_78:
          v50 = *(v46 + 48);
          if (v50)
          {
            v51 = *(v50 + 40);
            *__p = *(v50 + 24);
            v96 = v51;
            v97 = *(v50 + 56);
            CA::StreamDescription::AsString(&v98, __p, *__p, *&v51);
            if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v100.__r_.__value_.__l.__data_);
            }

            v100 = v98;
            v52 = *(v46 + 48);
            v53 = *(v52 + 80);
            *__p = *(v52 + 64);
            v96 = v53;
            v97 = *(v52 + 96);
            CA::StreamDescription::AsString(&v98, __p, *__p, *&v53);
            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v99.__r_.__value_.__l.__data_);
            }

            v99 = v98;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], "DSP IO Stream #", 15);
          MEMORY[0x1E12C1220](&v102[16], v45);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], " | device ID ", 13);
          MEMORY[0x1E12C1210](&v102[16], *(v46 - 48));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], " | stream index ", 16);
          MEMORY[0x1E12C1210](&v102[16], *(v46 + 40));
          v54 = "    ";
          if ((*(v46 + 44) - 1) < 2)
          {
            v54 = " (/)";
          }

          if (v86)
          {
            v55 = " (=)";
          }

          else
          {
            v55 = v54;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], v55, 4);
          if (*(v46 + 48))
          {
            if (*(v46 + 56))
            {
              v56 = " (^)";
            }

            else
            {
              v56 = "    ";
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], v56, 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], " | shared ", 10);
            if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v57 = &v100;
            }

            else
            {
              v57 = v100.__r_.__value_.__r.__words[0];
            }

            if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v58 = v100.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], v57, v58);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], " | local ", 9);
            v59 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
            v61 = v99.__r_.__value_.__l.__size_;
            v60 = v99.__r_.__value_.__r.__words[0];
            v62 = (v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
            v63 = &v99;
          }

          else
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], " | engine ", 10);
            v59 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
            v61 = v101.__r_.__value_.__l.__size_;
            v60 = v101.__r_.__value_.__r.__words[0];
            v62 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
            v63 = &v101;
          }

          if (v62)
          {
            v64 = v60;
          }

          else
          {
            v64 = v63;
          }

          if (v62)
          {
            v65 = v61;
          }

          else
          {
            v65 = v59;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102[16], v64, v65);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v87, v102);
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }

          *v102 = v85;
          *&v102[*(v85 - 24)] = v84;
          *&v102[16] = v83;
          *&v102[24] = MEMORY[0x1E69E5548] + 16;
          if (v104 < 0)
          {
            operator delete(v103[7].__locale_);
          }

          *&v102[24] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v103);
          std::iostream::~basic_iostream();
          MEMORY[0x1E12C15F0](v105);
          if ((v88 & 0x80u) == 0)
          {
            v66 = v87;
          }

          else
          {
            v66 = v87[0];
          }

          if ((v88 & 0x80u) == 0)
          {
            v67 = v88;
          }

          else
          {
            v67 = v87[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v66, v67);
          std::ios_base::getloc((&v90 + *(v90 - 24)));
          v68 = std::locale::use_facet(v102, MEMORY[0x1E69E5318]);
          (v68->__vftable[2].~facet_0)(v68, 10);
          std::locale::~locale(v102);
          std::ostream::put();
          std::ostream::flush();
          if (v88 < 0)
          {
            operator delete(v87[0]);
          }

          v69 = v46 + 72;
          v46 += 128;
          ++v45;
        }

        while (v69 != v44);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "[hal_dsp] Client-Facing", 23);
      v70 = MEMORY[0x1E69E54D8];
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, " | format ", 10);
      *&v71 = HALS_IODSPInfo::GetClientFormat(v102, v82).n128_u64[0];
      CA::StreamDescription::AsString(__p, v102, v71, v72);
      if ((SBYTE7(v96) & 0x80u) == 0)
      {
        v73 = __p;
      }

      else
      {
        v73 = __p[0];
      }

      if ((SBYTE7(v96) & 0x80u) == 0)
      {
        v74 = BYTE7(v96);
      }

      else
      {
        v74 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v73, v74);
      if (SBYTE7(v96) < 0)
      {
        operator delete(__p[0]);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, " | spatial layout ", 18);
      if (*(a3 + 264))
      {
        v75 = "specified";
      }

      else
      {
        v75 = "<empty>";
      }

      if (*(a3 + 264))
      {
        v76 = 9;
      }

      else
      {
        v76 = 7;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, v75, v76);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, v89);
      v89[0] = *v70;
      v77 = v70[9];
      *(v89 + *(v89[0] - 24)) = v70[8];
      v90 = v77;
      v91 = MEMORY[0x1E69E5548] + 16;
      if (v93 < 0)
      {
        operator delete(v92[7].__locale_);
      }

      v91 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v92);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12C15F0](&v94);
      v15 = v81;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "[hal_dsp] HALS_IODSPInfo::GetDebugDescription(): No DSP assigned to this stream.");
    }

    v78 = __p;
    if (SBYTE7(v96) < 0)
    {
      v78 = __p[0];
    }

    *v102 = 136315651;
    *&v102[4] = "HALS_IOProcessorFactory.cpp";
    *&v102[12] = 1024;
    *&v102[14] = 362;
    *&v102[18] = 2081;
    *&v102[20] = v78;
    _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %{private}s", v102, 0x1Cu);
    if (SBYTE7(v96) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v79 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE4B7FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::NonDSP_IOProcessorFactory::owning_engine_info(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __assert_rtn("owning_engine_info", "HALS_IOProcessorFactory.cpp", 494, "not engine_index.has_value()");
  }

  if (!*(a2 + 108) || ((v4 = *(a2 + 112), *(a2 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = a2 + 456;
  }

  return *v4;
}

void anonymous namespace::NonDSP_IOProcessorFactory::set_processor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    __assert_rtn("set_processor", "HALS_IOProcessorFactory.cpp", 479, "not engine_index.has_value()");
  }

  *(a2 + 96) = a3;
}

void *anonymous namespace::NonDSP_IOProcessorFactory::set_initial_volume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    __assert_rtn("set_initial_volume", "HALS_IOProcessorFactory.cpp", 463, "not engine_index.has_value()");
  }

  v7 = (*(*a1 + 72))(a1, a3, a4, a5);
  v8 = *(a2 + 16);
  v9 = *(a3 + 8);
  (*(**(v7 + 88) + 280))();
  return HALS_IOProcessor::Volume_RampTo(*(a3 + 96));
}

uint64_t anonymous namespace::NonDSP_IOProcessorFactory::io_processor_custom_unit(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __assert_rtn("io_processor_custom_unit", "HALS_IOProcessorFactory.cpp", 450, "not engine_index.has_value()");
  }

  return 0;
}

uint64_t anonymous namespace::NonDSP_IOProcessorFactory::is_reference_stream(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __assert_rtn("is_reference_stream", "HALS_IOProcessorFactory.cpp", 402, "not engine_index.has_value()");
  }

  v5 = *((*(*a1 + 72))(a1) + 88);
  if (!v5)
  {
    return 0;
  }

  DeviceIDFromEngineID = HALS_IOContextDescription::GetDeviceIDFromEngineID(*(v5 + 16));
  v7 = HALS_ObjectMap::CopyObjectByObjectID(DeviceIDFromEngineID);
  v9 = v7;
  if (v7)
  {
    v10 = HALS_IODevice::CopyStreamByIndex(v7, *(a2 + 8), *(a2 + 12));
    v12 = v10;
    if (v10)
    {
      if (*(v10 + 14) == 1)
      {
        IsHardwareReferenceStream = 1;
      }

      else
      {
        IsHardwareReferenceStream = HALS_Stream::IsHardwareReferenceStream(v10);
      }
    }

    else
    {
      IsHardwareReferenceStream = 0;
    }

    HALS_ObjectMap::ReleaseObject(v12, v11);
  }

  else
  {
    IsHardwareReferenceStream = 0;
  }

  HALS_ObjectMap::ReleaseObject(v9, v8);
  return IsHardwareReferenceStream;
}

void sub_1DE4B8378(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

__n128 anonymous namespace::NonDSP_IOProcessorFactory::local_format@<Q0>(uint64_t a1@<X1>, char a2@<W3>, uint64_t a3@<X8>)
{
  if (a2)
  {
    __assert_rtn("local_format", "HALS_IOProcessorFactory.cpp", 388, "not engine_index.has_value()");
  }

  if (*(a1 + 108))
  {
    v4 = (a1 + 112);

    result.n128_u64[0] = HALS_IODSPInfo::GetClientFormat(a3, v4).n128_u64[0];
  }

  else
  {
    result = *(a1 + 416);
    v6 = *(a1 + 432);
    *a3 = result;
    *(a3 + 16) = v6;
    *(a3 + 32) = *(a1 + 448);
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::FactoryStatics::dsp_io_processor_factory(void)::{lambda(void)#1},std::allocator<anonymous namespace::FactoryStatics::dsp_io_processor_factory(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12_GLOBAL__N_114FactoryStatics24dsp_io_processor_factoryEvEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_IOProcessorFactory::non_dsp_processor_factory_worker(HALS_IOProcessorFactory *this)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F59738D0;
  v3[3] = v3;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4B85D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::FactoryStatics::non_dsp_io_processor_factory(void)::{lambda(void)#1},std::allocator<anonymous namespace::FactoryStatics::non_dsp_io_processor_factory(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12_GLOBAL__N_114FactoryStatics28non_dsp_io_processor_factoryEvEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void HALS_IOProcessorFactory::free_processor(HALS_IOProcessorFactory *this, HALS_IOStreamInfo *a2)
{
  v2 = a2;
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(this + 12);
  if (v3)
  {
    v4 = v3[8];
    if (v4 == v2)
    {
      if (!*(this + 27) || ((v10 = *(this + 14), *(this + 15) != v10) ? (v11 = v10 == 0) : (v11 = 1), v11))
      {
        v10 = (this + 456);
      }

      HALS_IOProcessorList::DestroyProcessor((*v10 + 24 * *(this + 8) + 776), v3);
      *(this + 12) = 0;
    }

    else
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
        v13 = "output";
        v16 = "HALS_IOProcessorFactory.cpp";
        v17 = 1024;
        v18 = 193;
        if (v2)
        {
          v14 = "input";
        }

        else
        {
          v14 = "output";
        }

        v15 = 136315906;
        v19 = 2082;
        v20 = v14;
        if (v4)
        {
          v13 = "input";
        }

        v21 = 2082;
        v22 = v13;
        _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactoryWorker::free_processor: trying to free %{public}s processor but it is for %{public}s", &v15, 0x26u);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_DefaultDeviceManager::FilterSettings(HALS_DefaultDeviceManager *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = this;
  v2 = 0;
  v21 = HALB_Mutex::Lock(this);
  v3 = this + 120;
  v4 = 72;
  do
  {
    v5 = *(v3 + 1);
    if (v5)
    {
      OS::CF::UntypedObject::UntypedObject(v19, v5);
      v19[0] = &unk_1F5991188;
      DeviceInfo::DeviceInfo(v22, v19);
      OS::CF::UntypedObject::~UntypedObject(v19);
      v6 = *(this + 107) == 1 && v24 == 1634300528;
      if (v6 || *(this + 108) == 1 && v24 == 1651275109 && (v25 & 1) != 0 || v26 == 1)
      {
        OS::CF::UntypedObject::operator=(v3, 0);
        *(v3 + 4) = 0;
        v2 = 1;
      }

      OS::CF::UntypedObject::~UntypedObject(v23);
    }

    v3 += 24;
    v4 -= 24;
  }

  while (v4);
  v7 = this + 224;
  v8 = 72;
  do
  {
    v9 = *(v7 + 1);
    if (v9)
    {
      OS::CF::UntypedObject::UntypedObject(v18, v9);
      v18[0] = &unk_1F5991188;
      DeviceInfo::DeviceInfo(v22, v18);
      OS::CF::UntypedObject::~UntypedObject(v18);
      v10 = *(this + 107) == 1 && v24 == 1634300528;
      if (v10 || *(this + 108) == 1 && v24 == 1651275109 && (v25 & 1) != 0 || v26 == 1)
      {
        OS::CF::UntypedObject::operator=(v7, 0);
        *(v7 + 4) = 0;
        v2 = 1;
      }

      OS::CF::UntypedObject::~UntypedObject(v23);
    }

    v7 += 24;
    v8 -= 24;
  }

  while (v8);
  v11 = this + 328;
  v12 = 72;
  do
  {
    v13 = *(v11 + 1);
    if (v13)
    {
      OS::CF::UntypedObject::UntypedObject(v17, v13);
      v17[0] = &unk_1F5991188;
      DeviceInfo::DeviceInfo(v22, v17);
      OS::CF::UntypedObject::~UntypedObject(v17);
      v14 = *(this + 107) == 1 && v24 == 1634300528;
      if (v14 || *(this + 108) == 1 && v24 == 1651275109 && (v25 & 1) != 0 || v26 == 1)
      {
        OS::CF::UntypedObject::operator=(v11, 0);
        *(v11 + 4) = 0;
        v2 = 1;
      }

      OS::CF::UntypedObject::~UntypedObject(v23);
    }

    v11 += 24;
    v12 -= 24;
  }

  while (v12);
  HALB_Mutex::Locker::~Locker(&v20);
  v15 = *MEMORY[0x1E69E9840];
  return v2 & 1;
}

void sub_1DE4B8B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, HALB_Mutex *a15)
{
  OS::CF::UntypedObject::~UntypedObject(&a9);
  HALB_Mutex::Locker::~Locker(&a15);
  _Unwind_Resume(a1);
}

uint64_t HALS_DefaultDeviceManager::UpdateDefaultDevice(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(&v132[39] + 2) = *MEMORY[0x1E69E9840];
  v7 = a4 >> 8;
  v8 = HIWORD(a4);
  v9 = HIBYTE(a4);
  v115[0] = HIBYTE(a4);
  v115[1] = BYTE2(a4);
  v115[2] = BYTE1(a4);
  v115[3] = a4;
  v115[4] = 0;
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v131 = 1024;
    LODWORD(v132[0]) = 1657;
    WORD2(v132[0]) = 2082;
    *(v132 + 6) = v115;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::UpdateDefaultDevice:        '%{public}s' --->>>", buf, 0x1Cu);
  }

  PreferredDefaultDevice = HALS_DefaultDeviceManager::FindPreferredDefaultDevice(a1, a2, a3, a4);
  if (PreferredDefaultDevice)
  {
    goto LABEL_259;
  }

  v118[0] = v9;
  v118[1] = v8;
  v118[2] = v7;
  v118[3] = a4;
  v118[4] = 0;
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v131 = 1024;
    LODWORD(v132[0]) = 1725;
    WORD2(v132[0]) = 2082;
    *(v132 + 6) = v118;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' --->>>", buf, 0x1Cu);
  }

  v122[0] = 0;
  v122[1] = 0;
  HALS_System::GetInstance(&v123, 0, v122);
  v11 = v123;
  if (v123)
  {
    NumberDevices = HALS_System::GetNumberDevices(v123, 2, 0, 0);
    v121 = NumberDevices;
    std::vector<unsigned int>::vector[abi:ne200100](&v119, NumberDevices);
    HALS_System::GetDeviceList(v11, NumberDevices, &v121, v119, 2, 0, 0);
    v116 = 0;
    v117 = 0uLL;
    v13 = v119;
    v14 = v120;
    if (v119 != v120)
    {
      if (a4 == 1682533920)
      {
        v15 = 9;
      }

      else
      {
        v15 = 10;
      }

      v16 = "imdhtrpd icpnuhtbvae4931 bsusubmeulbntlbotuabolg";
      if (a4 == 1682533920)
      {
        v16 = &DeviceInfo::kInputTransportOrder;
      }

      v114 = v16;
      v111 = v120;
      while (1)
      {
        DeviceInfo::DeviceInfo(buf, *v13);
        if (a4 > 1934587251)
        {
          if (a4 == 1934587252)
          {
            if (v132[38])
            {
              goto LABEL_28;
            }
          }

          else if (a4 == 1936224868 && (v132[38] & 0x100) != 0)
          {
LABEL_28:
            v17 = v117;
            v18 = v117 - v116;
            if (v117 == v116)
            {
              v20 = v117;
LABEL_92:
              if (v117 >= *(&v117 + 1))
              {
                v61 = 1 - 0x7063E7063E7063E7 * (v18 >> 3);
                if (v61 > 0xC7CE0C7CE0C7CELL)
                {
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if (0x1F3831F3831F3832 * ((*(&v117 + 1) - v116) >> 3) > v61)
                {
                  v61 = 0x1F3831F3831F3832 * ((*(&v117 + 1) - v116) >> 3);
                }

                if (0x8F9C18F9C18F9C19 * ((*(&v117 + 1) - v116) >> 3) >= 0x63E7063E7063E7)
                {
                  v62 = 0xC7CE0C7CE0C7CELL;
                }

                else
                {
                  v62 = v61;
                }

                v128 = &v116;
                if (v62)
                {
                  std::allocator<DeviceInfo>::allocate_at_least[abi:ne200100](v62);
                }

                v63 = v20 - v116;
                v64 = (8 * ((v20 - v116) >> 3));
                v125 = 0;
                v126 = v64;
                v127 = v64;
                if (!(0x8F9C18F9C18F9C19 * ((v20 - v116) >> 3)))
                {
                  if (v63 < 1)
                  {
                    if (v20 == v116)
                    {
                      v65 = 1;
                    }

                    else
                    {
                      v65 = 0x1F3831F3831F3832 * ((v20 - v116) >> 3);
                    }

                    v129 = v128;
                    std::allocator<DeviceInfo>::allocate_at_least[abi:ne200100](v65);
                  }

                  v64 -= 82 * ((1 - 0x7063E7063E7063E7 * (v63 >> 3)) >> 1);
                  v126 = v64;
                  *&v127 = v64;
                }

                *v64 = *buf;
                OS::CF::UntypedObject::UntypedObject((v64 + 2), *(v132 + 2));
                *(v64 + 1) = &unk_1F5991188;
                memcpy(v64 + 6, &v132[1] + 2, 0x12AuLL);
                *&v127 = v127 + 328;
                std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DeviceInfo>,DeviceInfo*>(v20, v117, v127);
                *&v127 = v127 + v117 - v20;
                *&v117 = v20;
                v66 = v126 + v116 - v20;
                std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DeviceInfo>,DeviceInfo*>(v116, v20, v66);
                v67 = v116;
                v68 = *(&v117 + 1);
                v116 = v66;
                v117 = v127;
                *&v127 = v67;
                *(&v127 + 1) = v68;
                v125 = v67;
                v126 = v67;
                std::__split_buffer<DeviceInfo>::~__split_buffer(&v125);
              }

              else if (v20 == v117)
              {
                *v117 = *buf;
                OS::CF::UntypedObject::UntypedObject((v17 + 8), *(v132 + 2));
                *(v17 + 1) = &unk_1F5991188;
                memcpy(v17 + 24, &v132[1] + 2, 0x12AuLL);
                *&v117 = v17 + 328;
              }

              else
              {
                v50 = v117;
                if (v117 >= 0x148)
                {
                  *v117 = *(v117 - 328);
                  *(v17 + 2) = *(v17 - 39);
                  *(v17 - 39) = 0;
                  *(v17 + 1) = &unk_1F5991188;
                  memcpy(v17 + 24, v17 - 304, 0x12AuLL);
                  v50 = (v17 + 328);
                }

                *&v117 = v50;
                if (v17 != v20 + 328)
                {
                  v51 = 0;
                  do
                  {
                    *&v17[v51 - 328] = *&v17[v51 - 656];
                    v52 = &v17[v51 - 312];
                    v53 = &v17[v51 - 640];
                    v54 = *v52;
                    *v52 = *v53;
                    *v53 = v54;
                    memcpy(&v17[v51 - 304], &v17[v51 - 632], 0x12AuLL);
                    v51 -= 328;
                  }

                  while (v20 - v17 + 328 != v51);
                  v50 = v117;
                }

                v55 = v20 <= buf;
                v56 = v50 > buf;
                v57 = !v55 || !v56;
                if (v55 && v56)
                {
                  v58 = 328;
                }

                else
                {
                  v58 = 0;
                }

                *v20 = *&buf[v58];
                v59 = (v132 + 2);
                if (v57)
                {
                  v60 = &v132[1] + 2;
                }

                else
                {
                  v59 = &v133;
                  v60 = &v134;
                }

                OS::CF::String::operator=((v20 + 8), *v59);
                memcpy(v20 + 24, v60, 0x12AuLL);
                v14 = v111;
              }

              goto LABEL_124;
            }

            v19 = 0x8F9C18F9C18F9C19 * (v18 >> 3);
            v20 = v116;
            while (2)
            {
              v21 = v19 >> 1;
              v22 = &v20[328 * (v19 >> 1)];
              v24 = *(v22 + 35);
              v23 = *(v22 + 36);
              v26 = v24 == *(&v132[33] + 2) && v23 == *(&v132[34] + 2);
              v27 = *(v22 + 77);
              if (a4 == 1682533920 && (v27 <= 2 ? (v28 = *(&v132[36] + 6) <= 2) : (v28 = 0), v28 && !v26))
              {
LABEL_52:
                v31 = v23 > *(&v132[34] + 2) && v24 == *(&v132[33] + 2);
                v32 = v24 > *(&v132[33] + 2) || v31;
              }

              else if (a4 == 1934587252 || a4 == 1682929012)
              {
                v30 = *(v22 + 78) > 3 || *(&v132[37] + 2) > 3;
                if (!v30 && !v26)
                {
                  goto LABEL_52;
                }

LABEL_59:
                if (a4 != 1934587252 && a4 != 1682929012)
                {
                  goto LABEL_62;
                }

                v33 = *(v22 + 78);
                v34 = v33 < *(&v132[37] + 2);
                if (v33 == *(&v132[37] + 2))
                {
                  goto LABEL_62;
                }

LABEL_83:
                v32 = v34;
              }

              else
              {
                if (a4 != 1682533920)
                {
                  goto LABEL_59;
                }

                v34 = v27 < *(&v132[36] + 6);
                if (v27 != *(&v132[36] + 6))
                {
                  goto LABEL_83;
                }

LABEL_62:
                v35 = *(v22 + 74);
                v36 = -1;
                v37 = v114;
                do
                {
                  v39 = *v37;
                  v37 += 4;
                  v38 = v39;
                  v40 = v36 + 2;
                  ++v36;
                }

                while (v39 != v35 && v40 < v15);
                v42 = -1;
                v43 = v114;
                do
                {
                  v45 = *v43;
                  v43 += 4;
                  v44 = v45;
                  v46 = v42 + 2;
                  ++v42;
                }

                while (v45 != *(&v132[35] + 2) && v46 < v15);
                if (v44 != *(&v132[35] + 2))
                {
                  v42 = -1;
                }

                v32 = v36 < v42 && v38 == v35;
              }

              v49 = v22 + 328;
              v19 += ~v21;
              if (v32)
              {
                v20 = v49;
              }

              else
              {
                v19 = v21;
              }

              if (!v19)
              {
                goto LABEL_92;
              }

              continue;
            }
          }
        }

        else if (a4 == 1682533920)
        {
          if (BYTE6(v132[37]) == 1)
          {
            goto LABEL_28;
          }
        }

        else if (a4 == 1682929012 && (v132[37] & 0x100000000000000) != 0)
        {
          goto LABEL_28;
        }

LABEL_124:
        OS::CF::UntypedObject::~UntypedObject(&buf[8]);
        if (++v13 == v14)
        {
          v13 = v119;
          break;
        }
      }
    }

    if (v13)
    {
      v120 = v13;
      operator delete(v13);
    }
  }

  else
  {
    v116 = 0;
    v117 = 0uLL;
  }

  if (v124)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v124);
  }

  if (*(a1 + 105) == 1)
  {
    pthread_mutex_lock(&DeviceInfo::DumpHeap(std::vector<DeviceInfo> const&)::sMutex);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_DefaultDeviceManager.cpp";
      v131 = 1024;
      LODWORD(v132[0]) = 410;
      WORD2(v132[0]) = 2048;
      *(v132 + 6) = 0x8F9C18F9C18F9C19 * ((v117 - v116) >> 3);
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Heap has %lu items", buf, 0x1Cu);
    }

    v69 = v116;
    __src = v117;
    if (v116 != v117)
    {
      v70 = 0;
      v110 = v116 + 24;
      v71 = MEMORY[0x1E69E9C10];
      do
      {
        pthread_mutex_lock(&DeviceInfo::DumpDeviceInfo(DeviceInfo const&)::sMutex);
        v72.i32[0] = *(v69 + v70 + 296);
        v73 = vrev64_s16(*&vmovl_u8(v72));
        v74 = vuzp1_s8(v73, v73);
        LODWORD(v119) = v74.i32[0];
        BYTE4(v119) = 0;
        v74.i32[0] = *(v69 + v70 + 300);
        v75 = vrev64_s16(*&vmovl_u8(v74));
        v76 = vuzp1_s8(v75, v75);
        LODWORD(v123) = v76.i32[0];
        BYTE4(v123) = 0;
        v76.i32[0] = *(v69 + v70 + 304);
        v77 = vrev64_s16(*&vmovl_u8(v76));
        LODWORD(v122[0]) = vuzp1_s8(v77, v77).u32[0];
        BYTE4(v122[0]) = 0;
        v78 = *(v69 + v70 + 308);
        v79 = "";
        if (v78 <= 5)
        {
          v79 = off_1E8676110[v78];
        }

        v80 = *(v69 + v70 + 312);
        v81 = "";
        if (v80 <= 6)
        {
          v81 = off_1E8676140[v80];
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v82 = *(v69 + v70);
          *buf = 136315906;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 488;
          WORD2(v132[0]) = 2048;
          *(v132 + 6) = v82;
          HIWORD(v132[1]) = 2082;
          v132[2] = &v110[v70 / 4];
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d    %lu: '%{public}s'", buf, 0x26u);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v84 = *(v69 + v70 + 280);
          v83 = *(v69 + v70 + 288);
          *buf = 136315906;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 489;
          WORD2(v132[0]) = 2048;
          *(v132 + 6) = v84;
          HIWORD(v132[1]) = 2048;
          v132[2] = v83;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Arrival Time:       (%llu, %llu)", buf, 0x26u);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 490;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = &v119;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Transport:          '%{public}s'", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 491;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = &v123;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Input Data Source:  '%{public}s'", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 492;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = v122;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Output Data Source: '%{public}s'", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 493;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = v79;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Input Kind:          %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 494;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = v81;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Output Kind:         %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v69 + v70 + 316))
          {
            v85 = "yes";
          }

          else
          {
            v85 = "no";
          }

          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 495;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = v85;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Can Be Input:        %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v69 + v70 + 317))
          {
            v86 = "yes";
          }

          else
          {
            v86 = "no";
          }

          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 496;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = v86;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Can Be Output:       %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v69 + v70 + 318))
          {
            v87 = "yes";
          }

          else
          {
            v87 = "no";
          }

          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 497;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = v87;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Can Be System:       %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v69 + v70 + 321))
          {
            v88 = "no";
          }

          else
          {
            v88 = "yes";
          }

          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v131 = 1024;
          LODWORD(v132[0]) = 498;
          WORD2(v132[0]) = 2082;
          *(v132 + 6) = v88;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Allows Auto-Route:   %{public}s", buf, 0x1Cu);
        }

        pthread_mutex_unlock(&DeviceInfo::DumpDeviceInfo(DeviceInfo const&)::sMutex);
        v70 += 328;
      }

      while ((v69 + v70) != __src);
    }

    pthread_mutex_unlock(&DeviceInfo::DumpHeap(std::vector<DeviceInfo> const&)::sMutex);
  }

  v90 = v116;
  v89 = v117;
  if (v116 == v117)
  {
    goto LABEL_194;
  }

  v91 = v116;
  while (a4 > 1934587251)
  {
    if (a4 == 1934587252)
    {
      if ((*(v91 + 318) & 1) == 0)
      {
        goto LABEL_193;
      }
    }

    else if (a4 != 1936224868 || (*(v91 + 319) & 1) == 0)
    {
      goto LABEL_193;
    }

LABEL_192:
    if (v91[78] <= 3)
    {
      v96 = v91[76];
      LOBYTE(v119) = HIBYTE(v96);
      BYTE1(v119) = BYTE2(v96);
      BYTE2(v119) = BYTE1(v96);
      *(&v119 + 3) = v96;
      if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v97 = *v91;
        *buf = 136316418;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        v131 = 1024;
        LODWORD(v132[0]) = 1757;
        WORD2(v132[0]) = 2082;
        *(v132 + 6) = v118;
        HIWORD(v132[1]) = 1024;
        LODWORD(v132[2]) = v97;
        WORD2(v132[2]) = 2082;
        *(&v132[2] + 6) = v91 + 6;
        HIWORD(v132[3]) = 2082;
        v132[4] = &v119;
        v98 = MEMORY[0x1E69E9C10];
LABEL_243:
        _os_log_impl(&dword_1DE1F9000, v98, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' | picking %d: '%{public}s'/'%{public}s'", buf, 0x36u);
        goto LABEL_244;
      }

      goto LABEL_244;
    }

LABEL_193:
    v91 += 82;
    if (v91 == v117)
    {
      goto LABEL_194;
    }
  }

  if (a4 != 1682533920)
  {
    if (a4 != 1682929012 || (*(v91 + 317) & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  if (*(v91 + 316) != 1 || v91[77] > 2)
  {
    goto LABEL_193;
  }

  v104 = v91[75];
  LOBYTE(v119) = HIBYTE(v104);
  BYTE1(v119) = BYTE2(v104);
  BYTE2(v119) = BYTE1(v104);
  *(&v119 + 3) = v104;
  if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v105 = *v91;
    *buf = 136316418;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v131 = 1024;
    LODWORD(v132[0]) = 1748;
    WORD2(v132[0]) = 2082;
    *(v132 + 6) = v118;
    HIWORD(v132[1]) = 1024;
    LODWORD(v132[2]) = v105;
    WORD2(v132[2]) = 2082;
    *(&v132[2] + 6) = v91 + 6;
    HIWORD(v132[3]) = 2082;
    v132[4] = &v119;
    v98 = MEMORY[0x1E69E9C10];
    goto LABEL_243;
  }

LABEL_244:
  PreferredDefaultDevice = *v91;
  if (PreferredDefaultDevice)
  {
    goto LABEL_251;
  }

  v90 = v116;
  v89 = v117;
LABEL_194:
  if (v90 == v89)
  {
    goto LABEL_211;
  }

  v92 = v90;
  while (2)
  {
    if (a4 > 1934587251)
    {
      if (a4 == 1934587252)
      {
        if ((*(v92 + 318) & 1) == 0)
        {
          goto LABEL_210;
        }

        goto LABEL_209;
      }

      if (a4 == 1936224868 && (*(v92 + 319) & 1) != 0)
      {
        goto LABEL_209;
      }

LABEL_210:
      v92 += 82;
      if (v92 == v89)
      {
        goto LABEL_211;
      }

      continue;
    }

    break;
  }

  if (a4 != 1682533920)
  {
    if (a4 != 1682929012 || (*(v92 + 317) & 1) == 0)
    {
      goto LABEL_210;
    }

LABEL_209:
    if (v92[78] <= 4)
    {
      v99 = v92[76];
      LOBYTE(v119) = HIBYTE(v99);
      BYTE1(v119) = BYTE2(v99);
      BYTE2(v119) = BYTE1(v99);
      *(&v119 + 3) = v99;
      if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v100 = *v92;
        *buf = 136316418;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        v131 = 1024;
        LODWORD(v132[0]) = 1785;
        WORD2(v132[0]) = 2082;
        *(v132 + 6) = v118;
        HIWORD(v132[1]) = 1024;
        LODWORD(v132[2]) = v100;
        WORD2(v132[2]) = 2082;
        *(&v132[2] + 6) = v92 + 6;
        HIWORD(v132[3]) = 2082;
        v132[4] = &v119;
        v101 = MEMORY[0x1E69E9C10];
LABEL_249:
        _os_log_impl(&dword_1DE1F9000, v101, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' | accepting %d: '%{public}s'/'%{public}s'", buf, 0x36u);
        goto LABEL_250;
      }

      goto LABEL_250;
    }

    goto LABEL_210;
  }

  if (*(v92 + 316) != 1 || v92[77] > 3)
  {
    goto LABEL_210;
  }

  v106 = v92[75];
  LOBYTE(v119) = HIBYTE(v106);
  BYTE1(v119) = BYTE2(v106);
  BYTE2(v119) = BYTE1(v106);
  *(&v119 + 3) = v106;
  if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v107 = *v92;
    *buf = 136316418;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v131 = 1024;
    LODWORD(v132[0]) = 1776;
    WORD2(v132[0]) = 2082;
    *(v132 + 6) = v118;
    HIWORD(v132[1]) = 1024;
    LODWORD(v132[2]) = v107;
    WORD2(v132[2]) = 2082;
    *(&v132[2] + 6) = v92 + 6;
    HIWORD(v132[3]) = 2082;
    v132[4] = &v119;
    v101 = MEMORY[0x1E69E9C10];
    goto LABEL_249;
  }

LABEL_250:
  PreferredDefaultDevice = *v92;
  if (PreferredDefaultDevice)
  {
    goto LABEL_251;
  }

  v90 = v116;
  v89 = v117;
LABEL_211:
  if (v90 == v89)
  {
LABEL_225:
    PreferredDefaultDevice = 0;
    goto LABEL_251;
  }

  while (2)
  {
    if (a4 <= 1934587251)
    {
      if (a4 == 1682533920)
      {
        if (*(v90 + 316) == 1)
        {
          v102 = v90[75];
          LOBYTE(v119) = HIBYTE(v102);
          BYTE1(v119) = BYTE2(v102);
          BYTE2(v119) = BYTE1(v102);
          *(&v119 + 3) = v102;
          if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v103 = *v90;
            *buf = 136316418;
            *&buf[4] = "HALS_DefaultDeviceManager.cpp";
            v131 = 1024;
            LODWORD(v132[0]) = 1805;
            WORD2(v132[0]) = 2082;
            *(v132 + 6) = v118;
            HIWORD(v132[1]) = 1024;
            LODWORD(v132[2]) = v103;
            WORD2(v132[2]) = 2082;
            *(&v132[2] + 6) = v90 + 6;
            HIWORD(v132[3]) = 2082;
            v132[4] = &v119;
            v95 = MEMORY[0x1E69E9C10];
            goto LABEL_238;
          }

          goto LABEL_239;
        }
      }

      else if (a4 == 1682929012 && (*(v90 + 317) & 1) != 0)
      {
        break;
      }

      goto LABEL_224;
    }

    if (a4 == 1934587252)
    {
      if (*(v90 + 318))
      {
        break;
      }

      goto LABEL_224;
    }

    if (a4 != 1936224868 || (*(v90 + 319) & 1) == 0)
    {
LABEL_224:
      v90 += 82;
      if (v90 == v89)
      {
        goto LABEL_225;
      }

      continue;
    }

    break;
  }

  v93 = v90[76];
  LOBYTE(v119) = HIBYTE(v93);
  BYTE1(v119) = BYTE2(v93);
  BYTE2(v119) = BYTE1(v93);
  *(&v119 + 3) = v93;
  if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v94 = *v90;
    *buf = 136316418;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v131 = 1024;
    LODWORD(v132[0]) = 1814;
    WORD2(v132[0]) = 2082;
    *(v132 + 6) = v118;
    HIWORD(v132[1]) = 1024;
    LODWORD(v132[2]) = v94;
    WORD2(v132[2]) = 2082;
    *(&v132[2] + 6) = v90 + 6;
    HIWORD(v132[3]) = 2082;
    v132[4] = &v119;
    v95 = MEMORY[0x1E69E9C10];
LABEL_238:
    _os_log_impl(&dword_1DE1F9000, v95, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' | using %d: '%{public}s'/'%{public}s'", buf, 0x36u);
  }

LABEL_239:
  PreferredDefaultDevice = *v90;
LABEL_251:
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v131 = 1024;
    LODWORD(v132[0]) = 1822;
    WORD2(v132[0]) = 2082;
    *(v132 + 6) = v118;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' <<<---", buf, 0x1Cu);
  }

  *buf = &v116;
  std::vector<DeviceInfo>::__destroy_vector::operator()[abi:ne200100](buf);
  if (!PreferredDefaultDevice)
  {
    if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_DefaultDeviceManager.cpp";
      v131 = 1024;
      LODWORD(v132[0]) = 1667;
      WORD2(v132[0]) = 2082;
      *(v132 + 6) = v115;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::UpdateDefaultDevice: '%{public}s' no eligible devices", buf, 0x1Cu);
    }

    PreferredDefaultDevice = 0;
  }

LABEL_259:
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v131 = 1024;
    LODWORD(v132[0]) = 1670;
    WORD2(v132[0]) = 2082;
    *(v132 + 6) = v115;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::UpdateDefaultDevice:        '%{public}s' <<<---", buf, 0x1Cu);
  }

  v108 = *MEMORY[0x1E69E9840];
  return PreferredDefaultDevice;
}

void sub_1DE4BA3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45)
{
  a45 = &a23;
  std::vector<DeviceInfo>::__destroy_vector::operator()[abi:ne200100](&a45);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Unwind_Resume(a1);
}

void sub_1DE4BA438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45)
{
  a45 = &a23;
  std::vector<DeviceInfo>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

uint64_t HALS_DefaultDeviceManager::FindPreferredDefaultDevice(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v27[0] = HIBYTE(a4);
  v27[1] = BYTE2(a4);
  v27[2] = BYTE1(a4);
  v27[3] = a4;
  v27[4] = 0;
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v39 = "HALS_DefaultDeviceManager.cpp";
    v40 = 1024;
    *v41 = 1678;
    *&v41[4] = 2082;
    *&v41[6] = v27;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::FindPreferredDefaultDevice: '%{public}s' --->>>", buf, 0x1Cu);
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_29;
  }

  OS::CF::UntypedObject::UntypedObject(v26, v8);
  v26[0] = &unk_1F5991188;
  DeviceInfo::DeviceInfo(buf, v26);
  OS::CF::UntypedObject::~UntypedObject(v26);
  if (!*&v41[2])
  {
    goto LABEL_28;
  }

  v9 = *(a2 + 16);
  v10 = 304;
  if (a4 == 1682533920)
  {
    v10 = 300;
  }

  if (v9 != *&buf[v10])
  {
    goto LABEL_28;
  }

  if (a4 > 1934587251)
  {
    if (a4 != 1934587252)
    {
      if (a4 != 1936224868 || (v45 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v44)
    {
      goto LABEL_17;
    }

LABEL_28:
    OS::CF::UntypedObject::~UntypedObject((&v39 + 4));
LABEL_29:
    v14 = 0;
    if (a4 == 1682533920)
    {
      v15 = 300;
    }

    else
    {
      v15 = 304;
    }

    v16 = (a3 + 16);
    while (1)
    {
      v17 = *(v16 - 1);
      if (v17)
      {
        break;
      }

      v11 = 0;
LABEL_44:
      v16 += 6;
      if (v14++ >= 2)
      {
        goto LABEL_21;
      }
    }

    OS::CF::UntypedObject::UntypedObject(v20, v17);
    v20[0] = &unk_1F5991188;
    DeviceInfo::DeviceInfo(buf, v20);
    OS::CF::UntypedObject::~UntypedObject(v20);
    if (*&v41[2])
    {
      v18 = *v16;
      if (*v16 == *&buf[v15])
      {
        v11 = 0;
        if (a4 > 1934587251)
        {
          if (a4 == 1934587252)
          {
            if (v44)
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (a4 != 1936224868)
            {
              goto LABEL_41;
            }

            if (v45)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
          if (a4 != 1682533920)
          {
            if (a4 != 1682929012)
            {
              goto LABEL_41;
            }

            if ((v43 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_50;
          }

          if (v42 == 1)
          {
LABEL_50:
            v21 = HIBYTE(*v16);
            v22 = BYTE2(v18);
            v23 = BYTE1(v18);
            v24 = v18;
            v25 = 0;
            if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *v28 = 136316674;
              v29 = "HALS_DefaultDeviceManager.cpp";
              v30 = 1024;
              v31 = 1710;
              v32 = 2082;
              v33 = v27;
              v34 = 1024;
              v35 = v14;
              v36 = 1024;
              *v37 = *buf;
              *&v37[4] = 2082;
              *&v37[6] = &v41[10];
              *&v37[14] = 2082;
              *&v37[16] = &v21;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::FindPreferredDefaultDevice: '%{public}s' | found preferred[%d] %d: '%{public}s'/'%{public}s'", v28, 0x3Cu);
            }

            v11 = *buf;
LABEL_41:
            OS::CF::UntypedObject::~UntypedObject((&v39 + 4));
            if (v11)
            {
              goto LABEL_21;
            }

            goto LABEL_44;
          }
        }
      }
    }

LABEL_40:
    v11 = 0;
    goto LABEL_41;
  }

  if (a4 == 1682533920)
  {
    if (v42 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a4 != 1682929012 || (v43 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  v21 = HIBYTE(*(a2 + 16));
  v22 = BYTE2(v9);
  v23 = BYTE1(v9);
  v24 = v9;
  v25 = 0;
  if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136316418;
    v29 = "HALS_DefaultDeviceManager.cpp";
    v30 = 1024;
    v31 = 1692;
    v32 = 2082;
    v33 = v27;
    v34 = 1024;
    v35 = *buf;
    v36 = 2082;
    *v37 = &v41[10];
    *&v37[8] = 2082;
    *&v37[10] = &v21;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::FindPreferredDefaultDevice: '%{public}s' | found transient %d: '%{public}s'/'%{public}s'", v28, 0x36u);
  }

  v11 = *buf;
  OS::CF::UntypedObject::~UntypedObject((&v39 + 4));
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_21:
  if ((*(a1 + 106) & 1) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v39 = "HALS_DefaultDeviceManager.cpp";
    v40 = 1024;
    *v41 = 1717;
    *&v41[4] = 2082;
    *&v41[6] = v27;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::FindPreferredDefaultDevice: '%{public}s' <<<---", buf, 0x1Cu);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1DE4BAA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

void std::vector<DeviceInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 328;
        OS::CF::UntypedObject::~UntypedObject((v4 - 320));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DeviceInfo::DeviceInfo(DeviceInfo *this, HALS_ObjectMap *a2)
{
  *this = 0;
  *(this + 1) = &unk_1F5991188;
  *(this + 2) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 24) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0x600000005;
  *(this + 79) = 0;
  *(this + 160) = 0;
  v3 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  DeviceInfo::CatalogDeviceInfo(this, v3);
  HALS_ObjectMap::ReleaseObject(v3, v4);
}

void sub_1DE4BAB88(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  OS::CF::UntypedObject::~UntypedObject(v2);
  _Unwind_Resume(a1);
}

void std::allocator<DeviceInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<DeviceInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    OS::CF::UntypedObject::~UntypedObject((i - 320));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DeviceInfo>,DeviceInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v3 = a3;
    v5 = a1;
    v6 = a3 + 8;
    v7 = a1;
    do
    {
      *v3 = *v7;
      *(v3 + 16) = *(v7 + 16);
      *(v7 + 16) = 0;
      *(v3 + 8) = &unk_1F5991188;
      memcpy((v3 + 24), (v7 + 24), 0x12AuLL);
      v7 += 328;
      v3 += 328;
      v6 += 328;
    }

    while (v7 != a2);
    do
    {
      OS::CF::UntypedObject::~UntypedObject((v5 + 8));
      v5 += 328;
    }

    while (v5 != a2);
  }
}

double DeviceInfo::CatalogDeviceInfo(DeviceInfo *this, HALS_Device *a2)
{
  if (!a2)
  {
    return result;
  }

  *this = *(a2 + 4);
  v4 = (*(*a2 + 216))(a2);
  OS::CF::UntypedObject::operator=(this + 8, v4);
  OS::CF::String::AsCString(this + 8, this + 24, 256);
  v5 = *(a2 + 54);
  *(this + 35) = *(a2 + 53);
  *(this + 36) = v5;
  TransportType = HALS_IODevice::GetTransportType(a2);
  *(this + 74) = TransportType;
  if (TransportType == 1651274862)
  {
    *(this + 75) = DeviceInfo::GetMasterDataSourceValue(a2, 1);
    *(this + 76) = DeviceInfo::GetMasterDataSourceValue(a2, 0);
  }

  v7 = *(this + 75);
  v8 = HALS_IODevice::GetTransportType(a2);
  if (!HALS_IODevice::GetNumberStreams(a2, 1))
  {
    v10 = 5;
    goto LABEL_19;
  }

  v10 = 4;
  if (v8 > 1718055535)
  {
    if (v8 > 1986622067)
    {
      if (v8 == 1986622068)
      {
        goto LABEL_19;
      }

      v11 = 1986818665;
    }

    else
    {
      if (v8 == 1718055536)
      {
        goto LABEL_19;
      }

      v11 = 1735554416;
    }

LABEL_18:
    if (v8 == v11)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

  if (v8 <= 1651275108)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    v11 = 1634300528;
    goto LABEL_18;
  }

  if (v8 == 1651275109)
  {
    if (!DeviceInfo::IsIEDActive(a2, v9))
    {
      v10 = 4;
      goto LABEL_19;
    }

    v40 = DeviceInfo::GetBTDeviceCategory(a2, v39) - 1;
    if (v40 < 3)
    {
      v10 = dword_1DE7722E0[v40];
      goto LABEL_19;
    }

LABEL_68:
    v10 = 3;
    goto LABEL_19;
  }

  if (v8 == 1668506482)
  {
LABEL_15:
    v10 = 1;
    goto LABEL_19;
  }

LABEL_53:
  v43 = *(a2 + 4);
  v47 = 0x676C6F6264727465;
  v48 = 0;
  if ((*(*a2 + 96))(a2, v43, &v47, 0) && HALS_Device::WantsDisplayRouting(a2))
  {
    goto LABEL_15;
  }

  if (v8 != 1651274862)
  {
    goto LABEL_68;
  }

  if (v7 == 1768778083)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  if (v7 == 1701669219)
  {
    v10 = 0;
  }

LABEL_19:
  *(this + 77) = v10;
  v12 = *(this + 76);
  v13 = HALS_IODevice::GetTransportType(a2);
  if (HALS_IODevice::GetNumberStreams(a2, 0))
  {
    v15 = 5;
    if (v13 > 1718055535)
    {
      if (v13 > 1986622067)
      {
        if (v13 == 1986622068)
        {
          goto LABEL_34;
        }

        v16 = 1986818665;
        goto LABEL_33;
      }

      if (v13 != 1718055536)
      {
        v16 = 1735554416;
LABEL_33:
        if (v13 == v16)
        {
          goto LABEL_34;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v13 > 1651275108)
      {
        if (v13 == 1651275109)
        {
          if (DeviceInfo::IsIEDActive(a2, v14))
          {
            v42 = DeviceInfo::GetBTDeviceCategory(a2, v41) - 1;
            if (v42 >= 3)
            {
              v15 = 4;
            }

            else
            {
              v15 = dword_1DE7722E0[v42];
            }
          }

          else
          {
            v15 = 5;
          }

          goto LABEL_34;
        }

        if (v13 == 1668506482)
        {
LABEL_30:
          v15 = 1;
          goto LABEL_34;
        }

LABEL_62:
        v44 = *(a2 + 4);
        v47 = 0x676C6F6264727465;
        v48 = 0;
        if (!(*(*a2 + 96))(a2, v44, &v47, 0))
        {
          if (v13 != 1651274862)
          {
            goto LABEL_76;
          }

          goto LABEL_72;
        }

        if (!HALS_Device::WantsDisplayRouting(a2))
        {
          if (v13 != 1651274862)
          {
            v15 = 1;
            if (v13 == 1685090932 || v13 == 1751412073)
            {
              goto LABEL_34;
            }

LABEL_76:
            v17 = 4;
            goto LABEL_35;
          }

LABEL_72:
          v15 = 2;
          v17 = 4;
          if (v12 > 1769173098)
          {
            if (v12 != 1769173099)
            {
              if (v12 != 1936745574)
              {
                goto LABEL_35;
              }

              v15 = 3;
            }
          }

          else if (v12 != 1702064235)
          {
            if (v12 != 1751412846)
            {
              goto LABEL_35;
            }

            v15 = 0;
          }

          goto LABEL_34;
        }

        goto LABEL_30;
      }

      if (v13)
      {
        v16 = 1634300528;
        goto LABEL_33;
      }
    }

LABEL_34:
    v17 = v15;
    goto LABEL_35;
  }

  v17 = 6;
LABEL_35:
  *(this + 78) = v17;
  IsHidden = HALS_Device::IsHidden(a2);
  NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(a2, 1);
  CanBeDefaultDevice = HALS_Device::CanBeDefaultDevice(a2, 1, 0);
  v21 = (a2 + 160);
  v22 = atomic_load(a2 + 40);
  v23 = HALS_Device::AreAllStreamsMixable(a2, 1);
  v24 = (NumberStreamsExcludingReferenceStreams != 0) & ~IsHidden & CanBeDefaultDevice;
  if (v22 != -1)
  {
    v24 = 0;
  }

  *(this + 316) = v24 & v23;
  v25 = HALS_Device::IsHidden(a2);
  v26 = HALS_Device::GetNumberStreamsExcludingReferenceStreams(a2, 0);
  v27 = HALS_Device::CanBeDefaultDevice(a2, 0, 0);
  v28 = atomic_load(v21);
  v29 = HALS_Device::AreAllStreamsMixable(a2, 0);
  v30 = (v26 != 0) & ~v25 & v27;
  if (v28 != -1)
  {
    v30 = 0;
  }

  *(this + 317) = v30 & v29;
  v31 = HALS_Device::IsHidden(a2);
  v32 = HALS_Device::GetNumberStreamsExcludingReferenceStreams(a2, 0);
  v33 = HALS_Device::CanBeDefaultDevice(a2, 0, 1);
  v34 = atomic_load(v21);
  v35 = HALS_Device::AreAllStreamsMixable(a2, 0);
  v37 = (v32 != 0) & ~v31 & v33;
  if (v34 != -1)
  {
    v37 = 0;
  }

  *(this + 318) = v37 & v35;
  *(this + 319) = *(this + 317);
  if (*(this + 74) == 1651275109)
  {
    *(this + 320) = DeviceInfo::SupportsIED(a2, v36);
  }

  v48 = 0;
  v47 = *"otuabolg";
  if ((*(*a2 + 96))(a2, *(a2 + 4), &v47, 0))
  {
    v45 = 4;
    v46 = 1;
    (*(*a2 + 120))(a2, *(a2 + 4), &v47, 4, &v45, &v46, 0, 0, 0);
    if (!v46)
    {
      *(this + 321) = 1;
      *&result = 0x500000004;
      *(this + 308) = 0x500000004;
    }
  }

  return result;
}

uint64_t DeviceInfo::GetMasterDataSourceValue(DeviceInfo *this, HALS_Device *a2)
{
  if (a2)
  {
    v2 = 1768845428;
  }

  else
  {
    v2 = 1869968496;
  }

  v3 = (*(*this + 648))(this, 1685287523, v2, 0);
  v5 = v3;
  if (v3)
  {
    SelectorControlValue = HALS_Control::GetSelectorControlValue(v3);
  }

  else
  {
    SelectorControlValue = 0;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  return SelectorControlValue;
}

uint64_t DeviceInfo::SupportsIED(DeviceInfo *this, HALS_Device *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  strcpy(buf, "edeibolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v4 = (*(*this + 96))(this, v3, buf, 0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*this + 224))(this);
    v6 = "doesn't support";
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v15 = 1024;
    v16 = 589;
    *buf = 136315906;
    if (v4)
    {
      v6 = "supports";
    }

    v17 = 2082;
    v18 = v5;
    v19 = 2082;
    v20 = v6;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | %{public}s in-ear detection", buf, 0x26u);
  }

  if (v4)
  {
    v7 = *(this + 4);
    strcpy(buf, "edeibolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v13 = 0;
    (*(*this + 120))(this, v7, buf, 4, &v13, &v13 + 4, 0, 0, 0);
    v8 = HIDWORD(v13);
    v4 = HIDWORD(v13) != 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = (*(*this + 224))(this);
      v10 = "off";
      *&buf[4] = "HALS_DefaultDeviceManager.cpp";
      v15 = 1024;
      v16 = 595;
      *buf = 136315906;
      v17 = 2082;
      if (v8)
      {
        v10 = "on";
      }

      v18 = v9;
      v19 = 2082;
      v20 = v10;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | in-ear detection is %{public}s", buf, 0x26u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL HALS_Device::IsHidden(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F626869646ELL;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5) != 0;
}

BOOL HALS_Device::CanBeDefaultDevice(HALS_Device *this, int a2, int a3)
{
  v3 = *(this + 4);
  if (a3)
  {
    v4 = 1936092276;
  }

  else
  {
    v4 = 1684434036;
  }

  if (a2)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  v7[0] = v4;
  v7[1] = v5;
  v7[2] = 0;
  v8 = 0;
  (*(*this + 120))(this, v3, v7, 4, &v8, &v8 + 4, 0, 0, 0);
  return HIDWORD(v8) != 0;
}

BOOL DeviceInfo::IsIEDActive(DeviceInfo *this, HALS_Device *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!DeviceInfo::SupportsIED(this, a2))
  {
    goto LABEL_8;
  }

  v3 = *(this + 4);
  strcpy(buf, "pseibolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v13 = 0;
  (*(*this + 120))(this, v3, buf, 4, &v13, &v13 + 4, 0, 0, 0);
  v4 = HIDWORD(v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*this + 224))(this);
    if ((v4 - 1) > 2)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = off_1E86760E0[v4 - 1];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v15 = 1024;
    v16 = 611;
    v17 = 2082;
    v18 = v5;
    v19 = 2082;
    v20 = v6;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | primary: %{public}s", buf, 0x26u);
  }

  if (v4 != 1)
  {
    v8 = *(this + 4);
    strcpy(buf, "sseibolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v13 = 0;
    (*(*this + 120))(this, v8, buf, 4, &v13, &v13 + 4, 0, 0, 0);
    v9 = HIDWORD(v13);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = (*(*this + 224))(this);
      if ((v9 - 1) > 2)
      {
        v11 = "unknown";
      }

      else
      {
        v11 = off_1E86760E0[v9 - 1];
      }

      *buf = 136315906;
      *&buf[4] = "HALS_DefaultDeviceManager.cpp";
      v15 = 1024;
      v16 = 618;
      v17 = 2082;
      v18 = v10;
      v19 = 2082;
      v20 = v11;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | secondary: %{public}s", buf, 0x26u);
    }

    result = v9 == 1;
  }

  else
  {
LABEL_8:
    result = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DeviceInfo::GetBTDeviceCategory(DeviceInfo *this, HALS_Device *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  strcpy(buf, "tacdbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v4 = 0;
  if ((*(*this + 96))(this, v3, buf, 0))
  {
    v5 = *(this + 4);
    strcpy(buf, "tacdbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v10 = 0;
    (*(*this + 120))(this, v5, buf, 4, &v10, &v10 + 4, 0, 0, 0);
    v4 = HIDWORD(v10);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(*this + 224))(this);
    if ((v4 - 1) > 2)
    {
      v7 = "Unknown";
    }

    else
    {
      v7 = off_1E86760F8[(v4 - 1)];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v12 = 1024;
    v13 = 669;
    v14 = 2082;
    v15 = v6;
    v16 = 2082;
    v17 = v7;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | %{public}s", buf, 0x26u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL HALS_Device::WantsDisplayRouting(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6264727465;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5) != 0;
}

uint64_t DeviceInfo::DeviceInfo(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = &unk_1F5991188;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0x600000005;
  *(a1 + 316) = 0;
  *(a1 + 320) = 0;
  v14[0] = 0;
  v14[1] = 0;
  HALS_System::GetInstance(v9, 0, v14);
  v4 = *&v9[0];
  if (*(&v9[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9[0] + 1));
  }

  if (v4)
  {
    v11[0] = 0;
    v11[1] = 0;
    HALS_System::GetInstance(&v12, 0, v11);
    v5 = *(a2 + 8);
    memset(v9, 0, sizeof(v9));
    v10 = 1065353216;
    v6 = HALS_System::CopyDeviceByUID(v12, v5, 0, v9);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v9);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    DeviceInfo::CatalogDeviceInfo(a1, v6);
    HALS_ObjectMap::ReleaseObject(v6, v7);
  }

  return a1;
}

void sub_1DE4BBE54(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v19, a2);
  OS::CF::UntypedObject::~UntypedObject(v18);
  _Unwind_Resume(a1);
}

uint64_t HALS_DefaultDeviceManager::SavedInfo::operator=(uint64_t a1, uint64_t a2)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v6, *(a2 + 8), @"uid");
  v4 = *(a1 + 8);
  *(a1 + 8) = v7;
  v7 = v4;
  OS::CF::UntypedObject::~UntypedObject(&v6);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v6, *(a2 + 8), @"master data source value");
  *(a1 + 16) = OS::CF::Number::GetValue<unsigned int>(v7, 0);
  OS::CF::UntypedObject::~UntypedObject(&v6);
  return a1;
}

uint64_t HALS_DefaultDeviceManager::GetDefaultDevice(HALS_DefaultDeviceManager *this, int a2)
{
  v7 = this;
  v4 = 0;
  v8 = HALB_Mutex::Lock(this);
  if (a2 > 1934587251)
  {
    if (a2 == 1934587252)
    {
      v5 = 320;
      goto LABEL_10;
    }

    if (a2 == 1936224868)
    {
      v5 = 424;
      goto LABEL_10;
    }
  }

  else
  {
    if (a2 == 1682533920)
    {
      v5 = 112;
      goto LABEL_10;
    }

    if (a2 == 1682929012)
    {
      v5 = 216;
LABEL_10:
      v4 = *(this + v5);
    }
  }

  HALB_Mutex::Locker::~Locker(&v7);
  return v4;
}

void HALS_DefaultDeviceManager::SetDefaultDevice(HALS_DefaultDeviceManager *this, int a2, HALS_ObjectMap *a3, char a4)
{
  v5 = a3;
  v74 = *MEMORY[0x1E69E9840];
  DeviceInfo::DeviceInfo(v61, a3);
  v8 = *(this + 107) == 1 && v65 == 1634300528;
  if (v8 || (*(this + 108) == 1 ? (v9 = v65 == 1651275109) : (v9 = 0), v9 && (v72 & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v10 = v73;
  }

  v11 = v10 | a4;
  v50[0] = HIBYTE(a2);
  v50[1] = BYTE2(a2);
  v50[2] = BYTE1(a2);
  v50[3] = a2;
  v50[4] = 0;
  v12 = &v67;
  if (a2 == 1682533920)
  {
    v12 = &v66;
  }

  v13 = *v12;
  v49[0] = HIBYTE(v13);
  v49[1] = BYTE2(v13);
  v49[2] = BYTE1(v13);
  v49[3] = v13;
  v49[4] = 0;
  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (*buf = 136315394, *&buf[4] = "HALS_DefaultDeviceManager.cpp", *&buf[12] = 1024, *&buf[14] = 1067, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1068;
        *&buf[18] = 2082;
        v52 = v50;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetDefaultDevice:           '%{public}s' --->>>", buf, 0x1Cu);
      }
    }
  }

  if (*(this + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v14 = "";
    *buf = 136316674;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1070;
    *&buf[18] = 2082;
    if (v11)
    {
      v14 = "transient";
    }

    v52 = v50;
    v53 = 2082;
    v54 = v14;
    v55 = 1024;
    v56 = v5;
    v57 = 2082;
    v58 = &v64;
    v59 = 2082;
    v60 = v49;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetDefaultDevice:           '%{public}s' | %{public}s %d: '%{public}s'/'%{public}s'", buf, 0x40u);
  }

  if ((v11 & 1) == 0)
  {
    if (!cf)
    {
      goto LABEL_99;
    }

    if (a2 > 1934587251)
    {
      if (a2 == 1934587252)
      {
        if ((v70 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      else if (a2 != 1936224868 || (v71 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (a2 == 1682533920)
    {
      if (v68 != 1)
      {
        goto LABEL_99;
      }
    }

    else if (a2 != 1682929012 || (v69 & 1) == 0)
    {
      goto LABEL_99;
    }

    v47 = this;
    v48 = HALB_Mutex::Lock(this);
    if (a2 <= 1934587251)
    {
      if (a2 != 1682533920)
      {
        OS::CF::UntypedObject::UntypedObject(buf, cf);
        *buf = &unk_1F5991188;
        if (OS::CF::operator==(*(this + 29), *&buf[8]))
        {
          v17 = *(this + 60);
          v18 = v67;
          OS::CF::UntypedObject::~UntypedObject(buf);
          if (v17 == v18)
          {
            goto LABEL_88;
          }
        }

        else
        {
          OS::CF::UntypedObject::~UntypedObject(buf);
        }

        OS::CF::String::operator=(this + 272, *(this + 32));
        *(this + 72) = *(this + 66);
        OS::CF::String::operator=(this + 248, *(this + 29));
        *(this + 66) = *(this + 60);
        OS::CF::UntypedObject::UntypedObject(v45, cf);
        v45[0] = &unk_1F5991188;
        v33 = v67;
        OS::CF::UntypedObject::UntypedObject(buf, v45[1]);
        *&buf[16] = v33;
        v34 = *(this + 29);
        *(this + 29) = *&buf[8];
        *buf = &unk_1F5991188;
        *&buf[8] = v34;
        *(this + 60) = v33;
        OS::CF::UntypedObject::~UntypedObject(buf);
        OS::CF::UntypedObject::~UntypedObject(v45);
LABEL_88:
        OS::CF::UntypedObject::operator=(this + 296, 0);
        *(this + 78) = 0;
LABEL_95:
        v24 = &v47;
        goto LABEL_96;
      }

      OS::CF::UntypedObject::UntypedObject(buf, cf);
      *buf = &unk_1F5991188;
      if (OS::CF::operator==(*(this + 16), *&buf[8]))
      {
        v25 = *(this + 34);
        v26 = v66;
        OS::CF::UntypedObject::~UntypedObject(buf);
        if (v25 == v26)
        {
          goto LABEL_91;
        }
      }

      else
      {
        OS::CF::UntypedObject::~UntypedObject(buf);
      }

      OS::CF::String::operator=(this + 168, *(this + 19));
      *(this + 46) = *(this + 40);
      OS::CF::String::operator=(this + 144, *(this + 16));
      *(this + 40) = *(this + 34);
      OS::CF::UntypedObject::UntypedObject(v46, cf);
      v46[0] = &unk_1F5991188;
      v35 = v66;
      OS::CF::UntypedObject::UntypedObject(buf, v46[1]);
      *&buf[16] = v35;
      v36 = *(this + 16);
      *(this + 16) = *&buf[8];
      *buf = &unk_1F5991188;
      *&buf[8] = v36;
      *(this + 34) = v35;
      OS::CF::UntypedObject::~UntypedObject(buf);
      OS::CF::UntypedObject::~UntypedObject(v46);
LABEL_91:
      OS::CF::UntypedObject::operator=(this + 192, 0);
      *(this + 52) = 0;
      goto LABEL_95;
    }

    if (a2 != 1934587252)
    {
      OS::CF::UntypedObject::operator=(this + 432, 0);
      *(this + 112) = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1112;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Default Shared Output Device can only be set transiently.", buf, 0x12u);
      }

      goto LABEL_95;
    }

    OS::CF::UntypedObject::UntypedObject(buf, cf);
    *buf = &unk_1F5991188;
    if (OS::CF::operator==(*(this + 42), *&buf[8]))
    {
      v27 = *(this + 86);
      v28 = v67;
      OS::CF::UntypedObject::~UntypedObject(buf);
      if (v27 == v28)
      {
        goto LABEL_94;
      }
    }

    else
    {
      OS::CF::UntypedObject::~UntypedObject(buf);
    }

    OS::CF::String::operator=(this + 376, *(this + 45));
    *(this + 98) = *(this + 92);
    OS::CF::String::operator=(this + 352, *(this + 42));
    *(this + 92) = *(this + 86);
    OS::CF::UntypedObject::UntypedObject(v44, cf);
    v44[0] = &unk_1F5991188;
    v37 = v67;
    OS::CF::UntypedObject::UntypedObject(buf, v44[1]);
    *&buf[16] = v37;
    v38 = *(this + 42);
    *(this + 42) = *&buf[8];
    *buf = &unk_1F5991188;
    *&buf[8] = v38;
    *(this + 86) = v37;
    OS::CF::UntypedObject::~UntypedObject(buf);
    OS::CF::UntypedObject::~UntypedObject(v44);
LABEL_94:
    OS::CF::UntypedObject::operator=(this + 400, 0);
    *(this + 104) = 0;
    goto LABEL_95;
  }

  if (!v5)
  {
    *buf = this;
    *&buf[8] = HALB_Mutex::Lock(this);
    if (a2 > 1934587251)
    {
      if (a2 == 1934587252)
      {
        v15 = 416;
        v16 = 400;
        goto LABEL_75;
      }

      if (a2 == 1936224868)
      {
        v15 = 448;
        v16 = 432;
        goto LABEL_75;
      }
    }

    else
    {
      if (a2 == 1682533920)
      {
        v15 = 208;
        v16 = 192;
        goto LABEL_75;
      }

      if (a2 == 1682929012)
      {
        v15 = 312;
        v16 = 296;
LABEL_75:
        OS::CF::UntypedObject::operator=(this + v16, 0);
        *(this + v15) = 0;
      }
    }

    v24 = buf;
LABEL_96:
    HALB_Mutex::Locker::~Locker(v24);
    goto LABEL_97;
  }

  if (!cf)
  {
    goto LABEL_97;
  }

  if (a2 <= 1934587251)
  {
    if (a2 == 1682533920)
    {
      if (v68 != 1)
      {
        goto LABEL_97;
      }
    }

    else if (a2 != 1682929012 || (v69 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_68;
  }

  if (a2 == 1934587252)
  {
    if ((v70 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_68;
  }

  if (a2 == 1936224868 && (v71 & 1) != 0)
  {
LABEL_68:
    v47 = this;
    v48 = HALB_Mutex::Lock(this);
    if (a2 > 1934587251)
    {
      if (a2 == 1934587252)
      {
        OS::CF::UntypedObject::UntypedObject(v41, cf);
        v41[0] = &unk_1F5991188;
        v31 = v67;
        OS::CF::UntypedObject::UntypedObject(buf, v41[1]);
        *&buf[16] = v31;
        v32 = *(this + 51);
        *(this + 51) = *&buf[8];
        *buf = &unk_1F5991188;
        *&buf[8] = v32;
        *(this + 104) = v31;
        OS::CF::UntypedObject::~UntypedObject(buf);
        v21 = v41;
      }

      else
      {
        OS::CF::UntypedObject::UntypedObject(v40, cf);
        v40[0] = &unk_1F5991188;
        v22 = v67;
        OS::CF::UntypedObject::UntypedObject(buf, v40[1]);
        *&buf[16] = v22;
        v23 = *(this + 55);
        *(this + 55) = *&buf[8];
        *buf = &unk_1F5991188;
        *&buf[8] = v23;
        *(this + 112) = v22;
        OS::CF::UntypedObject::~UntypedObject(buf);
        v21 = v40;
      }
    }

    else if (a2 == 1682533920)
    {
      OS::CF::UntypedObject::UntypedObject(v43, cf);
      v43[0] = &unk_1F5991188;
      v29 = v66;
      OS::CF::UntypedObject::UntypedObject(buf, v43[1]);
      *&buf[16] = v29;
      v30 = *(this + 25);
      *(this + 25) = *&buf[8];
      *buf = &unk_1F5991188;
      *&buf[8] = v30;
      *(this + 52) = v29;
      OS::CF::UntypedObject::~UntypedObject(buf);
      v21 = v43;
    }

    else
    {
      OS::CF::UntypedObject::UntypedObject(v42, cf);
      v42[0] = &unk_1F5991188;
      v19 = v67;
      OS::CF::UntypedObject::UntypedObject(buf, v42[1]);
      *&buf[16] = v19;
      v20 = *(this + 38);
      *(this + 38) = *&buf[8];
      *buf = &unk_1F5991188;
      *&buf[8] = v20;
      *(this + 78) = v19;
      OS::CF::UntypedObject::~UntypedObject(buf);
      v21 = v42;
    }

    OS::CF::UntypedObject::~UntypedObject(v21);
    goto LABEL_95;
  }

LABEL_97:
  HALS_DefaultDeviceManager::WriteSettings(this);
  HALS_DefaultDeviceManager::CheckForChanges(this, a2);
  if (a2 == 1682929012)
  {
    HALS_DefaultDeviceManager::CheckForChanges(this, 1936224868);
  }

LABEL_99:
  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (*buf = 136315650, *&buf[4] = "HALS_DefaultDeviceManager.cpp", *&buf[12] = 1024, *&buf[14] = 1177, *&buf[18] = 2082, v52 = v50, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetDefaultDevice:           '%{public}s' <<<---", buf, 0x1Cu), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1178;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u);
      }
    }
  }

  OS::CF::UntypedObject::~UntypedObject(&v62);
  v39 = *MEMORY[0x1E69E9840];
}

void HALS_DefaultDeviceManager::WriteSettings(HALS_DefaultDeviceManager *this)
{
  if ((*(this + 104) & 1) == 0)
  {
    OS::CF::MutableArray::MutableArray(v13);
    OS::CF::MutableArray::MutableArray(v11);
    OS::CF::MutableArray::MutableArray(v9);
    v7 = this;
    LODWORD(v8) = HALB_Mutex::Lock(this);
    v2 = this + 328;
    v3 = 3;
    do
    {
      HALS_DefaultDeviceManager::SavedInfo::MakeDictionary(&v5, (v2 - 208));
      OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v14, v6);
      OS::CF::UntypedObject::~UntypedObject(&v5);
      HALS_DefaultDeviceManager::SavedInfo::MakeDictionary(&v5, (v2 - 104));
      OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v12, v6);
      OS::CF::UntypedObject::~UntypedObject(&v5);
      HALS_DefaultDeviceManager::SavedInfo::MakeDictionary(&v5, v2);
      OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v10, v6);
      OS::CF::UntypedObject::~UntypedObject(&v5);
      v2 += 24;
      --v3;
    }

    while (v3);
    HALB_Mutex::Locker::~Locker(&v7);
    OS::CF::MutableDictionary::MutableDictionary(&v7);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v8, @"input", v14);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v8, @"output", v12);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v8, @"system output", v10);
    v4[0] = 0;
    v4[1] = 0;
    HALS_System::GetInstance(&v5, 0, v4);
    HALS_SettingsManager::WriteSetting(*(v5 + 1776), @"preferred devices", v8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    OS::CF::UntypedObject::~UntypedObject(&v7);
    OS::CF::UntypedObject::~UntypedObject(v9);
    OS::CF::UntypedObject::~UntypedObject(v11);
    OS::CF::UntypedObject::~UntypedObject(v13);
  }
}

void sub_1DE4BCDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject(va1);
  OS::CF::UntypedObject::~UntypedObject((v5 - 48));
  OS::CF::UntypedObject::~UntypedObject((v5 - 32));
  _Unwind_Resume(a1);
}

void HALS_DefaultDeviceManager::CheckForChanges(HALS_DefaultDeviceManager *this, int a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v33[0] = HIBYTE(a2);
  v33[1] = BYTE2(a2);
  v33[2] = BYTE1(a2);
  v33[3] = a2;
  v33[4] = 0;
  if (*(this + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v40 = "HALS_DefaultDeviceManager.cpp";
    v41 = 1024;
    v42 = 1286;
    v43 = 2082;
    v44 = v33;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges:            '%{public}s' --->>>", buf, 0x1Cu);
  }

  for (i = 0; i != 72; i += 24)
  {
    v5 = &buf[i];
    *v5 = &unk_1F5991188;
    *(v5 + 1) = 0;
    *(v5 + 4) = 0;
  }

  v31[0] = &unk_1F5991188;
  v31[1] = 0;
  v32 = 0;
  *v34 = this;
  v6 = 0;
  *&v34[8] = HALB_Mutex::Lock(this);
  if (a2 > 1934587251)
  {
    if (a2 == 1934587252)
    {
      v6 = *(this + 80);
      v24 = (this + 344);
      v25 = buf;
      v26 = 3;
      do
      {
        v27 = OS::CF::String::operator=(v25, *(v24 - 1));
        v28 = *v24;
        v24 += 3;
        *(v27 + 16) = v28;
        v25 = (v27 + 24);
        --v26;
      }

      while (v26);
      v12 = (this + 400);
      HALS_DefaultDeviceManager::CheckForChanges::$_0::operator()(this + 400);
      v13 = 416;
    }

    else
    {
      if (a2 != 1936224868)
      {
        goto LABEL_24;
      }

      v6 = *(this + 106);
      v14 = (this + 240);
      v15 = buf;
      v16 = 3;
      do
      {
        v17 = OS::CF::String::operator=(v15, *(v14 - 1));
        v18 = *v14;
        v14 += 3;
        *(v17 + 16) = v18;
        v15 = (v17 + 24);
        --v16;
      }

      while (v16);
      v12 = (this + 432);
      HALS_DefaultDeviceManager::CheckForChanges::$_0::operator()(this + 432);
      v13 = 448;
    }
  }

  else if (a2 == 1682533920)
  {
    v6 = *(this + 28);
    v19 = (this + 136);
    v20 = buf;
    v21 = 3;
    do
    {
      v22 = OS::CF::String::operator=(v20, *(v19 - 1));
      v23 = *v19;
      v19 += 3;
      *(v22 + 16) = v23;
      v20 = (v22 + 24);
      --v21;
    }

    while (v21);
    v12 = (this + 192);
    HALS_DefaultDeviceManager::CheckForChanges::$_0::operator()(this + 192);
    v13 = 208;
  }

  else
  {
    if (a2 != 1682929012)
    {
      goto LABEL_24;
    }

    v6 = *(this + 54);
    v7 = (this + 240);
    v8 = buf;
    v9 = 3;
    do
    {
      v10 = OS::CF::String::operator=(v8, *(v7 - 1));
      v11 = *v7;
      v7 += 3;
      *(v10 + 16) = v11;
      v8 = (v10 + 24);
      --v9;
    }

    while (v9);
    v12 = (this + 296);
    HALS_DefaultDeviceManager::CheckForChanges::$_0::operator()(this + 296);
    v13 = 312;
  }

  OS::CF::String::operator=(v31, v12[1]);
  v32 = *(this + v13);
LABEL_24:
  HALB_Mutex::Locker::~Locker(v34);
  if (v6 != HALS_DefaultDeviceManager::UpdateDefaultDevice(this, v31, buf, a2))
  {
    std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](1uLL);
  }

  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (*v34 = 136315650, *&v34[4] = "HALS_DefaultDeviceManager.cpp", v35 = 1024, v36 = 1370, v37 = 2082, v38 = v33, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges:            '%{public}s' <<<---", v34, 0x1Cu), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136315394;
        *&v34[4] = "HALS_DefaultDeviceManager.cpp";
        v35 = 1024;
        v36 = 1371;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  -----------------------------------", v34, 0x12u);
      }
    }
  }

  OS::CF::UntypedObject::~UntypedObject(v31);
  for (j = 48; j != -24; j -= 24)
  {
    OS::CF::UntypedObject::~UntypedObject(&buf[j]);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1DE4BD310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  operator delete(v17);
  OS::CF::UntypedObject::~UntypedObject(&a9);
  for (i = 48; i != -24; i -= 24)
  {
    OS::CF::UntypedObject::~UntypedObject((&a17 + i));
  }

  _Unwind_Resume(a1);
}

void HALS_DefaultDeviceManager::CheckForChanges(unsigned int)::$_0::operator()(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v7[0] = 0;
    v7[1] = 0;
    HALS_System::GetInstance(&v8, 0, v7);
    v2 = *(a1 + 8);
    memset(v5, 0, sizeof(v5));
    v6 = 1065353216;
    v3 = HALS_System::CopyDeviceByUID(v8, v2, 0, v5);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v5);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (!v3)
    {
      OS::CF::UntypedObject::operator=(a1, 0);
      *(a1 + 16) = 0;
    }

    HALS_ObjectMap::ReleaseObject(v3, v4);
  }
}

void sub_1DE4BD40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  v11 = *(v9 - 24);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void HALS_DefaultDeviceManager::SavedInfo::MakeDictionary(HALS_DefaultDeviceManager::SavedInfo *this, uint64_t a2)
{
  OS::CF::MutableDictionary::MutableDictionary(v7);
  v4 = *(a2 + 8);
  if (v4)
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"uid", v4);
    OS::CF::Number::Number<unsigned int>(v6, *(a2 + 16));
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"master data source value", v6[1]);
    OS::CF::UntypedObject::~UntypedObject(v6);
  }

  if (theDict)
  {
    Copy = CFDictionaryCreateCopy(0, theDict);
  }

  else
  {
    Copy = 0;
  }

  *this = &unk_1F5991008;
  *(this + 1) = Copy;
  OS::CF::UntypedObject::~UntypedObject(v7);
}

void HALS_DefaultDeviceManager::ResetDefaultDevice(HALS_DefaultDeviceManager *this, int a2)
{
  v17 = this;
  v18 = HALB_Mutex::Lock(this);
  switch(a2)
  {
    case 1934587252:
      OS::CF::UntypedObject::operator=(this + 400, 0);
      *(this + 104) = 0;
      v14 = &unk_1F5991188;
      cf = 0;
      v16 = 0;
      v11 = this + 328;
      v12 = -3;
      do
      {
        v13 = OS::CF::String::operator=(v11, cf);
        *(v13 + 16) = v16;
        v11 = (v13 + 24);
        v7 = __CFADD__(v12++, 1);
      }

      while (!v7);
      goto LABEL_15;
    case 1682929012:
      OS::CF::UntypedObject::operator=(this + 296, 0);
      *(this + 78) = 0;
      v14 = &unk_1F5991188;
      cf = 0;
      v16 = 0;
      v8 = this + 224;
      v9 = -3;
      do
      {
        v10 = OS::CF::String::operator=(v8, cf);
        *(v10 + 16) = v16;
        v8 = (v10 + 24);
        v7 = __CFADD__(v9++, 1);
      }

      while (!v7);
      goto LABEL_15;
    case 1682533920:
      OS::CF::UntypedObject::operator=(this + 192, 0);
      *(this + 52) = 0;
      v14 = &unk_1F5991188;
      cf = 0;
      v16 = 0;
      v4 = this + 120;
      v5 = -3;
      do
      {
        v6 = OS::CF::String::operator=(v4, cf);
        *(v6 + 16) = v16;
        v4 = (v6 + 24);
        v7 = __CFADD__(v5++, 1);
      }

      while (!v7);
LABEL_15:
      OS::CF::UntypedObject::~UntypedObject(&v14);
      break;
  }

  HALB_Mutex::Locker::~Locker(&v17);
  HALS_DefaultDeviceManager::WriteSettings(this);
  HALS_DefaultDeviceManager::CheckForChanges(this, a2);
}

void HALS_DefaultDeviceManager::CheckForChanges(HALS_DefaultDeviceManager *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (v3 = 136315394, v4 = "HALS_DefaultDeviceManager.cpp", v5 = 1024, v6 = 1214, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", &v3, 0x12u), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315394;
        v4 = "HALS_DefaultDeviceManager.cpp";
        v5 = 1024;
        v6 = 1215;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges:                 --->>>", &v3, 0x12u);
      }
    }
  }

  HALS_DefaultDeviceManager::CheckForChanges(this, 1682533920);
  HALS_DefaultDeviceManager::CheckForChanges(this, 1682929012);
  HALS_DefaultDeviceManager::CheckForChanges(this, 1934587252);
  HALS_DefaultDeviceManager::CheckForChanges(this, 1936224868);
  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (v3 = 136315394, v4 = "HALS_DefaultDeviceManager.cpp", v5 = 1024, v6 = 1222, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges:                 <<<---", &v3, 0x12u), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315394;
        v4 = "HALS_DefaultDeviceManager.cpp";
        v5 = 1024;
        v6 = 1223;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", &v3, 0x12u);
      }
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

void HALS_DefaultDeviceManager::SetLoggingIsEnabled(HALS_DefaultDeviceManager *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (g_static_start_options != 1)
  {
    if (((*(this + 105) & 1) != 0 || a2) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = "disabling";
      v7 = "HALS_DefaultDeviceManager.cpp";
      v6 = 136315650;
      if (a2)
      {
        v4 = "enabling";
      }

      v8 = 1024;
      v9 = 1380;
      v10 = 2082;
      v11 = v4;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetLoggingIsEnabled: %{public}s default device logging", &v6, 0x1Cu);
    }

    *(this + 105) = a2;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void HALS_DefaultDeviceManager::SetVerboseLoggingIsEnabled(HALS_DefaultDeviceManager *this, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (g_static_start_options != 1)
  {
    if ((*(this + 106) & 1) != 0 || (*(this + 105) == 1 ? (v4 = a2 == 0) : (v4 = 1), !v4))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v5 = "disabling";
        v8 = "HALS_DefaultDeviceManager.cpp";
        v7 = 136315650;
        if (a2)
        {
          v5 = "enabling";
        }

        v9 = 1024;
        v10 = 1392;
        v11 = 2082;
        v12 = v5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetVerboseLoggingIsEnabled: %{public}s verbose default device logging", &v7, 0x1Cu);
      }
    }

    *(this + 106) = *(this + 105) & a2;
  }

  v6 = *MEMORY[0x1E69E9840];
}

void HALS_DefaultDeviceManager::SetAirPlayIsAlwaysTransient(HALS_DefaultDeviceManager *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = "No";
    v7 = "HALS_DefaultDeviceManager.cpp";
    v6 = 136315650;
    if (a2)
    {
      v4 = "Yes";
    }

    v8 = 1024;
    v9 = 1400;
    v10 = 2082;
    v11 = v4;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetAirPlayIsAlwaysTransient: %{public}s", &v6, 0x1Cu);
  }

  *(this + 107) = a2;
  if (HALS_DefaultDeviceManager::FilterSettings(this))
  {
    HALS_DefaultDeviceManager::WriteSettings(this);
    HALS_DefaultDeviceManager::CheckForChanges(this);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void AMCP::make_string_for_transport_type(AMCP *this@<X0>, _BYTE *a2@<X8>, int8x8_t a3@<D0>)
{
  if (this <= 1700886113)
  {
    if (this <= 1651271008)
    {
      switch(this)
      {
        case 0:
          v3 = "Unknown";
          goto LABEL_39;
        case 0x31333934:
          v3 = "FireWire";
          goto LABEL_39;
        case 0x61697270:
          v3 = "Airplay";
          goto LABEL_39;
      }
    }

    else if (this > 1651275108)
    {
      if (this == 1651275109)
      {
        v3 = "Bluetooth";
        goto LABEL_39;
      }

      if (this == 1685090932)
      {
        v3 = "Display Port";
        goto LABEL_39;
      }
    }

    else
    {
      if (this == 1651271009)
      {
        v3 = "Bluetooth LE";
        goto LABEL_39;
      }

      if (this == 1651274862)
      {
        v3 = "Built-In";
        goto LABEL_39;
      }
    }
  }

  else if (this > 1953002861)
  {
    if (this > 1986622067)
    {
      if (this == 1986622068)
      {
        v3 = "Virtual";
        goto LABEL_39;
      }

      if (this == 1986818665)
      {
        v3 = "System Capture";
        goto LABEL_39;
      }
    }

    else
    {
      if (this == 1953002862)
      {
        v3 = "Thunderbolt";
        goto LABEL_39;
      }

      if (this == 1970496032)
      {
        v3 = "USB";
        goto LABEL_39;
      }
    }
  }

  else if (this > 1835169138)
  {
    if (this == 1835169139)
    {
      v3 = "Mikey Bus";
      goto LABEL_39;
    }

    if (this == 1885563168)
    {
      v3 = "PCI";
      goto LABEL_39;
    }
  }

  else
  {
    if (this == 1700886114)
    {
      v3 = "AVB";
      goto LABEL_39;
    }

    if (this == 1751412073)
    {
      v3 = "HDMI";
LABEL_39:
      std::string::basic_string[abi:ne200100]<0>(a2, v3);
      return;
    }
  }

  a3.i32[0] = bswap32(this);
  v4 = vzip1_s8(a3, a3);
  v5.i64[0] = 0x1F0000001FLL;
  v5.i64[1] = 0x1F0000001FLL;
  v6.i64[0] = 0x5F0000005FLL;
  v6.i64[1] = 0x5F0000005FLL;
  v7 = vbsl_s8(vmovn_s32(vcgtq_u32(v6, vsraq_n_s32(v5, vshlq_n_s32(vmovl_u16(v4), 0x18uLL), 0x18uLL))), v4, 0x2E002E002E002ELL);
  v9 = 4;
  LODWORD(__p) = vuzp1_s8(v7, v7).u32[0];
  BYTE4(__p) = 0;
  caulk::make_string("Transport '%s'", a2, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }
}

BOOL HALB_ChangeSynchronizer::SetStateIf(atomic_uint *a1, int a2, unsigned int a3)
{
  v6 = 0;
  v26 = *MEMORY[0x1E69E9840];
  do
  {
    if (HALB_ChangeSynchronizer::SetStateIf(HALB_ChangeSynchronizer::ChangeStatus,HALB_ChangeSynchronizer::ChangeStatus)::kTransitionTable[v6] == a2 && HALB_ChangeSynchronizer::SetStateIf(HALB_ChangeSynchronizer::ChangeStatus,HALB_ChangeSynchronizer::ChangeStatus)::kTransitionTable[v6 + 1] == a3)
    {
      v12 = a2;
      atomic_compare_exchange_strong(a1 + 2, &v12, a3);
      result = v12 == a2;
      goto LABEL_14;
    }

    v6 += 2;
  }

  while (v6 != 26);
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

  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v14 = HALB_ChangeSynchronizer::ChangeStatusToString(HALB_ChangeSynchronizer::ChangeStatus)::kStatusNames[a2];
    v15 = HALB_ChangeSynchronizer::ChangeStatusToString(HALB_ChangeSynchronizer::ChangeStatus)::kStatusNames[a3];
    v16 = 136316162;
    v17 = "HALB_ChangeSynchronizer.cpp";
    v18 = 1024;
    v19 = 82;
    v20 = 2048;
    v21 = a1;
    v22 = 2080;
    v23 = v14;
    v24 = 2080;
    v25 = v15;
    _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] HALB_ChangeSynchronizer::SetStateIf: Change synchronizer state change (%p) preventing unexpected state transition %s -> %s (DEBUG ONLY)", &v16, 0x30u);
    result = 0;
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t AMCP::Stable_Raw_Clock::calculate_early_threshold(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 15);
  if (*&this[24]._os_unfair_lock_opaque < 3uLL)
  {
    v2 = -48000;
  }

  else
  {
    v2 = *(boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::at(&this[16]._os_unfair_lock_opaque, 2) + 8) - 48000;
  }

  os_unfair_lock_unlock(this + 15);
  LODWORD(v3) = this[4];
  return v2 + (*&this[12]._os_unfair_lock_opaque * v3);
}

void AMCP::Stable_Raw_Clock::process_time_stamp(AMCP::Time_Stamp_Historian *a1, uint64_t a2)
{
  if ((*(*a1 + 32))(a1))
  {
    (*(*a1 + 40))(a1, a2);
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    os_unfair_lock_lock(a1 + 15);
    boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>(a1 + 8, &v4);
    os_unfair_lock_unlock(a1 + 15);
  }

  ++*(a1 + 6);

  AMCP::Time_Stamp_Historian::calculate_and_save_delta(a1);
}

void AMCP::Stable_Raw_Clock::process_initial_time_stamps(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  if ((v4 & 1) == 0)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *&buf[4] = "Stable_Raw_Clock.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 68;
      *&buf[18] = 2080;
      *&buf[20] = "not (need_to_process_initial_stamps())";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v18);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v28 = "virtual void AMCP::Stable_Raw_Clock::process_initial_time_stamps(const Zero_Time_Stamp &)";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Clock/Stable_Raw_Clock.cpp";
    v30 = 68;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  LODWORD(v5) = *(a1 + 16);
  v6 = v5;
  v7 = *(a2 + 16);
  v8 = *(a2 + 8) - 2 * (*(a1 + 40) * v6);
  *buf = *a2 + v6 * -2.0;
  *&buf[8] = v8;
  *&buf[16] = v7;
  os_unfair_lock_lock((a1 + 60));
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>((a1 + 64), buf);
  os_unfair_lock_unlock((a1 + 60));
  AMCP::Time_Stamp_Historian::calculate_and_save_delta(a1);
  LODWORD(v9) = *(a1 + 16);
  v10 = v9;
  v11 = *(a2 + 8) - (*(a1 + 40) * v10);
  *buf = *a2 - v10;
  *&buf[8] = v11;
  *&buf[16] = v7;
  os_unfair_lock_lock((a1 + 60));
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>((a1 + 64), buf);
  os_unfair_lock_unlock((a1 + 60));
  AMCP::Time_Stamp_Historian::calculate_and_save_delta(a1);
  *buf = *a2;
  *&buf[16] = *(a2 + 16);
  os_unfair_lock_lock((a1 + 60));
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>((a1 + 64), buf);
  os_unfair_lock_unlock((a1 + 60));
  v12 = *MEMORY[0x1E69E9840];

  AMCP::Time_Stamp_Historian::calculate_and_save_delta(a1);
}

void sub_1DE4BECA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

void AMCP::Stable_Raw_Clock::~Stable_Raw_Clock(void **this)
{
  *this = &unk_1F598B740;
  v1 = this + 8;
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(this + 14);
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598B740;
  v1 = this + 8;
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(this + 14);
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(v1);
}

void HALS_IOStreamDSP::GraphV2::Run(uint64_t a1, double *a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t a6, _DWORD *a7)
{
  v7 = a7;
  v79 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  v14 = *a4;
  v15 = a4[1];
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v61 - v18;
  if (v17 != v16)
  {
    if (((v17 - v16) >> 4) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = (v17 - v16) >> 4;
    }

    v22 = (v16 + 4);
    v23 = (&v61 - v18);
    do
    {
      v24 = *v22;
      v22 += 4;
      *v23++ = v24;
      --v21;
    }

    while (v21);
  }

  *v68 = *(v16 + 4);
  *&v68[4] = v19;
  *&v68[8] = 1;
  v25 = *(a1 + 8);
  v64.__r_.__value_.__r.__words[0] = 0;
  inited = CADSPGraphCalculateExpectedNumberOfOutputPCMFramesWithFlags_delayInitStub(v19);
  v28 = v64.__r_.__value_.__r.__words[0];
  if (inited)
  {
    v29 = 0;
  }

  else
  {
    v29 = v64.__r_.__value_.__r.__words[0] == 0;
  }

  if (v29)
  {
    v28 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v27);
    v64.__r_.__value_.__r.__words[0] = v28;
  }

  v65 = v28;
  if (v28)
  {
    v65 = 0;
    buf[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v65, v27);
    *buf = 0;
    v64.__r_.__value_.__r.__words[0] = 0;
    v73 = v28;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v64, v51);
    LOBYTE(v74) = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v52);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    Code_delayInitStub = CADSPRealTimeErrorGetCode_delayInitStub(v53);
    caulk::string_from_4cc(v68, Code_delayInitStub);
    if (SBYTE3(v72) >= 0)
    {
      v55 = v68;
    }

    else
    {
      v55 = *v68;
    }

    *buf = 136315650;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 688;
    *&buf[18] = 2080;
    *&buf[20] = v55;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to calculate DSP I/O frame counts with error %s", buf, 0x1Cu);
    if (SBYTE3(v72) < 0)
    {
      operator delete(*v68);
    }

    if ((v74 & 1) == 0)
    {
LABEL_35:
      v56 = &v73;
LABEL_44:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v56, v53);
    }
  }

  else
  {
    buf[8] = 1;
    v30 = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v65, v27);
    v32 = *a4;
    v31 = a4[1];
    MEMORY[0x1EEE9AC00](v30);
    if (v35 != v36)
    {
      v62 = a6;
      v63 = v7;
      v37 = 0;
      v38 = 0;
      if (a3)
      {
        v39 = a2;
      }

      else
      {
        v39 = 0;
      }

      v40 = (&v61 - v33 + 16);
      *&v34 = 136315394;
      v61 = v34;
      do
      {
        v41 = *a5;
        v42 = *&v20[4 * v38];
        *v40 = v42;
        *(v40 - 1) = a2;
        v43 = v41 + v37;
        v44 = *(v41 + v37 + 40);
        *(v40 - 2) = v44;
        v45 = *(v43 + 80);
        if (v45)
        {
          HALB_CaptureFile::Write(v45, 0, v39, 0, v42, *(v44 + 16));
        }

        ++v38;
        v40 += 6;
        v37 += 88;
      }

      while (v38 < (a4[1] - *a4) >> 4);
      v7 = v63;
      a6 = v62;
    }

    v77 = 0u;
    v78 = 0u;
    memset(buf, 0, sizeof(buf));
    v75 = v67;
    v73 = a6;
    v74 = buf;
    v46 = *(a1 + 8);
    v64.__r_.__value_.__r.__words[0] = 0;
    v47 = CADSPGraphProcessPCMData_delayInitStub(0.0);
    v49 = v64.__r_.__value_.__r.__words[0];
    if (!v47 && !v64.__r_.__value_.__r.__words[0])
    {
      v49 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v48);
      v64.__r_.__value_.__r.__words[0] = v49;
    }

    v65 = v49;
    if (!v49)
    {
      v68[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v65, v48);
      v66 = 1;
      *v7 = v75;
      goto LABEL_27;
    }

    v65 = 0;
    v68[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v65, v48);
    *v68 = 0;
    v64.__r_.__value_.__r.__words[0] = 0;
    v65 = v49;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v64, v57);
    v66 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v68, v58);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    Code = CA::DSP::RealTimeError::GetCode(v49, v53);
    caulk::string_from_4cc(&v64, Code);
    v60 = (v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v64 : v64.__r_.__value_.__r.__words[0];
    *v68 = 136315650;
    *&v68[4] = "HALS_IOStreamDSP.cpp";
    v69 = 1024;
    v70 = 728;
    v71 = 2080;
    v72 = v60;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to run DSP with error %s", v68, 0x1Cu);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if ((v66 & 1) == 0)
    {
LABEL_43:
      v56 = &v65;
      goto LABEL_44;
    }
  }

LABEL_27:
  v50 = *MEMORY[0x1E69E9840];
}

void sub_1DE4BF370(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(void *a1, double a2)
{
  if (*a1)
  {
    CADSPRealTimeErrorRelease_delayInitStub(a2);
    *a1 = 0;
  }

  return a1;
}

void HALS_IOStreamDSP::GraphV2::Reset(HALS_IOStreamDSP::GraphV2 *this, double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  __p.__r_.__value_.__r.__words[0] = 0;
  inited = 0;
  if (CADSPGraphReset_delayInitStub(a2))
  {
    v5 = 0;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0] == 0;
  }

  if (v5)
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v3);
    __p.__r_.__value_.__r.__words[0] = inited;
  }

  v13 = inited;
  if (inited)
  {
    v13 = 0;
    buf[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13, v3);
    *buf = 0;
    __p.__r_.__value_.__r.__words[0] = 0;
    v13 = inited;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v7);
    v14 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v8);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    Code = CA::DSP::RealTimeError::GetCode(inited, v9);
    caulk::string_from_4cc(&__p, Code);
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v16 = 1024;
    v17 = 661;
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to reset DSP with error %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v14 & 1) == 0)
    {
LABEL_16:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13, v9);
    }
  }

  else
  {
    buf[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13, v3);
    v14 = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE4BF588(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

double HALS_IOStreamDSP::GraphV2::GetLatencySeconds(HALS_IOStreamDSP::GraphV2 *this, double a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v17 = 0.0;
  v15 = 0;
  inited = 0;
  if (CADSPGraphGetLatency_delayInitStub(a2))
  {
    v5 = 0;
  }

  else
  {
    v5 = v15 == 0;
  }

  if (v5)
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v3);
    v15 = inited;
  }

  v14 = inited;
  if (inited)
  {
    v14 = 0;
    v13 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14, v3);
    v12 = 0;
    v15 = 0;
    v16 = *&inited;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15, v9);
    LOBYTE(v17) = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12, v10);
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16, v11);
    v6 = 0.0;
  }

  else
  {
    v6 = v17;
    v13 = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14, v3);
    v16 = v6;
    LOBYTE(v17) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DE4BF69C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::GetParameter(HALS_IOStreamDSP::GraphV2 *this, unsigned int a2, float *a3, double a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (CA::DSP::Graph::HasParameter(*(this + 1), a4))
  {
    v7 = bswap32(a2);
    *&buf[1] = v7;
    if ((v7 - 32) > 0x5E || ((v7 >> 8) - 32) > 0x5E || ((v7 << 8 >> 24) - 32) > 0x5E || ((v7 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v28, a2);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v28, buf);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v28.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      v31 = 1024;
      v32 = 631;
      v33 = 2080;
      v34 = v10;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  getting parameter %s", buf, 0x1Cu);
    }

    v11 = *(this + 1);
    *&buf[8] = 0;
    v26 = 0;
    Parameter_delayInitStub = CADSPGraphGetParameter_delayInitStub(v9);
    inited = 0;
    if (!Parameter_delayInitStub)
    {
      inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v13);
      v26 = inited;
    }

    v29 = inited;
    if (inited)
    {
      v29 = 0;
      __p.__r_.__value_.__r.__words[0] = inited;
      __p.__r_.__value_.__s.__data_[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v29, v13);
      v18 = __p.__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__r.__words[0] = 0;
      *buf = 0;
      v26 = v18;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v19);
      v27 = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v20);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v22 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
        Code = CA::DSP::RealTimeError::GetCode(v26, v21);
        caulk::string_from_4cc(&__p, Code);
        v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "HALS_IOStreamDSP.cpp";
        v31 = 1024;
        v32 = 637;
        v33 = 2080;
        v34 = v22;
        v35 = 2080;
        v36 = v24;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to get parameter %s with error %s", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v26, v21);
      v8 = 0;
    }

    else
    {
      v15 = *&buf[8];
      LODWORD(__p.__r_.__value_.__l.__data_) = *&buf[8];
      v8 = 1;
      __p.__r_.__value_.__s.__data_[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v29, v13);
      LODWORD(v26) = v15;
      v27 = 1;
      *a3 = v15;
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE4BF9E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::SetParameter(HALS_IOStreamDSP::GraphV2 *this, unsigned int a2, double a3)
{
  v3 = *&a3;
  v32 = *MEMORY[0x1E69E9840];
  if (CA::DSP::Graph::HasParameter(*(this + 1), a3))
  {
    v6 = bswap32(a2);
    *&buf[1] = v6;
    if ((v6 - 32) > 0x5E || ((v6 >> 8) - 32) > 0x5E || ((v6 << 8 >> 24) - 32) > 0x5E || ((v6 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v24, a2);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v24, buf);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v24.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      v26 = 1024;
      v27 = 610;
      v28 = 2080;
      v29 = v9;
      v30 = 2048;
      v31 = v3;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  setting parameter %s to %f", buf, 0x26u);
    }

    v10 = *(this + 1);
    __p.__r_.__value_.__r.__words[0] = 0;
    *&v8 = v3;
    inited = 0;
    if (!CADSPGraphSetParameter_delayInitStub(v8))
    {
      inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v11);
      __p.__r_.__value_.__r.__words[0] = inited;
    }

    v22 = inited;
    if (inited)
    {
      v22 = 0;
      buf[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v22, v11);
      *buf = 0;
      __p.__r_.__value_.__r.__words[0] = 0;
      v22 = inited;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v15);
      v23 = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v16);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v24;
      }

      else
      {
        v18 = v24.__r_.__value_.__r.__words[0];
      }

      Code = CA::DSP::RealTimeError::GetCode(inited, v17);
      caulk::string_from_4cc(&__p, Code);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        *&data = COERCE_DOUBLE(&__p);
      }

      else
      {
        data = __p.__r_.__value_.__l.__data_;
      }

      *buf = 136315906;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      v26 = 1024;
      v27 = 616;
      v28 = 2080;
      v29 = v18;
      v30 = 2080;
      v31 = *&data;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to set parameter %s with error %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v23 & 1) == 0)
      {
LABEL_30:
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v22, v17);
      }

      v7 = 0;
    }

    else
    {
      v7 = 1;
      buf[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v22, v11);
      v23 = 1;
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1DE4BFCF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::GetProperty(HALS_IOStreamDSP::GraphV2 *this, unsigned int a2, unsigned int *a3, void *a4, double a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (CA::DSP::Graph::HasProperty(*(this + 1), a5))
  {
    v8 = bswap32(a2);
    *&buf[1] = v8;
    if ((v8 - 32) > 0x5E || ((v8 >> 8) - 32) > 0x5E || ((v8 << 8 >> 24) - 32) > 0x5E || ((v8 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v27, a2);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v27, buf);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = &v27;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v27.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      v29 = 1024;
      v30 = 581;
      v31 = 2080;
      v32 = v11;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  getting DSP property %s", buf, 0x1Cu);
    }

    v26 = *a3;
    v12 = *(this + 1);
    __p.__r_.__value_.__r.__words[0] = 0;
    inited = 0;
    if (!CADSPGraphGetProperty_delayInitStub(v10))
    {
      inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v13);
      __p.__r_.__value_.__r.__words[0] = inited;
    }

    v24 = inited;
    if (inited)
    {
      v24 = 0;
      buf[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v24, v13);
      *buf = 0;
      __p.__r_.__value_.__r.__words[0] = 0;
      v24 = inited;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v17);
      v25 = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v18);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v27;
      }

      else
      {
        v20 = v27.__r_.__value_.__r.__words[0];
      }

      Code = CA::DSP::RealTimeError::GetCode(inited, v19);
      caulk::string_from_4cc(&__p, Code);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      v29 = 1024;
      v30 = 589;
      v31 = 2080;
      v32 = v20;
      v33 = 2080;
      v34 = p_p;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to get property %s with error %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v25 & 1) == 0)
      {
LABEL_30:
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v24, v19);
      }

      v9 = 0;
    }

    else
    {
      v9 = 1;
      buf[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v24, v13);
      v25 = 1;
      *a3 = v26;
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1DE4C003C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::GetPropertyInfo(HALS_IOStreamDSP::GraphV2 *this, unsigned int a2, unsigned int *a3, BOOL *a4, double a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (CA::DSP::Graph::HasProperty(*(this + 1), a5))
  {
    v9 = bswap32(a2);
    *&buf[1] = v9;
    if ((v9 - 32) > 0x5E || ((v9 >> 8) - 32) > 0x5E || ((v9 << 8 >> 24) - 32) > 0x5E || ((v9 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v28, a2);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v28, buf);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v28.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 557;
      v31 = 2080;
      v32 = v12;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  getting DSP property info %s", buf, 0x1Cu);
    }

    v13 = *(this + 1);
    *&buf[8] = 0;
    inited = 0;
    if (!CADSPGraphGetPropertyInfo_delayInitStub(v11))
    {
      inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v14);
      v26 = inited;
    }

    v29 = inited;
    if (inited)
    {
      v29 = 0;
      __p.__r_.__value_.__s.__data_[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v29, v14);
      __p.__r_.__value_.__r.__words[0] = 0;
      *buf = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v19);
      v26 = inited;
      v27 = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v20);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v28;
      }

      else
      {
        v22 = v28.__r_.__value_.__r.__words[0];
      }

      Code = CA::DSP::RealTimeError::GetCode(inited, v21);
      caulk::string_from_4cc(&__p, Code);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 563;
      v31 = 2080;
      v32 = v22;
      v33 = 2080;
      v34 = p_p;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to get DSP property info %s with error %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v27 & 1) == 0)
      {
LABEL_30:
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v26, v21);
      }

      v10 = 0;
    }

    else
    {
      v16 = *&buf[8];
      v10 = 1;
      __p.__r_.__value_.__s.__data_[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v29, v14);
      v26 = v16;
      v27 = 1;
      *a3 = HIDWORD(v16);
      *a4 = (v16 & 2) != 0;
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1DE4C0360(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::SetProperty(HALS_IOStreamDSP::GraphV2 *this, unsigned int a2, unsigned int a3, const void *a4, double a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (CA::DSP::Graph::HasProperty(*(this + 1), a5))
  {
    v7 = bswap32(a2);
    *&buf[1] = v7;
    if ((v7 - 32) > 0x5E || ((v7 >> 8) - 32) > 0x5E || ((v7 << 8 >> 24) - 32) > 0x5E || ((v7 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v25, a2);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v25, buf);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = &v25;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v25.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      v27 = 1024;
      v28 = 536;
      v29 = 2080;
      v30 = v10;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  setting DSP property info %s", buf, 0x1Cu);
    }

    v11 = *(this + 1);
    __p.__r_.__value_.__r.__words[0] = 0;
    inited = 0;
    if (!CADSPGraphSetProperty_delayInitStub(v9))
    {
      inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v12);
      __p.__r_.__value_.__r.__words[0] = inited;
    }

    v23 = inited;
    if (inited)
    {
      v23 = 0;
      buf[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v23, v12);
      *buf = 0;
      __p.__r_.__value_.__r.__words[0] = 0;
      v23 = inited;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v16);
      v24 = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v17);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v25;
      }

      else
      {
        v19 = v25.__r_.__value_.__r.__words[0];
      }

      Code = CA::DSP::RealTimeError::GetCode(inited, v18);
      caulk::string_from_4cc(&__p, Code);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      v27 = 1024;
      v28 = 542;
      v29 = 2080;
      v30 = v19;
      v31 = 2080;
      v32 = p_p;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to set DSP property %s with error %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v24 & 1) == 0)
      {
LABEL_30:
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v23, v18);
      }

      v8 = 0;
    }

    else
    {
      v8 = 1;
      buf[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v23, v12);
      v24 = 1;
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE4C0668(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void HALS_IOStreamDSP::GraphV2::~GraphV2(HALS_IOStreamDSP::GraphV2 *this, double a2)
{
  HALS_IOStreamDSP::GraphV2::~GraphV2(this, a2);

  JUMPOUT(0x1E12C1730);
}

{
  v3 = (this + 16);
  if (*(this + 2) && RPBServerGetSharedInstance_delayInitStub(a2))
  {
    v5 = *v3;
    RPBServerRemoveHost_delayInitStub(v4);
  }

  CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(v3);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 1);
}

const void **CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t std::allocator_traits<std::allocator<HALS_IOStreamDSP::InputChannelData>>::destroy[abi:ne200100]<HALS_IOStreamDSP::InputChannelData,void,0>(uint64_t a1)
{
  std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((a1 + 80), 0);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100]((a1 + 40), 0);

  return std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](a1 + 48);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
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

void sub_1DE4C084C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HALS_IOStreamDSP::AllocateBuffers(unsigned int,std::string const&,HALS_IOStreamDSP::CaptureFile,AudioCapturerMode)::$_0,std::allocator<HALS_IOStreamDSP::AllocateBuffers(unsigned int,std::string const&,HALS_IOStreamDSP::CaptureFile,AudioCapturerMode)::$_0>,void ()(AudioBufferList *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN16HALS_IOStreamDSP15AllocateBuffersEjRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS_11CaptureFileE17AudioCapturerModeE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOStreamDSP::AllocateBuffers(unsigned int,std::string const&,HALS_IOStreamDSP::CaptureFile,AudioCapturerMode)::$_1,std::allocator<HALS_IOStreamDSP::AllocateBuffers(unsigned int,std::string const&,HALS_IOStreamDSP::CaptureFile,AudioCapturerMode)::$_1>,void ()(AudioBufferList *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN16HALS_IOStreamDSP15AllocateBuffersEjRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS_11CaptureFileE17AudioCapturerModeE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void HALS_IOStreamDSP::InputChannelData::~InputChannelData(HALS_IOStreamDSP::InputChannelData *this)
{
  std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](this + 5, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](this + 48);
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = "DSP graph API version {} is not supported";
  v14[0] = "DSP graph API version {} is not supported";
  v14[1] = "";
  v15 = 0;
  v16 = 0;
  v17 = v2;
  v10 = *a2;
  v11 = a2[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v4 = "The format string terminates at a '{'";
  v13 = 0;
  do
  {
    v5 = v9;
    while (1)
    {
      v6 = *v3;
      if (v6 == 125)
      {
        if (++v3 == "" || *v3 != 125)
        {
          v4 = "The format string contains an invalid escape sequence";
LABEL_17:
          std::__throw_format_error[abi:ne200100](v4);
        }

        goto LABEL_10;
      }

      if (v6 == 123)
      {
        if (++v3 == "")
        {
          goto LABEL_17;
        }

        if (*v3 != 123)
        {
          break;
        }
      }

LABEL_10:
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v5, v6);
      if (++v3 == "")
      {
        goto LABEL_13;
      }
    }

    v9 = v5;
    v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, "", v14, &v9);
  }

  while (v3 != "");
LABEL_13:
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }
}

void sub_1DE4C0BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void **a4)
{
  *&v292[1023] = *MEMORY[0x1E69E9840];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_523;
  }

  v9 = *v7;
  if (v9 != 125)
  {
    if (v9 == 58)
    {
      ++v7;
      goto LABEL_5;
    }

LABEL_523:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

LABEL_5:
  *a3 = v7;
  v10 = a4[1];
  if (v10 <= v8)
  {
LABEL_524:
    std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }

  if (v10 > 0xC)
  {
    v11 = &a4[2][4 * v8];
    v13 = *v11;
    v14 = *(v11 + 4);
    v15 = *(v11 + 8);
    v16 = *v11 >> 8;
    LODWORD(v11) = *(v11 + 16);
  }

  else
  {
    v11 = (a4[3] >> (5 * v8)) & 0x1F;
    v12 = &a4[2][2 * v8];
    v13 = *v12;
    v14 = *(v12 + 4);
    v15 = *(v12 + 8);
    v16 = *v12 >> 8;
  }

  switch(v11)
  {
    case 1:
      v286 = 0;
      v287 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_225;
      }

      v17 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v286, a3, 55);
      v18 = v17;
      if (BYTE1(v286) - 2 < 6)
      {
        *a3 = v17;
        v19 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
        v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v13, a4, v19, v20, 0);
        goto LABEL_13;
      }

      if (BYTE1(v286) > 1u)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
      }

      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v286, "a BOOL");
      if ((v286 & 7) == 0)
      {
        LOBYTE(v286) = v286 | 1;
      }

      *a3 = v18;
LABEL_225:
      v125 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
      v127 = v126;
      if ((v125 & 0x40) != 0)
      {
        std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v290, a4);
        v130 = std::locale::use_facet(&v290, MEMORY[0x1E69E5368]);
        std::locale::~locale(&v290);
        v131 = v130->__vftable;
        if (v13)
        {
          (v131[2].~facet)(&v290, v130);
        }

        else
        {
          (v131[2].~facet_0)(&v290, v130);
        }

        if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v290;
        }

        else
        {
          v132 = v290.__r_.__value_.__r.__words[0];
        }

        if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v290.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v290.__r_.__value_.__l.__size_;
        }

        v22 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v132, size, *a4, v125, v127);
        if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
        {
          v134 = v290.__r_.__value_.__r.__words[0];
          goto LABEL_466;
        }
      }

      else
      {
        if (v13)
        {
          v128 = 4;
        }

        else
        {
          v128 = 5;
        }

        v22 = *a4;
        if (v13)
        {
          v129 = "true";
        }

        else
        {
          v129 = "false";
        }

        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v129, v128, *a4, v125, v127, v128);
      }

      goto LABEL_467;
    case 2:
      v286 = 0;
      v287 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_51;
      }

      v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v286, a3, 55);
      v45 = BYTE1(v286);
      if (BYTE1(v286) - 2 >= 6)
      {
        if (BYTE1(v286) > 0x13u || ((1 << SBYTE1(v286)) & 0x80401) == 0)
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
        }

        std::__format_spec::__parser<char>::__validate[abi:ne200100](&v286, "a character");
        if ((v286 & 7) == 0)
        {
          LOBYTE(v286) = v286 | 1;
        }
      }

      *a3 = v44;
      switch(v45)
      {
        case 0:
          goto LABEL_51;
        case 19:
          v35 = *a4;
          v135 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
          v137 = v136;
          __p.__r_.__value_.__s.__data_[0] = v13;
          memset(&v290, 0, sizeof(v290));
          std::string::push_back(&v290, 39);
          std::__formatter::__escape[abi:ne200100]<char>(&v290, &__p, 1, 0);
          std::string::push_back(&v290, 39);
          if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v138 = &v290 + HIBYTE(v290.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v138 = (v290.__r_.__value_.__r.__words[0] + v290.__r_.__value_.__l.__size_);
          }

          if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v139 = &v290;
          }

          else
          {
            v139 = v290.__r_.__value_.__r.__words[0];
          }

          if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v140 = HIBYTE(v290.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v140 = v290.__r_.__value_.__l.__size_;
          }

          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v139, v138 - v139, v35, v135, v137, v140);
          if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          goto LABEL_113;
        case 10:
LABEL_51:
          v35 = *a4;
          v46 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
          v290.__r_.__value_.__s.__data_[0] = v13;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v290, 1uLL, v35, v46, v47, 1);
          goto LABEL_113;
      }

      v75 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
      v76 = v141;
      v53 = v13;
      v74 = a4;
      goto LABEL_106;
    case 3:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v48 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v48;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v33 = v49;
      v50 = v13 | (v16 << 8);
      if ((v31 & 0xFF00) == 0xA00)
      {
        if ((v13 | (v16 << 8)) == v13)
        {
          goto LABEL_27;
        }

LABEL_525:
        std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
      }

      if (v50 >= 0)
      {
        v53 = v13 | (v16 << 8);
      }

      else
      {
        v53 = -v50;
      }

      v73 = v16 << 8 >> 31;
      v74 = a4;
      v75 = v31;
      v76 = v33;
      goto LABEL_107;
    case 4:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v30 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v30;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v33 = v32;
      v34 = v13 | (v16 << 8) | (v14 << 32);
      if ((v31 & 0xFF00) != 0xA00)
      {
        if (v34 >= 0)
        {
          v62 = v13 | (v16 << 8) | (v14 << 32);
        }

        else
        {
          v62 = -v34;
        }

        v42 = v14 >> 31;
        v67 = a4;
        v68 = v31;
        v69 = v33;
        goto LABEL_111;
      }

      if (v34 != v34)
      {
        goto LABEL_525;
      }

LABEL_27:
      v35 = *a4;
      LOBYTE(v286) = v13;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v286, 1uLL, v35, v31, v33, 1);
LABEL_113:
      *a4 = v35;
LABEL_468:
      v245 = *a3;
      if (*a3 == a2 || *v245 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
      }

      v246 = *MEMORY[0x1E69E9840];
      return v245 + 1;
    case 5:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v54 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v54;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v42 = v55;
      v56 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) >= __PAIR128__((v56 >= 0x80) + v15 - 1, v56 - 128))
        {
          goto LABEL_525;
        }

LABEL_80:
        v35 = *a4;
        LOBYTE(v286) = v13;
        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v286, 1uLL, v35, v40, v42, 1);
        goto LABEL_113;
      }

      v70 = (__PAIR128__(v15 ^ (v15 >> 63), v56 ^ (v15 >> 63)) - __PAIR128__(v15 >> 63, v15 >> 63)) >> 64;
      v43 = (v56 ^ (v15 >> 63)) - (v15 >> 63);
      v72 = v15 >> 63;
      v71 = a4;
LABEL_109:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v70, v71, v40, v42, v72);
      goto LABEL_112;
    case 6:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v51 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v51;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v42 = v52;
      v53 = v13 | (v16 << 8);
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (v53 >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v74 = a4;
      v75 = v40;
      v76 = v42;
LABEL_106:
      LOBYTE(v73) = 0;
LABEL_107:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v53, v74, v75, v76, v73);
LABEL_112:
      v35 = v77;
      goto LABEL_113;
    case 7:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v60 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v60;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v42 = v61;
      v62 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v67 = a4;
        v68 = v40;
        v69 = v42;
        LOBYTE(v42) = 0;
LABEL_111:
        v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v62, v67, v68, v69, v42);
        goto LABEL_112;
      }

      if (v62 >= 0x80)
      {
        goto LABEL_525;
      }

      goto LABEL_80;
    case 8:
      v290.__r_.__value_.__r.__words[0] = 0;
      v290.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v39 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v290);
        *a3 = v39;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, a4);
      v42 = v41;
      v43 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(v15, v43) >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v70 = v15;
      v71 = a4;
      LOBYTE(v72) = 0;
      goto LABEL_109;
    case 9:
      v278 = 0;
      v279 = -1;
      v280 = 32;
      v281 = 0;
      v282 = 0;
      if (v9 != 58)
      {
        goto LABEL_117;
      }

      v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v278, a3, 63);
      if (BYTE1(v278) - 13 < 6)
      {
        if (v279 != -1 || SWORD1(v278) <= -1)
        {
          v38 = v279;
        }

        else
        {
          v38 = 6;
        }

        v279 = v38;
LABEL_116:
        *a3 = v36;
LABEL_117:
        v79 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v278, a4);
        v80 = v78;
        v81 = v16 << 8;
        v82 = v13 | (v16 << 8);
        if ((v13 | (v16 << 8) & 0x7FFFFFFF) < 0x7F800000)
        {
          if (v78 == -1)
          {
            v83 = 149;
          }

          else
          {
            v83 = v78;
          }

          v290.__r_.__value_.__r.__words[0] = v83;
          if (v83 < 150)
          {
            v84 = v83 + 45;
            v290.__r_.__value_.__l.__size_ = v84;
            if ((v83 + 45) >= 0x101)
            {
              operator new();
            }
          }

          else
          {
            LODWORD(v290.__r_.__value_.__l.__data_) = 149;
            HIDWORD(v290.__r_.__value_.__r.__words[0]) = v83 - 149;
            v84 = 194;
            v290.__r_.__value_.__l.__size_ = 194;
            v83 = 149;
          }

          *v274 = v79;
          v85 = BYTE1(v79);
          v290.__r_.__value_.__r.__words[2] = &v291;
          v276 = v79;
          if ((v81 & 0x80000000) != 0)
          {
            v88 = 45;
          }

          else
          {
            v86 = (v79 >> 3) & 3;
            if (v86 == 2)
            {
              v88 = 43;
            }

            else
            {
              v87 = &v291;
              if (v86 != 3)
              {
                goto LABEL_132;
              }

              v88 = 32;
            }
          }

          v291 = v88;
          v87 = v292;
LABEL_132:
          v89 = fabsf(*&v82);
          if (BYTE1(v79) > 0xEu)
          {
            if (BYTE1(v79) - 15 < 2)
            {
              v286 = v87;
              v90 = MEMORY[0x1E12C15E0](v87, &v292[v84 - 1], 2, v83, v89);
              __src = v90;
              *v289 = v90;
              if (v83)
              {
                v91 = v83 + 1;
              }

              else
              {
                v91 = 0;
              }

              v92 = &v90[-v91];
              goto LABEL_142;
            }

            if (BYTE1(v79) == 17)
            {
LABEL_148:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v286, &v290, v83, v87);
              goto LABEL_300;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v286, &v290, v83, v87);
            v93 = __src;
            if (__src != *v289)
            {
              goto LABEL_265;
            }
          }

          else
          {
            if (BYTE1(v79) > 0xBu)
            {
              if (BYTE1(v79) == 12)
              {
                if ((v78 & 0x80000000) != 0)
                {
                  v142 = -1;
                }

                else
                {
                  v142 = v83;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v286, v84, &v291, v142, v87);
                v143 = v286;
                v93 = __src;
                while (v143 != v93)
                {
                  v144 = *v143;
                  if ((v144 - 97) < 6)
                  {
                    LOBYTE(v144) = v144 - 32;
                  }

                  *v143++ = v144;
                }

                v145 = 80;
                goto LABEL_299;
              }

              if (BYTE1(v79) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v286, v84, &v291, v83, v87);
                goto LABEL_300;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v286, v84, &v291, v83, v87);
              v93 = __src;
LABEL_265:
              v145 = 69;
LABEL_299:
              *v93 = v145;
              goto LABEL_300;
            }

            if (!BYTE1(v79))
            {
              if ((v78 & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              v286 = v87;
              v248 = std::to_chars(v87, &v292[v84 - 1], &v291, v89);
              v249 = v248;
              *v289 = v248;
              v250 = v248 - v87;
              if (v248 - v87 < 4)
              {
LABEL_483:
                v252 = v248;
              }

              else
              {
                if (v250 >= 6)
                {
                  v250 = 6;
                }

                v251 = -v250;
                while (*(v248 + v251) != 101)
                {
                  if (++v251 == -3)
                  {
                    goto LABEL_483;
                  }
                }

                v252 = (v248 + v251);
              }

              __src = v252;
              v263 = memchr(v87 + 1, 46, v252 - (v87 + 1));
              if (v263)
              {
                v92 = v263;
              }

              else
              {
                v92 = v252;
              }

              if (v92 == v252)
              {
                v92 = v249;
              }

LABEL_142:
              v287 = v92;
              goto LABEL_300;
            }

            if ((v78 & 0x80000000) != 0)
            {
              v146 = -1;
            }

            else
            {
              v146 = v83;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v286, v84, &v291, v146, v87);
          }

LABEL_300:
          if ((v276 & 0x20) != 0)
          {
            v157 = v287;
            v158 = *v289;
            if (v287 == *v289)
            {
              **v289 = 46;
              *v289 = ++v158;
              v159 = __src;
              if (__src != v157)
              {
                if (__src + 1 == v157)
                {
                  v166 = *__src;
                  *__src = *(__src + 1);
                  *(v159 + 1) = v166;
                }

                else
                {
                  memmove(&v158[-(v157 - __src)], __src, v157 - __src);
                  *v159 = 46;
                }
              }

              v287 = v159;
              __src = (v159 + 1);
            }

            else
            {
              v159 = v287;
            }

            if ((v85 - 17) <= 1)
            {
              if (v80 <= 1)
              {
                v167 = 1;
              }

              else
              {
                v167 = v80;
              }

              if ((v80 & 0x80000000) != 0)
              {
                v167 = 6;
              }

              v168 = v286 - v159;
              if (__src != v158)
              {
                v168 = -1;
              }

              v169 = v168 + v167;
              v170 = __src + ~v159;
              if (v170 < v169)
              {
                HIDWORD(v290.__r_.__value_.__r.__words[0]) += v169 - v170;
              }
            }
          }

          if ((v276 & 0x40) == 0)
          {
            v171 = *v289;
            v172 = v290.__r_.__value_.__r.__words[2];
            v173 = *v289 - v290.__r_.__value_.__r.__words[2];
            v174 = SHIDWORD(v290.__r_.__value_.__r.__words[0]);
            if ((*v289 - v290.__r_.__value_.__r.__words[2] + SHIDWORD(v290.__r_.__value_.__r.__words[0])) >= *v274 >> 32)
            {
              if (!HIDWORD(v290.__r_.__value_.__r.__words[0]) || (v187 = __src, __src == *v289))
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v290.__r_.__value_.__r.__words[2], *v289 - v290.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
              }

              else
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v290.__r_.__value_.__r.__words[2], __src - v290.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v187, v171 - v187);
              }
            }

            else
            {
              v22 = *a4;
              if ((v276 & 7) == 4)
              {
                if (v290.__r_.__value_.__r.__words[2] != v286)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v290.__r_.__value_.__r.__words[2]);
                  ++v172;
                }

                v175 = *v274;
                v176 = v274[0] & 0xB8 | 3;
                v177 = 48;
              }

              else
              {
                v175 = *v274;
                v176 = v274[0];
                v177 = BYTE4(v80);
              }

              v196 = v175 & 0xFFFFFFFFFFFFFF00 | v176;
              v197 = v80 & 0xFFFFFF00FFFFFFFFLL | (v177 << 32);
              if (v174)
              {
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171, v22, v196, v197, v173, __src, v174);
              }

              else
              {
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171 - v172, v22, v196, v197, v173);
              }
            }

            goto LABEL_416;
          }

          v22 = *a4;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v283, a4);
          v178 = std::locale::use_facet(&v283, MEMORY[0x1E69E5368]);
          (v178->__vftable[1].__on_zero_shared)(&__p);
          v179 = v287;
          v180 = __src;
          v181 = v286;
          v271 = v287;
          v272 = v178;
          if (__src < v287)
          {
            v179 = __src;
          }

          v273 = v179 - v286;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v182 = __p.__r_.__value_.__l.__size_;
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_377;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            v184 = *__p.__r_.__value_.__l.__data_;
            if (v273 <= v184)
            {
              *__p.__r_.__value_.__l.__data_ = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              goto LABEL_377;
            }

            v186 = *__p.__r_.__value_.__l.__data_;
            v183 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_377;
            }

            if (v273 <= __p.__r_.__value_.__s.__data_[0])
            {
              __p.__r_.__value_.__s.__data_[0] = 0;
              *(&__p.__r_.__value_.__s + 23) = 0;
              goto LABEL_377;
            }

            v182 = __p.__r_.__value_.__l.__size_;
            v183 = __p.__r_.__value_.__r.__words[0];
            v184 = __p.__r_.__value_.__s.__data_[0];
            p_p = &__p;
            v186 = __p.__r_.__value_.__s.__data_[0];
          }

          memset(&v284, 0, sizeof(v284));
          v188 = (v183 + v182);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v189 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v189 = v188;
          }

          v190 = v273 - v184;
          if (v273 - v184 >= 1)
          {
            v191 = (v189 - 1);
            do
            {
              std::string::push_back(&v284, v186);
              if (p_p == v191)
              {
                v186 = p_p->__r_.__value_.__s.__data_[0];
              }

              else
              {
                v192 = (&p_p->__r_.__value_.__l.__data_ + 1);
                v193 = &p_p->__r_.__value_.__s.__data_[1];
                do
                {
                  v194 = *v193++;
                  v186 = v194;
                  if (v194)
                  {
                    v195 = 1;
                  }

                  else
                  {
                    v195 = v192 == v191;
                  }

                  v192 = v193;
                }

                while (!v195);
                p_p = (v193 - 1);
              }

              v190 -= v186;
            }

            while (v190 > 0);
          }

          std::string::push_back(&v284, v186 + v190);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v284;
LABEL_377:
          v198 = HIDWORD(v80);
          v270 = *v289;
          v199 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v199 = __p.__r_.__value_.__l.__size_;
          }

          v200 = *v289 - v290.__r_.__value_.__r.__words[2] + SHIDWORD(v290.__r_.__value_.__r.__words[0]) + v199 - (v199 != 0);
          v201 = v276 & 7;
          v202 = (*v274 >> 32) - v200;
          if (*v274 >> 32 > v200)
          {
            if (v201 == 4)
            {
              v203 = 48;
            }

            else
            {
              v203 = v198;
            }

            if (v201 == 4)
            {
              v204 = 3;
            }

            else
            {
              v204 = v276 & 7;
            }

            if (v204 > 1)
            {
              if (v204 != 3)
              {
                *v275 = v202 - (v202 >> 1);
                v202 >>= 1;
                goto LABEL_393;
              }
            }

            else if (v204)
            {
              *v275 = v202;
              v202 = 0;
LABEL_393:
              if (v201 == 4 && v181 != v290.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v290.__r_.__value_.__r.__words[2]);
              }

              v205 = v198 & 0xFFFFFF00 | v203;
              std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, v202, v205);
              if (v201 != 4 && v181 != v290.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v290.__r_.__value_.__r.__words[2]);
              }

              v277 = v180;
              v206 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v206 = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  v207 = __p.__r_.__value_.__r.__words[0];
LABEL_404:
                  v208 = v207 + v206;
                  v209 = (v272->__vftable[1].~facet_0)(v272);
                  v210 = &v207->__r_.__value_.__s.__data_[1];
                  for (i = v208; ; v208 = i)
                  {
                    v212 = *--i;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v212);
                    if (v208 == v210)
                    {
                      break;
                    }

                    v181 += *i;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v209);
                  }

LABEL_408:
                  v213 = v270;
                  if (v271 == v270)
                  {
                    v213 = v271;
                    v215 = v277;
                  }

                  else
                  {
                    v214 = (v272->__vftable[1].~facet)(v272);
                    v215 = v277;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v214);
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, (v271 + 1), &v277[-v271 - 1]);
                    std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, SHIDWORD(v290.__r_.__value_.__r.__words[0]), 48);
                  }

                  if (v215 != v213)
                  {
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v215, v213 - v215);
                  }

                  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, *v275, v205);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v283);
LABEL_416:
                  if (v290.__r_.__value_.__l.__size_ < 0x101)
                  {
                    goto LABEL_467;
                  }

                  goto LABEL_465;
                }
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                v207 = &__p;
                goto LABEL_404;
              }

              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v273);
              goto LABEL_408;
            }

            *v275 = 0;
            goto LABEL_393;
          }

          *v275 = 0;
          v202 = 0;
          v203 = v198;
          goto LABEL_393;
        }

        v266 = *a4;
        LODWORD(v267) = v81 >> 31;
        v268 = v79;
        v269 = v80;
LABEL_521:
        v21 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v266, v268, v269, v267, 0);
LABEL_13:
        v22 = v21;
        goto LABEL_467;
      }

      if (BYTE1(v278) <= 0xCu && ((1 << SBYTE1(v278)) & 0x1801) != 0)
      {
        goto LABEL_116;
      }

      goto LABEL_527;
    case 10:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_188;
      }

      v63 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 < 6)
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v65 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v65 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v65;
        goto LABEL_187;
      }

      if (__p.__r_.__value_.__s.__data_[1] <= 0xCu && ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) != 0)
      {
LABEL_187:
        *a3 = v63;
LABEL_188:
        v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
        v96 = v111;
        v112 = v13 | (v16 << 8);
        v98 = v14 << 32;
        *&v113 = v112 | (v14 << 32);
        if ((v112 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
        {
          if (v111 == -1)
          {
            v114 = 1074;
          }

          else
          {
            v114 = v111;
          }

          v290.__r_.__value_.__r.__words[0] = v114;
          if (v114 >= 1075)
          {
            LODWORD(v290.__r_.__value_.__l.__data_) = 1074;
            HIDWORD(v290.__r_.__value_.__r.__words[0]) = v114 - 1074;
            v290.__r_.__value_.__l.__size_ = 1390;
            goto LABEL_195;
          }

          v115 = v114 + 316;
          v290.__r_.__value_.__l.__size_ = v115;
          if ((v114 + 316) >= 0x401)
          {
LABEL_195:
            operator new();
          }

          v116 = v95;
          v290.__r_.__value_.__r.__words[2] = &v291;
          if ((v98 & 0x8000000000000000) != 0)
          {
            v119 = 45;
          }

          else
          {
            v117 = (v95 >> 3) & 3;
            if (v117 == 2)
            {
              v119 = 43;
            }

            else
            {
              v118 = &v291;
              if (v117 != 3)
              {
                goto LABEL_203;
              }

              v119 = 32;
            }
          }

          v291 = v119;
          v118 = v292;
LABEL_203:
          v120 = fabs(v113);
          if (BYTE1(v95) > 0xEu)
          {
            if (BYTE1(v95) - 15 < 2)
            {
              v286 = v118;
              v121 = MEMORY[0x1E12C1580](v118, &v292[v115 - 1], 2, v114, v120);
              __src = v121;
              *v289 = v121;
              if (v114)
              {
                v122 = v114 + 1;
              }

              else
              {
                v122 = 0;
              }

              v123 = &v121[-v122];
              goto LABEL_213;
            }

            if (BYTE1(v95) == 17)
            {
LABEL_220:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v286, &v290, v114, v118);
              goto LABEL_316;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v286, &v290, v114, v118);
            v124 = __src;
            if (__src != *v289)
            {
              goto LABEL_289;
            }
          }

          else
          {
            if (BYTE1(v95) > 0xBu)
            {
              if (BYTE1(v95) == 12)
              {
                if ((v111 & 0x80000000) != 0)
                {
                  v150 = -1;
                }

                else
                {
                  v150 = v114;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v286, v115, &v291, v150, v118);
                v151 = v286;
                v124 = __src;
                while (v151 != v124)
                {
                  v152 = *v151;
                  if ((v152 - 97) < 6)
                  {
                    LOBYTE(v152) = v152 - 32;
                  }

                  *v151++ = v152;
                }

                v154 = 80;
                goto LABEL_315;
              }

              if (BYTE1(v95) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v286, v115, &v291, v114, v118);
                goto LABEL_316;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v286, v115, &v291, v114, v118);
              v124 = __src;
LABEL_289:
              v154 = 69;
LABEL_315:
              *v124 = v154;
              goto LABEL_316;
            }

            if (!BYTE1(v95))
            {
              if ((v111 & 0x80000000) == 0)
              {
                goto LABEL_220;
              }

              v286 = v118;
              v258 = std::to_chars(v118, &v292[v115 - 1], &v291, v120);
              v259 = v258;
              *v289 = v258;
              v260 = v258 - v118;
              if (v258 - v118 < 4)
              {
LABEL_497:
                v262 = v258;
              }

              else
              {
                if (v260 >= 6)
                {
                  v260 = 6;
                }

                v261 = -v260;
                while (*(v258 + v261) != 101)
                {
                  if (++v261 == -3)
                  {
                    goto LABEL_497;
                  }
                }

                v262 = (v258 + v261);
              }

              __src = v262;
              v265 = memchr(v118 + 1, 46, v262 - (v118 + 1));
              if (v265)
              {
                v123 = v265;
              }

              else
              {
                v123 = v262;
              }

              if (v123 == v262)
              {
                v123 = v259;
              }

LABEL_213:
              v287 = v123;
              if ((v95 & 0x20) == 0)
              {
                goto LABEL_457;
              }

              goto LABEL_317;
            }

            if ((v111 & 0x80000000) != 0)
            {
              v156 = -1;
            }

            else
            {
              v156 = v114;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v286, v115, &v291, v156, v118);
          }

LABEL_316:
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_457;
          }

LABEL_317:
          v163 = v287;
          v164 = *v289;
          if (v287 == *v289)
          {
            **v289 = 46;
            *v289 = ++v164;
            v165 = __src;
            if (__src != v163)
            {
              if (__src + 1 == v163)
              {
                v234 = *__src;
                *__src = *(__src + 1);
                *(v165 + 1) = v234;
              }

              else
              {
                memmove(&v164[-(v163 - __src)], __src, v163 - __src);
                *v165 = 46;
              }
            }

            v287 = v165;
            __src = (v165 + 1);
          }

          else
          {
            v165 = v287;
          }

          if (BYTE1(v95) - 17 <= 1)
          {
            if (v96 <= 1)
            {
              v235 = 1;
            }

            else
            {
              v235 = v96;
            }

            if ((v96 & 0x80000000) != 0)
            {
              v235 = 6;
            }

            v236 = v286 - v165;
            if (__src != v164)
            {
              v236 = -1;
            }

            v237 = v236 + v235;
            v238 = __src + ~v165;
            if (v238 < v237)
            {
              HIDWORD(v290.__r_.__value_.__r.__words[0]) += v237 - v238;
            }
          }

LABEL_457:
          if ((v95 & 0x40) == 0)
          {
            v221 = *v289;
            v239 = v95;
            v223 = v290.__r_.__value_.__r.__words[2];
            v224 = *v289 - v290.__r_.__value_.__r.__words[2];
            v225 = SHIDWORD(v290.__r_.__value_.__r.__words[0]);
            if ((*v289 - v290.__r_.__value_.__r.__words[2] + SHIDWORD(v290.__r_.__value_.__r.__words[0])) < v239 >> 32)
            {
              v240 = v116;
              v241 = v96;
              v242 = v239;
              v22 = *a4;
              if ((v240 & 7) == 4)
              {
                if (v290.__r_.__value_.__r.__words[2] != v286)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v290.__r_.__value_.__r.__words[2]);
                  ++v223;
                }

                v243 = v242 & 0xB8 | 3;
                v244 = 48;
              }

              else
              {
                v243 = v239;
                v244 = BYTE4(v241);
              }

              v232 = v242 & 0xFFFFFFFFFFFFFF00 | v243;
              v233 = v241 & 0xFFFFFF00FFFFFFFFLL | (v244 << 32);
              if (!v225)
              {
LABEL_476:
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221 - v223, v22, v232, v233, v224);
LABEL_464:
                if (v290.__r_.__value_.__l.__size_ < 0x401)
                {
LABEL_467:
                  *a4 = v22;
                  goto LABEL_468;
                }

LABEL_465:
                v134 = v290.__r_.__value_.__r.__words[2];
LABEL_466:
                operator delete(v134);
                goto LABEL_467;
              }

LABEL_443:
              std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221, v22, v232, v233, v224, __src, v225);
              goto LABEL_464;
            }

            if (!HIDWORD(v290.__r_.__value_.__r.__words[0]))
            {
              goto LABEL_473;
            }

            v231 = __src;
            if (__src == *v289)
            {
              goto LABEL_473;
            }

            goto LABEL_439;
          }

          goto LABEL_463;
        }

LABEL_519:
        v266 = *a4;
        v267 = v98 >> 63;
        v268 = v95;
        v269 = v96;
        goto LABEL_521;
      }

      goto LABEL_527;
    case 11:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_152;
      }

      v57 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
      {
        if (__p.__r_.__value_.__s.__data_[1] > 0xCu || ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
        {
LABEL_527:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v59 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v59 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v59;
      }

      *a3 = v57;
LABEL_152:
      v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
      v96 = v94;
      v97 = v13 | (v16 << 8);
      v98 = v14 << 32;
      *&v99 = v97 | (v14 << 32);
      if ((v97 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
      {
        goto LABEL_519;
      }

      if (v94 == -1)
      {
        v100 = 1074;
      }

      else
      {
        v100 = v94;
      }

      v290.__r_.__value_.__r.__words[0] = v100;
      if (v100 >= 1075)
      {
        LODWORD(v290.__r_.__value_.__l.__data_) = 1074;
        HIDWORD(v290.__r_.__value_.__r.__words[0]) = v100 - 1074;
        v290.__r_.__value_.__l.__size_ = 1390;
        goto LABEL_159;
      }

      v101 = v100 + 316;
      v290.__r_.__value_.__l.__size_ = v101;
      if ((v100 + 316) >= 0x401)
      {
LABEL_159:
        operator new();
      }

      v102 = v95;
      v290.__r_.__value_.__r.__words[2] = &v291;
      if ((v98 & 0x8000000000000000) != 0)
      {
        v105 = 45;
      }

      else
      {
        v103 = (v95 >> 3) & 3;
        if (v103 == 2)
        {
          v105 = 43;
        }

        else
        {
          v104 = &v291;
          if (v103 != 3)
          {
            goto LABEL_167;
          }

          v105 = 32;
        }
      }

      v291 = v105;
      v104 = v292;
LABEL_167:
      v106 = fabs(v99);
      if (BYTE1(v95) > 0xEu)
      {
        if (BYTE1(v95) - 15 < 2)
        {
          v286 = v104;
          v107 = MEMORY[0x1E12C15B0](v104, &v292[v101 - 1], 2, v100, v106);
          __src = v107;
          *v289 = v107;
          if (v100)
          {
            v108 = v100 + 1;
          }

          else
          {
            v108 = 0;
          }

          v109 = &v107[-v108];
          goto LABEL_177;
        }

        if (BYTE1(v95) == 17)
        {
LABEL_184:
          std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v286, &v290, v100, v104);
          goto LABEL_308;
        }

        std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v286, &v290, v100, v104);
        v110 = __src;
        if (__src != *v289)
        {
          goto LABEL_287;
        }
      }

      else
      {
        if (BYTE1(v95) > 0xBu)
        {
          if (BYTE1(v95) == 12)
          {
            if ((v94 & 0x80000000) != 0)
            {
              v147 = -1;
            }

            else
            {
              v147 = v100;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v286, v101, &v291, v147, v104);
            v148 = v286;
            v110 = __src;
            while (v148 != v110)
            {
              v149 = *v148;
              if ((v149 - 97) < 6)
              {
                LOBYTE(v149) = v149 - 32;
              }

              *v148++ = v149;
            }

            v153 = 80;
            goto LABEL_307;
          }

          if (BYTE1(v95) == 13)
          {
            std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v286, v101, &v291, v100, v104);
            goto LABEL_308;
          }

          std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v286, v101, &v291, v100, v104);
          v110 = __src;
LABEL_287:
          v153 = 69;
LABEL_307:
          *v110 = v153;
          goto LABEL_308;
        }

        if (!BYTE1(v95))
        {
          if ((v94 & 0x80000000) == 0)
          {
            goto LABEL_184;
          }

          v286 = v104;
          v253 = std::to_chars(v104, &v292[v101 - 1], &v291, v106);
          v254 = v253;
          *v289 = v253;
          v255 = v253 - v104;
          if (v253 - v104 < 4)
          {
LABEL_490:
            v257 = v253;
          }

          else
          {
            if (v255 >= 6)
            {
              v255 = 6;
            }

            v256 = -v255;
            while (*(v253 + v256) != 101)
            {
              if (++v256 == -3)
              {
                goto LABEL_490;
              }
            }

            v257 = (v253 + v256);
          }

          __src = v257;
          v264 = memchr(v104 + 1, 46, v257 - (v104 + 1));
          if (v264)
          {
            v109 = v264;
          }

          else
          {
            v109 = v257;
          }

          if (v109 == v257)
          {
            v109 = v254;
          }

LABEL_177:
          v287 = v109;
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_430;
          }

          goto LABEL_309;
        }

        if ((v94 & 0x80000000) != 0)
        {
          v155 = -1;
        }

        else
        {
          v155 = v100;
        }

        std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v286, v101, &v291, v155, v104);
      }

LABEL_308:
      if ((v95 & 0x20) == 0)
      {
        goto LABEL_430;
      }

LABEL_309:
      v160 = v287;
      v161 = *v289;
      if (v287 == *v289)
      {
        **v289 = 46;
        *v289 = ++v161;
        v162 = __src;
        if (__src != v160)
        {
          if (__src + 1 == v160)
          {
            v216 = *__src;
            *__src = *(__src + 1);
            *(v162 + 1) = v216;
          }

          else
          {
            memmove(&v161[-(v160 - __src)], __src, v160 - __src);
            *v162 = 46;
          }
        }

        v287 = v162;
        __src = (v162 + 1);
      }

      else
      {
        v162 = v287;
      }

      if (BYTE1(v95) - 17 <= 1)
      {
        if (v96 <= 1)
        {
          v217 = 1;
        }

        else
        {
          v217 = v96;
        }

        if ((v96 & 0x80000000) != 0)
        {
          v217 = 6;
        }

        v218 = v286 - v162;
        if (__src != v161)
        {
          v218 = -1;
        }

        v219 = v218 + v217;
        v220 = __src + ~v162;
        if (v220 < v219)
        {
          HIDWORD(v290.__r_.__value_.__r.__words[0]) += v219 - v220;
        }
      }

LABEL_430:
      if ((v95 & 0x40) == 0)
      {
        v221 = *v289;
        v222 = v95;
        v223 = v290.__r_.__value_.__r.__words[2];
        v224 = *v289 - v290.__r_.__value_.__r.__words[2];
        v225 = SHIDWORD(v290.__r_.__value_.__r.__words[0]);
        if ((*v289 - v290.__r_.__value_.__r.__words[2] + SHIDWORD(v290.__r_.__value_.__r.__words[0])) < v222 >> 32)
        {
          v226 = v102;
          v227 = v96;
          v228 = v222;
          v22 = *a4;
          if ((v226 & 7) == 4)
          {
            if (v290.__r_.__value_.__r.__words[2] != v286)
            {
              std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v290.__r_.__value_.__r.__words[2]);
              ++v223;
            }

            v229 = v228 & 0xB8 | 3;
            v230 = 48;
          }

          else
          {
            v229 = v222;
            v230 = BYTE4(v227);
          }

          v232 = v228 & 0xFFFFFFFFFFFFFF00 | v229;
          v233 = v227 & 0xFFFFFF00FFFFFFFFLL | (v230 << 32);
          if (!v225)
          {
            goto LABEL_476;
          }

          goto LABEL_443;
        }

        if (!HIDWORD(v290.__r_.__value_.__r.__words[0]) || (v231 = __src, __src == *v289))
        {
LABEL_473:
          v22 = *a4;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v290.__r_.__value_.__r.__words[2], *v289 - v290.__r_.__value_.__r.__words[2]);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
          goto LABEL_464;
        }

LABEL_439:
        v22 = *a4;
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v290.__r_.__value_.__r.__words[2], __src - v290.__r_.__value_.__r.__words[2]);
        std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v231, v221 - v231);
        goto LABEL_464;
      }

LABEL_463:
      v22 = *a4;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v284, a4);
      std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v22, &v290, &v286, &v284, v95, v96);
      std::locale::~locale(&v284);
      goto LABEL_464;
    case 12:
      LODWORD(v290.__r_.__value_.__l.__data_) = 1;
      *(v290.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v290.__r_.__value_.__s.__data_[12] = 32;
      *(&v290.__r_.__value_.__r.__words[1] + 5) = 0;
      v290.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3);
      }

      v66 = strlen((v13 | (v16 << 8) | (v14 << 32)));
      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, (v13 | (v16 << 8) | (v14 << 32)), v66, a4);
      goto LABEL_95;
    case 13:
      LODWORD(v290.__r_.__value_.__l.__data_) = 1;
      *(v290.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v290.__r_.__value_.__s.__data_[12] = 32;
      *(&v290.__r_.__value_.__r.__words[1] + 5) = 0;
      v290.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v290, a3);
      }

      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v290, (v13 | (v16 << 8) | (v14 << 32)), v15, a4);
      goto LABEL_95;
    case 14:
      v286 = 0;
      v287 = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v23 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v286, a3, 36);
        if (BYTE1(v286) - 8 >= 2 && BYTE1(v286))
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
        }

        *a3 = v23;
      }

      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v286, a4);
      v26 = v13 | (v16 << 8) | (v14 << 32);
      v27 = v25 & 0xFF00;
      v28 = v25 & 0xFFFFFFFFFFFF00DFLL;
      if (v27 == 2304)
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x720, v24, &v290, &v290.__r_.__value_.__r.__words[2] + 3, "0X", 0x10u);
      }

      else
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x620, v24, &v290, &v290.__r_.__value_.__r.__words[2] + 3, "0x", 0x10u);
      }

LABEL_95:
      *a4 = v29;
      goto LABEL_468;
    case 15:
      (v15)(a3, a4, v13 | (v16 << 8) | (v14 << 32));
      goto LABEL_468;
    default:
      goto LABEL_524;
  }
}