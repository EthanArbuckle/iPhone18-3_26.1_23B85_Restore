void sub_23A505D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Query@<X0>(uint64_t (***a1)(void)@<X0>, uint64_t a2@<X1>, Phase *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v43 = *MEMORY[0x277D85DE8];
  LODWORD(v30) = 3;
  BYTE4(v30) = 1;
  HIDWORD(v42) = 0;
  v31 = 0;
  v32[3] = 0;
  v33 = 0;
  v34 = 0;
  v35[3] = 0;
  v36 = 0;
  v37 = 0;
  v38[3] = 0;
  v39 = 0;
  v40[3] = 0;
  v41 = 0;
  *&v42 = 0;
  WORD4(v42) = 0;
  if (a2 == 3)
  {
    v10 = 1;
  }

  else
  {
    if (a2 != 10)
    {
      *a4 = 3;
      *(a4 + 4) = 1;
      *(a4 + 8) = 0;
      *(a4 + 204) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      *(a4 + 200) = 0;
      goto LABEL_7;
    }

    v10 = 27;
  }

  v11 = &a1[v10];
  v12 = BYTE1(a1[v10 + 25]);
  v13 = (**a1)(a1);
  Phase::SpatialModeler::sGenerateReflections(&v19, v11 + 1, v11 + 7, v11 + 13, v11 + 18, v12, v13, a3, a5, a6);
  LODWORD(v30) = v19;
  BYTE4(v30) = v20;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v31, &v21);
  v33 = v22[4];
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v34, &v23);
  v36 = v24[4];
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100](&v37, &v25);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v39, &v27);
  v41 = v28[4];
  v42 = v29;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v27);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v28);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v25, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v26);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v23);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v24);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v21);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v22);
  v14 = v31;
  v31 = 0;
  *a4 = v30;
  *(a4 + 8) = v14;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a4 + 16, v32);
  v15 = v34;
  v34 = 0;
  *(a4 + 48) = v33;
  *(a4 + 56) = v15;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a4 + 64, v35);
  v16 = v37;
  v37 = 0;
  *(a4 + 96) = v36;
  *(a4 + 104) = v16;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a4 + 112, v38);
  v17 = v39;
  v39 = 0;
  *(a4 + 144) = v17;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a4 + 152, v40);
  *(a4 + 184) = v41;
  *(a4 + 192) = v42;
LABEL_7:
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v39);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v40);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v37, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v38);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v34);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v35);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v31);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v32);
}

Phase::SpatialModeler::ReverbPresetDatabase::Implementation *Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Implementation(Phase::SpatialModeler::ReverbPresetDatabase::Implementation *this, double a2, int a3)
{
  *(this + 8) = 0;
  v6 = (this + 8);
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 12) = 0;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  v7 = (this + 808);
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  memset(this + 140, 255, 0x280uLL);
  *(this + 49) = 0u;
  *(this + 200) = 0;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[12] = 0u;
  *(this + 127) = 0;
  *(this + 256) = 1065353216;
  *this = exp(a2 * 10.0 / 10.0 * 0.115129255);
  Phase::HeapAllocator::InitializeWithBacking(v6, 0x4000000uLL, "SpatialModelerReverbPresetDatabaseHeap", 16, 128, a3);
  return this;
}

void sub_23A50617C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>>>::~__hash_table(v2 + 992);
  Phase::HeapAllocator::Destroy(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection((v2 + 59));
      Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection((v2 + 6));
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void Phase::SpatialModeler::ReverbPresetDatabase::Implementation::~Implementation(Phase::SpatialModeler::ReverbPresetDatabase::Implementation *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>>>::clear(this + 992);
  Phase::HeapAllocator::Destroy((this + 8));
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>>>::~__hash_table(this + 992);
  Phase::HeapAllocator::Destroy((this + 8));
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void Phase::SpatialModeler::ReverbPresetFile::Load(std::string *a1, const std::string *a2)
{
  v26[72] = *MEMORY[0x277D85DE8];
  std::string::operator=(a1, a2);
  v3 = std::ifstream::basic_ifstream(v26);
  if (v26[17])
  {
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    v4 = std::istream::read();
    v12 = **(Phase::Logger::GetInstance(v4) + 576);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      v14 = a2->__r_.__value_.__r.__words[0];
      v15 = __error();
      if (v13 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = v14;
      }

      v17 = *v15;
      __p[0] = 136315906;
      *&__p[1] = "SpatialModelerReverbPresetFile.cpp";
      v20 = 1024;
      v21 = 89;
      v22 = 2080;
      v23 = v16;
      v24 = 1024;
      v25 = v17;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [earlyReflectionCount == 0 is true]: Reverb preset file does not contain early reflections: %s (errno: %d)", __p, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Reverb preset file does not contain early reflections: %s (errno: %d)");
  }

  v5 = **(Phase::Logger::GetInstance(v3) + 576);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v7 = a2->__r_.__value_.__r.__words[0];
    v8 = __error();
    if (v6 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = v7;
    }

    v10 = *v8;
    __p[0] = 136315906;
    *&__p[1] = "SpatialModelerReverbPresetFile.cpp";
    v20 = 1024;
    v21 = 76;
    v22 = 2080;
    v23 = v9;
    v24 = 1024;
    v25 = v10;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [!presetFile.is_open() is true]: Failed to open reverb preset file: %s (errno: %d)", __p, 0x22u);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v11, "Failed to open reverb preset file: %s (errno: %d)");
}

void sub_23A506F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::ifstream::~ifstream(&a31, MEMORY[0x277D82808]);
  MEMORY[0x23EE863B0](&STACK[0x258]);
  _Unwind_Resume(a1);
}

void std::vector<Phase::SpatialModeler::ReverbPresetFile::ReflectionEntry>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;

      std::vector<Phase::SpatialModeler::ReverbPresetFile::ReflectionEntry>::__base_destruct_at_end[abi:ne200100](a1, v11);
    }
  }

  else
  {
    v7 = *(a1 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 24 * ((24 * v6 - 24) / 0x18) + 24);
    *(a1 + 8) = v4 + 24 * ((24 * v6 - 24) / 0x18) + 24;
  }
}

uint64_t Phase::SpatialModeler::Scheduler::Init(Phase::Logger *a1, uint64_t a2, Phase::Logger *this, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    v6 = **(Phase::Logger::GetInstance(a1) + 224);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "SpatialModelerScheduler.cpp";
      v10 = 1024;
      v11 = 129;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == inpModeler is true]: SpatialModeler::Scheduler : null inModeler passed to Init()", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "SpatialModeler::Scheduler : null inModeler passed to Init()");
  }

  *a1 = this;
  *(a1 + 1) = a2;
  *(this + 2) = a2;
  v4 = *(*this + 32);

  return v4(this, a4);
}

unsigned __int8 *Phase::SpatialModeler::Scheduler::SubmitQuery@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result;
  v16 = *MEMORY[0x277D85DE8];
  if (a2 && a3 && a3[22] != a3[21])
  {
    v7 = atomic_load(result + 16);
    if (v7)
    {
      v8 = result + 24;
      *a4 = 0;
      v9 = 9;
    }

    else
    {
      v11 = 0;
      atomic_compare_exchange_strong(a2, &v11, 1u);
      if (v11)
      {
        v8 = result + 24;
        *a4 = 0;
        v9 = 2;
      }

      else
      {
        result = (*(**result + 8))();
        if (result)
        {
          v12 = 0;
          atomic_compare_exchange_strong((a2 + 104), &v12, atomic_fetch_add(v4 + 5, 1u) + 1);
          if (!v12)
          {
            v14 = a3[19];
            v13 = a3[20];
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
            }

            v15 = *(a2 + 72);
            *(a2 + 64) = v14;
            *(a2 + 72) = v13;
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            Phase::SpatialModeler::ActiveQueryList::Add((a3[21] + 56), a2);
          }
        }

        v8 = v4 + 24;
        *a4 = 0;
        v9 = 7;
      }
    }
  }

  else
  {
    v8 = result + 24;
    *a4 = 0;
    v9 = 8;
  }

  *(a4 + 8) = v9;
  *(a4 + 16) = v8;
  return result;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::QueryState,std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::SpatialModeler::QueryState,std::function<void ()(void *)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

void Phase::SpatialModeler::Scheduler::CancelAllQueries(void *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    atomic_store(1u, a2 + 25);
    v4 = atomic_load(a2 + 24);
    if (v4)
    {
      do
      {
        __ns.__rep_ = 1000000;
        std::this_thread::sleep_for (&__ns);
        v5 = atomic_load(a2 + 24);
      }

      while ((v5 & 1) != 0);
    }

    v6 = *a2;
    v7 = *(a2 + 1);
    if (*a2 != v7)
    {
      do
      {
        v8 = *(v6 + 168);
        v9 = *(v6 + 176);
        while (v8 != v9)
        {
          for (i = *(v8 + 56); i; i = i[10])
          {
            (*(**a1 + 72))(*a1, *i);
            v11 = *i;
            atomic_store(0, (*i + 104));
            atomic_store(5u, v11);
            v12 = *(v11 + 32);
            if (v12)
            {
              (*(*v12 + 48))(v12);
            }
          }

          std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100]((v8 + 56), 0);
          v8 += 96;
        }

        v6 += 192;
      }

      while (v6 != v7);
    }

    atomic_store(0, a2 + 25);
  }
}

uint64_t Phase::SpatialModeler::Scheduler::InitGraphSequence(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  std::vector<Phase::SpatialModeler::Graph>::reserve(a2, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v6 = *a3;
  v7 = a3[1];
  if (v6 == v7)
  {
    return 1;
  }

  while (1)
  {
    v9 = *a2;
    v8 = a2[1];
    if (v8 >= a2[2])
    {
      v10 = std::vector<Phase::SpatialModeler::Graph>::__emplace_back_slow_path<Phase::SpatialModeler::GraphSequence &>(a2, a2);
    }

    else
    {
      *v8 = a2;
      *(v8 + 8) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 56) = -1;
      *(v8 + 64) = 0;
      *(v8 + 96) = 0;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      v10 = v8 + 192;
      *(v8 + 160) = 0u;
      *(v8 + 176) = 0u;
    }

    a2[1] = v10;
    if ((Phase::SpatialModeler::Scheduler::InitGraph(a1, a2, 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 6), v6) & 1) == 0)
    {
      break;
    }

    v6 += 24;
    if (v6 == v7)
    {
      return 1;
    }
  }

  std::vector<Phase::SpatialModeler::Graph>::__base_destruct_at_end[abi:ne200100](a2, *a2);
  return 0;
}

void *std::vector<Phase::SpatialModeler::Graph>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0x155555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::Graph>>(result, a2);
    }

    std::vector<Phase::SpatialModeler::Graph>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23A507A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::Graph>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::Scheduler::InitGraph(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6) > a3)
  {
    v4 = *a2 + 192 * a3;
    v5 = *(a4 + 16);
    v6 = *a4;
    *(v4 + 56) = *(a4 + 8);
    std::string::operator=((v4 + 8), v6);
    if ((v4 + 8) != v6)
    {
      v7 = (v4 + 32);
      v8 = *(v4 + 32);
      data = v6[1].__r_.__value_.__l.__data_;
      size = v6[1].__r_.__value_.__l.__size_;
      v11 = size - data;
      v12 = *(v4 + 48);
      if (v12 - v8 < (size - data))
      {
        v13 = v11 >> 5;
        if (v8)
        {
          std::vector<Phase::SpatialModeler::GraphDescriptionNode>::clear[abi:ne200100]((v4 + 32));
          operator delete(*v7);
          v12 = 0;
          *v7 = 0;
          *(v4 + 40) = 0;
          *(v4 + 48) = 0;
        }

        if (!(v13 >> 59))
        {
          v14 = v12 >> 4;
          if (v12 >> 4 <= v13)
          {
            v14 = v13;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFE0)
          {
            v15 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (!(v15 >> 59))
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>>(v4 + 32, v15);
          }
        }

        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }

      v16 = *(v4 + 40);
      if (v16 - v8 >= v11)
      {
        if (data != size)
        {
          do
          {
            std::string::operator=(v8, data);
            v8[1].__r_.__value_.__r.__words[0] = data[1].__r_.__value_.__r.__words[0];
            data = (data + 32);
            v8 = (v8 + 32);
          }

          while (data != size);
          v16 = *(v4 + 40);
        }

        while (v16 != v8)
        {
          v18 = v16[-1].__r_.__value_.__s.__data_[15];
          v16 = (v16 - 32);
          if (v18 < 0)
          {
            operator delete(v16->__r_.__value_.__l.__data_);
          }
        }

        *(v4 + 40) = v8;
      }

      else
      {
        v17 = (data + v16 - v8);
        if (v16 != v8)
        {
          do
          {
            std::string::operator=(v8, data);
            v8[1].__r_.__value_.__r.__words[0] = data[1].__r_.__value_.__r.__words[0];
            data = (data + 32);
            v8 = (v8 + 32);
          }

          while (data != v17);
          v16 = *(v4 + 40);
        }

        *(v4 + 40) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*,Phase::SpatialModeler::GraphDescriptionNode*,Phase::SpatialModeler::GraphDescriptionNode*>(v4 + 32, v17, size, v16);
      }
    }

    *(v4 + 64) = v5;
    Phase::Geometry::System::ObserveSystemState(*(a1 + 8));
  }

  return 0;
}

uint64_t **Phase::SpatialModeler::Scheduler::RunFullModelerQueries(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v28 = a2[7];
  v3 = v28;
  a2[7] = 0;
  if (v3)
  {
    v6 = a1 + 3;
    v7 = (v2 + 25);
    while (1)
    {
      v8 = atomic_load(v7);
      v9 = v28;
      if (v8)
      {
        break;
      }

      v27 = v28[10];
      v28[10] = 0;
      v10 = *v9;
      while (1)
      {
        v11 = atomic_load(v10);
        if (v11 == 6)
        {
          break;
        }

        v31 = 0;
        (*(**a1 + 64))(v29);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(&v30, v29);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v29);
        if (v31 == -1)
        {
          v12 = -1;
        }

        else
        {
          v12 = v31;
        }

        if (v12 <= 3)
        {
          if (v12 != 3)
          {
            if (v12 == 1)
            {
              atomic_store(0, (v10 + 104));
              v25 = 3;
            }

            else
            {
              if (v12 == 2)
              {
                if (v31 != 2)
                {
                  std::__throw_bad_variant_access[abi:ne200100]();
                }

                *(v10 + 48) = v30;
                atomic_store(0, (v10 + 104));
                atomic_store(4u, v10);
                v23 = *(v10 + 32);
                if (!v23)
                {
                  goto LABEL_35;
                }

                goto LABEL_34;
              }

LABEL_44:
              *(v10 + 48) = 1;
              *(v10 + 56) = v6;
              atomic_store(0, (v10 + 104));
              v25 = 4;
            }

            atomic_store(v25, v10);
            v23 = *(v10 + 32);
            if (v23)
            {
              goto LABEL_34;
            }

            goto LABEL_35;
          }

          if (v31 != 3)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v16 = *(v10 + 64);
          if (!v16)
          {
            *(v10 + 48) = 8;
            *(v10 + 56) = v6;
            atomic_store(0, (v10 + 104));
            atomic_store(4u, v10);
            v23 = *(v10 + 32);
            if (!v23)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          v18 = *(&v30 + 1);
          v17 = v30;
          if (((*(&v30 + 1) - v30) & 0x7FFFFFFF8) == 0)
          {
            *(v10 + 48) = 1;
            *(v10 + 56) = v6;
            atomic_store(0, (v10 + 104));
            atomic_store(4u, v10);
            v23 = *(v10 + 32);
            if (!v23)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          v19 = v30;
          if (v30 != *(&v30 + 1))
          {
            while (*v19)
            {
              if (++v19 == *(&v30 + 1))
              {
                do
                {
                  Phase::Geometry::SceneQueryScheduler::RunQuery(a1[1] + 2712, v16, *v17++);
                }

                while (v17 != v18);
                goto LABEL_30;
              }
            }

            *(v10 + 48) = 1;
            *(v10 + 56) = v6;
            atomic_store(0, (v10 + 104));
            atomic_store(4u, v10);
            v23 = *(v10 + 32);
            if (!v23)
            {
              goto LABEL_35;
            }

LABEL_34:
            (*(*v23 + 48))(v23, v10);
            goto LABEL_35;
          }
        }

        else if (v12 == 4)
        {
          if (v31 != 4)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v20 = v30;
          if (!v30 || (v9[9] = v30, v21 = atomic_load((v10 + 104)), *(v20 + 64)))
          {
            *(v10 + 48) = 1;
            *(v10 + 56) = v6;
            atomic_store(0, (v10 + 104));
            atomic_store(4u, v10);
            v23 = *(v10 + 32);
            if (!v23)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          *(v20 + 64) = v21;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_44;
          }

          if (v31 != 5)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v13 = v9[9];
          if (v30 != v13)
          {
            *(v10 + 48) = 12;
            *(v10 + 56) = v6;
            atomic_store(0, (v10 + 104));
            atomic_store(4u, v10);
            v23 = *(v10 + 32);
            if (v23)
            {
              goto LABEL_34;
            }

LABEL_35:
            std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v30);
            goto LABEL_36;
          }

          *(v13 + 64) = 0;
          v14 = *(v13 + 72);
          v15 = *(v13 + 80);
          *(v13 + 80) = 0;
          *(v13 + 88) = 0;
          *(v13 + 72) = 0;
          v9[9] = 0;
          if (v15 != v14)
          {
            std::terminate();
          }

          if (v14)
          {
            operator delete(v14);
          }
        }

LABEL_30:
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v30);
      }

      (*(**a1 + 72))(*a1, v10);
      atomic_store(0, (v10 + 104));
      atomic_store(5u, v10);
      v22 = *(v10 + 32);
      if (v22)
      {
        (*(*v22 + 48))(v22, v10);
      }

LABEL_36:
      v24 = v27;
      v27 = v28;
      v28 = v24;
      std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v27, 0);
      if (!v28)
      {
        return std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v28, 0);
      }
    }

    v28 = a2[7];
    a2[7] = v9;
  }

  return std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v28, 0);
}

void sub_23A508678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_end_catch();
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a15);
  std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&a9, 0);
  std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t **Phase::SpatialModeler::Scheduler::RunPartialModelerQueries(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v43 = a2[7];
  v3 = v43;
  a2[7] = 0;
  if (v3)
  {
    v6 = a1 + 3;
    v7 = (v2 + 25);
    while (1)
    {
      v8 = atomic_load(v7);
      v9 = v43;
      if (v8)
      {
        break;
      }

      v42 = v43[10];
      v43[10] = 0;
      v10 = *v9;
      while (1)
      {
        v11 = atomic_load(v10);
        if (v11 == 6)
        {
          break;
        }

        v47 = 0;
        (*(**a1 + 64))(v44);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(&v45, v44);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v44);
        if (v47 == -1)
        {
          v12 = -1;
        }

        else
        {
          v12 = v47;
        }

        if (v12 <= 3)
        {
          switch(v12)
          {
            case 1:
              atomic_store(0, (v10 + 104));
              atomic_store(3u, v10);
              break;
            case 2:
              if (v47 != 2)
              {
                std::__throw_bad_variant_access[abi:ne200100]();
              }

              *(v10 + 48) = v45;
              atomic_store(0, (v10 + 104));
              atomic_store(4u, v10);
              v21 = *(v10 + 32);
              if (!v21)
              {
                goto LABEL_41;
              }

              goto LABEL_40;
            case 3:
              if (v47 != 3)
              {
                std::__throw_bad_variant_access[abi:ne200100]();
              }

              if (!*(v10 + 64))
              {
                *(v10 + 48) = 8;
                *(v10 + 56) = v6;
                atomic_store(0, (v10 + 104));
                atomic_store(4u, v10);
                v21 = *(v10 + 32);
                if (v21)
                {
                  goto LABEL_40;
                }

                goto LABEL_41;
              }

              v18 = v45;
              if (((*(&v45 + 1) - v45) & 0x7FFFFFFF8) != 0)
              {
                v19 = v45;
                if (v45 != *(&v45 + 1))
                {
                  while (*v19)
                  {
                    if (++v19 == *(&v45 + 1))
                    {
                      goto LABEL_32;
                    }
                  }

                  *(v10 + 48) = 1;
                  *(v10 + 56) = v6;
                  atomic_store(0, (v10 + 104));
                  atomic_store(4u, v10);
                  v21 = *(v10 + 32);
                  if (!v21)
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_40;
                }

LABEL_32:
                v45 = *(v9 + 3);
                *(v9 + 3) = v18;
                v20 = v46;
                v46 = v9[8];
                v9[8] = v20;
                if (Phase::SpatialModeler::Scheduler::AddToNextStage(a2, &v43, 1))
                {
                  goto LABEL_41;
                }

                *(v10 + 48) = 11;
              }

              else
              {
                *(v10 + 48) = 1;
              }

              *(v10 + 56) = v6;
              atomic_store(0, (v10 + 104));
              atomic_store(4u, v10);
              v21 = *(v10 + 32);
              if (v21)
              {
                goto LABEL_40;
              }

              goto LABEL_41;
            default:
LABEL_38:
              *(v10 + 48) = 1;
              *(v10 + 56) = v6;
              atomic_store(0, (v10 + 104));
              atomic_store(4u, v10);
              break;
          }

          v21 = *(v10 + 32);
          if (v21)
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        if (v12 == 4)
        {
          if (v47 != 4)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v15 = v45;
          if (!v45)
          {
            *(v10 + 48) = 1;
LABEL_58:
            *(v10 + 56) = v6;
            atomic_store(0, (v10 + 104));
            atomic_store(4u, v10);
            v21 = *(v10 + 32);
            if (!v21)
            {
              goto LABEL_41;
            }

LABEL_40:
            (*(*v21 + 48))(v21, v10);
            goto LABEL_41;
          }

          v9[9] = v45;
          v16 = atomic_load((v10 + 104));
          if (*(v15 + 64))
          {
            if (Phase::SpatialModeler::Scheduler::AddToNextStage(a2, &v43, 3))
            {
              v23 = v45;
              v24 = atomic_load((v10 + 104));
              v26 = v23[10];
              v25 = v23[11];
              if (v26 >= v25)
              {
                v41 = v24;
                v28 = *(v45 + 72);
                v29 = v26 - v28;
                v30 = (v26 - v28) >> 2;
                v31 = v30 + 1;
                if ((v30 + 1) >> 62)
                {
                  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
                }

                v32 = v25 - v28;
                if (v32 >> 1 > v31)
                {
                  v31 = v32 >> 1;
                }

                v33 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
                v34 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v33)
                {
                  v34 = v31;
                }

                if (v34)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v45 + 72, v34);
                }

                v35 = v30;
                v36 = (4 * v30);
                v37 = &v36[-v35];
                v40 = v37;
                *v36 = v41;
                v27 = v36 + 1;
                memcpy(v37, v28, v29);
                v38 = v23[9];
                v23[9] = v40;
                v23[10] = v27;
                v23[11] = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v26 = v24;
                v27 = v26 + 1;
              }

              v23[10] = v27;
              goto LABEL_41;
            }

            *(v10 + 48) = 11;
            goto LABEL_58;
          }

          *(v15 + 64) = v16;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_38;
          }

          if (v47 != 5)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v13 = v9[9];
          if (v45 != v13)
          {
            *(v10 + 48) = 12;
            *(v10 + 56) = v6;
            atomic_store(0, (v10 + 104));
            atomic_store(4u, v10);
            v21 = *(v10 + 32);
            if (v21)
            {
              goto LABEL_40;
            }

LABEL_41:
            std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v45);
            goto LABEL_42;
          }

          *(v13 + 64) = 0;
          v14 = *(v13 + 72);
          *(v13 + 80) = 0;
          *(v13 + 88) = 0;
          *(v13 + 72) = 0;
          v9[9] = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v45);
      }

      (*(**a1 + 72))(*a1, v10);
      atomic_store(0, (v10 + 104));
      atomic_store(5u, v10);
      v17 = *(v10 + 32);
      if (v17)
      {
        (*(*v17 + 48))(v17, v10);
      }

LABEL_42:
      v22 = v42;
      v42 = v43;
      v43 = v22;
      std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v42, 0);
      if (!v43)
      {
        return std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v43, 0);
      }
    }

    v43 = a2[7];
    a2[7] = v9;
  }

  return std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v43, 0);
}

void sub_23A508D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, uint64_t *);
  va_copy(va2, va1);
  v8 = va_arg(va2, uint64_t *);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  __cxa_end_catch();
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va2);
  std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](va, 0);
  std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

uint64_t **Phase::SpatialModeler::Scheduler::RunSceneQueries(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v20 = a2[7];
  v3 = v20;
  a2[7] = 0;
  if (v3)
  {
    v6 = a1 + 24;
    v7 = (v2 + 25);
    while (1)
    {
      v8 = atomic_load(v7);
      v9 = v20;
      if (v8)
      {
        break;
      }

      v19 = v20[10];
      v20[10] = 0;
      v10 = v9[6];
      v11 = v9[7];
      if (v10 != v11)
      {
        v12 = *(*v9 + 64);
        do
        {
          Phase::Geometry::SceneQueryScheduler::RunQuery(*(a1 + 8) + 2712, v12, *v10++);
        }

        while (v10 != v11);
      }

      if ((Phase::SpatialModeler::Scheduler::AddToNextStage(a2, &v20, 2) & 1) == 0)
      {
        v13 = v9[9];
        if (v13)
        {
          *(v13 + 64) = 0;
          v14 = *(v13 + 72);
          *(v13 + 80) = 0;
          *(v13 + 88) = 0;
          *(v13 + 72) = 0;
          if (v14)
          {
            operator delete(v14);
          }

          v9[9] = 0;
        }

        v15 = *v9;
        *(v15 + 48) = 11;
        *(v15 + 56) = v6;
        atomic_store(0, (v15 + 104));
        atomic_store(4u, v15);
        v16 = *(v15 + 32);
        if (v16)
        {
          (*(*v16 + 48))(v16);
        }
      }

      v17 = v19;
      v19 = v20;
      v20 = v17;
      std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v19, 0);
      if (!v20)
      {
        return std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v20, 0);
      }
    }

    v20 = a2[7];
    a2[7] = v9;
  }

  return std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&v20, 0);
}

void sub_23A508EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&a9, 0);
  std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](&a10, 0);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::RunCommandsOnGraphNode(unint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned __int8 **a6)
{
  v9 = a1;
  v41 = *MEMORY[0x277D85DE8];
  v10 = *a6;
  v11 = **a6 + 192 * a6[1];
  if (*(v11 + 64))
  {
    atomic_store(1u, v10 + 24);
    Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::ExecuteCommands((*(v11 + 64) + 216));
    if (a4)
    {
      v14 = *(v11 + 136);
      if (!v14)
      {
        std::terminate();
      }

      v15 = atomic_exchange(v14, *(v14 + 16));
      *(v14 + 16) = v15;
      if (v15 && (*(v15 + 24) & 1) == 0)
      {
        v16 = *v15;
        *v15 = 0;
        *(v15 + 8) = 0;
        v17 = *(v11 + 160);
        *(v11 + 152) = v16;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v18 = *(v14 + 16);
        v19 = *(v18 + 8);
        *v18 = 0;
        *(v18 + 8) = 0;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        *(v18 + 24) = 1;
      }

      v20 = *(*(v11 + 64) + 112);
      if (v20)
      {
        (*(*v20 + 48))(v20);
      }
    }

    v21 = (a3 + (a2 >> 1));
    if (a2)
    {
      v9 = *(*v21 + v9);
    }

    v9(v21, a6);
    if (a5)
    {
      v25 = *(*(v11 + 64) + 144);
      if (v25)
      {
        (*(*v25 + 48))(v25);
      }
    }

    atomic_store(0, v10 + 24);
  }

  else
  {
    if (a2)
    {
      v22 = (a2 & 1 | a1) == 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
    if (a1 == Phase::SpatialModeler::Scheduler::RunFullModelerQueries && (v23 & 1) != 0)
    {
      v24 = "RunFullModelerQueries";
    }

    else
    {
      if (a1 == Phase::SpatialModeler::Scheduler::RunPartialModelerQueries)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        v24 = "RunPartialModelerQueries";
      }

      else if (((a1 == Phase::SpatialModeler::Scheduler::RunSceneQueries) & v23) != 0)
      {
        v24 = "RunSceneQueries";
      }

      else
      {
        v24 = "Unknown";
      }
    }

    v27 = (v11 + 8);
    if (*(v11 + 31) < 0)
    {
      v27 = *v27;
    }

    v28 = **(Phase::Logger::GetInstance(a1) + 240);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = 136316418;
      v30 = "SpatialModelerScheduler.cpp";
      v31 = 1024;
      v32 = 95;
      v33 = 2080;
      v34 = v24;
      v35 = 1024;
      v36 = a4;
      v37 = 1024;
      v38 = a5;
      v39 = 2080;
      v40 = v27;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d RunCommandsOnGraphNode (Function:%s, isFirstNode:%i, isFinalNode:%i): Graph (%s) has no Priority Queue.", &v29, 0x32u);
    }
  }
}

uint64_t Phase::SpatialModeler::Scheduler::AddToNextStage(uint64_t a1, uint64_t a2, char a3)
{
  v3 = **a1 + 192 * *(a1 + 8);
  v4 = *(v3 + 176);
  v5 = *(v3 + 168) + 96 * *(a1 + 16);
  if (v5 == v4)
  {
    return 0;
  }

  while ((*(v5 + 48) & (1 << a3)) == 0)
  {
    v5 += 96;
    if (v5 == v4)
    {
      return 0;
    }
  }

  v7 = *(*a2 + 80);
  *(*a2 + 80) = *(v5 + 56);
  *(v5 + 56) = v7;
  *(v5 + 56) = *a2;
  *a2 = v7;
  return 1;
}

uint64_t **std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100](v2 + 10, 0);
    v3 = v2[6];
    if (v3)
    {
      v2[7] = v3;
      operator delete(v3);
    }

    std::unique_ptr<Phase::SpatialModeler::QueryState,std::function<void ()(void *)>>::reset[abi:ne200100](v2 + 1, 0);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v2 + 2));

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::Graph>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::Graph>,Phase::SpatialModeler::Graph*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 104;
    do
    {
      *v4 = *(v8 - 104);
      v9 = *(v8 - 96);
      *(v4 + 24) = *(v8 - 80);
      *(v4 + 8) = v9;
      *(v8 - 88) = 0;
      *(v8 - 80) = 0;
      *(v8 - 96) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 32) = *(v8 - 72);
      *(v4 + 48) = *(v8 - 56);
      *(v8 - 72) = 0;
      *(v8 - 64) = 0;
      *(v8 - 56) = 0;
      *(v4 + 56) = *(v8 - 48);
      std::__function::__value_func<void ()(Phase::SpatialModeler::Graph &)>::__value_func[abi:ne200100](v4 + 72, v8 - 32);
      std::__function::__value_func<void ()(Phase::SpatialModeler::Graph &)>::__value_func[abi:ne200100](v4 + 104, v8);
      *(v4 + 136) = *(v8 + 32);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v4 + 152) = *(v8 + 48);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v4 + 168) = 0;
      *(v4 + 176) = 0;
      *(v4 + 184) = 0;
      *(v4 + 168) = *(v8 + 64);
      *(v4 + 184) = *(v8 + 80);
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      v4 = v15 + 192;
      v15 += 192;
      v10 = v8 + 88;
      v8 += 192;
    }

    while (v10 != a3);
    v13 = 1;
    do
    {
      std::allocator_traits<std::allocator<Phase::SpatialModeler::Graph>>::destroy[abi:ne200100]<Phase::SpatialModeler::Graph,void,0>(a1, v6);
      v6 += 192;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::Graph>,Phase::SpatialModeler::Graph*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::Graph &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::allocator_traits<std::allocator<Phase::SpatialModeler::Graph>>::destroy[abi:ne200100]<Phase::SpatialModeler::Graph,void,0>(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 168);
  std::vector<Phase::SpatialModeler::GraphNode>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a2 + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 144);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__function::__value_func<void ()(Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100](a2 + 104);
  std::__function::__value_func<void ()(Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100](a2 + 72);
  v5 = (a2 + 32);
  std::vector<Phase::SpatialModeler::GraphDescriptionNode>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

void std::allocator_traits<std::allocator<Phase::SpatialModeler::GraphNode>>::destroy[abi:ne200100]<Phase::SpatialModeler::GraphNode,void,0>(uint64_t a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::GraphNode &)>::~__value_func[abi:ne200100](a1 + 64);
  std::unique_ptr<Phase::SpatialModeler::ActiveQuery>::reset[abi:ne200100]((a1 + 56), 0);
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::Graph>,Phase::SpatialModeler::Graph*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 192;
        std::allocator_traits<std::allocator<Phase::SpatialModeler::Graph>>::destroy[abi:ne200100]<Phase::SpatialModeler::Graph,void,0>(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::SpatialModeler::Graph>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::SpatialModeler::Graph>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Phase::SpatialModeler::Graph>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 192;
    std::allocator_traits<std::allocator<Phase::SpatialModeler::Graph>>::destroy[abi:ne200100]<Phase::SpatialModeler::Graph,void,0>(v5, v4 - 192);
  }
}

uint64_t std::vector<Phase::SpatialModeler::Graph>::__emplace_back_slow_path<Phase::SpatialModeler::GraphSequence &>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    std::vector<Phase::SpatialModeler::Graph>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::Graph>>(a1, v6);
  }

  v7 = 192 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = a2;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = -1;
  *(v7 + 64) = 0;
  *(v7 + 96) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *&v16 = 192 * v2 + 192;
  v8 = a1[1];
  v9 = 192 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::Graph>,Phase::SpatialModeler::Graph*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Phase::SpatialModeler::Graph>::~__split_buffer(&v14);
  return v13;
}

void sub_23A509830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Phase::SpatialModeler::Graph>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<Phase::SpatialModeler::Graph>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<Phase::SpatialModeler::Graph>>::destroy[abi:ne200100]<Phase::SpatialModeler::Graph,void,0>(a1, i))
  {
    i -= 192;
  }

  *(a1 + 8) = a2;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*,Phase::SpatialModeler::GraphDescriptionNode*,Phase::SpatialModeler::GraphDescriptionNode*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphNode>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphNode>,Phase::SpatialModeler::GraphNode*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    for (i = a1; ; i += 96)
    {
      v8 = a3 + v6;
      v9 = v5 + v6;
      v10 = *(v5 + v6);
      *(v8 + 16) = *(v5 + v6 + 16);
      *v8 = v10;
      v11 = *(v5 + v6 + 24);
      *(v8 + 40) = *(v5 + v6 + 40);
      *(v8 + 24) = v11;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      *(v8 + 48) = *(v5 + v6 + 48);
      v12 = *(v5 + v6 + 56);
      *(v9 + 56) = 0;
      *(v8 + 56) = v12;
      v13 = *(v5 + v6 + 88);
      if (v13)
      {
        if (v9 + 64 == v13)
        {
          *(v8 + 88) = v8 + 64;
          (*(**(v9 + 88) + 24))(*(v9 + 88));
          goto LABEL_9;
        }

        v14 = (i + 88);
        *(v8 + 88) = v13;
      }

      else
      {
        v14 = (v8 + 88);
      }

      *v14 = 0;
LABEL_9:
      v6 += 96;
      if (v5 + v6 == a2)
      {
        do
        {
          std::allocator_traits<std::allocator<Phase::SpatialModeler::GraphNode>>::destroy[abi:ne200100]<Phase::SpatialModeler::GraphNode,void,0>(v5);
          v5 += 96;
        }

        while (v5 != a2);
        return;
      }
    }
  }
}

uint64_t std::__split_buffer<Phase::SpatialModeler::GraphNode>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::allocator_traits<std::allocator<Phase::SpatialModeler::GraphNode>>::destroy[abi:ne200100]<Phase::SpatialModeler::GraphNode,void,0>(i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__function::__func<std::__bind<void (*)(void (Phase::SpatialModeler::Scheduler::*)(Phase::SpatialModeler::GraphNode &),Phase::SpatialModeler::Scheduler*,BOOL,BOOL,Phase::SpatialModeler::GraphNode &),void (Phase::SpatialModeler::Scheduler::* const&)(Phase::SpatialModeler::GraphNode &),Phase::SpatialModeler::Scheduler*,BOOL,BOOL,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (*)(void (Phase::SpatialModeler::Scheduler::*)(Phase::SpatialModeler::GraphNode &),Phase::SpatialModeler::Scheduler*,BOOL,BOOL,Phase::SpatialModeler::GraphNode &),void (Phase::SpatialModeler::Scheduler::* const&)(Phase::SpatialModeler::GraphNode &),Phase::SpatialModeler::Scheduler*,BOOL,BOOL,std::placeholders::__ph<1> const&>>,void ()(Phase::SpatialModeler::GraphNode &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D379F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<std::__bind<void (*)(void (Phase::SpatialModeler::Scheduler::*)(Phase::SpatialModeler::GraphNode &),Phase::SpatialModeler::Scheduler*,BOOL,BOOL,Phase::SpatialModeler::GraphNode &),void (Phase::SpatialModeler::Scheduler::* const&)(Phase::SpatialModeler::GraphNode &),Phase::SpatialModeler::Scheduler*,BOOL const&,BOOL const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (*)(void (Phase::SpatialModeler::Scheduler::*)(Phase::SpatialModeler::GraphNode &),Phase::SpatialModeler::Scheduler*,BOOL,BOOL,Phase::SpatialModeler::GraphNode &),void (Phase::SpatialModeler::Scheduler::* const&)(Phase::SpatialModeler::GraphNode &),Phase::SpatialModeler::Scheduler*,BOOL const&,BOOL const&,std::placeholders::__ph<1> const&>>,void ()(Phase::SpatialModeler::GraphNode &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D37A38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

Phase::Controller::SpeechDetector::SpeechDetectorImpl *std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](Phase::Controller::SpeechDetector::SpeechDetectorImpl **a1, Phase::Controller::SpeechDetector::SpeechDetectorImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::SpeechDetector::SpeechDetectorImpl::~SpeechDetectorImpl(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Controller::SpeechDetector::SpeechDetectorImpl::ProcessAndGetLatest(float *a1, _DWORD *a2, float *a3)
{
  if (*a2)
  {
    v6 = 0;
    v7 = a2 + 4;
    while (!Phase::Controller::Vad_Process(*a1, *v7, *(v7 - 1) >> 2))
    {
      ++v6;
      v7 += 2;
      if (v6 >= *a2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = 0.0;
    if (!Phase::Controller::Vad_GetSpeechProbabilityHardValue(*a1, &v10))
    {
      v8 = v10;
      *a3 = v10;
      if (a1[2] != v8)
      {
        a1[2] = v8;
        return 1;
      }
    }
  }

  return 0;
}

void Phase::Controller::SpeechDetector::SpeechDetectorImpl::~SpeechDetectorImpl(Phase::Controller::SpeechDetector::SpeechDetectorImpl *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (v2)
  {
    v10 = 0;
    off_27DF97BF8(v2, &v10);
    if (v10 == 1)
    {
      v3 = off_27DF97C00(*this);
      v4 = v3;
      if (v3)
      {
        v5 = **(Phase::Logger::GetInstance(v3) + 928);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v12 = "SpeechDetector.mm";
          v13 = 1024;
          v14 = 118;
          v15 = 1024;
          LODWORD(v16) = v4;
          _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to uninitialize VAD Speech Detector, err = %d", buf, 0x18u);
        }
      }
    }

    v6 = off_27DF97C08(*this);
    v7 = v6;
    if (v6)
    {
      v8 = **(Phase::Logger::GetInstance(v6) + 928);
      v6 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        *buf = 136315650;
        v12 = "SpeechDetector.mm";
        v13 = 1024;
        v14 = 126;
        v15 = 1024;
        LODWORD(v16) = v7;
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to destroy VAD Speech Detector, err = %d", buf, 0x18u);
      }
    }

    *this = 0;
    v9 = **(Phase::Logger::GetInstance(v6) + 928);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "SpeechDetector.mm";
      v13 = 1024;
      v14 = 131;
      v15 = 2048;
      v16 = this;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroyed Speech Detector %p.", buf, 0x1Cu);
    }
  }
}

void sub_23A50A00C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>::~Matrix(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(a1 + 224));
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(a1 + 176));
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(a1 + 128));
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(a1 + 72));
  std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*(a1 + 24));
  return a1;
}

void std::default_delete<Phase::Controller::StatisticsDatabase::Implementation>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>>>::~__hash_table((a2 + 1));

    JUMPOUT(0x23EE864A0);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      Phase::SampledMatrix::Matrix<double,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<int>,Phase::SampledMatrix::Dimension<double>,Phase::SampledMatrix::Dimension<float>,Phase::SampledMatrix::Dimension<int>>::~Matrix((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t Phase::Controller::StreamedSoundAssetInfo::InitWithURL(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v57 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a5;
  v18 = Phase::Controller::SoundAssetInfo::BaseInit(a1, 1, a2, a3, a9, a7);
  if (v18)
  {
    v19 = **(Phase::Logger::GetInstance(v18) + 832);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 16);
      v21 = [v16 description];
      *buf = 136315906;
      v50 = "StreamedSoundAssetInfo.mm";
      v51 = 1024;
      v52 = 43;
      v53 = 2048;
      v54 = v20;
      v55 = 2080;
      v56 = [v21 UTF8String];
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d StreamedSoundAssetInfo::InitWithURL for assetId %llu url: %s", buf, 0x26u);
    }

    if (v16)
    {
      *(a1 + 32) = 1;
      v44 = 0;
      v22 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:v16 commonFormat:1 interleaved:0 error:&v44];
      v23 = v44;
      v24 = *(a1 + 48);
      *(a1 + 48) = v22;

      if (v23)
      {
        v25 = *(a1 + 48);
        *(a1 + 48) = 0;
      }

      if (*(a1 + 48))
      {
        v26 = [v16 description];
        v27 = v26;
        a9 = Phase::Controller::StreamedSoundAssetInfo::Initialize(a1, a3, [v26 UTF8String], v17, a9, a6);

        if (a9)
        {
          *(a1 + 32) = 4;
          a9 = 1;
        }

        goto LABEL_21;
      }

      v33 = MEMORY[0x277CCACA8];
      v34 = [v16 description];
      v35 = [v23 description];
      v36 = [v33 stringWithFormat:@"[AVAudioFile initForReading] failed on file '%@' with error '%@'", v34, v35];

      v38 = **(Phase::Logger::GetInstance(v37) + 832);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 16);
        v40 = v36;
        v41 = [v36 UTF8String];
        *buf = 136315906;
        v50 = "StreamedSoundAssetInfo.mm";
        v51 = 1024;
        v52 = 67;
        v53 = 2048;
        v54 = v39;
        v55 = 2080;
        v56 = v41;
        _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
      }

      if (a9)
      {
        v45 = *MEMORY[0x277CCA450];
        v46 = v36;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *a9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v42];
      }
    }

    else
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"File URL was nil"];
      v28 = **(Phase::Logger::GetInstance(v23) + 832);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 16);
        v30 = v23;
        v31 = [v23 UTF8String];
        *buf = 136315906;
        v50 = "StreamedSoundAssetInfo.mm";
        v51 = 1024;
        v52 = 47;
        v53 = 2048;
        v54 = v29;
        v55 = 2080;
        v56 = v31;
        _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
      }

      if (!a9)
      {
        goto LABEL_21;
      }

      v47 = *MEMORY[0x277CCA450];
      v48 = v23;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *a9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920805 userInfo:v32];
    }

    a9 = 0;
LABEL_21:

    goto LABEL_22;
  }

  a9 = 0;
LABEL_22:

  return a9;
}

uint64_t Phase::Controller::StreamedSoundAssetInfo::Initialize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6)
{
  v95 = *MEMORY[0x277D85DE8];
  v75 = a4;
  v11 = [*(a1 + 48) processingFormat];
  if ([v11 channelCount] == 1)
  {
  }

  else
  {
    v12 = [*(a1 + 48) processingFormat];
    if ([v12 channelCount] <= 1)
    {

      std::terminate();
    }

    v13 = [*(a1 + 48) processingFormat];
    v14 = [v13 isInterleaved];

    if (v14)
    {
      goto LABEL_61;
    }
  }

  v15 = [*(a1 + 48) processingFormat];
  v16 = [v15 commonFormat];

  if (v16 != 1)
  {
    goto LABEL_61;
  }

  if (a6 > 0.0)
  {
    v17 = a2 == 0;
    if (v75)
    {
      v18 = v75;
    }

    else
    {
      v22 = [*(a1 + 48) fileFormat];
      v23 = [v22 channelLayout];

      v24 = *(a1 + 48);
      if (!v23)
      {
        v47 = [v24 fileFormat];
        if ([v47 channelCount] == 1)
        {
        }

        else
        {
          v48 = [*(a1 + 48) fileFormat];
          v49 = [v48 channelCount];

          if (v49 != 2)
          {
            v69 = MEMORY[0x277CCACA8];
            v70 = [*(a1 + 48) processingFormat];
            v21 = [v69 stringWithFormat:@"Cannot synthesize audio channel layout for audio file '%s' with channel count %d.", a3, objc_msgSend(v70, "channelCount")];

            v72 = **(Phase::Logger::GetInstance(v71) + 832);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              v73 = *(a1 + 16);
              *buf = 136315906;
              *&buf[4] = "StreamedSoundAssetInfo.mm";
              v89 = 1024;
              v90 = 388;
              v91 = 2048;
              v92 = v73;
              v93 = 2080;
              v94 = [v21 UTF8String];
              _os_log_impl(&dword_23A302000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
            }

            if (!a5)
            {
              v18 = 0;
              goto LABEL_58;
            }

            v80 = *MEMORY[0x277CCA450];
            v81 = v21;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
            v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v38];
            v18 = 0;
            goto LABEL_57;
          }
        }

        v50 = [*(a1 + 48) fileFormat];
        v51 = [v50 channelCount];

        v52 = objc_alloc(MEMORY[0x277CB8368]);
        if (v51 == 1)
        {
          v53 = 6553601;
        }

        else
        {
          v53 = 6619138;
        }

        v18 = [v52 initWithLayoutTag:v53];
LABEL_41:
        if (v18)
        {
          *(a1 + 36) = [v18 layoutTag];
          v54 = objc_alloc(MEMORY[0x277CB83A8]);
          v55 = [*(a1 + 48) processingFormat];
          v56 = [v55 commonFormat];
          v57 = [*(a1 + 48) processingFormat];
          [v57 sampleRate];
          v59 = v58;
          v60 = [*(a1 + 48) processingFormat];
          v61 = [v54 initWithCommonFormat:v56 sampleRate:objc_msgSend(v60 interleaved:"isInterleaved") channelLayout:v18, v59];
          v62 = *(a1 + 56);
          *(a1 + 56) = v61;

          if (*(a1 + 56))
          {
            v63 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:0 interleaved:v18 channelLayout:a6];
            v64 = *(a1 + 64);
            *(a1 + 64) = v63;

            if (*(a1 + 64))
            {
              a5 = 1;
              goto LABEL_59;
            }

            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"[AVAudioFormat initWithCommonFormat] failed on file '%s', for output format", a3];
            v67 = **(Phase::Logger::GetInstance(v21) + 832);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              v68 = *(a1 + 16);
              *buf = 136315906;
              *&buf[4] = "StreamedSoundAssetInfo.mm";
              v89 = 1024;
              v90 = 419;
              v91 = 2048;
              v92 = v68;
              v93 = 2080;
              v94 = [v21 UTF8String];
              _os_log_impl(&dword_23A302000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
            }

            if (!a5)
            {
              goto LABEL_58;
            }

            v76 = *MEMORY[0x277CCA450];
            v77 = v21;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v38];
          }

          else
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"[AVAudioFormat initWithCommonFormat] failed on file '%s', for input format", a3];
            v65 = **(Phase::Logger::GetInstance(v21) + 832);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v66 = *(a1 + 16);
              *buf = 136315906;
              *&buf[4] = "StreamedSoundAssetInfo.mm";
              v89 = 1024;
              v90 = 405;
              v91 = 2048;
              v92 = v66;
              v93 = 2080;
              v94 = [v21 UTF8String];
              _os_log_impl(&dword_23A302000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
            }

            if (!a5)
            {
              goto LABEL_58;
            }

            v78 = *MEMORY[0x277CCA450];
            v79 = v21;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v38];
          }

LABEL_57:
          *a5 = v39;

          goto LABEL_58;
        }

LABEL_61:
        std::terminate();
      }

      v25 = [v24 fileFormat];
      v18 = [v25 channelLayout];
    }

    if ((Phase::Controller::StreamRenderer::SupportsInputLayout(v18, 2 * v17) & 1) == 0)
    {
      v40 = MEMORY[0x277CCACA8];
      Phase::ChannelLayout::GetStringFromLayoutTag([v18 layoutTag], buf);
      if ((v92 & 0x80000000) == 0)
      {
        v41 = buf;
      }

      else
      {
        v41 = *buf;
      }

      v42 = [v40 stringWithFormat:@"Unsupported channel layout '%s' on audio file '%s'!", v41, a3];
      v21 = v42;
      if (SBYTE3(v92) < 0)
      {
        operator delete(*buf);
      }

      v43 = **(Phase::Logger::GetInstance(v42) + 832);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 16);
        v45 = v21;
        v46 = [v21 UTF8String];
        *buf = 136315906;
        *&buf[4] = "StreamedSoundAssetInfo.mm";
        v89 = 1024;
        v90 = 363;
        v91 = 2048;
        v92 = v44;
        v93 = 2080;
        v94 = v46;
        _os_log_impl(&dword_23A302000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
      }

      if (!a5)
      {
        goto LABEL_58;
      }

      v84 = *MEMORY[0x277CCA450];
      v85 = v21;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v38];
      goto LABEL_57;
    }

    v26 = [v18 layoutTag];
    v27 = [*(a1 + 48) processingFormat];
    v28 = [v27 channelCount];

    if (v26 != v28)
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = buf;
      Phase::ChannelLayout::GetStringFromLayoutTag([v18 layoutTag], buf);
      if ((v92 & 0x80000000) != 0)
      {
        v30 = *buf;
      }

      v31 = [v18 layoutTag];
      v32 = [*(a1 + 48) processingFormat];
      v21 = [v29 stringWithFormat:@"Channel layout '%s' on audio file '%s' has mismatched channel count [layout: %d, file: %d]!", v30, a3, v31, objc_msgSend(v32, "channelCount")];

      if (SBYTE3(v92) < 0)
      {
        operator delete(*buf);
      }

      v34 = **(Phase::Logger::GetInstance(v33) + 832);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 16);
        v36 = v21;
        v37 = [v21 UTF8String];
        *buf = 136315906;
        *&buf[4] = "StreamedSoundAssetInfo.mm";
        v89 = 1024;
        v90 = 374;
        v91 = 2048;
        v92 = v35;
        v93 = 2080;
        v94 = v37;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
      }

      if (!a5)
      {
        goto LABEL_58;
      }

      v82 = *MEMORY[0x277CCA450];
      v83 = v21;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v38];
      goto LABEL_57;
    }

    goto LABEL_41;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sample rate %f for audio file '%s'!", *&a6, a3];
  v19 = **(Phase::Logger::GetInstance(v18) + 832);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 16);
    *buf = 136315906;
    *&buf[4] = "StreamedSoundAssetInfo.mm";
    v89 = 1024;
    v90 = 339;
    v91 = 2048;
    v92 = v20;
    v93 = 2080;
    v94 = [v18 UTF8String];
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
  }

  if (a5)
  {
    v86 = *MEMORY[0x277CCA450];
    v87 = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v21];
LABEL_58:

    a5 = 0;
  }

LABEL_59:

  return a5;
}

uint64_t Phase::Controller::StreamedSoundAssetInfo::InitWithData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v37 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a8;
  v18 = Phase::Controller::SoundAssetInfo::BaseInit(a1, 1, a2, a3, a10, a6);
  if (v18)
  {
    v19 = **(Phase::Logger::GetInstance(v18) + 832);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 16);
      buf[0] = 136315650;
      *&buf[1] = "StreamedSoundAssetInfo.mm";
      v31 = 1024;
      v32 = 100;
      v33 = 2048;
      v34 = v20;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d StreamedSoundAssetInfo::InitWithData for assetId %llu", buf, 0x1Cu);
    }

    *(a1 + 32) = 1;
    if (v16)
    {
      operator new();
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"NSData was nil"];
    v22 = **(Phase::Logger::GetInstance(v21) + 832);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 16);
      v24 = v21;
      v25 = [(Phase::Logger *)v21 UTF8String];
      buf[0] = 136315906;
      *&buf[1] = "StreamedSoundAssetInfo.mm";
      v31 = 1024;
      v32 = 106;
      v33 = 2048;
      v34 = v23;
      v35 = 2080;
      v36 = v25;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
    }

    if (a10)
    {
      v28 = *MEMORY[0x277CCA450];
      v29 = v21;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *a10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920805 userInfo:v26];
    }
  }

  return 0;
}

void Phase::Controller::StreamedSoundAssetInfo::~StreamedSoundAssetInfo(Phase::Controller::StreamedSoundAssetInfo *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;

  std::unique_ptr<Phase::Controller::InMemoryAudioFile>::reset[abi:ne200100](this + 9, 0);
  std::unique_ptr<Phase::Controller::InMemoryAudioFile>::reset[abi:ne200100](this + 9, 0);
}

{
  Phase::Controller::StreamedSoundAssetInfo::~StreamedSoundAssetInfo(this);

  JUMPOUT(0x23EE864A0);
}

Phase::Controller::InMemoryAudioFile *std::unique_ptr<Phase::Controller::InMemoryAudioFile>::reset[abi:ne200100](Phase::Controller::InMemoryAudioFile **a1, Phase::Controller::InMemoryAudioFile *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::InMemoryAudioFile::~InMemoryAudioFile(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Controller::StreamedSoundAssetInfo::CreateStreamRenderer(Phase::Controller::StreamedSoundAssetInfo *this@<X0>, NSString *a2@<X2>, int a3@<W1>, void *a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!a3 || (v8 = v7) == 0)
  {
    std::terminate();
  }

  if (*(this + 7) && *(this + 8))
  {
    operator new();
  }

  v9 = **(Phase::Logger::GetInstance(v7) + 832);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [*(this + 7) description];
    v11 = [v10 UTF8String];
    v12 = [*(this + 8) description];
    *buf = 136315906;
    v14 = "StreamedSoundAssetInfo.mm";
    v15 = 1024;
    v16 = 200;
    v17 = 2080;
    v18 = v11;
    v19 = 2080;
    v20 = [v12 UTF8String];
    _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: invalid stream formats, inputFormat %s, outputFormat %s!", buf, 0x26u);
  }

  *a4 = 0;
}

void sub_23A50C278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<Phase::Controller::StreamRenderer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::StreamedSoundAssetInfo::ScheduleFile(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  if (!a2)
  {
    std::terminate();
  }

  v13 = v12;
  v14 = Phase::Controller::StreamRenderer::ScheduleFile(a2, *(a1 + 48), v11, a4, a5, v12);
  v15 = v14;
  if ((v14 & 1) == 0)
  {
    v16 = **(Phase::Logger::GetInstance(v14) + 832);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 48) url];
      v18 = [v17 description];
      v20 = 136315906;
      v21 = "StreamedSoundAssetInfo.mm";
      v22 = 1024;
      v23 = 274;
      v24 = 2048;
      v25 = a2;
      v26 = 2080;
      v27 = [v18 UTF8String];
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d stream renderer@%p: failed to schedule audio file '%s' for rendering!", &v20, 0x26u);
    }
  }

  return v15;
}

BOOL Phase::Controller::StreamedSoundAssetInfo::ScheduleSegment(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a7;
  if (!a2)
  {
    std::terminate();
  }

  v15 = v14;
  v16 = Phase::Controller::StreamRenderer::ScheduleSegment(a2, *(a1 + 48), v13, a4, a5, a6, v14);
  v17 = v16;
  if (!v16)
  {
    v18 = **(Phase::Logger::GetInstance(v16) + 832);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 48) url];
      v20 = [v19 description];
      v22 = 136315906;
      v23 = "StreamedSoundAssetInfo.mm";
      v24 = 1024;
      v25 = 304;
      v26 = 2048;
      v27 = a2;
      v28 = 2080;
      v29 = [v20 UTF8String];
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d stream renderer@%p: failed to schedule audio file '%s' for rendering!", &v22, 0x26u);
    }
  }

  return v17;
}

double Phase::Controller::StreamedSoundAssetInfo::GetFileLengthInSeconds(id *this)
{
  v2 = [this[6] length];
  v3 = [this[6] fileFormat];
  [v3 sampleRate];
  v5 = v2 / v4;

  return v5;
}

uint64_t Phase::Controller::StreamRenderer::StreamRenderer(uint64_t a1, void *a2, void *a3, unsigned int a4, unsigned int a5, uint64_t a6, void *a7)
{
  v77 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v59 = a7;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  v58 = v13;
  *(a1 + 96) = v58;
  v15 = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = a5;
  v60 = v15;
  [v15 sampleRate];
  *(a1 + 144) = 0;
  *(a1 + 120) = v16;
  *(a1 + 128) = a6;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v17 = caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 220));
  *(a1 + 224) = 0;
  *(a1 + 288) = 0;
  *(a1 + 376) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 384) = xmmword_23A554AC0;
  *(a1 + 400) = 0;
  Phase::Logger::GetInstance(v17);
  [v60 sampleRate];
  v19 = v18;
  [v58 sampleRate];
  v21 = vcvtmd_u64_f64(v19 * a4 / v20);
  *(a1 + 200) = v21;
  if (v21 < a5 && v21 != 0)
  {
    v23 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v60 frameCapacity:*(a1 + 200)];
    v24 = *(a1 + 184);
    *(a1 + 184) = v23;

    [*(a1 + 184) setFrameLength:*(a1 + 200)];
    v25 = [*(a1 + 184) mutableAudioBufferList];
    *(a1 + 192) = v25;
    *(a1 + 204) = *(a1 + 200);
    if (!v25 || !*v25 || !*(v25 + 16) || [v58 isInterleaved] && objc_msgSend(v58, "channelCount") != 1)
    {
      goto LABEL_28;
    }

    if ([v60 isInterleaved] && objc_msgSend(v60, "channelCount") != 1 || *(*(a1 + 192) + 12) != 4 * *(a1 + 200))
    {
      goto LABEL_28;
    }
  }

  v26 = dispatch_queue_create("Phase.StreamRenderer", 0);
  v27 = *(a1 + 208);
  *(a1 + 208) = v26;

  v28 = applesauce::dispatch::v1::queue::operator*((a1 + 208));
  v29 = dispatch_get_global_queue(0, 0);
  dispatch_set_target_queue(v28, v29);

  if (v59)
  {
    v31 = **(Phase::Logger::GetInstance(v30) + 400);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [*(a1 + 96) description];
      v33 = [v32 UTF8String];
      v34 = [*(a1 + 104) description];
      v35 = [v34 UTF8String];
      v36 = *(a1 + 112);
      v37 = *(a1 + 128);
      buf[0] = 136316930;
      *&buf[1] = "StreamRenderer.mm";
      v63 = 1024;
      v64 = 199;
      v65 = 2048;
      v66 = a1;
      v67 = 2080;
      v68 = v33;
      v69 = 2080;
      v70 = v35;
      v71 = 1024;
      v72 = a4;
      v73 = 1024;
      v74 = v36;
      v75 = 2048;
      v76 = v37;
      _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d bufferstream@%p: initializing render block with buffer format %s, output format %s, in max #frames %d, out max #frames %d, config options 0x%lx", buf, 0x46u);
    }
  }

  if (!*(a1 + 112))
  {
LABEL_28:
    std::terminate();
  }

  v38 = objc_opt_new();
  v39 = *(a1 + 48);
  *(a1 + 48) = v38;

  v40 = 200;
  if (!*(a1 + 192))
  {
    v40 = 112;
  }

  v41 = *(a1 + v40);
  v42 = ~*(a1 + 128);
  v43 = *(a1 + 48);
  v44 = *(a1 + 104);
  v61 = 0;
  v45 = [v43 enableManualRenderingMode:v42 & 1 format:v44 maximumFrameCount:v41 error:&v61];
  v46 = v61;
  v47 = v46;
  if (v46)
  {
    v48 = 0;
  }

  else
  {
    v48 = v45;
  }

  if (v48)
  {
    operator new();
  }

  v49 = **(Phase::Logger::GetInstance(v46) + 400);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    v50 = [*(a1 + 104) description];
    v51 = v50;
    v52 = [v50 UTF8String];
    v53 = [(Phase::Logger *)v47 description];
    v54 = v53;
    v55 = [v53 UTF8String];
    buf[0] = 136316162;
    *&buf[1] = "StreamRenderer.mm";
    v63 = 1024;
    v64 = 229;
    v65 = 2048;
    v66 = a1;
    v67 = 2080;
    v68 = v52;
    v69 = 2080;
    v70 = v55;
    _os_log_impl(&dword_23A302000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: could not configure AVAE in ManualRenderingModeRealtime with format %s, err = %s", buf, 0x30u);
  }

  v56 = *(a1 + 48);
  *(a1 + 48) = 0;

  return a1;
}

void sub_23A50D3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id *a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v20 = *(v16 + 328);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v16 + 312);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  applesauce::dispatch::v1::queue::~queue(v17 + 8);
  v22 = *(v16 + 176);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::array<Phase::Controller::StreamRenderer::IOConfiguration,2ul>::~array(v16);
  _Unwind_Resume(a1);
}

uint64_t ___ZN5Phase10Controller14StreamRendererC2EP13AVAudioFormatS3_jjNSt3__16bitsetILm8EEEU13block_pointerFiPbPK14AudioTimeStampjP15AudioBufferListENS4_8optionalINS1_29AudioIssueDetectorInformationEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const AudioBufferList *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v20.mHostTime, 0, 56);
  if ((*(a3 + 56) & 1) == 0)
  {
    return 4294956433;
  }

  v20.mSampleTime = *a3;
  v20.mFlags = 1;
  v12 = *(a1 + 40);
  v13 = *(v12 + 56);
  if ((v13 & 2) != 0)
  {
    if ((v13 & 4) != 0)
    {
      v14 = *(v12 + 16);
      v20.mRateScalar = v14;
      v15 = 7;
    }

    else
    {
      v14 = 1.0;
      v15 = 3;
    }

    v20.mFlags = v15;
    v16 = *(v12 + 8) * 0.0000000416666667;
    v17 = **(a1 + 56);
    v18 = atomic_load(*(a1 + 72));
    v20.mHostTime = ((v16 + v14 * (v17 + v18) / *(a1 + 88)) * 24000000.0);
  }

  v8 = (*(*(a1 + 32) + 16))(*(a1 + 32), a2, &v20, a4, a5, a6, a7, a8);
  Phase::Controller::StreamRenderer::IOConfiguration::WriteCaptureBufferList(*(*(a1 + 96) + 40), &v20, a4, a5);
  return v8;
}

uint64_t Phase::Controller::StreamRenderer::IOConfiguration::WriteCaptureBufferList(uint64_t this, const AudioTimeStamp *a2, uint64_t a3, const AudioBufferList *a4)
{
  if (this)
  {
    v6 = this;
    (*(*this + 24))(this, a3, a4, 0);
    mHostTime = a2->mHostTime;
    mSampleTime = a2->mSampleTime;
    v9 = *(*v6 + 72);

    return v9(v6, mHostTime, mSampleTime, a3);
  }

  return this;
}

void *__copy_helper_block_ea8_40c42_ZTSNSt3__110shared_ptrI14AudioTimeStampEE56c27_ZTSNSt3__110shared_ptrImEE72c40_ZTSNSt3__110shared_ptrINS_6atomicIjEEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[10];
  result[9] = a2[9];
  result[10] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c42_ZTSNSt3__110shared_ptrI14AudioTimeStampEE56c27_ZTSNSt3__110shared_ptrImEE72c40_ZTSNSt3__110shared_ptrINS_6atomicIjEEEE(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void Phase::Controller::StreamRenderer::~StreamRenderer(Phase::Controller::StreamRenderer *this)
{
  v2 = *(this + 6);
  if (v2 && *(this + 136) == 1 && *(this + 137) == 1)
  {
    caulk::pooled_semaphore_mutex::_lock((this + 220));
    atomic_store(0, this + 216);
    atomic_store(0, this + 217);
    v3 = applesauce::dispatch::v1::queue::operator*(this + 26);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN5Phase10Controller14StreamRenderer4StopEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_sync(v3, block);

    v4 = applesauce::dispatch::v1::queue::operator*(this + 26);
    dispatch_sync(v4, &__block_literal_global_11);

    *(this + 137) = 0;
    atomic_store(0, this + 42);
    if (*(this + 288) == 1)
    {
      *(this + 288) = 0;
    }

    v5 = *(this + 38);
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    if (*(this + 6) && *(this + 136) == 1 && *(this + 137) == 1)
    {
      std::terminate();
    }

    Phase::Controller::StreamRenderer::StartStopInternalCaptures(this, 0);
    caulk::pooled_semaphore_mutex::_unlock((this + 220));
    v2 = *(this + 6);
  }

  *(this + 6) = 0;

  v6 = *(this + 9);
  *(this + 9) = 0;

  v7 = *(this + 8);
  *(this + 8) = 0;

  v8 = *(this + 10);
  *(this + 10) = 0;

  v9 = *(this + 11);
  *(this + 11) = 0;

  Phase::Controller::StreamRenderer::StartStopInternalCaptures(this, 0);
  v10 = *(this + 46);
  if (v10)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_36);
    }

    if (off_27DF94D18)
    {
      off_27DF94D18(v10);
    }

    *(this + 46) = 0;
  }

  v11 = *(this + 41);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 39);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 26);
  *(this + 26) = 0;

  v14 = *(this + 22);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(this + i + 40);
    *(this + i + 40) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }
}

void Phase::Controller::StreamRenderer::StartStopInternalCaptures(Phase::Controller::StreamRenderer *this, char a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(Phase::Logger::GetInstance(this) + 1616))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(this + 128) & 0x80) == 0;
  }

  v5 = 0;
  v6 = v4 | a2 ^ 1;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (this + 24 * v5);
    *v9 = v5;
    v10 = (v9 + 1);
    if (v7)
    {
      v11 = 104;
    }

    else
    {
      v11 = 96;
    }

    objc_storeStrong(v10, *(this + v11));
    if (v6)
    {
      Phase::Controller::StreamRenderer::IOConfiguration::StopCaptures(this + 3 * v5);
    }

    else if (!v9[2])
    {
      v13 = **(Phase::Logger::GetInstance(v12) + 400);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [*v10 description];
        v15 = v14;
        v16 = [v14 cStringUsingEncoding:4];
        *buf = 136316162;
        v35 = "StreamRenderer.mm";
        v36 = 1024;
        v37 = 1855;
        v38 = 2048;
        v39 = this;
        v40 = 1024;
        v41 = v5;
        v42 = 2080;
        v43 = v16;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d bufferstream@%p: element[%d] format = %s", buf, 0x2Cu);
      }

      if (v8)
      {
        v17 = "out";
      }

      else
      {
        v17 = "in";
      }

      v18 = getpid();
      caulk::platform::process_name(v18);
      v19 = v44;
      if (SBYTE3(v48) < 0)
      {
        v19 = *v44;
      }

      snprintf(buf, 0x100uLL, "%s-%d-bufferstream@%p-%s", v19, v18, this, v17);
      if (SBYTE3(v48) < 0)
      {
        operator delete(*v44);
      }

      v20 = [*v10 streamDescription];
      if (*(v20 + 7) && *v20 > 0.0)
      {
        Phase::Logger::CreateAudioCapturer(buf, v20, v44);
        v21 = *v44;
        *v44 = 0;
        v22 = v9[2];
        v9[2] = v21;
        if (v22)
        {
          (*(*v22 + 8))(v22);
          v23 = *v44;
          *v44 = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          v21 = v9[2];
        }

        if (v21)
        {
          v24 = (*(*v21 + 64))(v21, 10000);
          v25 = **(Phase::Logger::GetInstance(v24) + 400);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *v9;
            v27 = (*(*v9[2] + 56))(v9[2]);
            *v44 = 136316162;
            *&v44[4] = "StreamRenderer.mm";
            v45 = 1024;
            v46 = 1885;
            v47 = 2048;
            v48 = v9;
            v49 = 1024;
            v50 = v26;
            v51 = 2080;
            v52 = v27;
            _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d bufferstream@%p [%d]: writing capture to %s", v44, 0x2Cu);
          }
        }

        else
        {
          v31 = **(Phase::Logger::GetInstance(0) + 400);
          v32 = v31;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *v9;
            *v44 = 136315906;
            *&v44[4] = "StreamRenderer.mm";
            v45 = 1024;
            v46 = 1890;
            v47 = 2048;
            v48 = v9;
            v49 = 1024;
            v50 = v33;
            _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d bufferstream@%p [%d]: Error: could not create capture file!", v44, 0x22u);
          }
        }
      }

      else
      {
        v28 = **(Phase::Logger::GetInstance(v20) + 400);
        v29 = v28;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *v9;
          *v44 = 136315906;
          *&v44[4] = "StreamRenderer.mm";
          v45 = 1024;
          v46 = 1876;
          v47 = 2048;
          v48 = v9;
          v49 = 1024;
          v50 = v30;
          _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d bufferstream@%p [%d]: ERROR: invalid capture format!", v44, 0x22u);
        }

        Phase::Controller::StreamRenderer::IOConfiguration::StopCaptures(v9);
      }
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
}

uint64_t Phase::Controller::StreamRenderer::SupportsInputLayout(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if ((a2 & 2) != 0)
  {
    v8 = [v3 layout];
    v6 = Phase::ChannelLayout::IsLayoutSupported(v8, v9);
    goto LABEL_33;
  }

  v5 = [v3 layoutTag];
  v6 = 1;
  if (v5 <= 8388615)
  {
    if (v5 > 7995397)
    {
      if (v5 <= 8126469)
      {
        if (v5 == 7995398)
        {
          goto LABEL_33;
        }

        v7 = 8060934;
      }

      else
      {
        if (v5 == 8126470 || v5 == 8257544)
        {
          goto LABEL_33;
        }

        v7 = 8323080;
      }
    }

    else if (v5 <= 7405570)
    {
      if (v5 == 6553601)
      {
        goto LABEL_33;
      }

      v7 = 6619138;
    }

    else
    {
      if (v5 == 7405571 || v5 == 7667717)
      {
        goto LABEL_33;
      }

      v7 = 7929862;
    }
  }

  else if (v5 <= 12189700)
  {
    if (v5 <= 8650755)
    {
      if (v5 == 8388616)
      {
        goto LABEL_33;
      }

      v7 = 8454152;
    }

    else
    {
      if (v5 == 8650756 || v5 == 8716291)
      {
        goto LABEL_33;
      }

      v7 = 12124164;
    }
  }

  else if (v5 > 12386311)
  {
    if (v5 == 12386312 || v5 == 12582924)
    {
      goto LABEL_33;
    }

    v7 = 12713992;
  }

  else
  {
    if (v5 == 12189701 || v5 == 12255238)
    {
      goto LABEL_33;
    }

    v7 = 12320775;
  }

  if (v5 != v7)
  {
    v6 = 0;
  }

LABEL_33:

  return v6;
}

uint64_t Phase::Controller::StreamRenderer::Prepare(Phase::Controller::StreamRenderer *this)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*(this + 6))
  {
    goto LABEL_42;
  }

  v2 = 1;
  if ((*(this + 136) & 1) == 0)
  {
    *(this + 136) = 0;
    Phase::Controller::StreamRenderer::PrepareEngine(this);
    *(this + 136) = 1;
    Phase::Controller::StreamRenderer::InitializeLatencyBuffer(this, 1);
    v3 = *(this + 46);
    if (!v3)
    {
      goto LABEL_40;
    }

    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_36);
    }

    if (off_27DF94D30)
    {
      off_27DF94D30(v3);
    }

    snprintf(__str, 0x96uLL, "phasestream-out@%p", this);
    v4 = strlen(__str);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v30 = v4;
    if (v4)
    {
      memcpy(&__dst, __str, v4);
    }

    *(&__dst + v5) = 0;
    v6 = *(this + 46);
    v7 = [*(this + 13) streamDescription];
    v8 = v7;
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_36);
    }

    if (off_27DF94D28)
    {
      v7 = off_27DF94D28(v6, &__dst, 1, 1, v8, 4096);
      v9 = v7;
      if (!v7)
      {
        v10 = *(this + 46);
        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_36);
        }

        if (off_27DF94D10)
        {
          v7 = off_27DF94D10(v10);
          v11 = v7;
          if (!v7)
          {
            v12 = **(Phase::Logger::GetInstance(v7) + 400);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              if (v30 >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst;
              }

              v14 = [*(this + 13) description];
              v15 = v14;
              v16 = [v14 UTF8String];
              *buf = 136316162;
              v32 = "StreamRenderer.mm";
              v33 = 1024;
              v34 = 639;
              v35 = 2048;
              v36 = this;
              v37 = 2080;
              v38 = p_dst;
              v39 = 2080;
              v40 = v16;
              _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d bufferstream@%p: created AID node %s, format %s", buf, 0x30u);
            }

            *(this + 376) = 1;
            goto LABEL_38;
          }
        }

        else
        {
          v11 = -1;
        }

        v24 = **(Phase::Logger::GetInstance(v7) + 400);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          if (v30 >= 0)
          {
            v25 = &__dst;
          }

          else
          {
            v25 = __dst;
          }

          v26 = [*(this + 13) description];
          v27 = v26;
          v28 = [v26 UTF8String];
          *buf = 136316418;
          v32 = "StreamRenderer.mm";
          v33 = 1024;
          v34 = 633;
          v35 = 2048;
          v36 = this;
          v37 = 2080;
          v38 = v25;
          v39 = 2080;
          v40 = v28;
          v41 = 1024;
          v42 = v11;
          _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: failed to initialize AID node named %s with format %s, err = %d", buf, 0x36u);
        }

        v22 = *(this + 46);
        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_36);
        }

        if (!off_27DF94D30)
        {
          goto LABEL_38;
        }

LABEL_37:
        off_27DF94D30(v22);
LABEL_38:
        if (v30 < 0)
        {
          operator delete(__dst);
        }

LABEL_40:
        if (*(this + 6))
        {
          v2 = *(this + 136);
          return v2 & 1;
        }

LABEL_42:
        v2 = 0;
        return v2 & 1;
      }
    }

    else
    {
      v9 = -1;
    }

    v17 = **(Phase::Logger::GetInstance(v7) + 400);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v30 >= 0)
      {
        v18 = &__dst;
      }

      else
      {
        v18 = __dst;
      }

      v19 = [*(this + 13) description];
      v20 = v19;
      v21 = [v19 UTF8String];
      *buf = 136316418;
      v32 = "StreamRenderer.mm";
      v33 = 1024;
      v34 = 622;
      v35 = 2048;
      v36 = this;
      v37 = 2080;
      v38 = v18;
      v39 = 2080;
      v40 = v21;
      v41 = 1024;
      v42 = v9;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: failed to set format for AID node named %s with format %s, err = %d", buf, 0x36u);
    }

    v22 = *(this + 46);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_36);
    }

    if (!off_27DF94D30)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  return v2 & 1;
}

void sub_23A50E8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::StreamRenderer::PrepareEngine(id *this)
{
  v2 = applesauce::dispatch::v1::queue::operator*(this + 26);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN5Phase10Controller14StreamRenderer13PrepareEngineEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
}

void Phase::Controller::StreamRenderer::InitializeLatencyBuffer(Phase::Controller::StreamRenderer *this, char a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(this + 6) && *(this + 136) == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v16 = __Block_byref_object_copy__15;
    v17 = __Block_byref_object_dispose__16;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v4 = applesauce::dispatch::v1::queue::operator*(this + 26);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZNK5Phase10Controller14StreamRenderer19GetLatencyInSecondsEv_block_invoke;
    v14[3] = &unk_278B4FBD8;
    v14[4] = buf;
    v14[5] = this;
    dispatch_sync(v4, v14);

    v5 = *(*&buf[8] + 56);
    v6 = *(*&buf[8] + 48);
    _Block_object_dispose(buf, 8);
    if (v5)
    {
      [*(this + 13) sampleRate];
      LODWORD(v5) = vcvtpd_u64_f64(v6 * v8);
      if ((a2 & 1) != 0 || (v9 = atomic_load(this + 40), v9 != v5))
      {
        if ([*(this + 18) frameCapacity] < v5)
        {
          v10 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:*(this + 13) frameCapacity:v5];
          v11 = *(this + 18);
          *(this + 18) = v10;

          [*(this + 18) setFrameLength:{objc_msgSend(*(this + 18), "frameCapacity")}];
          v12 = [*(this + 18) mutableAudioBufferList];
          *(this + 19) = v12;
          if (!v12 || !*v12 || !*(v12 + 16) || !*(v12 + 12))
          {
            std::terminate();
          }
        }

        atomic_store(v5, this + 40);
        atomic_store(0, *(this + 21));
      }
    }

    else
    {
      v13 = **(Phase::Logger::GetInstance(v7) + 400);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "StreamRenderer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1069;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't get latency in seconds for Stream Renderer.", buf, 0x12u);
      }
    }
  }
}

uint64_t Phase::Controller::StreamRenderer::Start(Phase::Controller::StreamRenderer *this)
{
  if (!*(this + 6))
  {
    goto LABEL_9;
  }

  if (*(this + 136) == 1 && (*(this + 137) & 1) != 0)
  {
    v2 = 1;
    return v2 & 1;
  }

  if (!Phase::Controller::StreamRenderer::Prepare(this))
  {
LABEL_9:
    v2 = 0;
    return v2 & 1;
  }

  Phase::Controller::StreamRenderer::StartStopInternalCaptures(this, 1);
  *(this + 137) = 0;
  atomic_store(0, this + 42);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = applesauce::dispatch::v1::queue::operator*(this + 26);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN5Phase10Controller14StreamRenderer5StartEv_block_invoke;
  v6[3] = &unk_278B4FBD8;
  v6[4] = &v7;
  v6[5] = this;
  dispatch_sync(v3, v6);

  v4 = *(v8 + 24);
  *(this + 137) = v4;
  if ((v4 & 1) != 0 && *(this + 6))
  {
    v2 = *(this + 136);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v2 & 1;
}

void sub_23A50ED78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN5Phase10Controller14StreamRenderer5StartEv_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = v2[6];
  v17 = 0;
  v4 = [v3 startAndReturnError:&v17];
  v5 = v17;
  v6 = v5;
  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (*(*(*(a1 + 32) + 8) + 24) == 1 && v5 == 0)
  {
    v16 = v2[9];
    if (v16 && ([v16 play], (objc_msgSend(v2[9], "isPlaying") & 1) == 0) || (objc_msgSend(v2[6], "isRunning") & 1) == 0 || (objc_msgSend(v2[6], "isInManualRenderingMode") & 1) == 0)
    {
      std::terminate();
    }
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(v5) + 400);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v2[13] description];
      v10 = v9;
      v11 = [v9 UTF8String];
      v12 = [(Phase::Logger *)v6 description];
      v13 = v12;
      v14 = [v12 UTF8String];
      *buf = 136316162;
      v19 = "StreamRenderer.mm";
      v20 = 1024;
      v21 = 693;
      v22 = 2048;
      v23 = v2;
      v24 = 2080;
      v25 = v11;
      v26 = 2080;
      v27 = v14;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: could not start stream renderer with format %s, err = %s", buf, 0x30u);
    }

    v15 = v2[6];
    v2[6] = 0;

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t Phase::Controller::StreamRenderer::Pause(uint64_t this)
{
  if (*(this + 48))
  {
    v1 = this;
    if (*(this + 136) == 1 && *(this + 137) == 1)
    {
      caulk::pooled_semaphore_mutex::_lock((this + 220));
      v2 = applesauce::dispatch::v1::queue::operator*((v1 + 208));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN5Phase10Controller14StreamRenderer5PauseEv_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v1;
      dispatch_sync(v2, block);

      v3 = applesauce::dispatch::v1::queue::operator*((v1 + 208));
      dispatch_sync(v3, &__block_literal_global_6);

      *(v1 + 137) = 0;
      return caulk::pooled_semaphore_mutex::_unlock((v1 + 220));
    }
  }

  return this;
}

uint64_t ___ZN5Phase10Controller14StreamRenderer5PauseEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 72) pause];
  v2 = *(v1 + 48);

  return [v2 pause];
}

uint64_t ___ZN5Phase10Controller14StreamRenderer4StopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 72) stop];
  [*(v1 + 48) stop];
  [*(v1 + 80) reset];
  v2 = *(v1 + 88);

  return [v2 reset];
}

uint64_t Phase::Controller::StreamRenderer::Reset(uint64_t this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 48))
  {
    v1 = this;
    caulk::pooled_semaphore_mutex::_lock((this + 220));
    atomic_store(0, (v1 + 216));
    atomic_store(0, (v1 + 217));
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v2 = applesauce::dispatch::v1::queue::operator*((v1 + 208));
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN5Phase10Controller14StreamRenderer5ResetEv_block_invoke;
    v9[3] = &unk_278B4FBD8;
    v9[4] = &v10;
    v9[5] = v1;
    dispatch_sync(v2, v9);

    if (*(v11 + 24) == 1)
    {
      v3 = applesauce::dispatch::v1::queue::operator*((v1 + 208));
      dispatch_sync(v3, &__block_literal_global_13);
    }

    atomic_store(0, (v1 + 336));
    if (*(v1 + 288) == 1)
    {
      *(v1 + 288) = 0;
    }

    v4 = *(v1 + 304);
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    Phase::Controller::StreamRenderer::InitializeLatencyBuffer(v1, 1);
    *(v1 + 204) = *(v1 + 200);
    v6 = *(v1 + 368);
    if (!v6)
    {
      goto LABEL_16;
    }

    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_36);
    }

    if (off_27DF94D30)
    {
      v5 = off_27DF94D30(v6);
      v7 = v5;
      if (!v5)
      {
LABEL_15:
        *(v1 + 376) = 0;
LABEL_16:
        _Block_object_dispose(&v10, 8);
        return caulk::pooled_semaphore_mutex::_unlock((v1 + 220));
      }
    }

    else
    {
      v7 = -1;
    }

    v8 = **(Phase::Logger::GetInstance(v5) + 400);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v15 = "StreamRenderer.mm";
      v16 = 1024;
      v17 = 832;
      v18 = 2048;
      v19 = v1;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: failed to reset AID, err = %d", buf, 0x22u);
    }

    goto LABEL_15;
  }

  return this;
}

void sub_23A50F384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  caulk::pooled_semaphore_mutex::_unlock((v7 + 220));
  _Unwind_Resume(a1);
}

uint64_t ___ZN5Phase10Controller14StreamRenderer5ResetEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = [*(v2 + 72) isPlaying];
  [*(v2 + 72) stop];
  result = [*(v2 + 48) reset];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = *(v2 + 72);

    return [v4 play];
  }

  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void ___ZNK5Phase10Controller14StreamRenderer19GetLatencyInSecondsEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  [*(v2 + 64) latency];
  v4 = v3 + 0.0;
  v5 = *(v2 + 128);
  if ((v5 & 2) == 0)
  {
    [*(v2 + 80) latency];
    v4 = v4 + v6;
    v5 = *(v2 + 128);
  }

  if ((v5 & 4) != 0)
  {
    [*(v2 + 88) latency];
    v4 = v4 + v7;
  }

  v8 = [*(v2 + 48) outputNode];
  [v8 latency];
  v10 = v4 + v9;

  v11 = *(*(a1 + 32) + 8);
  *(v11 + 48) = v10;
  *(v11 + 56) = 1;
}

uint64_t Phase::Controller::StreamRenderer::SetPreset(uint64_t a1, int a2, void *a3, double a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a2)
  {
    v9 = **(Phase::Logger::GetInstance(v7) + 400);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "StreamRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1176;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d unhandled inProcessor %d", buf, 0x18u);
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  if ((*(a1 + 128) & 2) != 0)
  {
    v21 = **(Phase::Logger::GetInstance(v7) + 400);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(Phase::Logger *)v8 description];
      *buf = 136315650;
      *&buf[4] = "StreamRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1167;
      *&buf[18] = 2080;
      *&buf[20] = [v22 UTF8String];
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempted to set a Loudness Normalizer preset file '%s' on a Stream Renderer that was instantiated without that plugin!", buf, 0x1Cu);
    }

    goto LABEL_14;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__17;
  v43 = __Block_byref_object_dispose__18;
  v44 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v10 = applesauce::dispatch::v1::queue::operator*((a1 + 208));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN5Phase10Controller14StreamRenderer9SetPresetENS1_9ProcessorEP5NSURLd_block_invoke;
  block[3] = &unk_278B4FC80;
  v28 = a1;
  v11 = v8;
  v25 = v11;
  v26 = buf;
  v29 = a4;
  v27 = &v30;
  dispatch_sync(v10, block);

  if (*(v31 + 24) == 1 && !*(*&buf[8] + 40))
  {
    Phase::Controller::StreamRenderer::InitializeLatencyBuffer(a1, 0);
    v20 = 1;
  }

  else
  {
    v13 = **(Phase::Logger::GetInstance(v12) + 400);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(Phase::Logger *)v11 description];
      v15 = v14;
      v16 = [v14 UTF8String];
      v17 = [*(*&buf[8] + 40) description];
      v18 = v17;
      v19 = [v17 UTF8String];
      *v34 = 136315906;
      v35 = "StreamRenderer.mm";
      v36 = 1024;
      v37 = 1155;
      v38 = 2080;
      v39 = v16;
      v40 = 2080;
      v41 = v19;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d [AVAudioFile loadAudioUnitPresetAtURL] failed to load a Loudness Normalizer preset file '%s' with error '%s'!", v34, 0x26u);
    }

    v20 = 0;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);

LABEL_15:
  return v20;
}

void sub_23A50F8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN5Phase10Controller14StreamRenderer9SetPresetENS1_9ProcessorEP5NSURLd_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(v2 + 80);
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v3 loadAudioUnitPresetAtURL:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v8 = *(a1 + 64);
    v9 = v8;
    if (v8 < -60.0 || v8 > -3.0)
    {
      v11 = **(Phase::Logger::GetInstance(v7) + 400);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 64);
        *buf = 136316162;
        v19 = "StreamRenderer.mm";
        v20 = 1024;
        v21 = 1130;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = 0xC04E000000000000;
        v26 = 2048;
        v27 = 0xC008000000000000;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d inTargetLKFS: %f is out of range for AULN [%f, %f]. Clamping.", buf, 0x30u);
      }

      v9 = fminf(fmaxf(v9, -60.0), -3.0);
    }

    v13 = AudioUnitSetParameter([*(v2 + 80) audioUnit], 2u, 0, 0, v9, 0);
    if (v13)
    {
      v14 = v13;
      v15 = **(Phase::Logger::GetInstance(v13) + 400);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 64);
        *buf = 136315906;
        v19 = "StreamRenderer.mm";
        v20 = 1024;
        v21 = 1145;
        v22 = 2048;
        v23 = v16;
        v24 = 1024;
        LODWORD(v25) = v14;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d [AVAudioFile loadAudioUnitPresetAtURL] failed to set Loudness Normalizer targetLKFS of value '%f' with error '%d'!", buf, 0x22u);
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

uint64_t Phase::Controller::StreamRenderer::ConfigureDSPGraph(Phase::Controller::StreamRenderer *this, NSURL *a2, NSURL *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(this + 11);
    v20 = 0;
    v8 = [v7 loadDSPGraphAtURL:v5 error:&v20];
    v9 = v20;
    v10 = v9;
    if ((v8 & 1) == 0)
    {
      v11 = **(Phase::Logger::GetInstance(v9) + 400);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v22 = "StreamRenderer.mm";
        v23 = 1024;
        v24 = 1191;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to load dspg file %@: %@", buf, 0x26u);
      }

      v12 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6)
  {
    v13 = *(this + 11);
    v19 = v10;
    v14 = [v13 loadAudioUnitProcessingStripAtURL:v6 error:&v19];
    v15 = v19;

    if (v14)
    {
      v12 = 1;
    }

    else
    {
      v17 = **(Phase::Logger::GetInstance(v16) + 400);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v22 = "StreamRenderer.mm";
        v23 = 1024;
        v24 = 1197;
        v25 = 2112;
        v26 = v6;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to load austrip file %@: %@", buf, 0x26u);
      }

      v12 = 0;
    }

    v10 = v15;
  }

  else
  {
    v12 = 1;
  }

LABEL_15:

  return v12;
}

AVAudioTime *Phase::Controller::StreamRenderer::GetScheduleTime(Phase::Controller::StreamRenderer *this, AVAudioTime *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_17;
  }

  if (![(AVAudioTime *)v3 isHostTimeValid])
  {
    if ([(AVAudioTime *)v4 isSampleTimeValid])
    {
      v13 = v4;
      goto LABEL_14;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (*(this + 288) != 1 || (*(this + 280) & 3) == 0)
  {
    goto LABEL_16;
  }

  [*(this + 13) sampleRate];
  v6 = v5;
  if (!*(this + 37))
  {
    if ((*(this + 288) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v7 = [MEMORY[0x277CB8428] timeWithAudioTimeStamp:this + 224 sampleRate:v5];
    v8 = *(this + 37);
    *(this + 37) = v7;

    if (![*(this + 37) isHostTimeValid] || (objc_msgSend(*(this + 37), "isSampleTimeValid") & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v16 = 2;
  v15[1] = [(AVAudioTime *)v4 hostTime];
  v9 = [MEMORY[0x277CB8428] timeWithAudioTimeStamp:v15 sampleRate:v6];
  v10 = [v9 extrapolateTimeFromAnchor:*(this + 37)];
  if (([v10 isSampleTimeValid] & 1) == 0)
  {
LABEL_16:
    std::terminate();
  }

  v11 = [v10 sampleTime];
  v12 = [*(this + 37) sampleTime];
  v13 = [MEMORY[0x277CB8428] timeWithSampleTime:v11 - v12 atRate:v6];

  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_14:
  if ([(AVAudioTime *)v13 isHostTimeValid]|| ![(AVAudioTime *)v13 isSampleTimeValid])
  {
    goto LABEL_16;
  }

LABEL_18:

  return v13;
}

BOOL Phase::Controller::StreamRenderer::ScheduleBuffer(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, void *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    v23 = **(Phase::Logger::GetInstance(v13) + 400);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleTime) = 136315650;
      *(&buf.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 1315;
      WORD1(buf.mRateScalar) = 2048;
      *(&buf.mRateScalar + 4) = a1;
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pInBuffer == nil is true]: bufferstream@%p: nil buffer!", &buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "bufferstream@%p: nil buffer!");
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    if (a5)
    {
      std::terminate();
    }

    v16 = Phase::Controller::StreamRenderer::GetScheduleTime(a1, v12);
    v17 = applesauce::dispatch::v1::queue::operator*((a1 + 208));
    v18 = (a4 >> 1) & 7;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = ___ZN5Phase10Controller14StreamRenderer14ScheduleBufferEP16AVAudioPCMBufferP11AVAudioTimem42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke;
    v28 = &unk_278B4FCD0;
    v32 = a1;
    v31 = v14;
    v19 = v11;
    v29 = v19;
    v20 = v16;
    v30 = v20;
    v33 = v18;
    v34 = 0;
    dispatch_sync(v17, &v25);

    Phase::Controller::StreamRenderer::StartStopInternalCaptures(a1, 1);
    Phase::Controller::StreamRenderer::IOConfiguration::WriteCaptureBufferList(*(a1 + 40), &buf, [v19 frameLength], objc_msgSend(v19, "audioBufferList"));
  }

  else
  {
    v21 = **(Phase::Logger::GetInstance(v13) + 400);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.mSampleTime) = 136315906;
      *(&buf.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 1320;
      WORD1(buf.mRateScalar) = 2048;
      *(&buf.mRateScalar + 4) = a1;
      WORD2(buf.mWordClockTime) = 2048;
      *(&buf.mWordClockTime + 6) = v11;
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d bufferstream@%p: uninitialized, could not schedule buffer@%p", &buf, 0x26u);
    }

    if (v14)
    {
      (*(v14 + 2))(v14, a5);
    }
  }

  return v15 != 0;
}

void sub_23A5102AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __cxa_free_exception(v18);

  _Unwind_Resume(a1);
}

void ___ZN5Phase10Controller14StreamRenderer14ScheduleBufferEP16AVAudioPCMBufferP11AVAudioTimem42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = *(a1[7] + 72);
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[8];
  if (v1)
  {
    v7 = a1[9] == 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN5Phase10Controller14StreamRenderer14ScheduleBufferEP16AVAudioPCMBufferP11AVAudioTimem42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke_2;
    v11[3] = &unk_278B4FCA8;
    v8 = v1;
    v9 = a1[9];
    v12 = v8;
    v13 = v9;
    [v2 scheduleBuffer:v3 atTime:v4 options:v5 completionCallbackType:v7 completionHandler:v11];
  }

  else
  {
    v10 = *(a1[7] + 72);

    [v10 scheduleBuffer:v3 atTime:v4 options:v5 completionHandler:0];
  }
}

uint64_t Phase::Controller::StreamRenderer::ScheduleFile(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5, void *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    v25 = **(Phase::Logger::GetInstance(v13) + 400);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleTime) = 136315650;
      *(&buf.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 1382;
      WORD1(buf.mRateScalar) = 2048;
      *(&buf.mRateScalar + 4) = a1;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pInFile == nil is true]: bufferstream@%p: Error: nil file!", &buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "bufferstream@%p: Error: nil file!");
  }

  if (*(a1 + 48))
  {
    if (a5)
    {
      std::terminate();
    }

    v15 = atomic_load((a1 + 216));
    if ((v15 & 1) == 0)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 1;
      v22 = applesauce::dispatch::v1::queue::operator*((a1 + 208));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN5Phase10Controller14StreamRenderer12ScheduleFileEP11AVAudioFileP11AVAudioTimeb42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke;
      block[3] = &unk_278B4FCF8;
      v32 = a1;
      v34 = a4;
      v28 = v12;
      v30 = v14;
      v23 = v11;
      v33 = 0;
      v29 = v23;
      v31 = &v35;
      dispatch_sync(v22, block);

      Phase::Controller::StreamRenderer::StartStopInternalCaptures(a1, 1);
      Phase::Controller::StreamRenderer::IOConfiguration::WriteCaptureFile((a1 + 24), &buf, v23, 0, [(AVAudioFile *)v23 length]);
      v21 = *(v36 + 24);

      _Block_object_dispose(&v35, 8);
      goto LABEL_14;
    }

    v16 = **(Phase::Logger::GetInstance(v13) + 400);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v11 url];
      v18 = [v17 description];
      LODWORD(buf.mSampleTime) = 136315906;
      *(&buf.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 1403;
      WORD1(buf.mRateScalar) = 2048;
      *(&buf.mRateScalar + 4) = a1;
      WORD2(buf.mWordClockTime) = 2080;
      *(&buf.mWordClockTime + 6) = [v18 UTF8String];
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d bufferstream@%p: Warning: a looping file is previously scheduled, cannot schedule file [%s]", &buf, 0x26u);
    }
  }

  else
  {
    v16 = **(Phase::Logger::GetInstance(v13) + 400);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = [v11 url];
      v20 = [v19 description];
      LODWORD(buf.mSampleTime) = 136315906;
      *(&buf.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 1388;
      WORD1(buf.mRateScalar) = 2048;
      *(&buf.mRateScalar + 4) = a1;
      WORD2(buf.mWordClockTime) = 2080;
      *(&buf.mWordClockTime + 6) = [v20 UTF8String];
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: Error: uninitialized, could not schedule file [%s]", &buf, 0x26u);
    }
  }

  if (v14)
  {
    (*(v14 + 2))(v14, a5);
  }

  v21 = 0;
LABEL_14:

  return v21 & 1;
}

void ___ZN5Phase10Controller14StreamRenderer12ScheduleFileEP11AVAudioFileP11AVAudioTimeb42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 80))
  {
    atomic_store(1u, (v2 + 216));
    atomic_store(0, (v2 + 217));
    *(*(*(a1 + 56) + 8) + 24) = Phase::Controller::StreamRenderer::ScheduleLoopingFile(v2, *(a1 + 40), *(a1 + 32), *(a1 + 72), *(a1 + 48));
  }

  else
  {
    v3 = Phase::Controller::StreamRenderer::GetScheduleTime(*(a1 + 64), *(a1 + 32));
    v4 = *(v2 + 72);
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 72);
    v8 = v7 == 0;
    if (v5)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___ZN5Phase10Controller14StreamRenderer12ScheduleFileEP11AVAudioFileP11AVAudioTimeb42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke_2;
      v11[3] = &unk_278B4FCA8;
      v9 = v5;
      v10 = *(a1 + 72);
      v12 = v9;
      v13 = v10;
      [v4 scheduleFile:v6 atTime:v3 completionCallbackType:v8 completionHandler:v11];
    }

    else
    {
      [v4 scheduleFile:*(a1 + 40) atTime:v3 completionCallbackType:v7 == 0 completionHandler:0];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

uint64_t Phase::Controller::StreamRenderer::ScheduleLoopingFile(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v37 = a3;
  v38 = a5;
  if (!v9 || !*(a1 + 48))
  {
    std::terminate();
  }

  v10 = [v9 fileFormat];
  [v10 sampleRate];
  v12 = v11;

  if (v12 <= 0.0)
  {
    v33 = **(Phase::Logger::GetInstance(v13) + 400);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [v9 fileFormat];
      v35 = [v34 description];
      *buf = 136315906;
      v45 = "StreamRenderer.mm";
      v46 = 1024;
      v47 = 1471;
      v48 = 2048;
      v49 = a1;
      v50 = 2080;
      v51 = [v35 UTF8String];
      _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pInFile.fileFormat.sampleRate <= 0 is true]: bufferstream@%p: Error: invalid file format %s!", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "bufferstream@%p: Error: invalid file format %s!");
  }

  v14 = [v9 length];
  v15 = [v9 fileFormat];
  [v15 sampleRate];
  v17 = v14 / v16;

  if (v17 <= 0.0)
  {
    v27 = **(Phase::Logger::GetInstance(v18) + 400);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v9 url];
      v29 = [v28 description];
      *buf = 136315906;
      v45 = "StreamRenderer.mm";
      v46 = 1024;
      v47 = 1477;
      v48 = 2048;
      v49 = a1;
      v50 = 2080;
      v51 = [v29 UTF8String];
      _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d bufferstream@%p: Warning: trying to schedule a zero length looping file [%s], no-op", buf, 0x26u);
    }

    v30 = v38;
    if (!v38)
    {
      v26 = 0;
      goto LABEL_25;
    }

    v38[2]();
  }

  else
  {
    v19 = 0;
    v20 = vcvtpd_s64_f64(3.0 / v17);
    if (v20 <= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v20;
    }

    while (1)
    {
      if (v19)
      {
        v22 = 0;
      }

      else
      {
        v22 = Phase::Controller::StreamRenderer::GetScheduleTime(a1, v37);
      }

      v23 = atomic_load((a1 + 216));
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(a1 + 72);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = ___ZN5Phase10Controller14StreamRenderer19ScheduleLoopingFileEP11AVAudioFileP11AVAudioTime42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke;
      v39[3] = &unk_278B4FD48;
      v42 = a1;
      v25 = v9;
      v40 = v25;
      v43 = a4;
      v41 = v38;
      [v24 scheduleFile:v25 atTime:v22 completionCallbackType:0 completionHandler:v39];

      if (v21 == ++v19)
      {
        v26 = 1;
        goto LABEL_24;
      }
    }

    v31 = atomic_load((a1 + 217));
    if ((v31 & 1) == 0)
    {
      if (v38)
      {
        v38[2]();
      }

      atomic_store(1u, (a1 + 217));
    }
  }

  v26 = 0;
LABEL_24:
  v30 = v38;
LABEL_25:

  return v26;
}

void Phase::Controller::StreamRenderer::IOConfiguration::WriteCaptureFile(Phase::Controller::StreamRenderer::IOConfiguration *this, const AudioTimeStamp *a2, AVAudioFile *a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (a5 && *(this + 2))
  {
    context = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x277CB83C8]);
    v11 = [(AVAudioFile *)v9 processingFormat];
    v12 = [v10 initWithPCMFormat:v11 frameCapacity:a5];

    if (!v12)
    {
      v27 = **(Phase::Logger::GetInstance(v13) + 400);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [(AVAudioFile *)v9 url];
        v29 = [v28 description];
        *buf = 136315906;
        v45 = "StreamRenderer.mm";
        v46 = 1024;
        v47 = 1937;
        v48 = 2048;
        v49 = this;
        v50 = 2080;
        v51 = [v29 UTF8String];
        _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: <debug captures> error allocating buffer for file [%s]", buf, 0x26u);
      }

      goto LABEL_20;
    }

    v14 = objc_alloc(MEMORY[0x277CB8398]);
    v15 = [(AVAudioFile *)v9 url];
    v43 = 0;
    v16 = [v14 initForReading:v15 commonFormat:1 interleaved:0 error:&v43];
    v17 = v43;

    if (v17)
    {
      v19 = **(Phase::Logger::GetInstance(v18) + 400);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [(AVAudioFile *)v9 url];
        v21 = [v20 description];
        v22 = v21;
        v23 = [v21 UTF8String];
        v24 = [v17 localizedDescription];
        v25 = v24;
        v26 = [v24 UTF8String];
        *buf = 136316162;
        v45 = "StreamRenderer.mm";
        v46 = 1024;
        v47 = 1952;
        v48 = 2048;
        v49 = this;
        v50 = 2080;
        v51 = v23;
        v52 = 2080;
        v53 = v26;
        _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: <debug captures> error initing file for reading [%s], Error: %s", buf, 0x30u);
      }
    }

    else if (v16)
    {
      [v16 setFramePosition:a4];
      v42 = 0;
      [(AVAudioFile *)v9 readIntoBuffer:v12 error:&v42];
      v30 = v42;
      v17 = v30;
      if (!v30)
      {
        v30 = [v12 frameLength];
        if (v30)
        {
          Phase::Controller::StreamRenderer::IOConfiguration::WriteCaptureBufferList(*(this + 2), a2, [v12 frameLength], objc_msgSend(v12, "audioBufferList"));
          goto LABEL_19;
        }
      }

      v31 = **(Phase::Logger::GetInstance(v30) + 400);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [(AVAudioFile *)v9 url];
        v33 = [v32 description];
        v34 = v33;
        v35 = [v33 UTF8String];
        v36 = [v17 code];
        *buf = 136316162;
        v45 = "StreamRenderer.mm";
        v46 = 1024;
        v47 = 1971;
        v48 = 2048;
        v49 = this;
        v50 = 2080;
        v51 = v35;
        v52 = 1024;
        LODWORD(v53) = v36;
        _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: <debug captures> error reading from file [%s], %d", buf, 0x2Cu);
      }
    }

    else
    {
      v17 = **(Phase::Logger::GetInstance(v18) + 400);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v37 = [(AVAudioFile *)v9 url];
        v38 = [v37 description];
        v39 = v38;
        v40 = [v38 UTF8String];
        *buf = 136315906;
        v45 = "StreamRenderer.mm";
        v46 = 1024;
        v47 = 1960;
        v48 = 2048;
        v49 = this;
        v50 = 2080;
        v51 = v40;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: <debug captures> Could not create file for reading [%s]", buf, 0x26u);
      }
    }

LABEL_19:
LABEL_20:
    objc_autoreleasePoolPop(context);
  }
}

void sub_23A511454(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *exc_bufa, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf, __int16 a16, __int16 a17, __int128 a18, uint64_t a19, __int128 a20)
{
  if (a2 == 1)
  {
    v26 = objc_begin_catch(a1);
    v27 = **(Phase::Logger::GetInstance(v26) + 400);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [v20 url];
      v29 = [v28 description];
      v30 = v29;
      v31 = [v29 UTF8String];
      v32 = [(Phase::Logger *)v26 name];
      v33 = v32;
      v34 = [v32 UTF8String];
      v35 = [(Phase::Logger *)v26 reason];
      v36 = v35;
      v37 = [v35 UTF8String];
      LODWORD(buf) = 136316418;
      *(&buf + 4) = "StreamRenderer.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 1982;
      a17 = 2048;
      WORD2(a18) = 2080;
      *(&a18 + 6) = v31;
      HIWORD(a18) = 2080;
      a19 = v34;
      LOWORD(a20) = 2080;
      *(&a20 + 2) = v37;
      _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: <debug captures> exception caught reading from file [%s], Name: %s, Reason: %s", &buf, 0x3Au);
    }

    objc_end_catch();
    JUMPOUT(0x23A5113D4);
  }

  _Unwind_Resume(a1);
}

void ___ZN5Phase10Controller14StreamRenderer19ScheduleLoopingFileEP11AVAudioFileP11AVAudioTime42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = atomic_load((v2 + 216));
  if (v3)
  {
    v4 = applesauce::dispatch::v1::queue::operator*((v2 + 208));
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN5Phase10Controller14StreamRenderer19ScheduleLoopingFileEP11AVAudioFileP11AVAudioTime42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke_2;
    v9[3] = &unk_278B4FD20;
    v12 = v2;
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v10 = v5;
    v13 = v6;
    v11 = *(a1 + 40);
    dispatch_async(v4, v9);
  }

  else
  {
    v7 = atomic_load((v2 + 217));
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))(v8, *(a1 + 56));
      }

      atomic_store(1u, (v2 + 217));
    }
  }
}

BOOL Phase::Controller::StreamRenderer::ScheduleSegment(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a7;
  v16 = v15;
  if (!v13)
  {
    v24 = **(Phase::Logger::GetInstance(v15) + 400);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleTime) = 136315650;
      *(&buf.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 1555;
      WORD1(buf.mRateScalar) = 2048;
      *(&buf.mRateScalar + 4) = a1;
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pInFile == nil is true]: bufferstream@%p: nil file!", &buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "bufferstream@%p: nil file!");
LABEL_19:
  }

  if (a4 < 0 || !a5)
  {
    v26 = **(Phase::Logger::GetInstance(v15) + 400);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleTime) = 136316162;
      *(&buf.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 1557;
      WORD1(buf.mRateScalar) = 2048;
      *(&buf.mRateScalar + 4) = a1;
      WORD2(buf.mWordClockTime) = 2048;
      *(&buf.mWordClockTime + 6) = a4;
      HIWORD(buf.mSMPTETime.mCounter) = 1024;
      buf.mSMPTETime.mType = a5;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [inStartFrame < 0 || inNumberOfFrames <= 0 is true]: bufferstream@%p: invalid frame position/count, [%lld, %u]!", &buf, 0x2Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "bufferstream@%p: invalid frame position/count, [%lld, %u]!");
    goto LABEL_19;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    if (a6)
    {
      std::terminate();
    }

    v18 = applesauce::dispatch::v1::queue::operator*((a1 + 208));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN5Phase10Controller14StreamRenderer15ScheduleSegmentEP11AVAudioFileP11AVAudioTimexj42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke;
    block[3] = &unk_278B4FD70;
    v31 = a1;
    v28 = v14;
    v30 = v16;
    v19 = v13;
    v29 = v19;
    v32 = a4;
    v33 = 0;
    v34 = a5;
    dispatch_sync(v18, block);

    Phase::Controller::StreamRenderer::StartStopInternalCaptures(a1, 1);
    Phase::Controller::StreamRenderer::IOConfiguration::WriteCaptureFile((a1 + 24), &buf, v19, a4, a5);
  }

  else
  {
    v20 = **(Phase::Logger::GetInstance(v15) + 400);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v13 url];
      v22 = [v21 description];
      LODWORD(buf.mSampleTime) = 136315906;
      *(&buf.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 1562;
      WORD1(buf.mRateScalar) = 2048;
      *(&buf.mRateScalar + 4) = a1;
      WORD2(buf.mWordClockTime) = 2080;
      *(&buf.mWordClockTime + 6) = [v22 UTF8String];
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d bufferstream@%p: uninitialized, could not schedule file [%s]", &buf, 0x26u);
    }

    if (v16)
    {
      (*(v16 + 2))(v16, a6);
    }
  }

  return v17 != 0;
}

void ___ZN5Phase10Controller14StreamRenderer15ScheduleSegmentEP11AVAudioFileP11AVAudioTimexj42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = Phase::Controller::StreamRenderer::GetScheduleTime(v2, *(a1 + 32));
  v4 = *(v2 + 9);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 80);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = v8 == 0;
  if (v5)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN5Phase10Controller14StreamRenderer15ScheduleSegmentEP11AVAudioFileP11AVAudioTimexj42PHASEPushStreamCompletionCallbackConditionU13block_pointerFvS6_E_block_invoke_2;
    v13[3] = &unk_278B4FCA8;
    v11 = v5;
    v12 = *(a1 + 72);
    v14 = v11;
    v15 = v12;
    [v4 scheduleSegment:v6 startingFrame:v9 frameCount:v7 atTime:v3 completionCallbackType:v10 completionHandler:v13];
  }

  else
  {
    [v4 scheduleSegment:*(a1 + 40) startingFrame:*(a1 + 64) frameCount:*(a1 + 80) atTime:v3 completionCallbackType:v8 == 0 completionHandler:0];
  }
}

BOOL Phase::Controller::StreamRenderer::RenderOffline(Phase::Controller::StreamRenderer *this, unint64_t a2, AVAudioPCMBuffer *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((*(this + 128) & 1) == 0)
  {
    v7 = **(Phase::Logger::GetInstance(v5) + 400);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v23.mSampleTime) = 136315650;
      *(&v23.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(v23.mHostTime) = 1024;
      *(&v23.mHostTime + 6) = 1620;
      WORD1(v23.mRateScalar) = 2048;
      *(&v23.mRateScalar + 4) = this;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: Error: must be setup in offline mode before calling RenderOffline!", &v23, 0x1Cu);
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v8 = [(AVAudioPCMBuffer *)v5 format];
  v9 = [v8 isEqual:*(this + 13)];

  if ((v9 & 1) == 0)
  {
    v17 = **(Phase::Logger::GetInstance(v10) + 400);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(this + 13) description];
      v19 = [v18 UTF8String];
      v20 = [(AVAudioPCMBuffer *)v6 format];
      v21 = [v20 description];
      LODWORD(v23.mSampleTime) = 136316162;
      *(&v23.mSampleTime + 4) = "StreamRenderer.mm";
      WORD2(v23.mHostTime) = 1024;
      *(&v23.mHostTime + 6) = 1628;
      WORD1(v23.mRateScalar) = 2048;
      *(&v23.mRateScalar + 4) = this;
      WORD2(v23.mWordClockTime) = 2080;
      *(&v23.mWordClockTime + 6) = v19;
      HIWORD(v23.mSMPTETime.mCounter) = 2080;
      *&v23.mSMPTETime.mType = [v21 UTF8String];
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: Error: mismatch in the format of the buffer, expected %s, given %s", &v23, 0x30u);
    }

    goto LABEL_15;
  }

  v11 = [(AVAudioPCMBuffer *)v6 frameCapacity];
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v11;
  }

  v23.mFlags = 0;
  [(AVAudioPCMBuffer *)v6 setFrameLength:[(AVAudioPCMBuffer *)v6 frameCapacity]];
  v13 = [(AVAudioPCMBuffer *)v6 mutableAudioBufferList];
  v15 = Phase::Controller::StreamRenderer::IORender(this, &v23, v12, v13, v14);
  if (v15)
  {
    v16 = a2;
  }

  else
  {
    v16 = 0;
  }

  [(AVAudioPCMBuffer *)v6 setFrameLength:v16];
LABEL_16:

  return v15;
}

BOOL Phase::Controller::StreamRenderer::IORender(Phase::Controller::StreamRenderer *this, const AudioTimeStamp *a2, uint64_t a3, unsigned int *a4, AudioBufferList *a5)
{
  v89 = *MEMORY[0x277D85DE8];
  if (!a4 || !*a4)
  {
    return 0;
  }

  if (!this)
  {
    goto LABEL_95;
  }

  v9 = caulk::pooled_semaphore_mutex::try_lock((this + 220));
  v10 = v9;
  if ((v9 & 1) == 0)
  {
    if (*a4)
    {
      v63 = 0;
      v64 = (a4 + 4);
      do
      {
        v62 = *v64 != 0;
        if (!*v64)
        {
          break;
        }

        bzero(*v64, *(v64 - 1));
        ++v63;
        v64 += 2;
      }

      while (v63 < *a4);
      goto LABEL_85;
    }

    return 1;
  }

  if (!*(this + 6) || *(this + 136) != 1 || *(this + 137) != 1)
  {
    v62 = 0;
    goto LABEL_86;
  }

  if ((*(this + 288) & 1) == 0)
  {
    v11 = *&a2->mSampleTime;
    v12 = *&a2->mRateScalar;
    v13 = *&a2->mSMPTETime.mHours;
    *(this + 16) = *&a2->mSMPTETime.mSubframes;
    *(this + 17) = v13;
    *(this + 14) = v11;
    *(this + 15) = v12;
    *(this + 288) = 1;
  }

  v14 = *(this + 38);
  v15 = *&a2->mSampleTime;
  v16 = *&a2->mRateScalar;
  v17 = *&a2->mSMPTETime.mSubframes;
  v18 = *&a2->mSMPTETime.mHours;
  v77 = a2;
  v14[2] = v17;
  v14[3] = v18;
  *v14 = v15;
  v14[1] = v16;
  **(this + 40) = 0;
  v19 = atomic_load(*(this + 21));
  LODWORD(v14) = atomic_load(this + 40);
  if (v19 < v14)
  {
    v79 = xmmword_23A554B60;
    v78 = xmmword_23A554B70;
    v80 = vdupq_n_s64(4uLL);
    do
    {
      v20 = *(this + 19);
      if (!v20)
      {
        break;
      }

      v21 = *(v20 + 12);
      v22 = atomic_load(this + 40);
      v23 = atomic_load(*(this + 21));
      v24 = v22 - v23;
      if (v24 >= *(this + 28))
      {
        v25 = *(this + 28);
      }

      else
      {
        v25 = v24;
      }

      v9 = (*(*(this + 7) + 16))();
      atomic_fetch_add(*(this + 21), v25);
      v26 = *(this + 19);
      v27 = *v26;
      v28 = v80;
      if (v27)
      {
        v29 = (v27 + 3) & 0x1FFFFFFFCLL;
        v30 = vdupq_n_s64(v27 - 1);
        v31 = v26 + 11;
        v32 = v78;
        v33 = v79;
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v30, v32));
          if (vuzp1_s16(v34, *v30.i8).u8[0])
          {
            *(v31 - 8) = v21;
          }

          if (vuzp1_s16(v34, *&v30).i8[2])
          {
            *(v31 - 4) = v21;
          }

          if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, *&v33))).i32[1])
          {
            *v31 = v21;
            v31[4] = v21;
          }

          v33 = vaddq_s64(v33, v28);
          v32 = vaddq_s64(v32, v28);
          v31 += 16;
          v29 -= 4;
        }

        while (v29);
      }

      v35 = atomic_load(*(this + 21));
      v36 = atomic_load(this + 40);
    }

    while (v35 < v36);
  }

  HIDWORD(v76) = v10;
  v37 = *a4;
  if (!v37 || !*(a4 + 2))
  {
    v74 = **(Phase::Logger::GetInstance(v9) + 400);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_95;
    }

    *buf = 136315394;
    v82 = "StreamRenderer.mm";
    v83 = 1024;
    v84 = 1708;
    v75 = "%25s:%-5d StreamRenderer: pBuffer != nullptr && pBuffer->mNumberBuffers > 0 && pBuffer->mBuffers[0].mData != nullptr)";
    goto LABEL_94;
  }

  MEMORY[0x28223BE20]();
  v39 = (&v76 - ((v38 + 15) & 0x7FFFFFFF0));
  bzero(v39, v38);
  v41 = (a4 + 3);
  v42 = v39;
  v43 = v37;
  do
  {
    v44 = *(v41 - 1);
    *v42++ = *v41;
    *v41 = 4 * a3 * v44;
    v41 += 4;
    --v43;
  }

  while (v43);
  if (!a3)
  {
    v62 = 1;
    goto LABEL_69;
  }

  v79 = xmmword_23A554B60;
  v78 = xmmword_23A554B70;
  v45 = vdupq_n_s64(4uLL);
  v46 = a3;
  v80 = v45;
  while (1)
  {
    v47 = *(this + 24);
    if (v47)
    {
      v48 = *(this + 50);
      v49 = *(this + 51);
      v50 = v48 - v49;
      if (v48 > v49)
      {
        if (*v47 == *a4)
        {
          if (v46 >= v50)
          {
            v51 = v50;
          }

          else
          {
            v51 = v46;
          }

          if (*v47)
          {
            v52 = 0;
            v53 = 4;
            do
            {
              v40 = memcpy((*&a4[v53] + 4 * a3 - 4 * v46), (*&v47[v53] + 4 * *(this + 51)), 4 * v51);
              ++v52;
              v47 = *(this + 24);
              v53 += 4;
            }

            while (v52 < *v47);
            v49 = *(this + 51);
            v45 = v80;
          }

          v46 -= v51;
          *(this + 51) = v49 + v51;
          **(this + 40) += v51;
          goto LABEL_56;
        }

        v74 = **(Phase::Logger::GetInstance(v40) + 400);
        if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        *buf = 136315394;
        v82 = "StreamRenderer.mm";
        v83 = 1024;
        v84 = 1741;
        v75 = "%25s:%-5d StreamRenderer: stream.mpReblockingABL->mNumberBuffers == pBuffer->mNumberBuffers";
LABEL_94:
        _os_log_impl(&dword_23A302000, v74, OS_LOG_TYPE_ERROR, v75, buf, 0x12u);
        goto LABEL_95;
      }

      *buf = 0;
      v54 = *v47;
      if (v54)
      {
        v55 = 4 * v48;
        v56 = (v54 + 3) & 0x1FFFFFFFCLL;
        v57 = vdupq_n_s64(v54 - 1);
        v58 = v47 + 11;
        v59 = v78;
        v60 = v79;
        do
        {
          v61 = vmovn_s64(vcgeq_u64(v57, v59));
          if (vuzp1_s16(v61, *v57.i8).u8[0])
          {
            *(v58 - 8) = v55;
          }

          if (vuzp1_s16(v61, *&v57).i8[2])
          {
            *(v58 - 4) = v55;
          }

          if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v60))).i32[1])
          {
            *v58 = v55;
            v58[4] = v55;
          }

          v60 = vaddq_s64(v60, v45);
          v59 = vaddq_s64(v59, v45);
          v58 += 16;
          v56 -= 4;
        }

        while (v56);
      }

      v40 = (*(*(this + 7) + 16))();
      *(this + 51) = 0;
    }

    else
    {
      *buf = 0;
      v40 = (*(*(this + 7) + 16))();
      v46 = 0;
    }

    v45 = v80;
    if (v40 == -1)
    {
      break;
    }

    if (v40 == 2)
    {
      v74 = **(Phase::Logger::GetInstance(2) + 400);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v82 = "StreamRenderer.mm";
        v83 = 1024;
        v84 = 1781;
        v75 = "%25s:%-5d StreamRenderer: not implemented - handle CannotDoInCurrentContext";
        goto LABEL_94;
      }

LABEL_95:
      std::terminate();
    }

LABEL_56:
    if (!v46)
    {
      v62 = 1;
      goto LABEL_68;
    }
  }

  v62 = 0;
LABEL_68:
  LODWORD(v37) = *a4;
LABEL_69:
  if (v37)
  {
    v65 = v37;
    v66 = a4 + 3;
    do
    {
      v67 = *v39++;
      *v66 = v67;
      v66 += 4;
      --v65;
    }

    while (v65);
  }

  ShouldFire = Phase::Controller::StreamRenderer::IOConfiguration::WriteCaptureBufferList(*(this + 2), v77, a3, a4);
  v10 = HIDWORD(v76);
  atomic_fetch_add(this + 42, a3);
  v69 = *(this + 46);
  if (v69 && *(this + 376) == 1)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_36);
    }

    if (off_27DF94D38)
    {
      ShouldFire = off_27DF94D38(v69, 1, 0, a4, a3, v77);
      v70 = ShouldFire;
      if (!ShouldFire)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v70 = -1;
    }

    ShouldFire = Phase::Throttle::ShouldFire((this + 384), 0);
    if (ShouldFire)
    {
      v71 = **(Phase::Logger::GetInstance(ShouldFire) + 400);
      ShouldFire = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
      if (ShouldFire)
      {
        *buf = 136315906;
        v82 = "StreamRenderer.mm";
        v83 = 1024;
        v84 = 1812;
        v85 = 2048;
        v86 = this;
        v87 = 1024;
        v88 = v70;
        _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d bufferstream@%p: failed to analyze buffer %d", buf, 0x22u);
      }
    }
  }

LABEL_83:
  if (*(Phase::Logger::GetInstance(ShouldFire) + 1632) == 1)
  {
    v72 = *(this + 15);
    Phase::Trace::PostSignalStatsTraceIfSignificant(0x1621, *(a4 + 2), a3, v72);
  }

LABEL_85:
  if (v10)
  {
LABEL_86:
    caulk::pooled_semaphore_mutex::_unlock((this + 220));
  }

  return v62;
}

void *Phase::Controller::StreamRenderer::IOConfiguration::StopCaptures(void *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2])
  {
    v1 = this;
    v2 = **(Phase::Logger::GetInstance(this) + 400);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *v1;
      v4 = 136315906;
      v5 = "StreamRenderer.mm";
      v6 = 1024;
      v7 = 1898;
      v8 = 2048;
      v9 = v1;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d bufferstream@%p [%d]: stopping capture", &v4, 0x22u);
    }

    this = v1[2];
    v1[2] = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }
  }

  return this;
}

void applesauce::dispatch::v1::queue::~queue(id *this)
{
  v2 = *this;
  *this = 0;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<Phase::Controller::AudioDSPRegisterInternalAudioUnits(void)::$_0 &&>>(void **a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (!v2)
  {
    v4 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "StreamRenderer.mm";
      v8 = 1024;
      v9 = 80;
      v5 = "%25s:%-5d Error: Unable to load AudioDSP lib!";
LABEL_10:
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 0x12u);
    }

LABEL_11:
    **v1 = 0;
    return;
  }

  v3 = dlsym(v2, "RegisterAudioUnits_Internal");
  if (!v3)
  {
    v4 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "StreamRenderer.mm";
      v8 = 1024;
      v9 = 74;
      v5 = "%25s:%-5d Error: Unable to call RegisterAudioUnits_Internal from AudioDSP lib!";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v3();
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_0()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    off_27DF94D10 = dlsym(v1, "AudioIssueDetectorInitialize");
    off_27DF94D18 = dlsym(v1, "AudioIssueDetectorDispose");
    qword_27DF94D20 = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    off_27DF94D28 = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    off_27DF94D30 = dlsym(v1, "AudioIssueDetectorReset");
    off_27DF94D38 = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    qword_27DF94D40 = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    qword_27DF94D48 = dlsym(v1, "AudioIssueDetectorRemoveNode");
    qword_27DF94D50 = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    qword_27DF94D58 = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    qword_27DF94D60 = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    qword_27DF94D68 = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    qword_27DF94D70 = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

uint64_t std::array<Phase::Controller::StreamRenderer::IOConfiguration,2ul>::~array(uint64_t a1)
{
  for (i = 0; i != -48; i -= 24)
  {
    v3 = *(a1 + i + 40);
    *(a1 + i + 40) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void std::__shared_ptr_emplace<AudioTimeStamp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D37B70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<unsigned long>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D37BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<std::atomic<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D37BE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

BOOL Phase::StringBuffer::Write(Phase::StringBuffer *this, const char *__format, ...)
{
  va_start(va, __format);
  v3 = vsnprintf((*(this + 2) + *(this + 1)), *this - *(this + 1), __format, va);
  v4 = *this;
  v5 = *(this + 1);
  v6 = v5 + v3;
  if ((v6 + 1) > *this)
  {
    *(*(this + 2) + v5) = 0;
  }

  else
  {
    *(this + 1) = v6;
  }

  return v6 + 1 <= v4;
}

Phase::StringId *Phase::StringId::StringId(Phase::StringId *this, const char *a2)
{
  *this = 0;
  *(this + 1) = &str_20;
  *(this + 16) = 1;
  Phase::StringId::Initialize(this, a2);
  return this;
}

void *Phase::StringId::Initialize(Phase::StringId *this, const char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  return Phase::StringId::Initialize(this, __s, v4);
}

void *Phase::StringId::Initialize(Phase::StringId *this, const char *a2, size_t a3)
{
  if (!a2)
  {
    v12 = -1;
    v13 = &str_20;
LABEL_9:
    v14 = 1;
    return Phase::StringId::operator=(this, &v12);
  }

  if (!a3)
  {
    v12 = 0;
    v13 = &str_20;
    goto LABEL_9;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2 + 1;
    v8 = 0xCBF29CE484222325;
    do
    {
      v8 = 0x100000001B3 * (v8 ^ v6);
      v9 = *v7++;
      v6 = v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  *this = v8;
  v11 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
  result = memcpy(v11, a2, a3);
  *(v11 + a3) = 0;
  *(this + 1) = v11;
  *(this + 16) = 0;
  return result;
}

uint64_t Phase::StringId::StringId(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if ((v4 & 1) == 0)
  {
    v5 = strlen(v3);
    v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
    memcpy(v6, v3, v5);
    *(v6 + v5) = 0;
    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t Phase::StringId::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    free(*(a1 + 8));
  }

  *a1 = 0;
  *(a1 + 8) = &str_20;
  *(a1 + 16) = 1;
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if ((v5 & 1) == 0)
  {
    v6 = strlen(v4);
    v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    memcpy(v7, v4, v6);
    *(v7 + v6) = 0;
    v4 = v7;
  }

  *(a1 + 8) = v4;
  return a1;
}

unint64_t Phase::StringPool::GetString(Phase::StringPool *this, unint64_t a2)
{
  v2 = *(this + 1);
  v3 = a2 % *this;
  if (*(v2 + 24 * v3) == a2)
  {
LABEL_4:
    v4 = *(v2 + 24 * v3 + 8);
    if (*(this + 2) > v4)
    {
      return *(this + 3) + v4;
    }
  }

  else
  {
    while (1)
    {
      v3 = *(v2 + 24 * v3 + 12);
      if (v3 == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v2 + 24 * v3) == a2)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

void sub_23A5134E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::SubmixChannelStripController::InitGraph(Phase::Controller::DVM23::SubmixChannelStripController *this, Phase::Controller::DVM23::VoiceGraph **a2, unint64_t a3, const char *a4)
{
  *(this + 3) = -1;
  v4 = this + 24;
  Phase::Controller::DVM23::DspVoiceManager23::AddGraph(a2, this + 3, a3, 1, 2, a4);
  *(v4 + 2) = 5;
  return 0;
}

uint64_t Phase::Controller::DVM23::SubmixChannelStripController::ConfigureGraph(uint64_t a1, Phase::Controller::DVM23::VoiceGraph **this, uint64_t *a3, uint64_t a4)
{
  if (!Phase::Controller::DVM23::DspVoiceManager23::IsGraphEmpty(this))
  {
    return 13;
  }

  v9 = *(a1 + 24);
  v28 = *a3;
  if (*a3)
  {
    v10 = Phase::Controller::DVM23::DspVoiceManager23::RemoveConnection(this, v9, 0, v9, 0);
    if (v10 == 9 || v10 == 0)
    {
      v12 = Phase::Controller::DVM23::DspVoiceManager23::RemoveConnection(this, *(a1 + 24), 0, *(a1 + 24), 1);
      if (v12 != 9)
      {
        v4 = v12;
        if (v12)
        {
          return v4;
        }
      }

      v13 = *(a1 + 24);
      if (*(a3 + 4) < 1)
      {
        v27 = *(a1 + 24);
        return Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, v13, 0, v27, 0);
      }

      else
      {
        v14 = 0;
        while (1)
        {
          v15 = a4;
          v16 = (*(v28 + 24) + 88 * a4);
          v31 = -1;
          v10 = Phase::Controller::DVM23::DspVoiceManager23::AddVoice(this, &v31, *v16);
          if (v10)
          {
            break;
          }

          v17 = v13;
          v18 = v31;
          v16[1] = v31;
          Phase::Controller::CvmVoiceData::PackDirtyDspParameters(v16, &__p);
          v20 = __p;
          v19 = v30;
          while (v20 != v19)
          {
            Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(this, v18, *v20, *(v20 + 2));
            v20 += 2;
          }

          v13 = v17;
          v21 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, v17, 0, v18, 0);
          if (v21 || (v23 = std::string::compare((v28 + 56), "SessionMuteFade"), v24 = v31, !v23) && (v21 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, v31, 0, *(a1 + 24), 1), v21))
          {
            v22 = 0;
            v4 = v21;
          }

          else
          {
            v28 = *(v28 + 16);
            v22 = 1;
            v13 = v24;
          }

          if (__p)
          {
            v30 = __p;
            operator delete(__p);
          }

          if ((v22 & 1) == 0)
          {
            return v4;
          }

          ++v14;
          a4 = v15;
          if (v14 >= *(a3 + 4))
          {
            v27 = *(a1 + 24);
            return Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, v13, 0, v27, 0);
          }
        }
      }
    }

    return v10;
  }

  v10 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, v9, 0, v9, 0);
  if (v10)
  {
    return v10;
  }

  v25 = *(a1 + 24);

  return Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, v25, 0, v25, 1);
}

void sub_23A5137C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::DVM23::SubmixChannelStripController::SetPlaystate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v4, a4);
  v4[8] = 0;
  operator new();
}

void sub_23A5138F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v10 + 16);
  _Unwind_Resume(a1);
}

void *std::__function::__func<Phase::Controller::DVM23::SubmixChannelStripController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__func(void *a1)
{
  *a1 = &unk_284D37C80;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::SubmixChannelStripController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__func(void *a1)
{
  *a1 = &unk_284D37C80;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::SubmixChannelStripController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D37C80;
  *(a2 + 8) = *(a1 + 8);
  return std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](a2 + 24, a1 + 24);
}

void std::__function::__func<Phase::Controller::DVM23::SubmixChannelStripController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](a1 + 24);

  operator delete(a1);
}

uint64_t Phase::Controller::DVM23::SubmixController::SubmixController(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 9;
  *a1 = &unk_284D37CC8;
  *(a1 + 40) = 0u;
  v6 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1065353216;
  if (a4 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v26 = (a1 + 40);
    do
    {
      v10 = *(a1 + 56);
      if (v8 >= v10)
      {
        v11 = *v6;
        v12 = v8 - *v6;
        v13 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3) + 1;
        if (v13 > 0x666666666666666)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x333333333333333)
        {
          v15 = 0x666666666666666;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (v15 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v16 = 8 * (v12 >> 3);
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = 9;
        *v16 = &unk_284D37C18;
        *(v16 + 8) = -1;
        if (v11 != v8)
        {
          v17 = 0;
          v18 = 8;
          v19 = v11;
          do
          {
            v20 = *(v19 + 1);
            *(v18 + 12) = *(v19 + 20);
            *v18 = v20;
            *(v18 - 8) = &unk_284D37C18;
            v19 += 5;
            v17 += 40;
            v18 += 40;
          }

          while (v19 != v8);
          v21 = v11;
          v22 = v11;
          do
          {
            v23 = *v22;
            v22 += 5;
            (*v23)();
            v21 += 5;
          }

          while (v22 != v8);
          v6 = v26;
          v11 = *v26;
        }

        v8 = v16 + 40;
        *(a1 + 40) = v16 - v12;
        *(a1 + 48) = v16 + 40;
        *(a1 + 56) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 32) = 9;
        *v8 = &unk_284D37C18;
        *(v8 + 8) = -1;
        v8 += 40;
      }

      *(a1 + 48) = v8;
      ++v9;
    }

    while (v9 != a4);
  }

  if (a5 == 3)
  {
    __assert_rtn("SubmixController", "SubmixController.cpp", 22, "type != GraphController::Type::AmbientSubmix");
  }

  *(a1 + 32) = a5;
  return a1;
}

void sub_23A513DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>>>::~__hash_table(v4 + 64);
  std::vector<Phase::Controller::DVM23::SubmixChannelStripController>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Controller::DVM23::SubmixController::~SubmixController(Phase::Controller::DVM23::SubmixController *this)
{
  *this = &unk_284D37CC8;
  v1 = (this + 40);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>>>::~__hash_table(this + 64);
  v2 = v1;
  std::vector<Phase::Controller::DVM23::SubmixChannelStripController>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_284D37CC8;
  v1 = (this + 40);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>>>::~__hash_table(this + 64);
  v2 = v1;
  std::vector<Phase::Controller::DVM23::SubmixChannelStripController>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::DVM23::SubmixController::InitGraph(Phase::Controller::DVM23::SubmixController *this, Phase::Controller::DVM23::VoiceGraph **a2, unint64_t a3, const char *a4)
{
  *(this + 3) = -1;
  v7 = (this + 24);
  v8 = (*(this + 6) - *(this + 5)) >> 3;
  v9 = Phase::Controller::DVM23::DspVoiceManager23::AddGraph(a2, this + 3, a3, -858993459 * v8, -1717986918 * v8, a4);
  if (!v9)
  {
    v10 = *(this + 5);
    v31 = *(this + 6);
    if (v10 == v31)
    {
      return 0;
    }

    else
    {
      __val = 0;
      v11 = 0;
      v12 = v10;
      while (1)
      {
        v13 = strlen(a4);
        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v14 = v13;
        if (v13 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v13;
        if (v13)
        {
          memcpy(&__dst, a4, v13);
        }

        __dst.__r_.__value_.__s.__data_[v14] = 0;
        v15 = std::string::append(&__dst, "Ch", 2uLL);
        v16 = *&v15->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v33, __val);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v33;
        }

        else
        {
          v17 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v33.__r_.__value_.__l.__size_;
        }

        v19 = std::string::append(&v35, v17, size);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v37 = v19->__r_.__value_.__r.__words[2];
        *__p = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v21 = v37 >= 0 ? __p : __p[0];
        v22 = (*(*v12 + 16))(v12, a2, *v7, v21);
        if (v22 || (v23 = *v7, v24 = (*(*v12 + 80))(v12), v22 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v23, __val, v24, 0), v22) || (v25 = (*(*v12 + 80))(v12), v22 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v25, 1, *v7, (v11 + 1)), v22))
        {
          v26 = 0;
          v9 = v22;
        }

        else
        {
          v27 = (*(*v12 + 80))(v12);
          v28 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v27, 0, *v7, v11);
          v26 = v28 == 0;
          if (v28)
          {
            v11 = v11;
          }

          else
          {
            v11 = (v11 + 2);
          }

          v29 = __val;
          if (!v28)
          {
            v29 = __val + 1;
          }

          __val = v29;
          v9 = v28 ? v28 : v9;
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        if (!v26)
        {
          break;
        }

        v12 += 40;
        v10 += 40;
        if (v12 == v31)
        {
          return 0;
        }
      }
    }
  }

  return v9;
}

void sub_23A51424C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::SubmixController::ConfigureGraph(void *a1, Phase::Controller::DVM23::VoiceGraph **this, uint64_t a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  if (!Phase::Controller::DVM23::DspVoiceManager23::IsGraphEmpty(this))
  {
    return 13;
  }

  v6 = a1[5];
  if (a1[6] == v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = (*(*(v6 + v7) + 48))(v6 + v7, this, a3, v8);
    if (v9)
    {
      break;
    }

    ++v8;
    v6 = a1[5];
    v7 += 40;
    if (0xCCCCCCCCCCCCCCCDLL * ((a1[6] - v6) >> 3) <= v8)
    {
      return 0;
    }
  }

  v10 = v9;
  v12[0] = &unk_284D37D30;
  v12[3] = v12;
  (*(*a1 + 56))(a1, this, 2, v12);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v12);
  return v10;
}

void sub_23A514424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::SubmixController::SetPlaystate(uint64_t a1, Phase::Controller::DVM23::VoiceGraph **a2, int a3, uint64_t a4)
{
  v8[9] = *MEMORY[0x277D85DE8];
  if (a3 != 1 || (Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(a2, *(a1 + 24), 0) & 1) == 0)
  {
    Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(a2, *(a1 + 24), 0);
    std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v8, a4);
    v8[8] = 0;
    operator new();
  }

  return 0;
}

void sub_23A5146AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v10 + 16);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::SubmixController::ConnectToGraph(uint64_t *a1, Phase::Controller::DVM23::VoiceGraph **a2, void *a3, uint64_t a4, double a5, double a6)
{
  v12 = (*(**a2 + 80))(*a2, a1[3]);
  if (v12)
  {
    v13 = -858993459 * ((*(v12 + 40) - *(v12 + 32)) >> 3);
    v14 = (v13 + (v13 >> 31)) >> 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = a5;
  v21 = v15;
  std::vector<float>::vector[abi:ne200100](&v22, v14);
  v19 = 0;
  v20 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v22, v23, (v23 - v22) >> 2);
  v16 = Phase::Controller::DVM23::SubmixController::ConnectToGraph(a1, a2, a3, &__p, a4, a6);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return v16;
}

void sub_23A514800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::SubmixController::ConnectToGraph(uint64_t *a1, Phase::Controller::DVM23::VoiceGraph **a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v12 = (*(**a2 + 80))(*a2, a1[3]);
  if (v12)
  {
    v13 = -858993459 * ((*(v12 + 40) - *(v12 + 32)) >> 3);
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(*a3 + 80))(a3);
  v15 = (*(**a2 + 80))(*a2, v14);
  if (!v15)
  {
    return 14;
  }

  v16 = -858993459 * ((*(v15 + 16) - *(v15 + 8)) >> 3);
  if (!v16 || v13 == 0)
  {
    return 14;
  }

  if (v16 != 1 && v13 / v16 != 2)
  {
    return 14;
  }

  v37 = (v13 / 2);
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, v37);
  if (Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(a2, a1[3], 1) & 1) != 0 || (Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(a2, a1[3], 2))
  {
    IsGraphPlaystateUniform = 1;
  }

  else
  {
    IsGraphPlaystateUniform = Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(a2, a1[3], 5);
  }

  if (v13 >= 2)
  {
    v22 = 0;
    do
    {
      v38[0] = -1;
      v20 = Phase::Controller::DVM23::DspVoiceManager23::AddVoice(a2, v38, 0xFuLL);
      if (v20)
      {
        goto LABEL_61;
      }

      v23 = v38[0];
      if (IsGraphPlaystateUniform)
      {
        v20 = Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(a2, v38[0], 0, 0.0);
        if (v20)
        {
          goto LABEL_61;
        }
      }

      v20 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, a1[3], a5, v23, 0);
      if (v20)
      {
        goto LABEL_61;
      }

      v24 = (*(*a3 + 80))(a3);
      v25 = v16 == 1 ? 0 : v22;
      v20 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v23, 0, v24, v25);
      if (v20)
      {
        goto LABEL_61;
      }

      v20 = Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(a2, v23, 0, a6);
      if (v20)
      {
        goto LABEL_61;
      }

      v20 = Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(a2, v23, 1uLL, *(*a4 + 4 * v22));
      if (v20)
      {
        goto LABEL_61;
      }

      v20 = Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(a2, v23, 2uLL, *(*a4 + 4 * v22));
      if (v20)
      {
        goto LABEL_61;
      }

      *(__p + v22) = v23;
      a5 = (a5 + 2);
      ++v22;
    }

    while (v37 != v22);
  }

  v26 = 0;
  v27 = a3[1];
  v28 = a3[2];
  v38[0] = v27;
  v38[1] = v28;
  v29 = 0xCBF29CE484222325;
  do
  {
    v29 = 0x100000001B3 * (v29 ^ *(v38 + v26++));
  }

  while (v26 != 16);
  v30 = a1[9];
  if (!*&v30)
  {
    goto LABEL_57;
  }

  v31 = vcnt_s8(v30);
  v31.i16[0] = vaddlv_u8(v31);
  if (v31.u32[0] > 1uLL)
  {
    v32 = v29;
    if (v29 >= *&v30)
    {
      v32 = v29 % *&v30;
    }
  }

  else
  {
    v32 = (*&v30 - 1) & v29;
  }

  v33 = *(a1[8] + 8 * v32);
  if (!v33 || (v34 = *v33) == 0)
  {
LABEL_57:
    operator new();
  }

  while (1)
  {
    v35 = v34[1];
    if (v35 == v29)
    {
      break;
    }

    if (v31.u32[0] > 1uLL)
    {
      if (v35 >= *&v30)
      {
        v35 %= *&v30;
      }
    }

    else
    {
      v35 &= *&v30 - 1;
    }

    if (v35 != v32)
    {
      goto LABEL_57;
    }

LABEL_56:
    v34 = *v34;
    if (!v34)
    {
      goto LABEL_57;
    }
  }

  if (v34[2] != v27 || v34[3] != v28)
  {
    goto LABEL_56;
  }

  if (v34 + 4 != &__p)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v34 + 4, __p, v40, (v40 - __p) >> 3);
  }

  v20 = 0;
LABEL_61:
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  return v20;
}

void sub_23A514F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,void *>>>::operator()[abi:ne200100](1, v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::SubmixController::DisconnectFromGraph(int8x8_t *this, Phase::Controller::DVM23::VoiceGraph **a2, Phase::Controller::DVM23::GraphController *a3, double a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = *(a3 + 8);
  v8 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(&this[8], &v32);
  v9 = v8;
  if (!v8)
  {
    return 0;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v29, *&v8[4], *&v8[5], (*&v8[5] - *&v8[4]) >> 3);
  v10 = this[9];
  v11 = *v9;
  v12 = v9[1];
  v13 = vcnt_s8(v10);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v10)
    {
      v12 %= *&v10;
    }
  }

  else
  {
    v12 &= *&v10 - 1;
  }

  v15 = this[8];
  v16 = *(*&v15 + 8 * v12);
  do
  {
    v17 = v16;
    v16 = *v16;
  }

  while (v16 != v9);
  if (v17 == &this[10])
  {
    goto LABEL_20;
  }

  v18 = v17[1];
  if (v13.u32[0] > 1uLL)
  {
    if (v18 >= *&v10)
    {
      v18 %= *&v10;
    }
  }

  else
  {
    v18 &= *&v10 - 1;
  }

  if (v18 != v12)
  {
LABEL_20:
    if (v11)
    {
      v19 = *(*&v11 + 8);
      if (v13.u32[0] > 1uLL)
      {
        v20 = *(*&v11 + 8);
        if (v19 >= *&v10)
        {
          v20 = v19 % *&v10;
        }
      }

      else
      {
        v20 = v19 & (*&v10 - 1);
      }

      if (v20 == v12)
      {
        goto LABEL_24;
      }
    }

    *(*&v15 + 8 * v12) = 0;
    v11 = *v9;
  }

  if (!*&v11)
  {
    goto LABEL_30;
  }

  v19 = *(*&v11 + 8);
LABEL_24:
  if (v13.u32[0] > 1uLL)
  {
    if (v19 >= *&v10)
    {
      v19 %= *&v10;
    }
  }

  else
  {
    v19 &= *&v10 - 1;
  }

  if (v19 != v12)
  {
    *(*&this[8] + 8 * v19) = v17;
    v11 = *v9;
  }

LABEL_30:
  *v17 = v11;
  *v9 = 0;
  --*&this[11];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,void *>>>::operator()[abi:ne200100](1, v9);
  v21 = v29;
  if (v30 == v29)
  {
LABEL_40:
    v14 = 0;
    if (!v21)
    {
      return v14;
    }

LABEL_41:
    v30 = v21;
    operator delete(v21);
    return v14;
  }

  v22 = 0;
  while (1)
  {
    Voice = Phase::Controller::DVM23::VoiceGraph::GetVoice(*a2, *&v21[8 * v22]);
    if (Voice)
    {
      v24 = *(Voice + 88);
      v25 = v24 > 6;
      v26 = (1 << v24) & 0x6A;
      if (!v25 && v26 != 0)
      {
        v33 = 0;
        operator new();
      }
    }

    Phase::Controller::DVM23::SubmixController::SetSendLevel(this, a2, *(a3 + 1), *(a3 + 2), 0.0, a4);
    v14 = Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(a2, *&v29[8 * v22], 2u, a4 * 1000.0);
    if (v14)
    {
      break;
    }

    ++v22;
    v21 = v29;
    if (v22 >= (v30 - v29) >> 3)
    {
      goto LABEL_40;
    }
  }

  v21 = v29;
  if (v29)
  {
    goto LABEL_41;
  }

  return v14;
}

uint64_t Phase::Controller::DVM23::SubmixController::SetSendLevel(uint64_t a1, Phase::Controller::DVM23::VoiceGraph **a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v17[0] = a3;
  v17[1] = a4;
  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 64), v17);
  if (!v9)
  {
    return 15;
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9[4], v9[5], (v9[5] - v9[4]) >> 3);
  v10 = __p;
  if (v15 == __p)
  {
LABEL_7:
    v12 = 0;
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v12 = Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(a2, v10[v11], 2uLL, a5);
      v10 = __p;
      if (v12)
      {
        break;
      }

      v12 = Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(a2, *(__p + v11), 0, a6);
      v10 = __p;
      if (v12)
      {
        break;
      }

      if (++v11 >= ((v15 - __p) >> 3))
      {
        goto LABEL_7;
      }
    }
  }

  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  return v12;
}

void sub_23A5153CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::Controller::DVM23::SubmixChannelStripController>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      v8 = v4 - 40;
      do
      {
        v9 = *v8;
        v8 -= 40;
        (*v9)(v7);
        v6 -= 40;
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

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>>>::~__hash_table(uint64_t a1)
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
        v2[5] = v4;
        operator delete(v4);
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

void *std::__function::__func<Phase::Controller::DVM23::SubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__func(void *a1)
{
  *a1 = &unk_284D37D78;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::SubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__func(void *a1)
{
  *a1 = &unk_284D37D78;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::SubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D37D78;
  *(a2 + 8) = *(a1 + 8);
  return std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](a2 + 24, a1 + 24);
}

void std::__function::__func<Phase::Controller::DVM23::SubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](a1 + 24);

  operator delete(a1);
}

__n128 std::__function::__func<Phase::Controller::DVM23::SubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_1,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D37DC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::SubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_1,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(uint64_t result, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  if (*a4 != 7)
  {
    return Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(*(result + 8), *a3, *(result + 24), *(result + 16));
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::vector<unsigned long long>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

__n128 std::__function::__func<Phase::Controller::DVM23::SubmixController::DisconnectFromGraph(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::GraphController *,double)::$_0,std::allocator<Phase::Controller::DVM23::SubmixController::DisconnectFromGraph(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::GraphController *,double)::$_0>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D37E08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::SubmixController::DisconnectFromGraph(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::GraphController *,double)::$_0,std::allocator<Phase::Controller::DVM23::SubmixController::DisconnectFromGraph(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::GraphController *,double)::$_0>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v5 = *a3;
  if (*a4 == 7)
  {
    v6 = *(a1 + 8);
    v7 = *a3;

    return Phase::Controller::DVM23::DspVoiceManager23::RemoveVoice(v6, v7);
  }

  else
  {
    Phase::Controller::DVM23::SubmixController::SetSendLevel(*(a1 + 32), *(a1 + 8), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), 0.0, *(a1 + 16));
    v9 = *(a1 + 8);
    v10 = *(a1 + 16) * 1000.0;

    return Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(v9, v5, 2u, v10);
  }
}

double Phase::SpatialModeler::GetRoomDataForSpaceBlendTarget(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v43 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  do
  {
    if (v5 <= 9)
    {
      v4 = v5 + 1;
      *(&v38 + v5++) = *(v41 + v6);
    }

    v6 += 4;
  }

  while (v6 != 40);
  if (v4 <= 9)
  {
    bzero(&v38 + 4 * v4, 40 - 4 * v4);
  }

  v7 = v39;
  *(a2 + 8) = v38;
  *(a2 + 24) = v7;
  *(a2 + 40) = v40;
  v8 = *a1;
  if (*a1 > 0x2FB51A26436E9690)
  {
    if (v8 > 0x2FB51E26436E9D5CLL)
    {
      switch(v8)
      {
        case 0x2FB8852643718239:
          v9 = 0;
          v24 = 0;
          v25 = 0;
          *a2 = 0x461C4000459C4000;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          do
          {
            if (v24 <= 9)
            {
              v9 = v24 + 1;
              *(&v38 + v24++) = dword_23A598178[v25];
            }

            ++v25;
          }

          while (v25 != 10);
          goto LABEL_86;
        case 0x2FB8832643717ED3:
          v9 = 0;
          v32 = 0;
          v33 = 0;
          *a2 = 0x4416000043960000;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          do
          {
            if (v32 <= 9)
            {
              v9 = v32 + 1;
              *(&v38 + v32++) = dword_23A598150[v33];
            }

            ++v33;
          }

          while (v33 != 10);
          goto LABEL_86;
        case 0x2FB51E26436E9D5DLL:
          v9 = 0;
          v16 = 0;
          v17 = 0;
          *a2 = 0x461C4000459C4000;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          do
          {
            if (v16 <= 9)
            {
              v9 = v16 + 1;
              *(&v38 + v16++) = dword_23A598150[v17];
            }

            ++v17;
          }

          while (v17 != 10);
          goto LABEL_86;
      }
    }

    else
    {
      switch(v8)
      {
        case 0x2FB51A26436E9691:
          v9 = 0;
          v20 = 0;
          v21 = 0;
          *a2 = 0x461C4000459C4000;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          do
          {
            if (v20 <= 9)
            {
              v9 = v20 + 1;
              *(&v38 + v20++) = dword_23A598088[v21];
            }

            ++v21;
          }

          while (v21 != 10);
          goto LABEL_86;
        case 0x2FB51B26436E9844:
          v9 = 0;
          v28 = 0;
          v29 = 0;
          *a2 = 0x461C4000459C4000;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          do
          {
            if (v28 <= 9)
            {
              v9 = v28 + 1;
              *(&v38 + v28++) = dword_23A598010[v29];
            }

            ++v29;
          }

          while (v29 != 10);
          goto LABEL_86;
        case 0x2FB51C26436E99F7:
          v9 = 0;
          v12 = 0;
          v13 = 0;
          *a2 = 0x461C4000459C4000;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          do
          {
            if (v12 <= 9)
            {
              v9 = v12 + 1;
              *(&v38 + v12++) = dword_23A598038[v13];
            }

            ++v13;
          }

          while (v13 != 10);
          goto LABEL_86;
      }
    }

LABEL_82:
    v9 = 0;
    v34 = 0;
    *a2 = 0x461C4000459C4000;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v35 = 40;
    do
    {
      if (v34 <= 9)
      {
        v9 = v34 + 1;
        *(&v38 + v34++) = 1050253722;
      }

      v35 -= 4;
    }

    while (v35);
    goto LABEL_86;
  }

  if (v8 > 0x2FB51726436E9177)
  {
    switch(v8)
    {
      case 0x2FB51726436E9178:
        v9 = 0;
        v22 = 0;
        v23 = 0;
        *a2 = 0x461C4000459C4000;
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        do
        {
          if (v22 <= 9)
          {
            v9 = v22 + 1;
            *(&v38 + v22++) = dword_23A5980B0[v23];
          }

          ++v23;
        }

        while (v23 != 10);
        goto LABEL_86;
      case 0x2FB51826436E932BLL:
        v9 = 0;
        v30 = 0;
        v31 = 0;
        *a2 = 0x461C4000459C4000;
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        do
        {
          if (v30 <= 9)
          {
            v9 = v30 + 1;
            *(&v38 + v30++) = dword_23A5980D8[v31];
          }

          ++v31;
        }

        while (v31 != 10);
        goto LABEL_86;
      case 0x2FB51926436E94DELL:
        v9 = 0;
        v14 = 0;
        v15 = 0;
        *a2 = 0x461C4000459C4000;
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        do
        {
          if (v14 <= 9)
          {
            v9 = v14 + 1;
            *(&v38 + v14++) = dword_23A598060[v15];
          }

          ++v15;
        }

        while (v15 != 10);
        goto LABEL_86;
    }

    goto LABEL_82;
  }

  switch(v8)
  {
    case 0xB2F0104201709A2BLL:
      v9 = 0;
      v18 = 0;
      *a2 = vdup_n_s32(0x497423F0u);
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v19 = 40;
      do
      {
        if (v18 <= 9)
        {
          v9 = v18 + 1;
          *(&v38 + v18++) = 981668463;
        }

        v19 -= 4;
      }

      while (v19);
      break;
    case 0x2FB51526436E8E12:
      v9 = 0;
      v26 = 0;
      v27 = 0;
      *a2 = 0x461C4000459C4000;
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      do
      {
        if (v26 <= 9)
        {
          v9 = v26 + 1;
          *(&v38 + v26++) = dword_23A598100[v27];
        }

        ++v27;
      }

      while (v27 != 10);
      break;
    case 0x2FB51626436E8FC5:
      v9 = 0;
      v10 = 0;
      v11 = 0;
      *a2 = 0x4416000043960000;
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      do
      {
        if (v10 <= 9)
        {
          v9 = v10 + 1;
          *(&v38 + v10++) = dword_23A598128[v11];
        }

        ++v11;
      }

      while (v11 != 10);
      break;
    default:
      goto LABEL_82;
  }

LABEL_86:
  if (v9 <= 9)
  {
    bzero(&v38 + 4 * v9, 40 - 4 * v9);
  }

  result = *&v38;
  v37 = v39;
  *(a2 + 8) = v38;
  *(a2 + 24) = v37;
  *(a2 + 40) = v40;
  return result;
}

float Phase::SpatialModeler::TailCorrection::sMaxEnergyCorrectionFactor(Phase::SpatialModeler::TailCorrection *this)
{
  if ((atomic_load_explicit(qword_27DF97C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27DF97C20))
  {
    _MergedGlobals_22 = 1098749243;
    __cxa_guard_release(qword_27DF97C20);
  }

  return *&_MergedGlobals_22;
}

BOOL Phase::SpatialModeler::TailCorrection::validConfig(Phase::SpatialModeler::TailCorrection *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  result = 0;
  if (*(this + 4878) > 0.0 && *(this + 28) > 0.0 && *(this + 116) > 0.0)
  {
    if (*(this + 4975))
    {
      result = 0;
      if (*(this + 5007))
      {
        if (*(this + 4944) > 0.0)
        {
          return *(this + 4976) > 0.0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Phase::SpatialModeler::TailCorrection::prepareEDC(Phase::SpatialModeler::TailCorrection *this, unsigned int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*(v2 + 28) <= a2)
  {
    return 0;
  }

  std::vector<float>::resize(this + 4, *(v2 + 24));
  bzero(*(this + 4), 4 * *(*this + 24));
  *(this + 10) = 0xFFFFFFFFLL;
  v5 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*(v5 + 28) <= a2)
  {
LABEL_19:
    if (*(v5 + 28) > a2)
    {
      v16 = *(v5 + 40);
      if (*(v5 + 20) <= v16)
      {
        v11 = -1;
      }

      else
      {
        v11 = vcvtms_s32_f32(v16 / *(v5 + 16));
      }

      *(this + 20) = v11;
      v17 = 1.0;
      if (v16 > 0.0)
      {
        v17 = 1.0 / ((v16 * 343.0) * (v16 * 343.0));
      }

      *(this + 21) = v17;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }
    }

    return 0;
  }

  Phase::SpatialModeler::EnergyHistogram::getTemporalEnergyEnvelope_Band(*this, a2, __p);
  v6 = __p[0];
  v5 = *this;
  v7 = *(this + 21);
  v8 = *(*this + 24);
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = v6[i];
      if (v10 > v7)
      {
        *(this + 20) = i;
        *(this + 21) = v10;
        v8 = *(v5 + 24);
        v7 = v10;
      }
    }
  }

  v11 = *(this + 20);
  v12 = v7 * 0.63096;
  v13 = (v8 - 1);
  while (v13 > v11)
  {
    v14 = v6[v13--];
    --v8;
    if (v14 >= v12)
    {
      *(this + 20) = v8;
      *(this + 21) = v14;
      goto LABEL_16;
    }
  }

  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_16:
  __p[1] = v6;
  operator delete(v6);
  v11 = *(this + 20);
  v5 = *this;
LABEL_17:
  if (v11 < 0)
  {
    *(this + 10) = 0xFFFFFFFFLL;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_19;
  }

LABEL_26:
  v18 = *(v5 + 24);
  if (*(v5 + 36))
  {
    v19 = 0.0;
    if (!v18)
    {
      return 1;
    }

LABEL_33:
    v22 = *(this + 4);
    v23 = *(v5 + 28);
    v24 = v11;
    v25 = a2;
    v26 = v19;
    do
    {
      v27 = log10f((v26 / v19) + 1.0e-15) * 10.0;
      *v22 = v27;
      if (!v24)
      {
        *(this + 22) = v27;
      }

      v28 = 0.0;
      if (v23 > a2)
      {
        v28 = *(*(v5 + 8) + 4 * v25);
      }

      v26 = v26 - v28;
      v25 += v23;
      --v24;
      ++v22;
      --v18;
    }

    while (v18);
    return 1;
  }

  if (v18)
  {
    v20 = (*(v5 + 8) + 4 * a2);
    v19 = 0.0;
    v21 = *(v5 + 24);
    do
    {
      v19 = v19 + *v20;
      v20 += *(v5 + 28);
      --v21;
    }

    while (v21);
    goto LABEL_33;
  }

  return 1;
}

uint64_t Phase::SpatialModeler::TailCorrection::validHistogramRange(Phase::SpatialModeler::TailCorrection *this, const Phase::SpatialModeler::RayTracerState *a2, int a3, float a4)
{
  v5 = *(a2 + 4754) - *(a2 + 16);
  if (!v5)
  {
    return *(this + 20);
  }

  v9 = *(a2 + 4878) / (v5 * 3.14159265 * *(a2 + 116) * *(a2 + 29));
  v10 = logf(1.0 / (sqrtf(v9) * 4.3429)) / 6.9;
  v11 = fabsf(logf(*(a2 + 26)) * 10.0) / 60.0;
  if (v10 <= v11)
  {
    v11 = v10;
  }

  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = ((*(a2 + a3 + 4976) * v11) / *(a2 + 28));
  v13 = *(*this + 24);
  if (v13 <= v12)
  {
    return v13 - 1;
  }

  else
  {
    return v12;
  }
}

float Phase::SpatialModeler::TailCorrection::linearRegression(Phase::SpatialModeler::TailCorrection *this, signed int a2, double a3)
{
  v3 = *(this + 20);
  if (v3 >= a2)
  {
    return 3.4028e38;
  }

  v4 = 0;
  LODWORD(a3) = *(*this + 16);
  v5 = a2 - v3;
  v6 = vdupq_n_s32(v3);
  v7 = vaddq_s32(v6, xmmword_23A5981C0);
  v8 = vdupq_n_s32(a2 - v3);
  v9 = vdupq_lane_s32(*&a3, 0);
  v10 = 0.0;
  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  v13.i64[0] = 0x400000004;
  v13.i64[1] = 0x400000004;
  do
  {
    v14 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v4), xmmword_23A5981C0), v8), v12, vmlaq_f32(vmulq_n_f32(vcvtq_f32_s32(v7), *&a3), v11, v9));
    v10 = (((v10 + *v14.i32) + *&v14.i32[1]) + *&v14.i32[2]) + *&v14.i32[3];
    v4 += 4;
    v7 = vaddq_s32(v7, v13);
  }

  while (((a2 - v3 + 4) & 0xFFFFFFFC) != v4);
  v15 = a2 + 1 - v3;
  v16 = v15;
  v17 = (*(this + 4) + 4 * v3);
  v18 = 0.0;
  v19 = v17;
  do
  {
    v20 = *v19++;
    v18 = v18 + v20;
    --v15;
  }

  while (v15);
  v9.f32[0] = v10 / v16;
  v21 = 0.0;
  v22 = v18 / v16;
  do
  {
    v23 = *v17++;
    v21 = v21 + ((((*&a3 * v3++) + (*&a3 * 0.5)) - v9.f32[0]) * (v23 - v22));
  }

  while (a2 + 1 != v3);
  v24 = 0;
  v25 = (v5 + 4) & 0xFFFFFFFC;
  v26 = vaddq_s32(v6, xmmword_23A5981C0);
  v27 = vdupq_lane_s32(*&a3, 0);
  v28 = vdupq_lane_s32(*v9.f32, 0);
  v29 = 0.0;
  v30.i64[0] = 0x3F0000003F000000;
  v30.i64[1] = 0x3F0000003F000000;
  v31.i64[0] = 0x8000000080000000;
  v31.i64[1] = 0x8000000080000000;
  v32.i64[0] = 0x400000004;
  v32.i64[1] = 0x400000004;
  do
  {
    v33 = vsubq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_s32(v26), *&a3), v30, v27), v28);
    v34 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v24), xmmword_23A5981C0), v8), v31, vmulq_f32(v33, v33));
    v29 = (((v29 + *v34.i32) + *&v34.i32[1]) + *&v34.i32[2]) + *&v34.i32[3];
    v24 += 4;
    v26 = vaddq_s32(v26, v32);
  }

  while (v25 != v24);
  result = v21 / v29;
  if (v29 == 0.0)
  {
    return 3.4028e38;
  }

  return result;
}

void Phase::SpatialModeler::TailCorrection::calcExtrapolatedDecay(Phase::SpatialModeler::TailCorrection *this, unsigned int a2, float a3, float a4)
{
  std::vector<float>::resize(this + 7, *(*this + 24));
  v8 = *(this + 7);
  Phase::SpatialModeler::EnergyHistogram::getTemporalEnergyEnvelope_Band(*this, a2, __src);
  v9 = __src[0];
  memcpy(v8, __src[0], 4 * *(this + 20) + 4);
  if (v9)
  {
    __src[1] = v9;
    operator delete(v9);
  }

  v10 = *(this + 20);
  v11 = *this;
  v12 = *(*this + 24);
  v13 = v10 + 1;
  if (v10 + 1 < v12)
  {
    v14 = *(this + 21);
    v15 = *(this + 7) + 4 * v10;
    v16 = 1;
    v17 = (a3 - a4) / (a4 * -13.816);
    do
    {
      *(v15 + 4 * v16) = v14 * expf(-(*(v11 + 16) * v16) / ((a3 / 13.816) + (v17 * (*(v11 + 16) * v16))));
      ++v13;
      ++v16;
    }

    while (v12 > v13);
  }
}

void Phase::SpatialModeler::TailCorrection::modifyHistograms(Phase::SpatialModeler::EnergyHistogram **this, const Phase::SpatialModeler::RayTracerState *a2, unsigned int a3, int a4)
{
  if ((a3 & 0x80000000) == 0)
  {
    v6 = (a2 + 0x4000);
    if (*(a2 + 5007) > a3 && *(a2 + a3 + 4976) > 0.0)
    {
      Phase::SpatialModeler::EnergyHistogram::getTemporalEnergyEnvelope_Band(*this, a3, __p);
      v10 = __p[0];
      v11 = this[7];
      if (a4)
      {
        v12 = *(this + 20);
        v13 = *(*this + 6);
        v14 = 0.0;
        if (v13 > v12)
        {
          v15 = 0;
          LODWORD(v16) = v12 + 3;
          if (v13 < v12 + 3)
          {
            LODWORD(v16) = *(*this + 6);
          }

          v16 = v16;
          if (v16 <= v12 + 1)
          {
            v16 = v12 + 1;
          }

          v17 = v16 - v12;
          v18 = vdupq_n_s64(v17 - 1);
          v19 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v20 = 4 * v12 + 8;
          v21 = xmmword_23A555020;
          v22 = (__p[0] + v20);
          v23 = (v11 + v20);
          do
          {
            v24 = v21;
            v25 = vdupq_n_s64(v15);
            v26 = vcgeq_u64(v18, vorrq_s8(v25, xmmword_23A554B70));
            v27 = vmovn_s64(v26);
            *v21.f32 = vuzp1_s16(v27, *v18.i8);
            if (v21.i8[0])
            {
              v21.i32[0] = *(v22 - 2);
              v9.i32[0] = *(v23 - 2);
            }

            if (vuzp1_s16(v27, *&v18).i8[2])
            {
              v21.i32[1] = *(v22 - 1);
              v9.i32[1] = *(v23 - 1);
            }

            v28 = vcgeq_u64(v18, vorrq_s8(v25, xmmword_23A554B60));
            if (vuzp1_s16(*&v18, vmovn_s64(*&v28)).i32[1])
            {
              v21.i32[2] = *v22;
              v9.i32[2] = *v23;
              v21.i32[3] = v22[1];
              v9.i32[3] = v23[1];
            }

            v21 = vaddq_f32(v24, vdivq_f32(v21, v9));
            v15 += 4;
            v22 += 4;
            v23 += 4;
          }

          while (v19 != v15);
          v29 = vbslq_s8(vuzp1q_s32(v26, v28), v21, v24);
          v14 = (vaddv_f32(*v29.i8) + *&v29.i32[2]) + *&v29.i32[3];
        }

        v38 = v14 / 3.0;
        MEMORY[0x23EE87290](v11 + 4 * v12, 1, &v38, v11 + 4 * v12, 1, (v13 - v12));
      }

      v30 = *(this + 20);
      v31 = *this;
      if (v30 < *(*this + 6))
      {
        v32 = &v10[4 * v30];
        v33 = (v11 + 4 * v30);
        do
        {
          v34 = *(a2 + 29);
          v35 = sqrtf(v6[782] / (v34 * (*(a2 + 116) * (*(v6 + 658) * 3.1416)))) * 4.34;
          v36 = expf((((v30 + 0.5) * 6.9) * v34) / *(a2 + a3 + 4976));
          v37 = expf((((v36 * v35) * 12.0) * 2.3026) / 10.0);
          Phase::SpatialModeler::EnergyHistogram::setEnergy(v31, (*v32 * (1.0 / (v37 + 1.0))) + ((1.0 - (1.0 / (v37 + 1.0))) * *v33), a3, v30);
          v31 = *this;
          ++v30;
          ++v32;
          ++v33;
        }

        while (*(*this + 6) > v30);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_23A516AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::TailCorrection::modifyDirectivityHistogram(const float **this, const Phase::SpatialModeler::RayTracerState *a2, const Phase::SpatialModeler::EnergyHistogram *a3, float a4, float a5)
{
  v7 = *(a2 + 4975);
  if (v7)
  {
    v8 = (a2 + 19776);
    v9 = 0.0;
    v10 = *(a2 + 4975);
    do
    {
      v11 = *v8++;
      v9 = v9 + v11;
      --v10;
    }

    while (v10);
    if (v7 != 1)
    {
      v9 = v9 / v7;
    }
  }

  else
  {
    v9 = 0.0;
  }

  v12 = *this;
  v35 = -1.0;
  if ((*this)[5] > v9)
  {
    v35 = floorf(v9 / v12[4]);
  }

  for (i = *(this + 20); *(v12 + 6) > i; ++i)
  {
    v14 = *(a3 + 7);
    if (*(a3 + 36) & 1 | (*(a3 + 6) <= i))
    {
      v15 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
    }

    else
    {
      v15 = (*(a3 + 1) + 4 * (v14 * i));
    }

    v16 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
    if ((v12[9] & 1) == 0)
    {
      v16 = (*(v12 + 1) + 4 * (*(v12 + 7) * i));
    }

    v36 = 0.0;
    __C = 0.0;
    vDSP_sve(v15, 1, &__C, v14);
    vDSP_sve(v16, 1, &v36, *(*this + 7));
    if (v36 <= __C)
    {
      v12 = *this;
    }

    else
    {
      if (*(*this + 28) <= i)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(*this + 15) + 4 * (73 * i);
      }

      v18 = v36 - __C;
      v19 = this[1];
      v38 = 0.0;
      vDSP_sve(v19, 1, &v38, 0x48uLL);
      if (v38 <= 1.1755e-38)
      {
        v29 = (v17 + 32);
        v30 = 0.0;
        v31 = 6;
        do
        {
          v32 = cosf(v30);
          v30 = v30 + 0.5236;
          *v33.i32 = v18 * (((v32 - cosf(v30)) * 0.5) / 12.0);
          v34 = vdupq_lane_s32(v33, 0);
          v29[-2] = v34;
          v29[-1] = v34;
          *v29 = v34;
          v29 += 3;
          --v31;
        }

        while (v31);
      }

      else
      {
        v20 = 0;
        v21 = fminf(fmaxf(i / v35, 0.0), 1.0);
        v22 = (v21 * 0.8) + ((1.0 - v21) * 0.25);
        v23 = 0.0;
        do
        {
          v24 = v23;
          v23 = v23 + 0.5236;
          v25 = cosf(v24);
          v26 = cosf(v23);
          v27 = 0;
          v28 = v22 * (((v25 - v26) * 0.5) / 12.0);
          do
          {
            *(v17 + v27 * 4) = *(v17 + v27 * 4) + (v18 * (v28 + ((1.0 - v22) * v19[v27])));
            ++v27;
          }

          while (v27 != 12);
          ++v20;
          v17 += 48;
          v19 += 12;
        }

        while (v20 != 6);
      }

      v12 = *this;
      *(*(*this + 11) + 4 * i) = 1;
    }
  }
}

void Phase::SpatialModeler::TailCorrection::execute(uint64_t a1, Phase::SpatialModeler::TailCorrection *this, uint64_t a3, float *a4, float a5, float a6)
{
  if (*a1 && Phase::SpatialModeler::TailCorrection::validConfig(this, this))
  {
    std::vector<float>::resize((a1 + 8), 0x48uLL);
    Phase::SpatialModeler::DirectivityHistogram::getNormalizedDirectionalDistribution(*a1, *(a1 + 8), 0x48u);
    v12 = *a1;
    v39 = &unk_284D33B60;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1065353216;
    v44 = 1;
    v45 = 0;
    v46 = 0;
    v48 = 1065353216;
    v49 = 0;
    v47 = 0;
    v50 = 1065353216;
    Phase::SpatialModeler::EnergyHistogram::operator=(&v39, v12);
    v13 = *(this + 4975);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    memset(v38, 0, 28);
    *&v38[28] = v13;
    if (v13)
    {
      bzero(&v32, 4 * v13);
    }

    v14 = v37;
    *(a4 + 4) = v36;
    *(a4 + 5) = v14;
    v15 = *&v38[16];
    *(a4 + 6) = *v38;
    *(a4 + 7) = v15;
    v16 = v33;
    *a4 = v32;
    *(a4 + 1) = v16;
    v17 = *&v34;
    v18 = v35;
    *(a4 + 2) = v34;
    *(a4 + 3) = v18;
    if (*(*a1 + 28) && *(this + 4975))
    {
      v19 = 0;
      v20 = this + 19776;
      do
      {
        if (Phase::SpatialModeler::TailCorrection::prepareEDC(a1, v19))
        {
          valid = Phase::SpatialModeler::TailCorrection::validHistogramRange(a1, this, v19, v17);
          *&v22 = *(*(a1 + 32) + 4 * *(a1 + 80)) - *(*(a1 + 32) + 4 * valid);
          if (*&v22 < 6.0 || (v23 = Phase::SpatialModeler::TailCorrection::linearRegression(a1, valid, v22), v23 == 3.4028e38))
          {
            Phase::SpatialModeler::TailCorrection::calcExtrapolatedDecay(a1, v19, *&v20[4 * v19], *&v20[4 * v19]);
            v26 = 0;
          }

          else
          {
            v24 = -60.0 / v23;
            a4[v19] = v24;
            v25 = *&v20[4 * v19];
            if (v24 >= v25)
            {
              v25 = v24;
            }

            Phase::SpatialModeler::TailCorrection::calcExtrapolatedDecay(a1, v19, v24, v25);
            v26 = 1;
          }

          Phase::SpatialModeler::TailCorrection::modifyHistograms(a1, this, v19, v26);
          v27 = *(a3 + 124);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          memset(v38, 0, 28);
          *&v38[28] = v27;
          if (v27)
          {
            v28 = &v32;
            v29 = a3;
            do
            {
              v30 = *v29++;
              *v28++ = v30 * a6;
              --v27;
            }

            while (v27);
          }

          Phase::SpatialModeler::TailCorrection::totalEnergyCorrectionUsingPrediction(a1, v19, &v32, a5);
        }
      }

      while (++v19 < *(*a1 + 28) && v19 < *(this + 4975));
    }

    Phase::SpatialModeler::TailCorrection::modifyDirectivityHistogram(a1, this, &v39, v17, *&v18);
    v39 = &unk_284D33B60;
    free(v40);
  }
}

void Phase::SpatialModeler::TailCorrection::totalEnergyCorrectionUsingPrediction(uint64_t *a1, unsigned int a2, uint64_t a3, float a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = 0.0;
  if ((*(*a1 + 36) & 1) == 0)
  {
    v10 = *(v8 + 24);
    if (v10)
    {
      v11 = (*(v8 + 8) + 4 * a2);
      v12 = 4 * *(v8 + 28);
      do
      {
        v9 = v9 + *v11;
        v11 = (v11 + v12);
        --v10;
      }

      while (v10);
    }
  }

  v13 = *(a3 + 4 * a2);
  v14 = log10f(v9 / v13) * 10.0;
  v16 = Phase::SpatialModeler::TailCorrection::sMaxEnergyCorrectionFactor(v15);
  v18 = Phase::SpatialModeler::TailCorrection::sMaxEnergyCorrectionFactor(v17);
  v19 = *a1;
  if ((*(*a1 + 36) & 1) == 0)
  {
    v20 = *(v19 + 28);
    if (v20 > a2)
    {
      v21 = *(v19 + 24);
      if (v21)
      {
        v22 = fminf(fmaxf(((v13 * a4) + ((1.0 - a4) * v9)) / v9, 1.0 / v16), v18);
        v23 = (*(v19 + 8) + 4 * a2);
        v24 = 4 * v20;
        do
        {
          *v23 = v22 * *v23;
          v23 = (v23 + v24);
          --v21;
        }

        while (v21);
      }
    }
  }

  if (fabsf(v14) > 6.0)
  {
    ShouldFire = Phase::Throttle::ShouldFire((a1 + 12), 0);
    if (ShouldFire)
    {
      v26 = **(Phase::Logger::GetInstance(ShouldFire) + 1264);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v14;
        v28 = (log10f(v9) * 10.0);
        v29 = log10f(*(a3 + 4 * a2));
        v30 = 136316418;
        v31 = "TailCorrection.cpp";
        v32 = 1024;
        v33 = 354;
        v34 = 2048;
        v35 = v27;
        v36 = 2048;
        v37 = v28;
        v38 = 2048;
        v39 = (v29 * 10.0);
        v40 = 2048;
        v41 = a4;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Tail-correction energy may be inaccurate by %.2f dB. Histogram: %.2f dB, Analytical: %.2f dB. Weighting: %.2f", &v30, 0x3Au);
      }
    }
  }
}

void Phase::SpatialModeler::TailCorrection::executeTargetRt60(uint64_t a1, Phase::SpatialModeler::TailCorrection *this, uint64_t a3, uint64_t a4, float *a5, float a6, float a7)
{
  if (*a1 && Phase::SpatialModeler::TailCorrection::validConfig(this, this))
  {
    std::vector<float>::resize((a1 + 8), 0x48uLL);
    Phase::SpatialModeler::DirectivityHistogram::getNormalizedDirectionalDistribution(*a1, *(a1 + 8), 0x48u);
    v14 = *a1;
    v39 = &unk_284D33B60;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1065353216;
    v44 = 1;
    v45 = 0;
    v46 = 0;
    v48 = 1065353216;
    v49 = 0;
    v47 = 0;
    v50 = 1065353216;
    Phase::SpatialModeler::EnergyHistogram::operator=(&v39, v14);
    v15 = *(a4 + 124);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    memset(v38, 0, 28);
    *&v38[28] = v15;
    if (v15)
    {
      bzero(&v32, 4 * v15);
    }

    v16 = v37;
    *(a5 + 4) = v36;
    *(a5 + 5) = v16;
    v17 = *&v38[16];
    *(a5 + 6) = *v38;
    *(a5 + 7) = v17;
    v18 = v33;
    *a5 = v32;
    *(a5 + 1) = v18;
    v19 = *&v34;
    v20 = v35;
    *(a5 + 2) = v34;
    *(a5 + 3) = v20;
    if (*(*a1 + 28) && *(a4 + 124))
    {
      v21 = 0;
      do
      {
        if (Phase::SpatialModeler::TailCorrection::prepareEDC(a1, v21))
        {
          valid = Phase::SpatialModeler::TailCorrection::validHistogramRange(a1, this, v21, v19);
          *&v23 = *(*(a1 + 32) + 4 * *(a1 + 80)) - *(*(a1 + 32) + 4 * valid);
          if (*&v23 < 6.0 || (v24 = Phase::SpatialModeler::TailCorrection::linearRegression(a1, valid, v23), v24 == 3.4028e38))
          {
            Phase::SpatialModeler::TailCorrection::calcExtrapolatedDecay(a1, v21, *(a4 + 4 * v21), *(a4 + 4 * v21));
            v26 = 0;
          }

          else
          {
            v25 = -60.0 / v24;
            a5[v21] = v25;
            Phase::SpatialModeler::TailCorrection::calcExtrapolatedDecay(a1, v21, v25, *(a4 + 4 * v21));
            v26 = 1;
          }

          Phase::SpatialModeler::TailCorrection::modifyHistograms(a1, this, v21, v26);
          v27 = *(a3 + 124);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          memset(v38, 0, 28);
          *&v38[28] = v27;
          if (v27)
          {
            v28 = &v32;
            v29 = a3;
            do
            {
              v30 = *v29++;
              *v28++ = v30 * a7;
              --v27;
            }

            while (v27);
          }

          Phase::SpatialModeler::TailCorrection::totalEnergyCorrectionUsingPrediction(a1, v21, &v32, a6);
        }
      }

      while (++v21 < *(*a1 + 28) && v21 < *(a4 + 124));
    }

    Phase::SpatialModeler::TailCorrection::modifyDirectivityHistogram(a1, this, &v39, v19, *&v20);
    v39 = &unk_284D33B60;
    free(v40);
  }
}

void sub_23A517700(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>>>::~__hash_table((v1 + 24));
  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(v3);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>>>::~__hash_table(v2);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v1);
  _Unwind_Resume(a1);
}

void Phase::Controller::TapManager::~TapManager(Phase::Controller::TapManager *this)
{
  v1 = this;
  v25 = *MEMORY[0x277D85DE8];
  *this = &unk_284D37E50;
  v2 = *(this + 26);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v2[4] + 16);
      if (v6)
      {
        v7 = v5;
        do
        {
          *__p = *(v2 + 1);
          v8 = v6[2];
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
          v10 = v9 + 1;
          if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-v3 >> 3) > v10)
          {
            v10 = 0x5555555555555556 * (-v3 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v3 >> 3) >= 0x555555555555555)
          {
            v11 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            if (v11 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v12 = 24 * v9;
          *v12 = *__p;
          *(v12 + 16) = v8;
          v7 = 24 * v9 + 24;
          v13 = (v12 + 24 * ((v4 - v3) / -24));
          memcpy(v13, v3, v4 - v3);
          if (v3)
          {
            operator delete(v3);
          }

          v3 = v13;
          v6 = *v6;
          v5 = v7;
          v4 = v7;
        }

        while (v6);
      }

      else
      {
        v7 = v4;
      }

      v2 = *v2;
      v4 = v7;
    }

    while (v2);
    if (v3 == v5)
    {
      v1 = this;
    }

    else
    {
      v14 = v3;
      v1 = this;
      do
      {
        Phase::Controller::TapManager::DeRegisterTapReceiver(this, *v14, v14[1], v14[2]);
        v14 += 3;
      }

      while (v14 != v5);
    }
  }

  else
  {
    v3 = 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = v1 + 56;
  v24 = 0;
  while (1)
  {
    v15 = *v15;
    if (!v15)
    {
      break;
    }

    std::vector<Phase::UniqueObjectId>::push_back[abi:ne200100](__p, v15 + 1);
  }

  v16 = __p[0];
  v17 = __p[1];
  while (v16 != v17)
  {
    Phase::Controller::TapManager::RemoveTapSourceObject(v1, *v16, v16[1]);
    v16 += 2;
  }

  if (*(v1 + 27))
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>>>::__deallocate_node(v1 + 192, *(v1 + 26));
    *(v1 + 26) = 0;
    v18 = *(v1 + 25);
    if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        *(*(v1 + 24) + 8 * i) = 0;
      }
    }

    *(v1 + 27) = 0;
  }

  if (*(v1 + 8))
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>>>::__deallocate_node(v1 + 40, *(v1 + 7));
    *(v1 + 7) = 0;
    v20 = *(v1 + 6);
    if (v20)
    {
      for (j = 0; j != v20; ++j)
      {
        *(*(v1 + 5) + 8 * j) = 0;
      }
    }

    *(v1 + 8) = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v3)
  {
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>>>::~__hash_table(v1 + 192);
  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(v1 + 80);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>>>::~__hash_table(v1 + 40);

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v1);
}

{
  Phase::Controller::TapManager::~TapManager(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A517A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (v12)
  {
    operator delete(v12);
  }

  __clang_call_terminate(exception_object);
}

void Phase::Controller::TapManager::DeRegisterTapReceiver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v7[1] = a3;
  if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 192), v7))
  {
    operator new();
  }

  v6 = **(Phase::Logger::GetInstance(0) + 960);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315906;
    buf_4 = "TapManager.mm";
    v10 = 1024;
    v11 = 222;
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Couldn't DeRegister receiver tapId %llu for client %lu because it doesn't exist", &buf, 0x26u);
  }
}

void sub_23A518050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14)
{
  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  std::unique_ptr<Phase::Controller::TapReceiverObject>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *Phase::Controller::TapManager::RemoveTapSourceObject(Phase::Controller::TapManager *a1, unint64_t a2, unint64_t a3)
{
  v6.mStorage[0] = a2;
  v6.mStorage[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 5, &v6);
  if (result)
  {
    v5 = result;
    Phase::Controller::TapManager::CheckUnregisterTap(a1, v6);
    return std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>>>::erase(a1 + 5, v5);
  }

  return result;
}

void Phase::Controller::TapManager::RegisterTapReceiver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v7[1] = a3;
  v5 = a5;
  v6 = a4;
  if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 192), v7))
  {
    operator new();
  }

  operator new();
}

void sub_23A518560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<Phase::Controller::TapReceiverObject>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<Phase::Controller::TapReceiverObject>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v2);
    MEMORY[0x23EE864A0](v3, 0x10A0C40D806319BLL);
  }

  return a1;
}

void *Phase::Controller::TapManager::CheckRegisterTap(Phase::Controller::TapManager *this, UniqueObjectId a2)
{
  v4 = a2;
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(this + 24, &v5);
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 5, &v4);
    if (result)
    {
      return (*(*result[4] + 24))(result[4]);
    }
  }

  return result;
}

void *Phase::Controller::TapManager::CheckUnregisterTap(Phase::Controller::TapManager *this, UniqueObjectId a2)
{
  v4 = a2;
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(this + 24, &v5);
  if (!result)
  {
    result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 5, &v4);
    if (result)
    {
      return (*(*result[4] + 32))(result[4]);
    }
  }

  return result;
}

void Phase::Controller::TapManager::CreatePreSpatialTap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *&v5[0] = a2;
  *(&v5[0] + 1) = a3;
  v3 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v5);
  if (!v3)
  {
    v5[1] = v5[0];
    operator new();
  }

  v4 = **(Phase::Logger::GetInstance(v3) + 960);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "TapManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 252;
    v7 = 2048;
    v8 = *&v5[0];
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Couldn't create source tapId %llu because it already exists.", buf, 0x1Cu);
  }
}

void sub_23A518D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<Phase::Controller::PreSpatialTapSourceObject>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

Phase::Controller::ClientTapRegistryProxy *Phase::Controller::TapManager::DVMCallback(Phase::Controller::TapManager *this, UniqueObjectId a2, float *a3, uint64_t a4)
{
  v5 = (this + 96);
  atomic_fetch_add(this + 24, 1u);
  result = atomic_load(this + 11);
  if (result)
  {
    v9 = a2.mStorage[1];
    v10 = a2.mStorage[0];
    result = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(result, a2.mStorage[0], a2.mStorage[1]);
    if (v11)
    {
      v12 = v11;
      atomic_fetch_add(v11, 1u);
      v13 = *(v11 + 24);
      atomic_fetch_add(this + 24, 0xFFFFFFFF);
      result = *(this + 33);
      if (result)
      {
        v15.mStorage[0] = v10;
        v15.mStorage[1] = v9;
        result = Phase::Controller::ClientTapRegistryProxy::IORender(result, v15, &v14, a4, v13 + 1, a3);
      }

      v5 = v12;
    }
  }

  atomic_fetch_add(v5, 0xFFFFFFFF);
  return result;
}

Phase::Controller::PreSpatialTapSourceObject **std::unique_ptr<Phase::Controller::PreSpatialTapSourceObject>::~unique_ptr[abi:ne200100](Phase::Controller::PreSpatialTapSourceObject **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::PreSpatialTapSourceObject::~PreSpatialTapSourceObject(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void *Phase::Controller::TapManager::RegisterSubmix(Phase::Controller::TapManager *this, UniqueObjectId a2, UniqueObjectId a3)
{
  v3 = a3.mStorage[1];
  v4 = a3.mStorage[0];
  v6 = a2;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 5, &v6);
  if (result)
  {
    return (*(*result[4] + 40))(result[4], v4, v3);
  }

  return result;
}

void *Phase::Controller::TapManager::DeRegisterSubmix(Phase::Controller::TapManager *this, UniqueObjectId a2, UniqueObjectId a3)
{
  v3 = a3.mStorage[1];
  v4 = a3.mStorage[0];
  v6 = a2;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 5, &v6);
  if (result)
  {
    return (*(*result[4] + 56))(result[4], v4, v3);
  }

  return result;
}

void *Phase::Controller::TapManager::RegisterSource(Phase::Controller::TapManager *this, UniqueObjectId a2, Handle64 a3)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 5, &v5);
  if (result)
  {
    return (*(*result[4] + 48))(result[4], a3.mData);
  }

  return result;
}

void *Phase::Controller::TapManager::DeRegisterSource(Phase::Controller::TapManager *this, UniqueObjectId a2, Handle64 a3)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 5, &v5);
  if (result)
  {
    return (*(*result[4] + 64))(result[4], a3.mData);
  }

  return result;
}

uint64_t Phase::Controller::TapManager::Update(Phase::Controller::TapManager *this)
{
  result = Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  for (i = *(this + 7); i; i = *i)
  {
    result = (*(*i[4] + 88))(i[4]);
  }

  return result;
}

void *Phase::Controller::TapManager::EngineStartNotify(void *this)
{
  v1 = this[7];
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(v1 + 1);
      this = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(v2 + 24, &v3);
      if (this)
      {
        this = (*(*v1[4] + 24))(v1[4]);
      }

      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = atomic_load((a1 + 8));
    if (v3)
    {
      v4 = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(v3);
      MEMORY[0x23EE864A0](v4, 0x1060C402CF69088);
    }

    std::mutex::~mutex((a1 + 48));
    v6 = (a1 + 24);
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    return a1;
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>,void,0>(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>,void,0>(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<Phase::Controller::TapReceiverObject>::~unique_ptr[abi:ne200100](v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unordered_map<unsigned long,unsigned long long>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[2];
      if (*&v6 <= v5)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
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

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (v10[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::__emplace_unique_key_args<unsigned long,unsigned long &,unsigned long long &>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::TapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::_addOrReplace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 48));
  v8 = atomic_load((a1 + 8));
  v9 = *a1 + 1;
  *a1 = v9;
  if (v8)
  {
    v10 = 16 * v9;
    v11 = *(v8 + 8);
    if (v10 / v11 < 0xB)
    {
      goto LABEL_6;
    }

    v12 = 2 * v11;
  }

  else
  {
    v12 = 8;
  }

  v8 = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::rehash(a1, v12);
LABEL_6:
  if ((caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(v8, a2, a3) & 1) == 0)
  {
    operator new();
  }

  *(v13 + 24) = a4;
  --*a1;

  std::mutex::unlock((a1 + 48));
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<Phase::Controller::TapReceiverObject>::~unique_ptr[abi:ne200100](v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>>>::__emplace_unique_key_args<Phase::UniqueObjectId,Phase::UniqueObjectId&,std::unique_ptr<Phase::Controller::TapReceiverObject>>(void *result, void *a2)
{
  v2 = 0;
  v3 = 0xCBF29CE484222325;
  do
  {
    v3 = 0x100000001B3 * (v3 ^ *(a2 + v2++));
  }

  while (v2 != 16);
  v4 = result[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*result + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return result;
}

void sub_23A519E88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapReceiverObject>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::__bind<void (Phase::Controller::TapManager::*)(Phase::UniqueObjectId,float *,unsigned long),Phase::Controller::TapManager*,Phase::UniqueObjectId&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (Phase::Controller::TapManager::*)(Phase::UniqueObjectId,float *,unsigned long),Phase::Controller::TapManager*,Phase::UniqueObjectId&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(float *,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D37E80;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (Phase::Controller::TapManager::*)(Phase::UniqueObjectId,float *,unsigned long),Phase::Controller::TapManager*,Phase::UniqueObjectId&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (Phase::Controller::TapManager::*)(Phase::UniqueObjectId,float *,unsigned long),Phase::Controller::TapManager*,Phase::UniqueObjectId&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(float *,unsigned long)>::operator()(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, a1[4], a1[5], *a2, *a3);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    __p[4] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::TapSourceObjectInterface>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}