uint64_t DSPGraph::Interpreter::parseUInt64(DSPGraph::Interpreter *this, const char **a2, unint64_t *a3)
{
  DSPGraph::skipspace(this, a2);
  __endptr = 0;
  v5 = strtoul(*this, &__endptr, 10);
  v6 = __endptr;
  if (__endptr == *this)
  {
    return 0;
  }

  v7 = v5;
  if (v5 == -1)
  {
    if (*__error())
    {
      return 0;
    }
  }

  *a2 = v7;
  *this = v6;
  return 1;
}

void DSPGraph::Box::Box(DSPGraph::Box *this, unsigned int a2, unsigned int a3)
{
  *(this + 4) = 0u;
  v6 = (this + 64);
  *(this + 7) = 0u;
  *this = &unk_1F0338050;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 8) = 0u;
  *(this + 200) = 0u;
  *(this + 36) = 1065353216;
  *(this + 31) = 850045863;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  os_unfair_lock_lock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  if (qword_1EAD2E508)
  {
    v7 = std::__shared_weak_count::lock(qword_1EAD2E508);
    if (v7)
    {
      v8 = v7;
      v9 = qword_1EAD2E500;
      if (qword_1EAD2E500)
      {
        v10 = (this + 88);
        os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        *(this + 72) = v9;
        v11 = *(this + 73);
        *(this + 73) = v8;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        *(this + 74) = &caulk::inplace_function_detail::rt_vtable<void,caulk::concurrent::details::skiplist_node<unsigned int,DSPGraph::Analyzer *>::layout_vk const&>::empty;
        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine();
        v12 = 0;
        *(this + 42) = 0;
        *(this + 87) = 167837706;
        *(this + 86) = 0;
        *(this + 45) = 0;
        *(this + 46) = 0;
        *(this + 44) = 0;
        do
        {
          atomic_store(0, (this + v12 + 360));
          atomic_store(0, (this + v12 + 368));
          v12 += 16;
        }

        while (v12 != 160);
        *(this + 65) = 0;
        *(this + 133) = 16908289;
        *(this + 132) = -1;
        *(this + 67) = 0;
        *(this + 69) = 0;
        *(this + 68) = 0;
        atomic_store(0, this + 68);
        atomic_store(0, this + 69);
        for (i = 360; i != 520; i += 16)
        {
          atomic_store(this + 520, (this + i));
        }

        __dmb(0xBu);
        *(this + 83) = 0;
        *(this + 84) = 850045863;
        *(this + 680) = 0u;
        *(this + 696) = 0u;
        *(this + 712) = 0u;
        *(this + 728) = 0u;
        *(this + 372) = 1;
        *(this + 746) = 0;
        *(this + 752) = 0;
        *(this + 760) = 0;
        *(this + 192) = 0;
        if (a2 > ((*(this + 10) - *(this + 8)) >> 5))
        {
          v14 = *(this + 9);
          v43 = v6;
          std::allocator<DSPGraph::InputPort>::allocate_at_least[abi:ne200100](a2);
        }

        if (a3 > ((*(this + 13) - *(this + 11)) >> 5))
        {
          v15 = *(this + 12);
          v43 = (this + 88);
          std::allocator<DSPGraph::OutputPort>::allocate_at_least[abi:ne200100](a3);
        }

        if (a2)
        {
          v16 = 0;
          v17 = *(this + 9);
          do
          {
            v18 = *(this + 10);
            if (v17 >= v18)
            {
              v19 = *v6;
              v20 = (v17 - *v6) >> 5;
              v21 = v20 + 1;
              if ((v20 + 1) >> 59)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v22 = v18 - v19;
              if (v22 >> 4 > v21)
              {
                v21 = v22 >> 4;
              }

              if (v22 >= 0x7FFFFFFFFFFFFFE0)
              {
                v23 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v21;
              }

              v43 = v6;
              if (v23)
              {
                std::allocator<DSPGraph::InputPort>::allocate_at_least[abi:ne200100](v23);
              }

              v24 = 32 * v20;
              v40 = 0;
              v41 = v24;
              *(&v42 + 1) = 0;
              *(v24 + 8) = this;
              *(v24 + 16) = 0;
              *(v24 + 24) = v16;
              *(v24 + 28) = 0;
              *v24 = &unk_1F033ABE0;
              *&v42 = 32 * v20 + 32;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::InputPort>,DSPGraph::InputPort*>(v19, v17, 0);
              v25 = *(this + 8);
              *(this + 8) = 0;
              v26 = *(this + 10);
              v38 = v42;
              *(this + 72) = v42;
              *&v42 = v25;
              *(&v42 + 1) = v26;
              v40 = v25;
              v41 = v25;
              std::__split_buffer<DSPGraph::InputPort>::~__split_buffer(&v40);
              v17 = v38;
            }

            else
            {
              *(v17 + 8) = this;
              *(v17 + 16) = 0;
              *(v17 + 24) = v16;
              *(v17 + 28) = 0;
              *v17 = &unk_1F033ABE0;
              v17 += 32;
              *(this + 9) = v17;
            }

            *(this + 9) = v17;
            ++v16;
          }

          while (a2 != v16);
        }

        if (a3)
        {
          v27 = 0;
          v28 = *(this + 12);
          do
          {
            v29 = *(this + 13);
            if (v28 >= v29)
            {
              v30 = *v10;
              v31 = (v28 - *v10) >> 5;
              v32 = v31 + 1;
              if ((v31 + 1) >> 59)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v33 = v29 - v30;
              if (v33 >> 4 > v32)
              {
                v32 = v33 >> 4;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFE0)
              {
                v34 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              v43 = (this + 88);
              if (v34)
              {
                std::allocator<DSPGraph::OutputPort>::allocate_at_least[abi:ne200100](v34);
              }

              v35 = 32 * v31;
              v40 = 0;
              v41 = v35;
              *(&v42 + 1) = 0;
              *(v35 + 8) = this;
              *(v35 + 16) = 0;
              *(v35 + 24) = v27;
              *v35 = &unk_1F033AC80;
              *&v42 = 32 * v31 + 32;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::OutputPort>,DSPGraph::OutputPort*>(v30, v28, 0);
              v36 = *(this + 11);
              *(this + 11) = 0;
              v37 = *(this + 13);
              v39 = v42;
              *(this + 6) = v42;
              *&v42 = v36;
              *(&v42 + 1) = v37;
              v40 = v36;
              v41 = v36;
              std::__split_buffer<DSPGraph::InputPort>::~__split_buffer(&v40);
              v28 = v39;
            }

            else
            {
              *(v28 + 8) = this;
              *(v28 + 16) = 0;
              *(v28 + 24) = v27;
              *v28 = &unk_1F033AC80;
              v28 += 32;
              *(this + 12) = v28;
            }

            *(this + 12) = v28;
            ++v27;
          }

          while (a3 != v27);
        }

        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  operator new();
}

void sub_18F655BA8(_Unwind_Exception *a1, uint64_t a2, void **a3, void **a4, void **a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void **);
  std::__split_buffer<DSPGraph::InputPort>::~__split_buffer(va1);
  std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Box>>::reset[abi:ne200100]((v9 + 736), 0);
  std::mutex::~mutex((v9 + 672));
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](v9 + 640);
  caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(v9 + 336);
  caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(v9 + 560);
  v13 = a3;
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](va);
  std::mutex::~mutex(v10);
  v13 = a4;
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](va);
  v13 = a6;
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](va);
  v13 = a5;
  std::vector<DSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](va);
  v12 = *(v9 + 152);
  if (v12)
  {
    *(v9 + 160) = v12;
    operator delete(v12);
  }

  std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v9 + 55) < 0)
  {
    operator delete(*(v9 + 32));
  }

  _Unwind_Resume(a1);
}

void caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(&caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine);
  }
}

void std::allocator<DSPGraph::OutputPort>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<DSPGraph::InputPort>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::OutputPort>,DSPGraph::OutputPort*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_1F033AC30;
      v6 = *(v5 + 1);
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 8) = v6;
      *a3 = &unk_1F033AC80;
      a3 += 32;
      v5 += 4;
      v4 += 32;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)();
      v7 += 4;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::lf_read_synchronized_write(caulk::concurrent::details::lf_read_sync_write_impl *a1)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(a1);
  *(result + 8) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t DSPGraph::Graph::addBox(uint64_t result, uint64_t a2)
{
  v2 = (result + 24);
  do
  {
    v2 = *v2;
    if (!v2)
    {
      operator new();
    }
  }

  while (v2[2] != a2);
  return result;
}

void std::allocator<DSPGraph::InputPort>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::InputPort>,DSPGraph::InputPort*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_1F033AC30;
      v6 = *(v5 + 1);
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 8) = v6;
      *a3 = &unk_1F033ABE0;
      *(a3 + 28) = *(v5 + 7);
      v5 += 4;
      a3 += 32;
      v4 += 32;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)();
      v7 += 4;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

void DSPGraph::Interpreter::parseBoxCommand(DSPGraph::Interpreter *this, const char **a2, unint64_t *a3)
{
  v32 = 0;
  DSPGraph::Interpreter::parseUInt64(a2, &v32, a3);
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, v30) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(__p, "parseBoxCommand");
    DSPGraph::strprintf("expected name in 'box' command: %s", v16, *a2);
  }

  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v21 = *a2;
  if (DSPGraph::Interpreter::parseString(&v21, v28) && DSPGraph::NewBoxRegistry::has(this + 16, v28))
  {
    *a2 = v21;
    v6 = 1;
  }

  else
  {
    if (!DSPGraph::Interpreter::parseCompDesc(a2, v22, v5))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v24, "parseBoxCommand");
      DSPGraph::strprintf("expected class name or component description in 'box' command: %s", v17, *a2);
    }

    v6 = 0;
  }

  v19 = 0;
  if ((DSPGraph::Interpreter::parseUInt32(a2, (&v19 + 4), &v5->componentType) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v24, "parseBoxCommand");
    std::string::basic_string[abi:ne200100]<0>(&v20, "expected number of inputs in 'box' command");
    DSPGraph::ThrowException(1886548769, __p, 912, &v24, &v20);
  }

  if ((DSPGraph::Interpreter::parseUInt32(a2, &v19, v7) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v24, "parseBoxCommand");
    std::string::basic_string[abi:ne200100]<0>(&v20, "expected number of outputs in 'box' command");
    DSPGraph::ThrowException(1886548769, __p, 915, &v24, &v20);
  }

  if (v6)
  {
    if (!DSPGraph::NewBoxRegistry::has(this + 16, v28))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v24, "parseBoxCommand");
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v20, &v18, "' not found");
      DSPGraph::ThrowException(1852204065, __p, 921, &v24, &v20);
    }

    v8 = std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<std::string>(this + 3, v28);
    if (v8)
    {
      v9 = std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(v8[8], SHIDWORD(v19), v19);
    }

    else
    {
      v9 = 0;
    }

    v13 = *(this + 1);
    if (v31 >= 0)
    {
      v14 = v30;
    }

    else
    {
      v14 = v30[0];
    }
  }

  else
  {
    *__p = *v22;
    v26 = v23;
    if (!std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<AudioComponentDescription>(this + 8, __p))
    {
      v11 = *(this + 1);
      if (v31 >= 0)
      {
        v12 = v30;
      }

      else
      {
        v12 = v30[0];
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v12);
      DSPGraph::Graph::add(v11);
    }

    v10 = std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<AudioComponentDescription>(this + 8, v22);
    if (v10)
    {
      v9 = std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(v10[8], SHIDWORD(v19), v19);
    }

    else
    {
      v9 = 0;
    }

    v13 = *(this + 1);
    if (v31 >= 0)
    {
      v14 = v30;
    }

    else
    {
      v14 = v30[0];
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v14);
  DSPGraph::Graph::add(v13, v9);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *(this + 25);
  if (v15 != *(this + 24))
  {
    DSPGraph::Box::setSubset(v9, *(v15 - 8));
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }
}

void sub_18F65714C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 81) < 0)
  {
    operator delete(*(v39 - 104));
  }

  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parseUInt32(DSPGraph::Interpreter *this, const char **a2, unsigned int *a3)
{
  v5 = *this;
  v7 = 0;
  v8 = v5;
  result = DSPGraph::Interpreter::parseUInt64(&v8, &v7, a3);
  if (result)
  {
    if (HIDWORD(v7))
    {
      return 0;
    }

    else
    {
      *a2 = v7;
      *this = v8;
      return 1;
    }
  }

  return result;
}

BOOL DSPGraph::Interpreter::parseCompDesc(DSPGraph::Interpreter *this, const char **a2, AudioComponentDescription *a3)
{
  DSPGraph::skipspace(this, a2);
  v15 = *this;
  DSPGraph::skipspace(&v15, v5);
  v6 = *v15;
  if (v6 == 40)
  {
    ++v15;
    if ((DSPGraph::Interpreter::parse4cc(&v15, a2, 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v13, "parseCompDesc");
      std::string::basic_string[abi:ne200100]<0>(&v12, "expected component type or subtype");
      DSPGraph::ThrowException(1886548769, &v14, 513, &v13, &v12);
    }

    if ((DSPGraph::Interpreter::parse4cc(&v15, (a2 + 4), 1) & 1) == 0)
    {
      v7 = *a2;
      *a2 = 1635083896;
      *(a2 + 1) = v7;
    }

    if ((DSPGraph::Interpreter::parse4cc(&v15, a2 + 1, 1) & 1) == 0)
    {
      *(a2 + 2) = 1634758764;
    }

    DSPGraph::skipspace(&v15, v8);
    v9 = v15;
    if (*v15 != 41)
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v13, "parseCompDesc");
      DSPGraph::strprintf("expected ')' at end of component description, got '%c'", v11, *v9);
    }

    *this = v15 + 1;
  }

  return v6 == 40;
}

void sub_18F657444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parse4cc(DSPGraph::Interpreter *this, const char **a2, unsigned int *a3)
{
  v3 = a3;
  DSPGraph::skipspace(this, a2);
  if (v3)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E9830];
    while (1)
    {
      v8 = DSPGraph::is4ccChar(*(*this + v6));
      v10 = *this;
      if (!v8)
      {
        break;
      }

      v11 = v10[v6];
      if ((v11 & 0x80000000) != 0)
      {
        v12 = __maskrune(v11, 0x100uLL);
      }

      else
      {
        v12 = *(v7 + 4 * v11 + 60) & 0x100;
      }

      ++v6;
      if (v12)
      {
        goto LABEL_15;
      }
    }

    v19 = 0;
    v20 = v10;
    if (DSPGraph::Interpreter::parseUInt64(&v20, &v19, v9))
    {
      v14 = v19;
      if (!HIDWORD(v19))
      {
        v15 = v20;
LABEL_20:
        *a2 = v14;
        *this = v15;
        return 1;
      }
    }
  }

  else
  {
    v13 = **this;
    if ((v13 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x400) != 0)
    {
      return 0;
    }
  }

LABEL_15:
  v14 = 0;
  v15 = *this;
  v16 = 4;
  while (1)
  {
    v17 = *v15;
    result = DSPGraph::is4ccChar(*v15);
    if (!result)
    {
      return result;
    }

    ++v15;
    v14 = v17 | (v14 << 8);
    if (!--v16)
    {
      if ((DSPGraph::is4ccChar(*v15) & 1) == 0)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }
}

uint64_t DSPGraph::is4ccChar(unsigned int this)
{
  if (this >= 0x80)
  {
    result = __maskrune(this, 0x40000uLL);
    if (!result)
    {
      return result;
    }

    if (!__maskrune(this, 0x4000uLL))
    {
      return memchr("()[]{};", this, 9uLL) == 0;
    }

    return 0;
  }

  v3 = *(MEMORY[0x1E69E9830] + 4 * this + 60);
  if ((v3 & 0x40000) == 0 || (v3 & 0x4000) != 0)
  {
    return 0;
  }

  return memchr("()[]{};", this, 9uLL) == 0;
}

void DSPGraph::Graph::add(uint64_t a1)
{
  if (*(a1 + 761) != 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v3, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v2, "add");
  std::string::basic_string[abi:ne200100]<0>(&v1, "graph is configured");
  DSPGraph::ThrowException(1667655457, &v3, 976, &v2, &v1);
}

void sub_18F657790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<AudioComponentDescription>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] + *a2 + a2[2];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] + *a2 + a2[2];
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == *a2 && *(result + 6) == a2[2])
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void DSPGraph::AUBox::open(DSPGraph::AUBox *this)
{
  if (*(this + 106))
  {
    return;
  }

  Next = AudioComponentFindNext(0, (this + 824));
  if (!Next)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "open");
    std::operator+<char>();
    DSPGraph::ThrowException(1633906209, &v19, 1930, &v18, &v17);
  }

  v3 = (this + 848);
  v4 = AudioComponentInstanceNew(Next, this + 106);
  if (v4)
  {
    v13 = v4;
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "open");
    std::operator+<char>();
    DSPGraph::ThrowException(v13, &v19, 1935, &v18, &v17);
  }

  if (!*v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "open");
    std::operator+<char>();
    DSPGraph::ThrowException(1633906209, &v19, 1938, &v18, &v17);
  }

  v5 = AudioComponentInstanceCanDo(*v3, 20) && ((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) == 0x20 && ((*(this + 12) - *(this + 11)) & 0x1FFFFFFFE0) == 32;
  *(this + 856) = v5;
  v6 = this + 32;
  if ((*(this + 55) & 0x80000000) == 0)
  {
    v7 = strlen(this + 32);
    goto LABEL_12;
  }

  v6 = *v6;
  v7 = strlen(v6);
  if (v6)
  {
LABEL_12:
    v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
    cf = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    goto LABEL_13;
  }

  v8 = 0;
  cf = 0;
LABEL_13:
  v15 = v8;
  (*(*this + 312))(this, 54, 0, 0, 8, &v15);
  v9 = (*(this + 9) - *(this + 8)) >> 5;
  v10 = (*(this + 12) - *(this + 11)) >> 5;
  v22 = v10;
  v23 = v9;
  v21 = 0;
  v20 = 4;
  (*(*this + 304))(this, 11, 1, 0, &v20, &v21 + 4);
  (*(*this + 304))(this, 11, 2, 0, &v20, &v21);
  if (HIDWORD(v21) != v9)
  {
    v11 = (*(*this + 312))(this, 11, 1, 0, 4, &v23);
    if (v11)
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "setElementCountOnUnit");
      std::string::basic_string[abi:ne200100]<0>(&v17, "setProperty failed");
      DSPGraph::ThrowException(v11, &v19, 2065, &v18, &v17);
    }
  }

  if (v21 != v10)
  {
    v12 = (*(*this + 312))(this, 11, 2, 0, 4, &v22);
    if (v12)
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "setElementCountOnUnit");
      std::string::basic_string[abi:ne200100]<0>(&v17, "setProperty failed");
      DSPGraph::ThrowException(v12, &v19, 2072, &v18, &v17);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_18F657D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<std::string>(void *a1, void *a2)
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
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
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

uint64_t DSPGraph::Graph::add(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "add");
    std::string::basic_string[abi:ne200100]<0>(&v4, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v6, 990, &v5, &v4);
  }

  DSPGraph::Graph::addBox(a1, a2);
  return a2;
}

void sub_18F657FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseNamedFormatCommand(DSPGraph::Interpreter *this, const char **a2)
{
  memset(&v9, 0, 24);
  if ((DSPGraph::Interpreter::parseString(a2, &v9) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "parseNamedFormatCommand");
    std::string::basic_string[abi:ne200100]<0>(&v7, "named format : expected name.");
    DSPGraph::ThrowException(1886548769, v5, 1197, &v8, &v7);
  }

  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  DWORD2(v6) = 1;
  if ((DSPGraph::Interpreter::parseFormat(a2, v5) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "parseNamedFormatCommand");
    std::string::basic_string[abi:ne200100]<0>(&v4, "named format : expected format.");
    DSPGraph::ThrowException(1886548769, &v8, 1202, &v7, &v4);
  }

  DSPGraph::Graph::setFormat(*(this + 1), &v9, v5);
  if (SHIBYTE(v9.mFramesPerPacket) < 0)
  {
    operator delete(*&v9.mSampleRate);
  }
}

void sub_18F6581C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v31 - 41) < 0)
  {
    operator delete(*(v31 - 64));
  }

  if (*(v31 - 17) < 0)
  {
    operator delete(*(v31 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parseFormat(DSPGraph *a1, uint64_t a2)
{
  DSPGraph::skipspace(a1, a2);
  v4 = *a1;
  v5 = **a1;
  if (v5 == 40)
  {
    v43 = (v4 + 1);
    HIBYTE(v42) = 1;
    LODWORD(v42) = 0;
    if (!DSPGraph::Interpreter::parse4cc(&v43, &v42, 0))
    {
      goto LABEL_17;
    }

    if (v42 == 1819304813)
    {
      v7 = 0;
      LODWORD(v42) = 0;
      goto LABEL_18;
    }

    if (v42 == 1718773105)
    {
      LODWORD(v42) = 0;
      v7 = 1;
    }

    else
    {
LABEL_17:
      v7 = 0;
    }

LABEL_18:
    *v37 = v43;
    v41.__r_.__value_.__r.__words[0] = 0;
    if (!DSPGraph::Interpreter::parseUInt64(v37, &v41.__r_.__value_.__l.__data_, v6) || (data = v41.__r_.__value_.__l.__data_, HIDWORD(v41.__r_.__value_.__r.__words[0])) || (v43 = *v37, !v41.__r_.__value_.__r.__words[0]))
    {
      std::string::basic_string[abi:ne200100]<0>(v37, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v41, "parseParenFormat");
      std::string::basic_string[abi:ne200100]<0>(&v40, "expected non-zero sample rate");
      DSPGraph::ThrowException(1886548769, v37, 556, &v41, &v40);
    }

    v16 = v42;
    if (v42)
    {
      v41.__r_.__value_.__r.__words[0] = 0;
      if (!DSPGraph::Interpreter::parseUInt64(v37, &v41.__r_.__value_.__l.__data_, v14) || (v18 = v41.__r_.__value_.__l.__data_, HIDWORD(v41.__r_.__value_.__r.__words[0])) || (v43 = *v37, !DSPGraph::Interpreter::parserInterleavedFlag(&v43, (&v42 + 7), v17)) || (*v37 = v43, v41.__r_.__value_.__r.__words[0] = 0, !DSPGraph::Interpreter::parseUInt64(v37, &v41.__r_.__value_.__l.__data_, v19)) || (v21 = v41.__r_.__value_.__l.__data_, HIDWORD(v41.__r_.__value_.__r.__words[0])) || (v41.__r_.__value_.__r.__words[0] = 0, !DSPGraph::Interpreter::parseUInt64(v37, &v41.__r_.__value_.__l.__data_, v20)) || (v23 = v41.__r_.__value_.__l.__data_, HIDWORD(v41.__r_.__value_.__r.__words[0])))
      {
        std::string::basic_string[abi:ne200100]<0>(v37, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v41, "parseParenFormat");
        std::string::basic_string[abi:ne200100]<0>(&v40, "constant bit rate formats must have a block size and bytes per packet.");
        DSPGraph::ThrowException(1718449215, v37, 561, &v41, &v40);
      }

      v43 = *v37;
      goto LABEL_39;
    }

    v41.__r_.__value_.__r.__words[0] = 0;
    if (!DSPGraph::Interpreter::parseUInt64(v37, &v41.__r_.__value_.__l.__data_, v14) || (v18 = v41.__r_.__value_.__l.__data_, HIDWORD(v41.__r_.__value_.__r.__words[0])))
    {
      v23 = 0;
      v18 = 1;
    }

    else
    {
      v43 = *v37;
      if (DSPGraph::Interpreter::parserInterleavedFlag(&v43, (&v42 + 7), v25))
      {
        *v37 = v43;
        v41.__r_.__value_.__r.__words[0] = 0;
        if (!DSPGraph::Interpreter::parseUInt64(v37, &v41.__r_.__value_.__l.__data_, v26) || (v21 = v41.__r_.__value_.__l.__data_, HIDWORD(v41.__r_.__value_.__r.__words[0])))
        {
          v21 = 1;
        }

        else
        {
          v43 = *v37;
        }

        v23 = 0;
        goto LABEL_39;
      }

      v23 = 0;
    }

    v21 = 1;
LABEL_39:
    DSPGraph::skipspace(&v43, v22);
    v27 = v43;
    if (*v43 != 41)
    {
      v35 = v43;
      std::string::basic_string[abi:ne200100]<0>(v37, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v41, "parseParenFormat");
      DSPGraph::strprintf("expected ')' at end of format, got '%c'", v36, *v35);
    }

    if (v16)
    {
      if (HIBYTE(v42) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v37, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v41, "parseParenFormat");
        std::string::basic_string[abi:ne200100]<0>(&v40, "constant bit rate formats must be de-interleaved.");
        DSPGraph::ThrowException(1718449215, v37, 577, &v41, &v40);
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = v21;
    }

    else if (v7)
    {
      if (v21 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v37, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v41, "parseParenFormat");
        std::string::basic_string[abi:ne200100]<0>(&v40, "frequency domain formats must have a block size.");
        DSPGraph::ThrowException(1718449215, v37, 582, &v41, &v40);
      }

      if (HIBYTE(v42) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v37, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v41, "parseParenFormat");
        std::string::basic_string[abi:ne200100]<0>(&v40, "frequency domain formats must be de-interleaved.");
        DSPGraph::ThrowException(1718449215, v37, 585, &v41, &v40);
      }

      v16 = 1718773105;
      v30 = 64;
      v31 = 1;
      v23 = 8;
      v28 = 41;
      v29 = 8;
    }

    else
    {
      v16 = 1819304813;
      v31 = HIBYTE(v42);
      v30 = 32;
      if (HIBYTE(v42) == 1)
      {
        v23 = 4 * (v18 & 0x7FFFFFF);
        v28 = 9;
        v29 = v23;
      }

      else
      {
        v31 = 1;
        v23 = 4;
        v28 = 41;
        v29 = 4;
      }
    }

    *a2 = data;
    *(a2 + 8) = v16;
    *(a2 + 12) = v28;
    *(a2 + 16) = v23;
    *(a2 + 20) = v31;
    *(a2 + 24) = v29;
    *(a2 + 28) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = v21;
    *a1 = v27 + 2;
    return 1;
  }

  memset(&v41, 0, sizeof(v41));
  if (!v5)
  {
    return 0;
  }

  v8 = MEMORY[0x1E69E9830];
  do
  {
    v9 = v5;
    if ((v5 & 0x80) != 0)
    {
      v10 = __maskrune(v5, 0x500uLL);
    }

    else
    {
      v10 = *(v8 + 4 * v5 + 60) & 0x500;
    }

    if (!v10 && !memchr("-@/#,", v9, 6uLL))
    {
      break;
    }

    std::string::push_back(&v41, v9);
    v12 = *++v4;
    LOBYTE(v5) = v12;
  }

  while (v12);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v41.__r_.__value_.__s + 23))
    {
      v13 = &v41;
      goto LABEL_49;
    }

    return 0;
  }

  if (!v41.__r_.__value_.__l.__size_)
  {
    v24 = 0;
LABEL_60:
    operator delete(v41.__r_.__value_.__l.__data_);
    return v24;
  }

  v13 = v41.__r_.__value_.__r.__words[0];
LABEL_49:
  v32 = *(a2 + 16);
  *v37 = *a2;
  v38 = v32;
  v39 = *(a2 + 32);
  v24 = CAStreamBasicDescription::FromText(v13, v37, v11);
  if (v24)
  {
    v33 = v38;
    *a2 = *v37;
    *(a2 + 16) = v33;
    *(a2 + 32) = v39;
    *(a2 + 40) = 1;
    *a1 = v4;
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_60;
  }

  return v24;
}

void sub_18F658858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Interpreter::parserInterleavedFlag(DSPGraph::Interpreter *this, const char **a2, BOOL *a3)
{
  DSPGraph::skipspace(this, a2);
  v5 = *this;
  v6 = **this;
  if (**this)
  {
    if (**this > 0x63u)
    {
      if (v6 != 100)
      {
        if (v6 != 105)
        {
          goto LABEL_5;
        }

LABEL_8:
        *a2 = 1;
LABEL_10:
        *this = v5 + 1;
        return v6 != 0;
      }
    }

    else if (v6 != 68)
    {
      if (v6 != 73)
      {
LABEL_5:
        *a2 = 0;
        return v6 != 0;
      }

      goto LABEL_8;
    }

    *a2 = 0;
    goto LABEL_10;
  }

  return v6 != 0;
}

void *DSPGraph::Graph::setFormat(uint64_t a1, AudioStreamBasicDescription *a2, DSPGraph *this)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setFormat");
    std::string::basic_string[abi:ne200100]<0>(&v10, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v12, 3046, &v11, &v10);
  }

  if (*(this + 2) == 1718773105 && *(this + 8) != 64)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setFormat");
    std::string::basic_string[abi:ne200100]<0>(&v10, "frequency domain format should be 64 bits.");
    DSPGraph::ThrowException(1718449215, &v12, 3050, &v11, &v10);
  }

  if (*this != floor(*this))
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setFormat");
    std::string::basic_string[abi:ne200100]<0>(&v10, "only integer sample rates are supported.");
    DSPGraph::ThrowException(1718449215, &v12, 3054, &v11, &v10);
  }

  if (!DSPGraph::MinimalSafetyCheck(this, a2))
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setFormat");
    std::string::basic_string[abi:ne200100]<0>(&v10, "format failed sanity check.");
    DSPGraph::ThrowException(1718449215, &v12, 3057, &v11, &v10);
  }

  *&v12 = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 600), a2);
  v7 = *this;
  v8 = *(this + 1);
  *(v6 + 68) = *(this + 28);
  *(v6 + 7) = v8;
  *(v6 + 5) = v7;
  *&v12 = a2;
  return std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 600), a2) + 5;
}

void sub_18F658B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parsePortDesc(char **a1, const char **a2, const char **a3)
{
  v14 = *a1;
  *a3 = 0;
  DSPGraph::skipspace(&v14, a2);
  if (*v14 == 40)
  {
    ++v14;
    result = DSPGraph::Interpreter::parseString(&v14, a2);
    if (!result)
    {
      return result;
    }

    DSPGraph::Interpreter::parseUInt32(&v14, a3, v7);
    DSPGraph::skipspace(&v14, v8);
    v9 = v14;
    if (*v14 != 41)
    {
      std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v12, "parsePortDesc");
      DSPGraph::strprintf("expected ')' at end of port description, got '%c'", v11, *v9);
    }

    v10 = v14 + 1;
  }

  else
  {
    result = DSPGraph::Interpreter::parseString(&v14, a2);
    if (!result)
    {
      return result;
    }

    v10 = v14;
  }

  *a1 = v10;
  return 1;
}

void sub_18F658D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

DSPGraph::Wire *DSPGraph::Graph::connect(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, DSPGraph::Wire **a6, uint64_t *a7)
{
  if (a1[95].i8[1] == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v30, "connect");
    std::string::basic_string[abi:ne200100]<0>(&v29, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v31, 1162, &v30, &v29);
  }

  if (a6)
  {
    if (a7)
    {
      v12 = *a7;
      v13 = *a6;
      if (*a6)
      {
        if (v12)
        {
          if (v13 != v12)
          {
            if (*(v12 + 1))
            {
              std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v30, "connect");
              std::string::basic_string[abi:ne200100]<0>(&v29, "destination jack already has a source.");
              DSPGraph::ThrowException(1633903905, &v31, 1180, &v30, &v29);
            }

LABEL_15:
            DSPGraph::Wire::addAll(v13, v12);
            DSPGraph::Graph::removeWire(a1, v12);
            goto LABEL_16;
          }

          return v13;
        }

LABEL_16:
        *a7 = v13;
        return v13;
      }

      if (!v12)
      {
        operator new();
      }

      *a6 = v12;
      return v12;
    }

    v18 = *(a3 + 64);
    if (a5 >= ((*(a3 + 72) - v18) >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v30, "in");
      v26 = (a3 + 32);
      if (*(a3 + 55) < 0)
      {
        v26 = *v26;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v25, v26, (*(a3 + 72) - *(a3 + 64)) >> 5, a5);
    }

    v19 = (v18 + 32 * a5);
    if ((*(*v19 + 40))(v19))
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v30, "connect");
      std::string::basic_string[abi:ne200100]<0>(&v29, "The input port already has a connection.");
      DSPGraph::ThrowException(1633903905, &v31, 1207, &v30, &v29);
    }

    v13 = *a6;
    if ((*(*v19 + 40))(v19))
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v30, "connect");
      std::string::basic_string[abi:ne200100]<0>(&v29, "The input port already has a connection.");
      DSPGraph::ThrowException(1633903905, &v31, 1213, &v30, &v29);
    }

    if (!v13)
    {
      operator new();
    }

LABEL_28:
    *&v31 = v19;
    std::__hash_table<DSPGraph::InputPort *,std::hash<DSPGraph::InputPort *>,std::equal_to<DSPGraph::InputPort *>,std::allocator<DSPGraph::InputPort *>>::__emplace_unique_key_args<DSPGraph::InputPort *,DSPGraph::InputPort * const&>(v13 + 2, v19);
    v19[2] = v13;
    return v13;
  }

  v15 = *(a2 + 88);
  if (a4 >= ((*(a2 + 96) - v15) >> 5))
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v30, "out");
    v24 = (a2 + 32);
    if (*(a2 + 55) < 0)
    {
      v24 = *v24;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v23, v24, (*(a2 + 96) - *(a2 + 88)) >> 5, a4);
  }

  v16 = (v15 + 32 * a4);
  if (!a7)
  {
    v20 = *(a3 + 64);
    if (a5 >= ((*(a3 + 72) - v20) >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v30, "in");
      v28 = (a3 + 32);
      if (*(a3 + 55) < 0)
      {
        v28 = *v28;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v27, v28, (*(a3 + 72) - *(a3 + 64)) >> 5, a5);
    }

    v19 = (v20 + 32 * a5);
    v13 = (*(*v16 + 40))(v16);
    if ((*(*v19 + 40))(v19))
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v30, "connect");
      std::string::basic_string[abi:ne200100]<0>(&v29, "The input port already has a connection.");
      DSPGraph::ThrowException(1633903905, &v31, 1265, &v30, &v29);
    }

    if (!v13)
    {
      operator new();
    }

    goto LABEL_28;
  }

  v17 = (*(*v16 + 40))(v16);
  v12 = *a7;
  if (!v17)
  {
    if (!v12)
    {
      operator new();
    }

    DSPGraph::Wire::setSource(*a7, v16);
    return v12;
  }

  v13 = v17;
  if (!v12)
  {
    goto LABEL_16;
  }

  if (v17 != v12)
  {
    if (*(v12 + 1))
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v30, "connect");
      std::string::basic_string[abi:ne200100]<0>(&v29, "The jack already has a source.");
      DSPGraph::ThrowException(1633903905, &v31, 1239, &v30, &v29);
    }

    goto LABEL_15;
  }

  return v13;
}

void sub_18F659460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<DSPGraph::Wire *,std::hash<DSPGraph::Wire *>,std::equal_to<DSPGraph::Wire *>,std::allocator<DSPGraph::Wire *>>::__emplace_unique_key_args<DSPGraph::Wire *,DSPGraph::Wire * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

DSPGraph::Wire *DSPGraph::Wire::Wire(DSPGraph::Wire *this, DSPGraph::OutputPort *a2)
{
  *this = &unk_1F033F678;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = 1065353216;
  *(this + 7) = 0;
  *(this + 64) = 0;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 72) = 0u;
  *(this + 28) = 1;
  *(this + 15) = this + 72;
  if (a2)
  {
    DSPGraph::Wire::setSource(this, a2);
  }

  return this;
}

uint64_t DSPGraph::Wire::setSource(uint64_t this, DSPGraph::OutputPort *a2)
{
  v2 = this;
  v3 = *(this + 8);
  if (v3)
  {
    v4 = v3 == a2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
    std::string::basic_string[abi:ne200100]<0>(v16, "setSource");
    v7 = *(*(v2 + 8) + 8);
    v8 = v7 + 32;
    if (v7[55] < 0)
    {
      v8 = *v8;
    }

    v9 = (*(*v7 + 16))(v7);
    DSPGraph::strprintf("wire already has a source: %s %s output %u", v10, v8, v9, *(*(v2 + 8) + 24));
  }

  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = v5 == this;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
    std::string::basic_string[abi:ne200100]<0>(v16, "setSource");
    v12 = *(a2 + 1);
    v13 = v12 + 32;
    if (v12[55] < 0)
    {
      v13 = *v13;
    }

    v14 = (*(*v12 + 16))(v12);
    DSPGraph::strprintf("output port already has a wire: %s %s output %u", v15, v13, v14, *(a2 + 6));
  }

  *(this + 8) = a2;
  *(a2 + 2) = this;
  return this;
}

void sub_18F659B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

BOOL DSPGraph::NewBoxRegistry::has(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v3 = std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<std::string>((a1 + 8), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3 != 0;
}

uint64_t std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

void *std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
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

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

BOOL DSPGraph::MinimalSafetyCheck(DSPGraph *this, const AudioStreamBasicDescription *a2)
{
  result = 0;
  if (*this >= 0.0 && *this < 3000000.0)
  {
    v4 = *(this + 4);
    if (v4 >= 0xF4240)
    {
      return 0;
    }

    v5 = *(this + 5);
    if (v5 >= 0xF4240)
    {
      return 0;
    }

    v6 = *(this + 6);
    if (v6 >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if ((*(this + 7) - 1) > 0x3FF || *(this + 8) > 0x400u)
    {
      return result;
    }

    v7 = *(this + 2);
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == 1 && v4 == v6;
    return v7 != 1819304813 || v9;
  }

  return result;
}

void *std::__hash_table<DSPGraph::InputPort *,std::hash<DSPGraph::InputPort *>,std::equal_to<DSPGraph::InputPort *>,std::allocator<DSPGraph::InputPort *>>::__emplace_unique_key_args<DSPGraph::InputPort *,DSPGraph::InputPort * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t DSPGraph::Wire::setGlobalFormat(uint64_t result, unsigned int *__s1)
{
  v3 = result;
  if (*(result + 64) == 1)
  {
    v4 = *(result + 120);
    result = memcmp(__s1, v4, 0x28uLL);
    if (result || __s1[10] != v4[10])
    {
      std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "setGlobalFormat");
      v5 = *(*(v3 + 8) + 8);
      v6 = (v5 + 32);
      if (*(v5 + 55) < 0)
      {
        v6 = *v6;
      }

      v7 = *(__s1 + 1);
      v22 = *__s1;
      v23 = v7;
      v24 = *(__s1 + 4);
      CA::StreamDescription::AsString(v18, &v22, *&v22, *&v7);
      v8 = v19;
      v9 = v18[0];
      v10 = __s1[10];
      v11 = *(v3 + 120);
      v22 = *v11;
      v23 = v11[1];
      v24 = *(v11 + 4);
      CA::StreamDescription::AsString(v16, &v22, *&v23, v12);
      if (v8 >= 0)
      {
        v14 = v18;
      }

      else
      {
        v14 = v9;
      }

      if (v17 >= 0)
      {
        v15 = v16;
      }

      else
      {
        v15 = v16[0];
      }

      DSPGraph::strprintf("Wire from box %s: format\n%s, %u block size\ndoes not match the one previously set\n%s, %u block size\n", v13, v6, v14, v10, v15, *(*(v3 + 120) + 40));
    }
  }

  else
  {
    *(result + 64) = 1;
  }

  *(v3 + 120) = __s1;
  return result;
}

void sub_18F65A86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Interpreter::match(DSPGraph::Interpreter *this, const char **a2, const char *a3)
{
  DSPGraph::skipspace(this, a2);
  v5 = strlen(a2);
  v6 = *this;
  v7 = strncmp(*this, a2, v5);
  if (!v7)
  {
    *this = v6 + v5;
  }

  return v7 == 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *DSPGraph::Graph::addParameter(DSPGraph::Graph *this, unsigned int a2, float a3, char a4)
{
  v11 = a2;
  if (*(this + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "addParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v10, 2360, &v9, &v8);
  }

  *&v10 = &v11;
  result = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 65, a2);
  *(result + 6) = a2;
  *(result + 7) = a3;
  *(result + 32) = a4;
  result[6] = result[5];
  return result;
}

void sub_18F65AE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Interpreter::parseParamEndpoint(uint64_t a1, DSPGraph *this, uint64_t a3)
{
  DSPGraph::skipspace(this, this);
  v25 = *this;
  DSPGraph::skipspace(&v25, v6);
  v7 = *v25;
  if (v7 == 40)
  {
    v24 = 0;
    ++v25;
    v23[0] = 0;
    v23[1] = 0;
    if ((DSPGraph::Interpreter::parseString(&v25, v23) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "parseParamEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v20, "expected box name for parameter endpoint");
      DSPGraph::ThrowException(1886548769, &v22, 669, v21, &v20);
    }

    v8 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((*(a1 + 8) + 784), v23);
    if (!v8 || (v9 = v8[5]) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "parseParamEndpoint");
      std::operator+<char>();
      DSPGraph::ThrowException(1852204065, &v22, 673, v21, &v20);
    }

    HIDWORD(v19) = 0;
    if ((DSPGraph::Interpreter::parse4cc(&v25, (&v19 + 4), 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "parseParamEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v20, "expected parameter ID for parameter endpoint");
      DSPGraph::ThrowException(1886548769, &v22, 678, v21, &v20);
    }

    LODWORD(v19) = 0;
    if (DSPGraph::Interpreter::parseScope(&v25, &v19, v10) && (*&v22 = v25, v21[0] = 0, DSPGraph::Interpreter::parseUInt64(&v22, v21, v12)) && (v13 = v21[0], !(v21[0] >> 32)))
    {
      v25 = v22;
    }

    else
    {
      v13 = 0;
    }

    DSPGraph::skipspace(&v25, v11);
    v14 = v25;
    if (*v25 != 41)
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "parseParamEndpoint");
      DSPGraph::strprintf("expected ')' at end of param endpoint, got '%c'", v18, *v14);
    }

    v16 = v19;
    v15 = HIDWORD(v19);
    *a3 = v9;
    *(a3 + 8) = v15;
    *(a3 + 12) = v16;
    *(a3 + 16) = v13;
    *this = v14 + 1;
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  return v7 == 40;
}

void sub_18F65B100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parseScope(DSPGraph::Interpreter *this, const char **a2, unsigned int *a3)
{
  DSPGraph::skipspace(this, a2);
  v26 = *this;
  v27 = 0;
  __p = v26;
  if (!DSPGraph::Interpreter::parseUInt64(&__p, &v27, v5) || v27 >> 32)
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
    v8 = DSPGraph::Interpreter::parseName(&v26, &__p);
    v9 = HIBYTE(v25);
    if ((v8 & 1) == 0)
    {
      goto LABEL_74;
    }

    if (v25 < 0)
    {
      if (v24 > 4)
      {
        if (v24 == 5)
        {
          if (*__p == 1970302569 && *(__p + 4) == 116)
          {
            goto LABEL_81;
          }
        }

        else if (v24 == 6 && *__p == 1886680431 && *(__p + 2) == 29813)
        {
          goto LABEL_43;
        }
      }

      else if (v24 == 2)
      {
        if (*__p == 28265)
        {
          goto LABEL_81;
        }
      }

      else if (v24 == 3)
      {
        if (*__p == 30063 && *(__p + 2) == 116)
        {
          goto LABEL_43;
        }

        if ((v25 & 0x8000000000000000) == 0)
        {
          return 0;
        }
      }

      if (v24 == 6 && *__p == 1651469415 && *(__p + 2) == 27745)
      {
LABEL_83:
        v15 = 0;
        goto LABEL_85;
      }

      if (v24 != 5)
      {
        goto LABEL_71;
      }

      if (*__p == 1970238055 && *(__p + 4) == 112)
      {
LABEL_84:
        v15 = 3;
LABEL_85:
        *a2 = v15;
        *this = v26;
        v7 = 1;
        if ((v9 & 0x80) == 0)
        {
          return v7;
        }

        goto LABEL_88;
      }

      if (v25 < 0)
      {
LABEL_71:
        if (v24 != 4)
        {
          v7 = 0;
          goto LABEL_88;
        }

        p_p = __p;
LABEL_73:
        if (*p_p == 1953653104)
        {
          v15 = 4;
          goto LABEL_85;
        }

LABEL_74:
        v7 = 0;
        if ((v25 & 0x8000000000000000) == 0)
        {
          return v7;
        }

LABEL_88:
        operator delete(__p);
        return v7;
      }

      if (HIBYTE(v25) == 4)
      {
LABEL_69:
        p_p = &__p;
        goto LABEL_73;
      }
    }

    else
    {
      v7 = 0;
      if (HIBYTE(v25) > 3u)
      {
        if (HIBYTE(v25) != 4)
        {
          if (HIBYTE(v25) != 5)
          {
            if (HIBYTE(v25) != 6)
            {
              return v7;
            }

            if (__p != 1886680431 || WORD2(__p) != 29813)
            {
              if (__p != 1651469415 || WORD2(__p) != 27745)
              {
                return 0;
              }

              goto LABEL_83;
            }

LABEL_43:
            v15 = 2;
            goto LABEL_85;
          }

          if (__p != 1970302569 || BYTE4(__p) != 116)
          {
            if (__p != 1970238055 || BYTE4(__p) != 112)
            {
              return 0;
            }

            goto LABEL_84;
          }

LABEL_81:
          v15 = 1;
          goto LABEL_85;
        }

        goto LABEL_69;
      }

      if (HIBYTE(v25) == 2)
      {
        if (__p == 28265)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (HIBYTE(v25) != 3)
        {
          return v7;
        }

        if (__p == 30063 && BYTE2(__p) == 116)
        {
          goto LABEL_43;
        }
      }
    }

    return 0;
  }

  v6 = __p;
  *a2 = v27;
  *this = v6;
  return 1;
}

void sub_18F65B4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Graph::connectParameter(uint64_t a1, unsigned int a2, __int128 *a3)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "connectParameter");
    std::string::basic_string[abi:ne200100]<0>(&v18, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v20, 2370, &v19, &v18);
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((a1 + 520), a2);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "connectParameter");
    std::string::basic_string[abi:ne200100]<0>(&v18, "connectParameter : inParamID not found");
    DSPGraph::ThrowException(1852204065, &v20, 2375, &v19, &v18);
  }

  v5 = v4;
  v7 = v4[6];
  v6 = v4[7];
  if (v7 >= v6)
  {
    v10 = v4[5];
    v11 = v7 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 24 * v12;
    *v16 = *a3;
    *(v16 + 16) = *(a3 + 2);
    v9 = 24 * v12 + 24;
    v17 = v16 - v11;
    memcpy((v16 - v11), v10, v11);
    v5[5] = v17;
    v5[6] = v9;
    v5[7] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    v9 = v7 + 24;
  }

  v5[6] = v9;
}

void sub_18F65B6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void DSPGraph::Graph::addProperty(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  v35 = a2;
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v34, "addProperty");
    std::string::basic_string[abi:ne200100]<0>(&v33, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v26, 2268, &v34, &v33);
  }

  LODWORD(v26) = a2;
  std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](&v26 + 8, a3);
  v29 = a4;
  v31 = 0;
  v32 = 0;
  __p = 0;
  *&v34 = &v35;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 560), v35);
  *(v6 + 6) = v26;
  v7 = (v6 + 4);
  v8 = *(v6 + 56);
  if (v8 == v28)
  {
    if (v7 != (&v26 + 8) && v8 != 0)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v7, *(&v26 + 1), v27, &v27[-*(&v26 + 1)]);
    }
  }

  else
  {
    if (*(v6 + 56))
    {
      v10 = *v7;
      if (v10)
      {
        v6[5] = v10;
        operator delete(v10);
      }

      v11 = 0;
    }

    else
    {
      *v7 = 0;
      v6[5] = 0;
      v6[6] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v7, *(&v26 + 1), v27, &v27[-*(&v26 + 1)]);
      v11 = 1;
    }

    *(v6 + 56) = v11;
  }

  *(v6 + 64) = v29;
  if (v6 + 3 != &v26)
  {
    v12 = v6[9];
    v13 = __p;
    v14 = v31;
    v15 = v31 - __p;
    v16 = v6[11];
    if (v16 - v12 < (v31 - __p))
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
      if (v12)
      {
        v6[10] = v12;
        operator delete(v12);
        v16 = 0;
        v6[9] = 0;
        v6[10] = 0;
        v6[11] = 0;
      }

      if (v17 <= 0xAAAAAAAAAAAAAAALL)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
        v19 = 2 * v18;
        if (2 * v18 <= v17)
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
        }

        if (v18 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v19;
        }

        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::allocator<DSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](v20);
        }
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v21 = v6[10];
    v22 = v21 - v12;
    if (v21 - v12 >= v15)
    {
      if (v31 != __p)
      {
        memmove(v12, __p, v15 - 4);
      }

      v25 = &v12[v15];
    }

    else
    {
      if (v21 != v12)
      {
        memmove(v6[9], __p, v22 - 4);
        v21 = v6[10];
      }

      v23 = &v13[v22];
      v24 = v14 - &v13[v22];
      if (v24)
      {
        memmove(v21, v23, v24 - 4);
      }

      v25 = &v21[v24];
    }

    v6[10] = v25;
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v28 == 1 && *(&v26 + 1))
  {
    v27 = *(&v26 + 1);
    operator delete(*(&v26 + 1));
  }
}

void sub_18F65BE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_18F65BEE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseWireGraphPropertyCommand(DSPGraph::Interpreter *this, const char **a2)
{
  LODWORD(v9) = 0;
  if ((DSPGraph::Interpreter::parse4cc(a2, &v9, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v6, "parseWireGraphPropertyCommand");
    std::string::basic_string[abi:ne200100]<0>(&v5, "expected parameter ID in 'wireGraphProperty' command");
    DSPGraph::ThrowException(1886548769, &v7, 1072, &v6, &v5);
  }

  v7 = 0uLL;
  v8 = 0;
  if (!DSPGraph::Interpreter::parsePropertyEndpoint(this, a2, &v7))
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "parseWireGraphPropertyCommand");
    std::string::basic_string[abi:ne200100]<0>(&v4, "expected endpoint in 'wireGraphProperty' command");
    DSPGraph::ThrowException(1886548769, &v6, 1077, &v5, &v4);
  }

  DSPGraph::Graph::connectProperty(*(this + 1), v9, &v7);
}

void sub_18F65C01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Interpreter::parsePropertyEndpoint(uint64_t a1, DSPGraph *this, uint64_t a3)
{
  DSPGraph::skipspace(this, this);
  v25 = *this;
  DSPGraph::skipspace(&v25, v6);
  v7 = *v25;
  if (v7 == 40)
  {
    v24 = 0;
    ++v25;
    v23[0] = 0;
    v23[1] = 0;
    if ((DSPGraph::Interpreter::parseString(&v25, v23) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "parsePropertyEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v20, "expected box name for property endpoint");
      DSPGraph::ThrowException(1886548769, &v22, 710, v21, &v20);
    }

    v8 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((*(a1 + 8) + 784), v23);
    if (!v8 || (v9 = v8[5]) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "parsePropertyEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v20, "property endpoint : box not found");
      DSPGraph::ThrowException(1852204065, &v22, 714, v21, &v20);
    }

    HIDWORD(v19) = 0;
    if ((DSPGraph::Interpreter::parse4cc(&v25, (&v19 + 4), 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "parsePropertyEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v20, "expected property ID for property endpoint");
      DSPGraph::ThrowException(1886548769, &v22, 719, v21, &v20);
    }

    LODWORD(v19) = 0;
    if (DSPGraph::Interpreter::parseScope(&v25, &v19, v10) && (*&v22 = v25, v21[0] = 0, DSPGraph::Interpreter::parseUInt64(&v22, v21, v12)) && (v13 = v21[0], !(v21[0] >> 32)))
    {
      v25 = v22;
    }

    else
    {
      v13 = 0;
    }

    DSPGraph::skipspace(&v25, v11);
    v14 = v25;
    if (*v25 != 41)
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "parsePropertyEndpoint");
      DSPGraph::strprintf("expected ')' at end of property endpoint, got '%c'", v18, *v14);
    }

    v16 = v19;
    v15 = HIDWORD(v19);
    *a3 = v9;
    *(a3 + 8) = v15;
    *(a3 + 12) = v16;
    *(a3 + 16) = v13;
    *this = v14 + 1;
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  return v7 == 40;
}

void sub_18F65C340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<DSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void DSPGraph::Graph::connectProperty(uint64_t a1, unsigned int a2, __int128 *a3)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v22, "connectProperty");
    std::string::basic_string[abi:ne200100]<0>(&v21, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v23, 2278, &v22, &v21);
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((a1 + 560), a2);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v22, "connectProperty");
    std::string::basic_string[abi:ne200100]<0>(&v21, "connectProperty : inPropertyID not found");
    DSPGraph::ThrowException(1852204065, &v23, 2283, &v22, &v21);
  }

  v5 = v4;
  v7 = v4[10];
  v6 = v4[11];
  if (v7 >= v6)
  {
    v10 = v4[9];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::allocator<DSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](v14);
    }

    v15 = 24 * v11;
    v16 = *a3;
    *(v15 + 16) = *(a3 + 2);
    *v15 = v16;
    v9 = 24 * v11 + 24;
    v17 = v5[9];
    v18 = v5[10] - v17;
    v19 = v15 - v18;
    memcpy((v15 - v18), v17, v18);
    v20 = v5[9];
    v5[9] = v19;
    v5[10] = v9;
    v5[11] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    v9 = v7 + 24;
  }

  v5[10] = v9;
}

void sub_18F65C600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DSPGraph::Graph::pruneSubsets(uint64_t *this)
{
  v1 = this[114];
  v2 = this[113];
  if (v2 != v1)
  {
    v3 = this;
    while (*(*v2 + 48))
    {
      if (++v2 == v1)
      {
        return this;
      }
    }

    if (v2 != v1)
    {
      v4 = v2 + 1;
      if (v2 + 1 != v1)
      {
        do
        {
          v5 = *v4;
          if (*(*v4 + 48))
          {
            *v4 = 0;
            this = std::unique_ptr<DSPGraph::Subset>::reset[abi:ne200100](v2++, v5);
          }

          ++v4;
        }

        while (v4 != v1);
        v1 = v3[114];
      }
    }

    if (v2 != v1)
    {
      while (v1 != v2)
      {
        this = std::unique_ptr<DSPGraph::Subset>::reset[abi:ne200100](--v1, 0);
      }

      v3[114] = v2;
    }
  }

  return this;
}

void DSPGraph::Graph::setPropertyStrip(DSPGraph::Graph *this, const __CFDictionary *a2, const __CFString *a3)
{
  v255 = *MEMORY[0x1E69E9840];
  applesauce::CF::DictionaryRef::from_get(&v222, a2);
  if (!v222)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = applesauce::CF::details::at_key<char const(&)[6]>(v222, "Boxes");
  if (!v4)
  {
LABEL_437:
    std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
    std::string::basic_string[abi:ne200100]<0>(&v232, "'Boxes' key not found");
    DSPGraph::ThrowException(1886548769, &buf, 2046, &v244, &v232);
  }

  v5 = v4;
  CFRetain(v4);
  theArray = v5;
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(theArray);
    goto LABEL_437;
  }

  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
  }

  v198 = 0;
  spid = os_signpost_id_make_with_pointer(DSPGraph::getLog(void)::gLog, this);
  v206 = spid - 1;
  alloc = *MEMORY[0x1E695E480];
LABEL_7:
  if (v198 < CFArrayGetCount(theArray))
  {
    applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v220, theArray, v198);
    if ((v221 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
      std::string::basic_string[abi:ne200100]<0>(&v232, "BoxInfo must be a dictionary");
      DSPGraph::ThrowException(1886548769, &buf, 2056, &v244, &v232);
    }

    v7 = v220;
    if (!v220)
    {
      v162 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v162, "Could not construct");
    }

    v8 = applesauce::CF::details::at_key<char const(&)[5]>(v220, "Name");
    if (v8)
    {
      applesauce::CF::convert_as<std::string,0>(v217, v8);
      if (v219)
      {
        v9 = v218;
        if ((v218 & 0x80u) != 0)
        {
          v9 = v217[1];
        }

        if (!v9)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
          std::string::basic_string[abi:ne200100]<0>(&v232, "Box name is empty");
          DSPGraph::ThrowException(1886548769, &buf, 2065, &v244, &v232);
        }

        v10 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(this + 98, v217);
        if (!v10 || (v205 = v10[5]) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
          v155 = v217;
          if ((v218 & 0x80u) != 0)
          {
            v155 = v217[0];
          }

          DSPGraph::strprintf("Box %s not found", v154, v155);
        }

        v11 = CFStringCreateWithBytes(0, "Properties", 10, 0x8000100u, 0);
        *&buf = v11;
        if (!v11)
        {
          v161 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v161, "Could not construct");
        }

        cf = CFDictionaryGetValue(v7, v11);
        if (buf)
        {
          CFRelease(buf);
        }

        if (cf)
        {
          CFRetain(cf);
          v12 = CFGetTypeID(cf);
          if (v12 == CFArrayGetTypeID())
          {
            v211 = 0;
            v203 = v205 + 32;
            while (1)
            {
              if (v211 >= CFArrayGetCount(cf))
              {
                CFRelease(cf);
                if (v219 == 1 && v218 < 0)
                {
                  operator delete(v217[0]);
                }

                if (v221 == 1 && v220)
                {
                  CFRelease(v220);
                }

                ++v198;
                goto LABEL_7;
              }

              applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&theDict, cf, v211);
              if ((v216 & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                std::string::basic_string[abi:ne200100]<0>(&v232, "Property dictionary not found");
                DSPGraph::ThrowException(1886548769, &buf, 2084, &v244, &v232);
              }

              v13 = DSPGraph::Graph::setPropertyStrip(__CFDictionary const*,__CFString const*)::$_0::operator()<char const*>(&theDict, "PropertyID");
              if ((v13 & 0x100000000) == 0)
              {
                v13 = DSPGraph::Graph::setPropertyStrip(__CFDictionary const*,__CFString const*)::$_0::operator()<char const*>(&theDict, "Number");
                if ((v13 & 0x100000000) == 0)
                {
                  std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                  std::string::basic_string[abi:ne200100]<0>(&v232, "PropertyID not found");
                  DSPGraph::ThrowException(1886548769, &buf, 2104, &v244, &v232);
                }
              }

              v14 = theDict;
              if (!theDict)
              {
                v147 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v147, "Could not construct");
              }

              v208 = v13;
              v15 = applesauce::CF::details::at_key<char const(&)[6]>(theDict, "Scope");
              if (v15)
              {
                v16 = applesauce::CF::convert_as<unsigned int,0>(v15);
                if ((v16 & 0x100000000) != 0)
                {
                  v17 = v16;
                }

                else
                {
                  v17 = 0;
                }

                v209 = v17;
              }

              else
              {
                v209 = 0;
              }

              v18 = CFStringCreateWithBytes(0, "Element", 7, 0x8000100u, 0);
              *&buf = v18;
              if (!v18)
              {
                v139 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v139, "Could not construct");
              }

              Value = CFDictionaryGetValue(v14, v18);
              if (buf)
              {
                CFRelease(buf);
              }

              if (Value)
              {
                v20 = applesauce::CF::convert_as<unsigned int,0>(Value);
              }

              else
              {
                v20 = 0;
              }

              if ((v20 & 0x100000000) != 0)
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }

              v207 = v21;
              v22 = applesauce::CF::details::at_key<__CFString const*>(v14, @"FeatureFlags");
              if (!v22)
              {
                goto LABEL_109;
              }

              v23 = v22;
              CFRetain(v22);
              CFRetain(v23);
              CFRelease(v23);
              v24 = CFGetTypeID(v23);
              if (v24 != CFDictionaryGetTypeID())
              {
                std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v244, "operator()");
                caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags' entry is not valid", &v232, v198, v211);
                DSPGraph::ThrowException(1886548769, &buf, 2119, &v244, &v232);
              }

              v25 = CFGetTypeID(v23);
              if (v25 != CFDictionaryGetTypeID())
              {
                v148 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v148, "Could not construct");
              }

              applesauce::CF::DictionaryRef::from_get(&v249, v23);
              applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&buf, v249);
              applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v244, v249);
              *(&v244 + 1) = (v246 - v245) >> 3;
              while (1)
              {
                if (buf && *(&buf + 1) != v252 - v251)
                {
                  v26 = v244;
                  goto LABEL_53;
                }

                v26 = v244;
                if (!v244 || *(&v244 + 1) == (v246 - v245) >> 3)
                {
                  break;
                }

LABEL_53:
                if (buf == __PAIR128__(*(&v244 + 1), v26))
                {
                  break;
                }

                applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&v242, &buf);
                v27 = v242;
                if (!v242 || (v28 = CFGetTypeID(v242), v28 != CFStringGetTypeID()))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v232, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v228, "operator()");
                  caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags' entry is not valid", &v240, v198, v211);
                  DSPGraph::ThrowException(1886548769, &v232, 2130, &v228, &v240);
                }

                applesauce::CF::convert_as<std::string,0>(&v232, v27);
                if (v234 == 1)
                {
                  v240 = v232;
                  v241 = v233;
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(&v240, "");
                }

                v29 = v243;
                if (!v243 || (v30 = CFGetTypeID(v243), v30 != CFDictionaryGetTypeID()))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v232, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v228, "operator()");
                  if (SHIBYTE(v241) >= 0)
                  {
                    v145 = &v240;
                  }

                  else
                  {
                    v145 = v240;
                  }

                  caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s' entry is not valid", __p, v198, v211, v145);
                  DSPGraph::ThrowException(1886548769, &v232, 2136, &v228, __p);
                }

                v31 = CFGetTypeID(v29);
                if (v31 != CFDictionaryGetTypeID())
                {
                  v146 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v146, "Could not construct");
                }

                applesauce::CF::DictionaryRef::from_get(&v237, v29);
                applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v232, v237);
                applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v228, v237);
                v228.__r_.__value_.__l.__size_ = (v229 - v228.__r_.__value_.__r.__words[2]) >> 3;
                while (1)
                {
                  if (v232 && *(&v232 + 1) != (v234 - v233) >> 3)
                  {
                    v32 = v228.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    v32 = v228.__r_.__value_.__r.__words[0];
                    if (!v228.__r_.__value_.__r.__words[0] || v228.__r_.__value_.__l.__size_ == (v229 - v228.__r_.__value_.__r.__words[2]) >> 3)
                    {
LABEL_78:
                      v39 = 0;
                      v40 = 1;
                      goto LABEL_80;
                    }
                  }

                  if (v232 == __PAIR128__(v228.__r_.__value_.__l.__size_, v32))
                  {
                    goto LABEL_78;
                  }

                  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&v226, &v232);
                  v33 = v226;
                  if (!v226 || (v34 = CFGetTypeID(v226), v34 != CFStringGetTypeID()))
                  {
                    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                    std::string::basic_string[abi:ne200100]<0>(anURL, "operator()");
                    if (SHIBYTE(v241) >= 0)
                    {
                      v144 = &v240;
                    }

                    else
                    {
                      v144 = v240;
                    }

                    caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s' entry is not valid", &v224, v198, v211, v144);
                    DSPGraph::ThrowException(1886548769, __p, 2144, anURL, &v224);
                  }

                  applesauce::CF::convert_to<std::string,0>(__p, v33);
                  v35 = v227;
                  if (!v227 || (v36 = CFGetTypeID(v227), v36 != CFBooleanGetTypeID()))
                  {
                    std::string::basic_string[abi:ne200100]<0>(anURL, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&v224, "operator()");
                    v142 = &v240;
                    if (SHIBYTE(v241) < 0)
                    {
                      v142 = v240;
                    }

                    v143 = __p;
                    if (v239 < 0)
                    {
                      v143 = __p[0];
                    }

                    caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s.%s' entry is not valid", v223, v198, v211, v142, v143);
                    DSPGraph::ThrowException(1886548769, anURL, 2150, &v224, v223);
                  }

                  v37 = applesauce::CF::convert_to<BOOL,0>(v35);
                  v38 = _os_feature_enabled_impl();
                  if (v239 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  CFRelease(v35);
                  CFRelease(v33);
                  if ((v37 ^ v38))
                  {
                    break;
                  }

                  ++*(&v232 + 1);
                }

                v40 = 0;
                v39 = 1;
LABEL_80:
                if (v230)
                {
                  v231 = v230;
                  operator delete(v230);
                }

                if (v228.__r_.__value_.__r.__words[2])
                {
                  v229 = v228.__r_.__value_.__r.__words[2];
                  operator delete(v228.__r_.__value_.__r.__words[2]);
                }

                if (v235)
                {
                  v236 = v235;
                  operator delete(v235);
                }

                if (v233)
                {
                  v234 = v233;
                  operator delete(v233);
                }

                if (v237)
                {
                  CFRelease(v237);
                }

                if (SHIBYTE(v241) < 0)
                {
                  operator delete(v240);
                }

                CFRelease(v29);
                CFRelease(v27);
                if (!v40)
                {
                  goto LABEL_95;
                }

                ++*(&buf + 1);
              }

              v39 = 2;
LABEL_95:
              if (v247)
              {
                v248 = v247;
                operator delete(v247);
              }

              if (v245)
              {
                v246 = v245;
                operator delete(v245);
              }

              if (v253)
              {
                v254 = v253;
                operator delete(v253);
              }

              if (v251)
              {
                v252 = v251;
                operator delete(v251);
              }

              if (v249)
              {
                CFRelease(v249);
              }

              if (v39)
              {
                v41 = 0;
              }

              else
              {
                v41 = -1;
              }

              CFRelease(v23);
              if (v41)
              {
LABEL_109:
                v42 = theDict;
                *&v224 = CFDictionaryGetValue(theDict, @"Value");
                if (v224)
                {
                  if (DSPGraph::getLog(void)::onceToken != -1)
                  {
                    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                  }

                  if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v43 = DSPGraph::getLog(void)::gLog;
                    if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                    {
                      v44 = v205 + 32;
                      if (v205[55] < 0)
                      {
                        v44 = *v203;
                      }

                      LODWORD(buf) = 136315138;
                      *(&buf + 4) = v44;
                      _os_signpost_emit_with_name_impl(&dword_18F5DF000, v43, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                    }
                  }

                  v45 = (*(*v205 + 312))(v205, v208, v209, v207, 8, &v224);
                  if (DSPGraph::getLog(void)::onceToken != -1)
                  {
                    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                  }

                  if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v46 = DSPGraph::getLog(void)::gLog;
                    if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                    {
                      v47 = v205 + 32;
                      if (v205[55] < 0)
                      {
                        v47 = *v203;
                      }

                      LODWORD(buf) = 136315138;
                      *(&buf + 4) = v47;
                      _os_signpost_emit_with_name_impl(&dword_18F5DF000, v46, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                    }
                  }

                  if (v45)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                    v150 = v217;
                    if ((v218 & 0x80u) != 0)
                    {
                      v150 = v217[0];
                    }

                    DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v149, v150, v208, v209, v207, v45);
                  }

                  goto LABEL_316;
                }

                if (!v42)
                {
                  v151 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v151, "Could not construct");
                }

                v48 = applesauce::CF::details::at_key<char const(&)[5]>(v42, "Data");
                if (v48)
                {
                  v49 = v48;
                  CFRetain(v48);
                  v50 = CFGetTypeID(v49);
                  if (v50 == CFDataGetTypeID())
                  {
                    *&v240 = v49;
                    BYTE8(v240) = 1;
                    if (DSPGraph::getLog(void)::onceToken != -1)
                    {
                      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                    }

                    if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v51 = DSPGraph::getLog(void)::gLog;
                      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                      {
                        v52 = v205 + 32;
                        if (v205[55] < 0)
                        {
                          v52 = *v203;
                        }

                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = v52;
                        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v51, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                      }
                    }

                    Length = CFDataGetLength(v49);
                    BytePtr = CFDataGetBytePtr(v49);
                    v55 = (*(*v205 + 312))(v205, v208, v209, v207, Length, BytePtr);
                    if (DSPGraph::getLog(void)::onceToken != -1)
                    {
                      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                    }

                    if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v56 = DSPGraph::getLog(void)::gLog;
                      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                      {
                        v57 = v205 + 32;
                        if (v205[55] < 0)
                        {
                          v57 = *v203;
                        }

                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = v57;
                        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v56, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                      }
                    }

                    if (v55)
                    {
                      std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                      std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                      v153 = v217;
                      if ((v218 & 0x80u) != 0)
                      {
                        v153 = v217[0];
                      }

                      DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v152, v153, v208, v209, v207, v55);
                    }

                    goto LABEL_313;
                  }

                  CFRelease(v49);
                }

                LOBYTE(v240) = 0;
                BYTE8(v240) = 0;
                v58 = applesauce::CF::details::at_key<char const*&>(v42, "UInt32");
                if (!v58 || (v59 = applesauce::CF::convert_as<unsigned int,0>(v58), (v59 & 0x100000000) == 0))
                {
                  v60 = applesauce::CF::details::at_key<char const*&>(v42, "UInt32");
                  if (v60 && (v61 = v60, TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v61)))
                  {
                    Count = CFArrayGetCount(v61);
                    if (Count << 32)
                    {
                      Count = Count;
                      if (!(Count >> 62))
                      {
                        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](Count);
                      }

                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    v200 = 0;
                    if (Count >= 1)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v61, 0);
                      if ((applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex) & 0x100000000) != 0)
                      {
                        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
                      }

                      v200 = v3 & 0xFFFFFFFFFFFFFF00;
                    }
                  }

                  else
                  {
                    v200 = v3 & 0xFFFFFFFFFFFFFF00;
                  }

                  v64 = theDict;
                  if (!theDict)
                  {
                    goto LABEL_374;
                  }

                  v65 = applesauce::CF::details::at_key<char const*&>(theDict, "UInt64");
                  if (v65)
                  {
                    v66 = applesauce::CF::convert_as<unsigned long long,0>(v65);
                    if (v67)
                    {
                      __p[0] = v66;
                      v68 = (*(*v205 + 312))(v205, v208, v209, v207, 8, __p);
                      if (v68)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "applyPropertyStripScalarValue");
                        if (v205[55] < 0)
                        {
                          v203 = *v203;
                        }

                        std::to_string(&v228, __p[0]);
                        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v160 = &v228;
                        }

                        else
                        {
                          v160 = v228.__r_.__value_.__r.__words[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v159, v203, v208, v209, v207, v160, "UInt64", v68);
                      }

LABEL_312:
                      v3 = v200;
                      goto LABEL_313;
                    }
                  }

                  v69 = applesauce::CF::details::at_key<char const*&>(v64, "UInt64");
                  if (v69 && (v70 = v69, v71 = CFArrayGetTypeID(), v71 == CFGetTypeID(v70)))
                  {
                    v72 = CFArrayGetCount(v70);
                    buf = 0uLL;
                    v251 = 0;
                    std::vector<unsigned long long>::reserve(&buf, v72);
                    if (v72 > 0)
                    {
                      v73 = 0;
                      v201 = v72 & 0x7FFFFFFF;
                      v74 = *(&buf + 1);
                      v75 = v251;
                      __src = buf;
                      while (1)
                      {
                        v76 = CFArrayGetValueAtIndex(v70, v73);
                        v77 = applesauce::CF::convert_as<unsigned long long,0>(v76);
                        if ((v78 & 1) == 0)
                        {
                          break;
                        }

                        v79 = v77;
                        if (v74 >= v75)
                        {
                          v80 = v74 - __src;
                          v81 = (v74 - __src) >> 3;
                          v82 = v81 + 1;
                          if ((v81 + 1) >> 61)
                          {
                            *(&buf + 1) = v74;
                            v251 = v75;
                            *&buf = __src;
                            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                          }

                          if ((v75 - __src) >> 2 > v82)
                          {
                            v82 = (v75 - __src) >> 2;
                          }

                          if ((v75 - __src) >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v83 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v83 = v82;
                          }

                          if (v83)
                          {
                            std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v83);
                          }

                          v75 = 0;
                          *(8 * v81) = v79;
                          v74 = (8 * v81 + 8);
                          memcpy(0, __src, v80);
                          if (__src)
                          {
                            operator delete(__src);
                          }

                          __src = 0;
                        }

                        else
                        {
                          *v74++ = v77;
                        }

                        if (v201 == ++v73)
                        {
                          goto LABEL_186;
                        }
                      }

                      v251 = v75;
                      *&buf = __src;
                      if (__src)
                      {
                        *(&buf + 1) = __src;
                        operator delete(__src);
                      }

                      goto LABEL_192;
                    }

                    v74 = *(&buf + 1);
                    __src = buf;
LABEL_186:
                    if (__src != v74)
                    {
                      v86 = (*(*v205 + 312))(v205, v208, v209, v207, (v74 - __src) & 0xFFFFFFF8, __src);
                      if (v86)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "applyPropertyStripScalarValue");
                        if (v205[55] < 0)
                        {
                          v203 = *v203;
                        }

                        std::to_string(&v228, *__src);
                        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v176 = &v228;
                        }

                        else
                        {
                          v176 = v228.__r_.__value_.__r.__words[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u to [%s, ...] from property strip key %s failed with error %d", v175, v203, v208, v209, v207, v176, "UInt64", v86);
                      }

                      if (__src)
                      {
                        operator delete(__src);
                        v199 = __src;
                      }

                      else
                      {
                        v199 = 0;
                      }

                      goto LABEL_312;
                    }

                    if (v74)
                    {
                      operator delete(__src);
                    }

                    v199 = __src;
                  }

                  else
                  {
LABEL_192:
                    v199 &= 0xFFFFFFFFFFFFFF00;
                  }

                  v87 = theDict;
                  if (!theDict)
                  {
                    goto LABEL_374;
                  }

                  v88 = applesauce::CF::details::at_key<char const*&>(theDict, "Float32");
                  if (v88)
                  {
                    v89 = applesauce::CF::convert_as<float,0>(v88);
                    if (HIDWORD(v89))
                    {
                      LODWORD(__p[0]) = v89;
                      v103 = (*(*v205 + 312))(v205, v208, v209, v207, 4, __p);
                      if (v103)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "applyPropertyStripScalarValue");
                        if (v205[55] < 0)
                        {
                          v203 = *v203;
                        }

                        std::to_string(&v228, *__p);
                        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v165 = &v228;
                        }

                        else
                        {
                          v165 = v228.__r_.__value_.__r.__words[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v164, v203, v208, v209, v207, v165, "Float32", v103);
                      }

                      goto LABEL_312;
                    }
                  }

                  v90 = applesauce::CF::details::at_key<char const*&>(v87, "Float32");
                  if (v90 && (v91 = v90, v92 = CFArrayGetTypeID(), v92 == CFGetTypeID(v91)))
                  {
                    v93 = CFArrayGetCount(v91);
                    if (v93 << 32)
                    {
                      v93 = v93;
                      if (!(v93 >> 62))
                      {
                        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v93);
                      }

                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    if (v93 < 1)
                    {
                      v197 = 0;
                    }

                    else
                    {
                      v136 = CFArrayGetValueAtIndex(v91, 0);
                      if (applesauce::CF::convert_as<float,0>(v136) >> 32)
                      {
                        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
                      }

                      v197 &= 0xFFFFFFFFFFFFFF00;
                    }
                  }

                  else
                  {
                    v197 &= 0xFFFFFFFFFFFFFF00;
                  }

                  v94 = theDict;
                  if (!theDict)
                  {
LABEL_374:
                    v158 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v158, "Could not construct");
                  }

                  v95 = applesauce::CF::details::at_key<char const*&>(theDict, "Float64");
                  if (v95)
                  {
                    v96 = applesauce::CF::convert_as<double,0>(v95);
                    if (v97)
                    {
                      __p[0] = v96;
                      v98 = (*(*v205 + 312))(v205, v208, v209, v207, 8, __p);
                      if (v98)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "applyPropertyStripScalarValue");
                        if (v205[55] < 0)
                        {
                          v203 = *v203;
                        }

                        std::to_string(&v228, *__p);
                        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v171 = &v228;
                        }

                        else
                        {
                          v171 = v228.__r_.__value_.__r.__words[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v170, v203, v208, v209, v207, v171, "Float64", v98);
                      }

                      goto LABEL_312;
                    }
                  }

                  v99 = applesauce::CF::details::at_key<char const*&>(v94, "Float64");
                  if (v99 && (v100 = v99, v101 = CFArrayGetTypeID(), v101 == CFGetTypeID(v100)))
                  {
                    v102 = CFArrayGetCount(v100);
                    if (v102 << 32)
                    {
                      v102 = v102;
                      if (!(v102 >> 61))
                      {
                        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v102);
                      }

                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    if (v102 < 1)
                    {
                      v195 = 0;
                    }

                    else
                    {
                      v137 = CFArrayGetValueAtIndex(v100, 0);
                      applesauce::CF::convert_as<double,0>(v137);
                      if (v138)
                      {
                        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](1uLL);
                      }

                      v195 &= 0xFFFFFFFFFFFFFF00;
                    }
                  }

                  else
                  {
                    v195 &= 0xFFFFFFFFFFFFFF00;
                  }

                  v104 = theDict;
                  if (!theDict)
                  {
                    v163 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v163, "Could not construct");
                  }

                  v105 = CFStringCreateWithBytes(0, "FilePath", 8, 0x8000100u, 0);
                  *&buf = v105;
                  if (!v105)
                  {
                    v140 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v140, "Could not construct");
                  }

                  v106 = CFDictionaryGetValue(v104, v105);
                  if (buf)
                  {
                    CFRelease(buf);
                  }

                  if (v106)
                  {
                    CFRetain(v106);
                    v107 = CFGetTypeID(v106);
                    if (v107 == CFStringGetTypeID())
                    {
                      __p[0] = v106;
                      LOBYTE(__p[1]) = 1;
                      DSPGraph::createAbsoluteURL(anURL, v106, a3);
                      if (!anURL[0])
                      {
                        v180 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v180, "Could not construct");
                      }

                      v108 = CFURLCopyFileSystemPath(anURL[0], kCFURLPOSIXPathStyle);
                      v223[0] = v108;
                      if (!v108)
                      {
                        goto LABEL_395;
                      }

                      v109 = CFGetTypeID(v108);
                      if (v109 != CFStringGetTypeID())
                      {
                        v177 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v177, "Could not construct");
                      }

                      if (!v223[0])
                      {
LABEL_395:
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                        if (__p[1])
                        {
                          v166 = applesauce::CF::StringRef::operator->(__p);
                          std::string::basic_string[abi:ne200100]<0>(v214, "???");
                          v168 = applesauce::CF::StringRef_proxy::convert_or(&v228, *v166, v214);
                          if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v169 = &v228;
                          }

                          else
                          {
                            v169 = v228.__r_.__value_.__r.__words[0];
                          }

                          DSPGraph::strprintf("Couldn't create file path '%s'. CFURLCopyFileSystemPath failed.", v167, v168, v169);
                        }

                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      v228.__r_.__value_.__l.__data_ = v223[0];
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v110 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v111 = v205 + 32;
                          if (v205[55] < 0)
                          {
                            v111 = *v203;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v111;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v110, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      v112 = (*(*v205 + 312))(v205, v208, v209, v207, 8, &v228);
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v113 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v114 = v205 + 32;
                          if (v205[55] < 0)
                          {
                            v114 = *v203;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v114;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v113, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      if (v112)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                        v179 = v217;
                        if ((v218 & 0x80u) != 0)
                        {
                          v179 = v217[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v178, v179, v208, v209, v207, v112);
                      }

                      if (v223[0])
                      {
                        CFRelease(v223[0]);
                      }

                      v115 = anURL[0];
                      if (anURL[0])
                      {
LABEL_297:
                        CFRelease(v115);
                      }

LABEL_298:
                      if (LOBYTE(__p[1]) == 1 && __p[0])
                      {
                        CFRelease(__p[0]);
                      }

                      goto LABEL_312;
                    }

                    CFRelease(v106);
                  }

                  LOBYTE(__p[0]) = 0;
                  LOBYTE(__p[1]) = 0;
                  v116 = applesauce::CF::details::at_key<char const(&)[5]>(v104, "Path");
                  if (v116)
                  {
                    v117 = v116;
                    CFRetain(v116);
                    v118 = CFGetTypeID(v117);
                    if (v118 == CFStringGetTypeID())
                    {
                      anURL[0] = v117;
                      LOBYTE(anURL[1]) = 1;
                      DSPGraph::createAbsoluteURL(v223, v117, a3);
                      v119 = CFReadStreamCreateWithFile(alloc, v223[0]);
                      v120 = v119;
                      v242 = v119;
                      if (!v119)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                        if (anURL[1])
                        {
                          v183 = applesauce::CF::StringRef::operator->(anURL);
                          std::string::basic_string[abi:ne200100]<0>(v213, "???");
                          v185 = applesauce::CF::StringRef_proxy::convert_or(&v228, *v183, v213);
                          if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v186 = &v228;
                          }

                          else
                          {
                            v186 = v228.__r_.__value_.__r.__words[0];
                          }

                          DSPGraph::strprintf("Couldn't load plist from path '%s'. CFReadStreamCreateWithFile failed.", v184, v185, v186);
                        }

                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      CFReadStreamOpen(v119);
                      v121 = CFPropertyListCreateWithStream(alloc, v120, 0, 0, 0, 0);
                      v226 = v121;
                      CFReadStreamClose(v120);
                      if (!v121)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                        if (anURL[1])
                        {
                          v187 = applesauce::CF::StringRef::operator->(anURL);
                          std::string::basic_string[abi:ne200100]<0>(v212, "???");
                          v189 = applesauce::CF::StringRef_proxy::convert_or(&v228, *v187, v212);
                          if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v190 = &v228;
                          }

                          else
                          {
                            v190 = v228.__r_.__value_.__r.__words[0];
                          }

                          DSPGraph::strprintf("Couldn't load plist from path '%s'. CFPropertyListCreateWithStream failed.", v188, v189, v190);
                        }

                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      v228.__r_.__value_.__r.__words[0] = v121;
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v122 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v123 = v205 + 32;
                          if (v205[55] < 0)
                          {
                            v123 = *v203;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v123;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v122, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      v124 = (*(*v205 + 312))(v205, v208, v209, v207, 8, &v228);
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v125 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v126 = v205 + 32;
                          if (v205[55] < 0)
                          {
                            v126 = *v203;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v126;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v125, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      if (v124)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                        v182 = v217;
                        if ((v218 & 0x80u) != 0)
                        {
                          v182 = v217[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v181, v182, v208, v209, v207, v124);
                      }

                      CFRelease(v121);
                      CFRelease(v120);
                      v127 = v223[0];
                      if (v223[0])
                      {
                        goto LABEL_294;
                      }

                      goto LABEL_295;
                    }

                    CFRelease(v117);
                  }

                  LOBYTE(anURL[0]) = 0;
                  LOBYTE(anURL[1]) = 0;
                  v128 = CFStringCreateWithBytes(0, "URL", 3, 0x8000100u, 0);
                  *&buf = v128;
                  if (!v128)
                  {
                    v174 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v174, "Could not construct");
                  }

                  v129 = CFDictionaryGetValue(v104, v128);
                  if (buf)
                  {
                    CFRelease(buf);
                  }

                  if (v129)
                  {
                    CFRetain(v129);
                    v130 = CFGetTypeID(v129);
                    if (v130 == CFStringGetTypeID())
                    {
                      v228.__r_.__value_.__r.__words[0] = v129;
                      v228.__r_.__value_.__s.__data_[8] = 1;
                      DSPGraph::createAbsoluteURL(v223, v129, a3);
                      v242 = v223[0];
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v131 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v132 = v205 + 32;
                          if (v205[55] < 0)
                          {
                            v132 = *v203;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v132;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v131, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      v133 = (*(*v205 + 312))(v205, v208, v209, v207, 8, &v242);
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v206 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v134 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v135 = v205 + 32;
                          if (v205[55] < 0)
                          {
                            v135 = *v203;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v135;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v134, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      if (v133)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                        v173 = v217;
                        if ((v218 & 0x80u) != 0)
                        {
                          v173 = v217[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v172, v173, v208, v209, v207, v133);
                      }

                      if (v223[0])
                      {
                        CFRelease(v223[0]);
                      }

                      if (v228.__r_.__value_.__s.__data_[8] == 1)
                      {
                        v127 = v228.__r_.__value_.__r.__words[0];
                        if (v228.__r_.__value_.__r.__words[0])
                        {
LABEL_294:
                          CFRelease(v127);
                        }
                      }

LABEL_295:
                      if (LOBYTE(anURL[1]) == 1)
                      {
                        v115 = anURL[0];
                        if (anURL[0])
                        {
                          goto LABEL_297;
                        }
                      }

                      goto LABEL_298;
                    }

                    CFRelease(v129);
                  }

                  v228.__r_.__value_.__s.__data_[0] = 0;
                  v228.__r_.__value_.__s.__data_[8] = 0;
                  std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
                  std::string::basic_string[abi:ne200100]<0>(&v232, "Must provide either a 'Value', 'Data', 'Path', 'FilePath', 'URL', or a recognized number type for properties");
                  DSPGraph::ThrowException(1886548769, &buf, 2255, &v244, &v232);
                }

                LODWORD(__p[0]) = v59;
                v84 = (*(*v205 + 312))(v205, v208, v209, v207, 4, __p);
                if (v84)
                {
                  std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v244, "applyPropertyStripScalarValue");
                  if (v205[55] < 0)
                  {
                    v203 = *v203;
                  }

                  std::to_string(&v228, __p[0]);
                  if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v157 = &v228;
                  }

                  else
                  {
                    v157 = v228.__r_.__value_.__r.__words[0];
                  }

                  DSPGraph::strprintf("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v156, v203, v208, v209, v207, v157, "UInt32", v84);
                }

LABEL_313:
                if (BYTE8(v240) == 1 && v240)
                {
                  CFRelease(v240);
                }
              }

LABEL_316:
              if (v216 == 1 && theDict)
              {
                CFRelease(theDict);
              }

              ++v211;
            }
          }

          CFRelease(cf);
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
        std::string::basic_string[abi:ne200100]<0>(&v232, "'Properties' array not found in BoxInfo dictionary");
        DSPGraph::ThrowException(1886548769, &buf, 2075, &v244, &v232);
      }
    }

    else
    {
      LOBYTE(v217[0]) = 0;
      v219 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v244, "setPropertyStrip");
    std::string::basic_string[abi:ne200100]<0>(&v232, "'Name' not found in BoxInfo dictionary");
    DSPGraph::ThrowException(1886548769, &buf, 2062, &v244, &v232);
  }

  CFRelease(theArray);
  if (v222)
  {
    CFRelease(v222);
  }

  v141 = *MEMORY[0x1E69E9840];
}

void sub_18F65FF4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CFTypeRef a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57, CFTypeRef cf, char a59, CFTypeRef a60)
{
  if (a57 == 1 && a56 < 0)
  {
    operator delete(__p);
  }

  if ((a59 & 1) != 0 && cf)
  {
    CFRelease(cf);
  }

  if (a21)
  {
    CFRelease(a21);
  }

  if (a60)
  {
    CFRelease(a60);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F65FF54(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F65FF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, CFTypeRef a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CFTypeRef cf, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57, const void *a58, char a59, const void *a60)
{
  __cxa_free_exception(v60);
  std::optional<applesauce::CF::DataRef>::~optional(&STACK[0x280]);
  if (a50 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (a38)
  {
    CFRelease(a38);
  }

  if (a57 == 1 && a56 < 0)
  {
    operator delete(a51);
  }

  if ((a59 & 1) != 0 && a58)
  {
    CFRelease(a58);
  }

  if (a21)
  {
    CFRelease(a21);
  }

  if (a60)
  {
    CFRelease(a60);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F65FF90(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x18F660424);
}

void sub_18F65FFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, const void *a49, char a50)
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (*(v50 - 225) < 0)
  {
    operator delete(*(v50 - 248));
  }

  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (a50 == 1 && a49)
  {
    CFRelease(a49);
  }

  if (a38)
  {
    CFRelease(a38);
  }

  JUMPOUT(0x18F660388);
}

void sub_18F660000()
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (*(v1 - 225) < 0)
  {
    operator delete(*(v1 - 248));
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  CFRelease(v0);
  JUMPOUT(0x18F660360);
}

void sub_18F660084(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x18F660424);
}

void sub_18F660094()
{
  __cxa_free_exception(v0);
  CFRelease(v1);
  JUMPOUT(0x18F660360);
}

void sub_18F6600A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a2)
  {
    *(v34 - 168) = v32;
    *(v34 - 160) = v33;
    *(v34 - 176) = a32;
    JUMPOUT(0x18F66042CLL);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6600C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, const void *a49, char a50)
{
  __cxa_free_exception(v50);
  if (a50 == 1 && a49)
  {
    CFRelease(a49);
  }

  if (a38)
  {
    CFRelease(a38);
  }

  JUMPOUT(0x18F660388);
}

void sub_18F660108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, const void *a49, char a50)
{
  if (a50 == 1 && a49)
  {
    CFRelease(a49);
  }

  if (a38)
  {
    CFRelease(a38);
  }

  JUMPOUT(0x18F660388);
}

void sub_18F66011C()
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (STACK[0x2A0])
  {
    CFRelease(STACK[0x2A0]);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  v3 = *(v2 - 208);
  if (v3)
  {
    *(v2 - 200) = v3;
    operator delete(v3);
  }

  v4 = *(v2 - 232);
  if (v4)
  {
    *(v2 - 224) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 136);
  if (v5)
  {
    *(v2 - 128) = v5;
    operator delete(v5);
  }

  v6 = *(v2 - 160);
  if (v6)
  {
    *(v2 - 152) = v6;
    operator delete(v6);
  }

  v7 = *(v2 - 184);
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v1);
  JUMPOUT(0x18F660360);
}

void sub_18F6603D8(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6603E0(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6603E8(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6603F0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F6603F4);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6603F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F6603FCLL);
  }

  __clang_call_terminate();
}

void sub_18F66041C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void *applesauce::CF::details::at_key<char const(&)[6]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_18F6604E8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F660498);
}

void applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(_BYTE *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3)
  {
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_6;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    CFRelease(v7);
LABEL_6:
    v9 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  *a1 = v7;
  v9 = 1;
LABEL_7:
  a1[8] = v9;
}

const void *applesauce::CF::details::at_key<char const(&)[5]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_18F660698(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F660648);
}

CFTypeID applesauce::CF::convert_as<std::string,0>(uint64_t a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  result = CFGetTypeID(a2);
  if (TypeID == result)
  {
    result = applesauce::CF::details::CFString_get_value<false>(&v7, a2);
    *a1 = v7;
    *(a1 + 16) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v6;
  return result;
}

_BYTE *applesauce::CF::details::CFString_get_value<false>(UInt8 *a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  Length = CFStringGetLength(theString);
  maxBufLen = 0;
  v9.location = 0;
  v9.length = Length;
  CFStringGetBytes(theString, v9, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  std::string::basic_string[abi:ne200100](a1, maxBufLen);
  if ((a1[23] & 0x80u) == 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v10.location = 0;
  v10.length = Length;
  return CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
}

const void *applesauce::CF::details::at_key<char const*&>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_18F660908(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F6608F4);
}

unint64_t DSPGraph::Graph::setPropertyStrip(__CFDictionary const*,__CFString const*)::$_0::operator()<char const*>(const __CFDictionary **a1, char *a2)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = applesauce::CF::details::at_key<char const*&>(v3, a2);
  if (v5)
  {
    v6 = applesauce::CF::convert_as<unsigned int,0>(v5);
    v7 = v6;
    v8 = v6 >> 8;
    v9 = HIDWORD(v6);
    if ((v6 & 0x100000000) != 0)
    {
      return v7 | (v8 << 8) | (v9 << 32);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    v8 = 0;
    v7 = 0;
  }

  if (!*a1)
  {
LABEL_22:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v10 = applesauce::CF::details::at_key<char const*&>(*a1, a2);
  if (v10)
  {
    applesauce::CF::convert_as<std::string,0>(__p, v10);
    if (v19)
    {
      *v16 = 0;
      v12 = v18 >= 0 ? __p : __p[0];
      if (DSPGraph::StrToOSType(v12, v16, v11))
      {
        v13 = 0;
        v7 = v16[0];
        v8 = *v16 >> 8;
        LOBYTE(v9) = 1;
        goto LABEL_16;
      }
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    v19 = 0;
  }

  v13 = 1;
LABEL_16:
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    LOBYTE(v9) = 0;
    v7 = 0;
  }

  return v7 | (v8 << 8) | (v9 << 32);
}

void sub_18F660AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *applesauce::CF::details::at_key<__CFString const*>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

void std::vector<AudioStreamPacketDescription>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F660C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioConverterServer::setup(AudioConverterServer *this, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
  MEMORY[0x193ADEE30](v33, this);
  std::string::basic_string[abi:ne200100]<0>(&v29, " (");
  v4 = strlen(a2);
  v5 = std::string::insert(&v29, 0, a2, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if ((v36 & 0x10) != 0)
  {
    v8 = v35;
    if (v35 < v34)
    {
      v35 = v34;
      v8 = v34;
    }

    v9 = v33[6];
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v7 = 0;
      v28 = 0;
      goto LABEL_14;
    }

    v9 = v33[3];
    v8 = v33[5];
  }

  v7 = v8 - v9;
  if ((v8 - v9) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v8 - v9;
  if (v7)
  {
    memmove(__dst, v9, v7);
  }

LABEL_14:
  *(__dst + v7) = 0;
  if ((v28 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v11 = v28;
  }

  else
  {
    v11 = __dst[1];
  }

  v12 = std::string::append(&v30, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v20, ")", 1uLL);
  v15 = v14->__r_.__value_.__r.__words[0];
  size = v14->__r_.__value_.__l.__size_;
  v31[0] = v14->__r_.__value_.__r.__words[2];
  *(v31 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
  v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
LABEL_28:
    v20.__r_.__value_.__r.__words[0] = v15;
    v20.__r_.__value_.__l.__size_ = size;
    LODWORD(v20.__r_.__value_.__r.__words[2]) = v31[0];
    *(&v20.__r_.__value_.__r.__words[2] + 3) = *(v31 + 3);
    *(&v20.__r_.__value_.__s + 23) = v17;
    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external(&v20, v15, size);
LABEL_31:
  v21 = 1;
  v22 = xmmword_18F901970;
  v23 = 1;
  v24 = 1;
  v25 = 0;
  v26 = 0;
  *(this + 6) = xmmword_18F901970;
  v18 = voucher_copy();
  v19 = v18;
  if (v18)
  {
    CFRetain(v18);
  }

  v29.__r_.__value_.__l.__size_ = this;
  if (*(this + 88) == 1)
  {
    caulk::thread::~thread((this + 72));
    *(this + 88) = 0;
  }

  *(this + 9) = 0;
  *(this + 80) = 0;
  v29.__r_.__value_.__r.__words[0] = 0;
  v30.__r_.__value_.__r.__words[0] = v19;
  v30.__r_.__value_.__l.__size_ = this;
  operator new();
}

void sub_18F661114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  operator delete(v58);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a42);
  MEMORY[0x193ADF120](&a58);
  _Unwind_Resume(a1);
}

void sub_18F6615A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf, int a12, int a13, __int16 a14, int a15, __int16 a16, uint64_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_18F661A64(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x193ADF120](v1);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_18F661AF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void caulk::__expected_detail::destroy<std::tuple<unsigned long long,std::vector<unsigned int>,std::vector<unsigned int>>,(void *)0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

uint64_t TMarshaller<AudioStreamBasicDescription>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if (*a4 == 40 || *a4 == 0)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x28uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v8 = *(a2 + 32) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

swix::data *swix::data::data(swix::data *this, xpc_object_t object)
{
  *this = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *this = xpc_null_create();
  }

  return this;
}

void pooledRenderer::AudioConverterOOP::Impl::updateSpanDetailsAndPropertyConfig(uint64_t a1, int **a2, unsigned int **a3)
{
  v6 = **a2;
  v7 = **a3;
  if (v6)
  {
    *(a1 + 296) = v6;
  }

  *(a1 + 288) = v7 != 0;
  std::vector<AudioStreamPacketDescription>::resize(*(a1 + 272), v7);
  v8 = (*a2)[1];
  v9 = (*a3)[1];
  if (v8)
  {
    *(a1 + 392) = v8;
  }

  *(a1 + 384) = v9 != 0;
  std::vector<AudioStreamPacketDescription>::resize(*(a1 + 368), v9);
  v10 = *a2;
  v11 = **a2;
  *(a1 + 200) = v11;
  *(a1 + 72) = v11;
  *(a1 + 128) = v10[1];
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(void *result, char *__src, char *a3)
{
  v5 = result;
  v6 = result[2];
  v7 = *result;
  if ((v6 - *result) < 5)
  {
    if (v7)
    {
      result[1] = v7;
      operator delete(v7);
      v6 = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v8 = v6 >> 1;
    if ((v6 >> 1) <= 2)
    {
      v8 = 2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<float>::__vallocate[abi:ne200100](v5, v9);
  }

  v10 = result[1];
  v11 = v10 - v7;
  if ((v10 - v7) > 4)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v7[v16];
  }

  else
  {
    if (v10 != v7)
    {
      result = memmove(*result, __src, v10 - v7);
      v10 = v5[1];
    }

    v12 = &__src[v11];
    v13 = v10;
    if (&__src[v11] != a3)
    {
      v13 = v10;
      do
      {
        v14 = *v12;
        v12 += 4;
        *v13 = v14;
        v13 += 4;
      }

      while (v12 != a3);
    }

    v15 = v13;
  }

  v5[1] = v15;
  return result;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F661E70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void *swix::coder<std::span<unsigned int const,18446744073709551615ul>>::decode(void *a1, const char *a2)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  result = 0;
  if (data && length)
  {
    if ((length & 0xFFFFFFFFFFFFFFFCLL) != length)
    {
      std::to_string(&v13, length & 0xFFFFFFFFFFFFFFFCLL);
      v4 = std::string::insert(&v13, 0, "invalid array size (", 0x14uLL);
      v5 = *&v4->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v14, "/", 1uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v15.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v12, length);
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v12;
      }

      else
      {
        v8 = v12.__r_.__value_.__r.__words[0];
      }

      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v12.__r_.__value_.__l.__size_;
      }

      v10 = std::string::append(&v15, v8, size);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      swix::decode_message::throw_error(&v16);
    }

    return data;
  }

  return result;
}

void sub_18F661FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

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

uint64_t acv2::CodecConverter::GetProperty(acv2::CodecConverter *this, signed int a2, unsigned int *a3, AudioFormatListItem *a4)
{
  if (HIBYTE(a2) == 94 && acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
  {
    goto LABEL_3;
  }

  if (a2 <= 1668114274)
  {
    if (a2 > 1634038641)
    {
      if (a2 > 1651663219)
      {
        if (a2 == 1651663220)
        {
          if (*a3 == 4)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
            v8 = *(this + 21);
            v9 = 1651663220;
            goto LABEL_4;
          }
        }

        else
        {
          if (a2 != 1667527029)
          {
            goto LABEL_95;
          }

          if (*a3 == 4)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
            v8 = *(this + 21);
            v9 = 1936876401;
            goto LABEL_4;
          }
        }

        return 561211770;
      }

      if (a2 == 1634038642)
      {
        if (*(this + 204) == 1)
        {
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          LOBYTE(outPropertyData[0]) = 0;
          LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
          PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x6F737261u, &ioPropertyDataSize, outPropertyData);
          if (PropertyInfo)
          {
            return PropertyInfo;
          }

          if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
          {
            v25 = *(this + 21);
            v27 = 1869836897;
            goto LABEL_91;
          }

          return 561211770;
        }
      }

      else
      {
        if (a2 != 1634366322)
        {
          goto LABEL_95;
        }

        if (*(this + 204) == 1)
        {
          if (*(this + 208) != 1)
          {
            return 1869627199;
          }

          if (*a3 == 8)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
            LODWORD(outPropertyData[0]) = 0;
            LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 4;
            if (!AudioCodecGetProperty(*(this + 21), 0x75727372u, &ioPropertyDataSize, outPropertyData) && LODWORD(outPropertyData[0]))
            {
              PropertyInfo = 0;
              a4->mASBD.mSampleRate = 0.0;
              return PropertyInfo;
            }

            LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 8;
            v25 = *(this + 21);
            p_ioPropertyDataSize = &ioPropertyDataSize;
            v27 = 1668248434;
            return AudioCodecGetProperty(v25, v27, p_ioPropertyDataSize, a4);
          }

          return 561211770;
        }
      }
    }

    else
    {
      if (a2 <= 1634034289)
      {
        if (a2 == 1633904996)
        {
          if (*a3 != 40)
          {
            return 561211770;
          }

          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          PropertyInfo = 0;
          if (*(this + 204) == 1)
          {
            v29 = *(this + 20);
            v14 = *v29;
            v15 = v29[1];
            v16 = *(v29 + 4);
          }

          else
          {
            v14 = *(this + 1);
            v15 = *(this + 2);
            v16 = *(this + 6);
          }
        }

        else
        {
          if (a2 != 1633906532)
          {
            goto LABEL_95;
          }

          if (*a3 != 40)
          {
            return 561211770;
          }

          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          PropertyInfo = 0;
          if (*(this + 205) == 1)
          {
            v13 = *(this + 20);
            v14 = *(v13 + 40);
            v15 = *(v13 + 56);
            v16 = *(v13 + 72);
          }

          else
          {
            v14 = *(this + 56);
            v15 = *(this + 72);
            v16 = *(this + 11);
          }
        }

        *&a4->mASBD.mBitsPerChannel = v16;
        *&a4->mASBD.mSampleRate = v14;
        *&a4->mASBD.mBytesPerPacket = v15;
        return PropertyInfo;
      }

      if (a2 == 1634034290)
      {
        if (*(this + 204) == 1)
        {
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          LOBYTE(outPropertyData[0]) = 0;
          LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
          PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x62727461u, &ioPropertyDataSize, outPropertyData);
          if (PropertyInfo)
          {
            return PropertyInfo;
          }

          if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
          {
            v25 = *(this + 21);
            v27 = 1651668065;
            goto LABEL_91;
          }

          return 561211770;
        }
      }

      else
      {
        if (a2 != 1634034540)
        {
          goto LABEL_95;
        }

        if (*(this + 204) == 1)
        {
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          LOBYTE(outPropertyData[0]) = 0;
          LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
          PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x616F636Cu, &ioPropertyDataSize, outPropertyData);
          if (PropertyInfo)
          {
            return PropertyInfo;
          }

          if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
          {
            v25 = *(this + 21);
            v26 = 25452;
LABEL_63:
            v27 = v26 | 0x616F0000;
LABEL_91:
            p_ioPropertyDataSize = a3;
            return AudioCodecGetProperty(v25, v27, p_ioPropertyDataSize, a4);
          }

          return 561211770;
        }
      }
    }

    return 1886547824;
  }

  if (a2 > 1986355825)
  {
    if (a2 > 2020172402)
    {
      switch(a2)
      {
        case 2020172403:
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          PropertyInfo = 0;
          v12 = *(this + 90);
          goto LABEL_98;
        case 2020175987:
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          if (*(this + 205) != 1)
          {
            PropertyInfo = 0;
            v12 = *(this + 8);
            goto LABEL_98;
          }

          goto LABEL_72;
        case 2020569203:
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          if (*(this + 204) != 1)
          {
            PropertyInfo = 0;
            v12 = *(this + 18);
LABEL_98:
            LODWORD(a4->mASBD.mSampleRate) = v12;
            return PropertyInfo;
          }

LABEL_72:
          PropertyInfo = 0;
          v12 = *(this + 91);
          goto LABEL_98;
      }

      goto LABEL_95;
    }

    if (a2 == 1986355826)
    {
      if (*(this + 204) == 1)
      {
        acv2::CodecConverter::CheckInitialize(this, 0, 0);
        LOBYTE(outPropertyData[0]) = 0;
        LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
        PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x61627274u, &ioPropertyDataSize, outPropertyData);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
        {
          v25 = *(this + 21);
          v27 = 1633841780;
          goto LABEL_91;
        }

        return 561211770;
      }
    }

    else
    {
      if (a2 != 1986360178)
      {
        goto LABEL_95;
      }

      if (*(this + 204) == 1)
      {
        acv2::CodecConverter::CheckInitialize(this, 0, 0);
        LOBYTE(outPropertyData[0]) = 0;
        LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
        PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x616F7372u, &ioPropertyDataSize, outPropertyData);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
        {
          v25 = *(this + 21);
          v26 = 29554;
          goto LABEL_63;
        }

        return 561211770;
      }
    }

    return 1886547824;
  }

  if (a2 <= 1835623026)
  {
    if (a2 == 1668114275)
    {
      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      acv2::CodecConverter::CheckInitialize(this, 0, 0);
      PropertyInfo = AudioCodecGetProperty(*(this + 21), 0x6B756B69u, a3, a4);
      v28 = *(this + 19);
      if (!v28 || PropertyInfo)
      {
        return PropertyInfo;
      }

      if (*a3)
      {
        AudioConverterCapturer::setDecompressionCookie(v28, a4, *a3);
      }
    }

    else
    {
      if (a2 != 1718383476)
      {
        goto LABEL_95;
      }

      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      if (*a3 < 0x30)
      {
        return 561211770;
      }

      acv2::CodecConverter::GetCodecCookie(outPropertyData, this);
      v17 = *(this + 72);
      *&ioPropertyDataSize.mASBD.mSampleRate = *(this + 56);
      *&ioPropertyDataSize.mASBD.mBytesPerPacket = v17;
      v18 = outPropertyData[0];
      *&ioPropertyDataSize.mASBD.mBitsPerChannel = *(this + 11);
      ioPropertyDataSize.mMagicCookie = outPropertyData[0];
      ioPropertyDataSize.mMagicCookieSize = gsl::narrow<unsigned int,unsigned long>(outPropertyData[1] - outPropertyData[0]);
      v19 = *a3;
      v20 = *(this + 21);
      outSize = 0;
      if (AudioCodecGetPropertyInfo(v20, 0x6163666Cu, &outSize, 0))
      {
        goto LABEL_31;
      }

      v21 = outSize;
      if (v19 < outSize)
      {
        v21 = v19;
      }

      v33 = v21;
      if (GetFormatListFromCodec(*(this + 21), &ioPropertyDataSize, &v33, a4))
      {
LABEL_31:
        v22 = *(this + 56);
        v23 = *(this + 72);
        *&a4->mASBD.mBitsPerChannel = *(this + 11);
        *&a4->mASBD.mSampleRate = v22;
        *&a4->mASBD.mBytesPerPacket = v23;
        a4->mChannelLayoutTag = a4->mASBD.mChannelsPerFrame | 0xFFFF0000;
        v24 = 48;
      }

      else
      {
        v24 = v33;
      }

      *a3 = v24;
      if (v18)
      {
        operator delete(v18);
      }
    }

    return 0;
  }

  if (a2 == 1835623027)
  {
    PropertyInfo = 0;
    LODWORD(a4->mASBD.mSampleRate) = 0;
    return PropertyInfo;
  }

  if (a2 == 1886353266)
  {
    if (acv2::CodecConverter::CodecSupportsProperty(*(this + 21), 0x706F7772u))
    {
      v8 = *(this + 21);
      v9 = 1886353266;
      goto LABEL_4;
    }

    return 1886547824;
  }

LABEL_95:
  if (acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
  {
    acv2::CodecConverter::CheckInitialize(this, 0, 0);
LABEL_3:
    v8 = *(this + 21);
    v9 = a2;
LABEL_4:

    return AudioCodecGetProperty(v8, v9, a3, a4);
  }

  PropertyInfo = 1886547824;
  v31 = *(this + 90);
  if (!v31 || !acv2::PostDecodeRenderer::SupportsProperty(*(v31 + 8), a2))
  {
    return PropertyInfo;
  }

  v32 = *(*(this + 90) + 8);

  return AudioUnitGetProperty(v32, a2, 0, 0, a4, a3);
}

void sub_18F66285C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void TSimpleMarshaller<AudioStreamBasicDescription>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

BOOL TMarshaller<AudioStreamBasicDescription>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 40)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 40;
}

uint64_t acv2::CodecWrapper::GetCodecProperty<unsigned char>(AudioCodec *a1, AudioCodecPropertyID a2, std::vector<char> *a3)
{
  outSize = 0;
  outWritable = 0;
  result = AudioCodecGetPropertyInfo(*a1, a2, &outSize, &outWritable);
  if (!result)
  {
    begin = a3->__begin_;
    v8 = a3->__end_ - a3->__begin_;
    if (outSize <= v8)
    {
      if (outSize < v8)
      {
        a3->__end_ = &begin[outSize];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a3, outSize - v8);
      begin = a3->__begin_;
    }

    result = AudioCodecGetProperty(*a1, a2, &outSize, begin);
    if (!result)
    {
      v9 = a3->__end_ - a3->__begin_;
      if (outSize <= v9)
      {
        if (outSize < v9)
        {
          result = 0;
          a3->__end_ = &a3->__begin_[outSize];
          return result;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(a3, outSize - v9);
      }

      return 0;
    }
  }

  return result;
}

uint64_t acv2::AudioConverterChain::AddCodec(void *a1, uint64_t *a2)
{
  v2 = *a2;
  a1[43] = *a2;
  *a2 = 0;
  v5 = v2;
  acv2::AudioConverterChain::AddStep(a1, &v5);
  result = v5;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

void sub_18F662A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t acv2::CodecConverter::GetOutputLayout(acv2::CodecConverter *this, std::vector<char> *a2, unsigned __int8 *a3)
{
  acv2::CodecConverter::CheckInitialize(this, 0, 0);
  if (*(this + 90))
  {
    if ((this + 760) != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 95), *(this + 96), *(this + 96) - *(this + 95));
    }
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
    Codec = acv2::CodecWrapper::GetCodecProperty<unsigned char>(this + 21, 0x6F636C20u, &__p);
    begin = __p.__begin_;
    if (Codec)
    {
      if (__p.__begin_)
      {
        operator delete(__p.__begin_);
      }

      goto LABEL_16;
    }

    v8 = *(__p.__begin_ + 2);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(__p.__begin_ + 2);
    }

    v10 = 20 * v9 + 12;
    v11 = a2->__begin_;
    v12 = a2->__end_ - a2->__begin_;
    if (v10 <= v12)
    {
      if (v10 < v12)
      {
        a2->__end_ = &v11[v10];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a2, v10 - v12);
      v11 = a2->__begin_;
      v8 = *(begin + 2);
    }

    memcpy(v11, begin, 20 * v8 + 12);
    operator delete(begin);
  }

  LODWORD(__p.__begin_) = 0;
  if (AudioFormatProperty_NumberOfChannelsForLayout(a2->__begin_, &__p))
  {
LABEL_16:
    if ((this + 760) != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 95), *(this + 96), *(this + 96) - *(this + 95));
    }

    v13 = 0;
    *a3 = 1;
    return v13;
  }

  v15 = __p.__begin_;
  if (LODWORD(__p.__begin_) == *(this + 21))
  {
    return 0;
  }

  v13 = 1718449215;
  v16 = _os_log_pack_size();
  message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v16 + 88, 16);
  if (message)
  {
    v18 = message;
    v19 = _os_log_pack_fill();
    v20 = *(this + 21);
    *v19 = 67109376;
    *(v19 + 4) = v15;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v20;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v18);
  }

  return v13;
}

audioipc::eventlink_primitive *audioipc::eventlink_primitive::eventlink_primitive(audioipc::eventlink_primitive *this, id a2)
{
  *this = 0;
  *(this + 2) = 0;
  applesauce::dispatch::v1::queue::operator*(a2);
  objc_claimAutoreleasedReturnValue();
  v4 = xpc_dictionary_copy_mach_send();

  v5 = os_eventlink_create_with_port();
  v6 = *this;
  *this = v5;

  mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  return this;
}

IOSurfaceRef *audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::ipc_node_base(IOSurfaceRef *a1, xpc_object_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(*a2, "sharedMemory");
  v6 = caulk::mach::details::retain_os_object(value, v5);
  caulk::mach::details::release_os_object(0, v7);
  *a1 = 0;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "no object");
  }

  v8 = v6;
  v9 = xpc_dictionary_get_value(v8, "surface");
  v11 = caulk::mach::details::retain_os_object(v9, v10);
  caulk::mach::details::release_os_object(0, v12);

  v13 = v11;
  v14 = IOSurfaceLookupFromXPCObject(v13);
  v15 = *a1;
  *a1 = v14;
  if (v15)
  {
    CFRelease(v15);
  }

  if (!*a1)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v25 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "unilaterally_billed_shared_memory.mm";
      v30 = 1024;
      v31 = 50;
      _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on IOSurfaceLookupFromXPCObject", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "bad IOSurface");
  }

  v16 = v8;
  v27 = xpc_dictionary_copy_mach_send();

  v17 = *a1;
  v18 = IOSurfaceSetOwnershipIdentity();
  if (v18)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v19 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "unilaterally_billed_shared_memory.mm";
      v30 = 1024;
      v31 = 67;
      v32 = 1024;
      v33 = v18;
      _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on IOSurfaceSetOwnershipIdentity, memory will most likely be billed to both processes: %u", buf, 0x18u);
    }
  }

  caulk::mach::mach_port::~mach_port(&v27);
  caulk::mach::details::release_os_object(v13, v20);
  caulk::mach::details::release_os_object(v16, v21);
  a1[1] = (unilaterally_billed_shared_memory::get_raw_ptr(a1, 0) + 8);
  a1[2] = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0);
  a1[3] = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0x10uLL);
  *(a1 + 16) = 1;
  audioipc::eventlink_primitive::eventlink_primitive((a1 + 5), *a2);
  v22 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F6630F0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  caulk::mach::details::release_os_object(v13, a2);
  applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(v11);
  caulk::mach::details::release_os_object(v12, v15);
  _Unwind_Resume(a1);
}

void caulk::mach::mach_port::~mach_port(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *this);
  }
}

uint64_t AudioFileObject::CreateDataFile(AudioFileObject *this, CFURLRef url, int *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    if (stat(buffer, &v8))
    {
      v4 = open(buffer, 2562, 420);
      *a3 = v4;
      if (v4 < 0)
      {
        v6 = *__error();
        if (v6 <= 0x1F)
        {
          if (((1 << v6) & 0x40022002) != 0)
          {
            result = 4294967242;
            goto LABEL_15;
          }

          if (((1 << v6) & 0x1800000) != 0)
          {
            result = 4294967254;
            goto LABEL_15;
          }

          if (v6 == 31)
          {
            result = 561017960;
            goto LABEL_15;
          }
        }

        result = 2003334207;
        goto LABEL_15;
      }

      result = 0;
    }

    else
    {
      result = 1886547263;
    }
  }

  else
  {
    result = 4294967253;
  }

LABEL_15:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t acv2::CodecConverter::GetInputLayout(acv2::CodecConverter *this, std::vector<char> *a2, unsigned __int8 *a3)
{
  acv2::CodecConverter::CheckInitialize(this, 0, 0);
  memset(&__p, 0, sizeof(__p));
  Codec = acv2::CodecWrapper::GetCodecProperty<unsigned char>(this + 21, 0x69636C20u, &__p);
  begin = __p.__begin_;
  if (Codec)
  {
    if (!__p.__begin_)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = *(__p.__begin_ + 2);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(__p.__begin_ + 2);
  }

  v10 = 20 * v9 + 12;
  v11 = a2->__begin_;
  v12 = a2->__end_ - a2->__begin_;
  if (v10 <= v12)
  {
    if (v10 < v12)
    {
      a2->__end_ = &v11[v10];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 - v12);
    v11 = a2->__begin_;
    v8 = *(begin + 2);
  }

  memcpy(v11, begin, 20 * v8 + 12);
  v21 = 0;
  if (AudioFormatProperty_NumberOfChannelsForLayout(a2->__begin_, &v21))
  {
LABEL_12:
    operator delete(begin);
LABEL_13:
    if ((this + 736) != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 92), *(this + 93), *(this + 93) - *(this + 92));
    }

    v13 = 0;
    *a3 = 1;
    return v13;
  }

  v15 = v21;
  if (v21 == *(this + 11))
  {
    v13 = 0;
  }

  else
  {
    v13 = 1718449215;
    v16 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v16 + 88, 16);
    if (message)
    {
      v18 = message;
      v19 = _os_log_pack_fill();
      v20 = *(this + 11);
      *v19 = 67109376;
      *(v19 + 4) = v15;
      *(v19 + 8) = 1024;
      *(v19 + 10) = v20;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v18);
    }
  }

  operator delete(begin);
  return v13;
}

void std::vector<AudioStreamPacketDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<acv2::CodecEncoderFactory::BuildCodecConverterChain(acv2::StreamDescPair const&,acv2::ChainBuildSettings const&,acv2::AudioConverterChain &,acv2::PCMConverterFactory &)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t a1)
{
  if (**a1 == 1)
  {
    AudioComponentInstanceDispose(**(a1 + 8));
  }

  return a1;
}

uint64_t CAFAudioFile::UpdateSize(CAFAudioFile *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(this + 18);
  v2 = *(this + 19) - v1;
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  v29 = 0;
  v28 = 0;
  v6 = 2;
  while (1)
  {
    v7 = v1 + 24 * v4;
    if (*v7 == 1684108385)
    {
      break;
    }

    v4 = v6++ - 1;
    if (v5 <= v4)
    {
      goto LABEL_5;
    }
  }

  v9 = *(v7 + 8) - 16;
  if ((*(*this + 232))(this) >= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - (*(*this + 232))(this);
  }

  *(v7 + 8) = (*(*this + 232))(this) + 16;
  result = (*(*this + 776))(this, v7, &v29);
  if (!result)
  {
    if (v10 >= 1)
    {
      v12 = *(this + 18);
      if (v12)
      {
        v13 = v6 - 1;
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v12) >> 3) > v13)
        {
          while (1)
          {
            v14 = v12 + 24 * v13;
            CADeprecated::CAAutoFree<char>::CAAutoFree(&v31, *(v14 + 8));
            v30 = 0;
            v15 = (*(**(this + 13) + 48))(*(this + 13), 0, *(v14 + 16), *(v14 + 8), v31, &v30);
            if (v15)
            {
              break;
            }

            if (*(v14 + 8) != v30)
            {
              v24 = 2003334207;
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_38;
              }

              *buf = 136315394;
              v33 = "CAFAudioFile.cpp";
              v34 = 1024;
              v35 = 317;
              v25 = MEMORY[0x1E69E9C10];
              v26 = "%25s:%-5d  chunk size is wrong";
LABEL_37:
              _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x12u);
              goto LABEL_38;
            }

            *(v14 + 16) -= v10;
            v16 = (*(**(this + 13) + 56))(*(this + 13), 0);
            if (v16)
            {
              v24 = v16;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v33 = "CAFAudioFile.cpp";
                v34 = 1024;
                v35 = 323;
                v25 = MEMORY[0x1E69E9C10];
                v26 = "%25s:%-5d  MoveUpTrailingChunks write failed";
                goto LABEL_37;
              }

LABEL_38:
              exception = __cxa_allocate_exception(4uLL);
              *exception = v24;
              __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
            }

            if (v31)
            {
              free(v31);
            }

            v12 = *(this + 18);
            if (v12)
            {
              v13 = v6++;
              if (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v12) >> 3) > v13)
              {
                continue;
              }
            }

            goto LABEL_21;
          }

          v24 = v15;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          *buf = 136315394;
          v33 = "CAFAudioFile.cpp";
          v34 = 1024;
          v35 = 316;
          v25 = MEMORY[0x1E69E9C10];
          v26 = "%25s:%-5d  MoveUpTrailingChunks read failed";
          goto LABEL_37;
        }
      }

LABEL_21:
      result = (*(**(this + 13) + 24))(*(this + 13), &v28);
      if (result)
      {
        goto LABEL_10;
      }

      (*(**(this + 13) + 32))(*(this + 13), v28 - v10);
    }

    if (*(this + 208) == 1)
    {
      *buf = bswap32(*(this + 42) + 1);
      v17 = *(this + 18);
      v18 = *(this + 19) - v17;
      if (v18)
      {
        v19 = 0;
        v20 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
        v21 = 1;
        while (1)
        {
          v22 = v17 + 24 * v19;
          if (*v22 == 1684108385)
          {
            break;
          }

          v19 = v21;
          if (v20 <= v21++)
          {
            goto LABEL_30;
          }
        }

        (*(**(this + 13) + 56))(*(this + 13), 0, *(v22 + 16) + 12, 4, buf, 0);
      }
    }

LABEL_30:
    CAFAudioFile::UpdatePacketTableChunk(this);
LABEL_5:
    result = 0;
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void CAFAudioFile::UpdatePacketTableChunk(CAFAudioFile *this)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  if (!v2 || *(this + 46) || *(this + 47))
  {
    if (v3)
    {
      v4 = v2 == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(this + 15);
    if (v4 && v5 == 0)
    {
      operator new();
    }

    v29 = 0;
    if (v5)
    {
      v7 = 0;
      if (v3)
      {
        v9 = 5;
      }

      else
      {
        v9 = 10;
      }

      v8 = (*(v5 + 24) * v9 + 24);
    }

    else
    {
      v7 = 1;
      v8 = 24;
    }

    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v29, v8, 0);
    v10 = v29;
    v29->i64[0] = 0;
    v10->i64[1] = CAFAudioFile::NumberValidFrames(this);
    v10[1].i64[0] = *(this + 23);
    if (v7)
    {
      v11 = 24;
LABEL_57:
      v26 = v29;
      *v29 = vrev64q_s8(*v29);
      v26[2] = vrev32_s8(v26[2]);
      (*(*this + 768))(this, 1885432692, v11, v26);
      free(v26);
      return;
    }

    v10->i64[0] = (*(*this + 248))(this);
    v13 = (*(*this + 640))(this);
    if (*(v5 + 24) < 1)
    {
      v11 = 24;
LABEL_56:
      (*(*this + 656))(this, v13, v12);
      goto LABEL_57;
    }

    v12 = 0;
    v14 = &v10[1].i8[8];
    v15 = 1;
    v11 = 24;
    while (1)
    {
      CompressedPacketTable::operator[](v27, v5, v12);
      v16 = v27[2];
      v17 = v28;
      v13 = v28 <= v13 ? v13 : v28;
      v18 = v28 >> 21;
      v19 = v28 >> 14;
      if (v28 >> 28)
      {
        break;
      }

      if (v18)
      {
        v20 = 4;
        goto LABEL_32;
      }

      if (v19)
      {
        v20 = 3;
        goto LABEL_33;
      }

      if (v28 < 0x80)
      {
        v20 = 1;
        goto LABEL_35;
      }

      v20 = 2;
LABEL_34:
      *v14++ = (v17 >> 7) | 0x80;
LABEL_35:
      *v14 = v17 & 0x7F;
      v21 = v14 + 1;
      if (!v3)
      {
        v23 = v16 >> 21;
        v24 = v16 >> 14;
        if (v16 >> 28)
        {
          v21 = v14 + 2;
          v14[1] = (v16 >> 28) | 0x80;
          v22 = 5;
        }

        else
        {
          if (!v23)
          {
            if (!v24)
            {
              if (v16 < 0x80)
              {
                v22 = 1;
LABEL_48:
                *v21++ = v16 & 0x7F;
                goto LABEL_49;
              }

              v22 = 2;
LABEL_47:
              *v21++ = (v16 >> 7) | 0x80;
              goto LABEL_48;
            }

            v22 = 3;
LABEL_46:
            *v21++ = v24 | 0x80;
            goto LABEL_47;
          }

          v22 = 4;
        }

        *v21++ = v23 | 0x80;
        goto LABEL_46;
      }

      v22 = 0;
LABEL_49:
      v11 += v22 + v20;
      v12 = v15;
      v25 = *(v5 + 24) <= v15++;
      v14 = v21;
      if (v25)
      {
        goto LABEL_56;
      }
    }

    *v14++ = (v28 >> 28) | 0x80;
    v20 = 5;
LABEL_32:
    *v14++ = v18 | 0x80;
LABEL_33:
    *v14++ = v19 | 0x80;
    goto LABEL_34;
  }
}

void sub_18F663E08(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F663D88);
}

void sub_18F663E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x18F663E1CLL);
  }

  JUMPOUT(0x18F663E14);
}

uint64_t CAFAudioFile::AddUniqueChunk(CAFAudioFile *this, uint64_t a2, uint64_t a3, const void *a4)
{
  result = CAFAudioFile::ReplaceChunk(this, a2, 0, a3, a4);
  if (result == -1)
  {
    v9 = *(*this + 760);

    return v9(this, a2, a3, a4);
  }

  return result;
}

uint64_t CAFAudioFile::ReplaceChunk(CAFAudioFile *this, uint64_t a2, int a3, uint64_t a4, const void *a5)
{
  v5 = *(this + 18);
  v6 = *(this + 19);
  v7 = v6 - v5;
  if (v6 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v20 = 0;
  v15 = 1;
  while (1)
  {
    v16 = v5 + 24 * v12;
    if (*v16 == a2)
    {
      break;
    }

LABEL_6:
    v12 = v15;
    if (v14 <= v15++)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v13 != a3)
  {
    ++v13;
    goto LABEL_6;
  }

  if (a4 + 12 == *(v16 + 8))
  {
    result = (*(*this + 776))(this, v16, &v20);
    if (!result)
    {
      return (*(*this + 784))(this, v16, a5, &v20);
    }
  }

  else
  {
    *v16 = 1718773093;
    CAFAudioFile::ConsolidateFillerChunks(this);
    v19 = *(*this + 760);

    return v19(this, a2, a4, a5);
  }

  return result;
}

uint64_t CAFAudioFile::AddUserChunk(CAFAudioFile *this, int a2, unsigned int a3, const void *a4)
{
  v24 = 0;
  LODWORD(v25) = a2;
  v6 = a3 + 12;
  *(&v25 + 1) = v6;
  v7 = *(this + 18);
  v8 = *(this + 19);
  v9 = (this + 144);
  v10 = v8 - v7;
  if (v8 == v7)
  {
    goto LABEL_18;
  }

  LODWORD(v11) = 0;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  v13 = (v7 + 8);
  v14 = 0x7FFFFFFF;
  v15 = -1;
  do
  {
    if (*(v13 - 2) == 1718773093)
    {
      v16 = *v13 - v6;
      v18 = *v13 == v6 || v16 > 12;
      if (v18 && v16 < v14)
      {
        v14 = *v13 - v6;
        v15 = v11;
      }
    }

    v11 = (v11 + 1);
    v13 += 3;
  }

  while (v12 > v11);
  if (v15 == -1)
  {
LABEL_18:
    v23 = 0;
    result = (*(**(this + 13) + 24))(*(this + 13), &v23);
    if (!result)
    {
      v26 = v23;
      std::vector<ChunkInfo64>::push_back[abi:ne200100](v9, &v25);
      result = (*(*this + 776))(this, &v25, &v24);
      if (!result)
      {
        result = (*(*this + 784))(this, &v25, a4, &v24);
        if (!result)
        {
          if ((*(*this + 232))(this))
          {
            *(this + 20) = 0;
          }

          else
          {
            (*(*this + 64))(this);
          }

          return 0;
        }
      }
    }
  }

  else
  {
    v19 = v7 + 24 * v15;
    v20 = *(v19 + 8) - v6;
    if (v20)
    {
      v26 = *(v19 + 16);
      v22 = v26 + v6;
      *(v19 + 8) = v20;
      *(v19 + 16) = v22;
      result = (*(*this + 776))(this, v19, &v24);
      if (!result)
      {
        result = (*(*this + 776))(this, &v25, &v24);
        if (!result)
        {
          result = (*(*this + 784))(this, &v25, a4, &v24);
          if (!result)
          {
            std::vector<Chunk64Info>::insert(v9, (*v9 + 24 * v15), &v25);
            return 0;
          }
        }
      }
    }

    else
    {
      *v19 = a2;
      result = (*(*this + 776))(this, v19, &v24);
      if (!result)
      {
        result = (*(*this + 784))(this, v19, a4, &v24);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void std::vector<Chunk64Info>::insert(uint64_t a1, char *__src, unint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v15);
    }

    v17 = 8 * (v13 >> 3);
    v18 = v17;
    if (!(0xAAAAAAAAAAAAAAABLL * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == __src)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v13 >> 3);
        }

        std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v23);
      }

      v17 = 8 * (v13 >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3)) >> 63)) >> 1);
      v18 = v17;
    }

    v24 = *a3;
    *(v17 + 16) = *(a3 + 16);
    *v17 = v24;
    v25 = v18 + 24;
    memcpy((v18 + 24), __src, *(a1 + 8) - __src);
    v26 = *a1;
    v30 = v25 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v27 = (__src - v26);
    v28 = (v17 - (__src - v26));
    memcpy(v28, v26, v27);
    v29 = *a1;
    *a1 = v28;
    *(a1 + 8) = v30;
    if (v29)
    {

      operator delete(v29);
    }
  }

  else if (__src == v6)
  {
    v16 = *a3;
    *(v6 + 2) = *(a3 + 16);
    *v6 = v16;
    *(a1 + 8) = v6 + 24;
  }

  else
  {
    v8 = __src + 24;
    if (v6 < 0x18)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 24;
      v10 = *(v6 - 24);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v10;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 24, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v19 = v9 <= a3 || __src > a3;
    v20 = 24;
    if (v19)
    {
      v20 = 0;
    }

    v21 = a3 + v20;
    v22 = *v21;
    *(__src + 2) = *(v21 + 16);
    *__src = v22;
  }
}

void sub_18F6646FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::CodecConverter::Reset(acv2::CodecConverter *this)
{
  *(this + 102) = 0;
  *(this + 104) = 0;
  ACBaseAudioSpan::resetMetadataEvents(this + 51);
  v2 = 0;
  if (*(this + 388) == 1)
  {
    v2 = *(this + 95);
  }

  *(this + 98) = v2;
  *(this + 396) = 0;
  *(this + 207) = 0;
  *(this + 105) = 0;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  v3 = *(this + 90);
  if (v3)
  {
    *(v3 + 152) = 0uLL;
    *(v3 + 136) = 0uLL;
    *(v3 + 120) = 0uLL;
    *(v3 + 104) = 0uLL;
  }

  v4 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v6 = *(this + 27);
  *(this + 27) = v5;
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 21);

  return AudioCodecReset(v7);
}

void sub_18F664820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

OSStatus AudioCodecReset(AudioCodec inCodec)
{
  if (!inCodec)
  {
    return -50;
  }

  v1 = (*(*inCodec + 8))(inCodec);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  v3 = *(*((**v1)(v1) + 112) + 56);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

void CompressedPacketTable::~CompressedPacketTable(CompressedPacketTable *this)
{
  v2 = *this;
  v4 = *(this + 1) - v2;
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = 16;
    do
    {
      free(*(*this + v7));
      v7 += 24;
      --v6;
    }

    while (v6);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void pooledRenderer::AudioConverterOOP::~AudioConverterOOP(pooledRenderer::AudioConverterOOP *this)
{
  pooledRenderer::AudioConverterOOP::~AudioConverterOOP(this);

  JUMPOUT(0x193ADF220);
}

{
  v14 = *MEMORY[0x1E69E9840];
  *this = &unk_1F033CC60;
  if ((*(this + 12) & 1) == 0)
  {
    if (*(this + 80) == 1)
    {
      AT::ScopedTrace::~ScopedTrace((this + 40));
      *(this + 80) = 0;
    }

    *(this + 40) = 1;
    *(this + 11) = 2757;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    kdebug_trace();
    *(this + 80) = 1;
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v2 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "AudioConverterOOP.cpp";
    v10 = 1024;
    v11 = 628;
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> %p: Disposing of service.", &v8, 0x1Cu);
  }

  v3 = **(this + 11);
  os_unfair_lock_lock((v3 + 16));
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  if (v5 != v4)
  {
    while (*v5 != this)
    {
      if (++v5 == v4)
      {
        v5 = *(v3 + 32);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v6 = v4 - (v5 + 1);
    if (v4 != v5 + 1)
    {
      memmove(v5, v5 + 1, v4 - (v5 + 1));
    }

    *(v3 + 32) = v5 + v6;
  }

  os_unfair_lock_unlock((v3 + 16));
  std::unique_ptr<pooledRenderer::AudioConverterOOP::Impl>::~unique_ptr[abi:ne200100](this + 11);
  if (*(this + 80) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((this + 40));
  }

  AudioConverterAPI::~AudioConverterAPI(this);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_18F664BB8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::unique_ptr<pooledRenderer::AudioConverterOOP::Impl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    goto LABEL_63;
  }

  if (*(v2 + 176) == 1)
  {
    v3 = *(v2 + 168);
    if (v3)
    {
      goto LABEL_18;
    }

    v4 = atomic_load((v2 + 416));
    if (v4)
    {
      v5 = *(v2 + 8);
      v6 = atomic_load((v5 + 64));
      if (v6)
      {
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v7 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(v5 + 22) - 1;
          v9 = *(v5 + 8);
          v10 = *(v5 + 20);
          *v46 = 136316418;
          *&v46[4] = "ACResourcePoolManager.h";
          *&v46[12] = 1024;
          *&v46[14] = 56;
          v47 = 2048;
          *v48 = v5;
          *&v48[8] = 1024;
          *&v48[10] = v8;
          v49 = 2080;
          v50 = v9;
          v51 = 1024;
          v52 = v10;
          _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverter Resource Manager %p -> Converter disappeared. Current number of converters: %u, number of %ss: %u.", v46, 0x32u);
        }

        os_unfair_lock_lock((v5 + 16));
        v11 = *(v5 + 22) - 1;
        *(v5 + 22) = v11;
        if (*v5 <= v11)
        {
          v3 = 0;
        }

        else
        {
          --*(v5 + 20);
          v12 = ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(v5, 1);
          v3 = (v13 & 1) != 0 ? v12 : 0;
        }

        os_unfair_lock_unlock((v5 + 16));
        if (v3)
        {
LABEL_18:
          v14 = atomic_load((v2 + 416));
          if ((v14 & 1) == 0)
          {
LABEL_32:
            AudioConverterRenderClient::~AudioConverterRenderClient(v3);
            MEMORY[0x193ADF220]();
            goto LABEL_33;
          }

          v15 = *(v2 + 16);
          v16 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v15, 1);
          v17 = v16;
          if (v18)
          {
            if (!v16)
            {
              v20 = 0;
              goto LABEL_30;
            }

            v19 = AudioConverterXPC_Client::deleteRenderer(v16, v3);
            v20 = v17;
            LODWORD(v17) = v19;
            if (HIDWORD(v19))
            {
LABEL_30:
              if (v15)
              {
                ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v15, v20);
              }

              goto LABEL_32;
            }
          }

          else
          {
            v20 = 0;
          }

          if (v17)
          {
            if (gAudioConverterDeferredLogOnce != -1)
            {
              dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
            }

            v21 = *gAudioConverterLog;
            if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_FAULT))
            {
              *v46 = 136315906;
              *&v46[4] = "AudioConverterOOP.cpp";
              *&v46[12] = 1024;
              *&v46[14] = 278;
              v47 = 2048;
              *v48 = v2;
              *&v48[8] = 1024;
              *&v48[10] = v17;
              _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_FAULT, "%25s:%-5d AudioConverterOOP -> %p: Unable to delete renderer, with error %u. The connection was likely severed.", v46, 0x22u);
            }
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      v3 = *(v2 + 168);
      if (v3)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_33:
  v22 = atomic_load((v2 + 416));
  if (v22)
  {
    if (!*(v2 + 208))
    {
      goto LABEL_40;
    }

    v23 = *(v2 + 16);
    v24 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v23, 1);
    if (v25)
    {
      v26 = v24;
      if (v24)
      {
        AudioConverterXPC_Client::stopMessengerForProperties(v24, *(v2 + 208));
      }

      if (v23)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v26 = 0;
      if (v23)
      {
LABEL_39:
        ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v23, v26);
      }
    }

LABEL_40:
    v27 = *(v2 + 16);
    v28 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v27, 1);
    if (v29)
    {
      v30 = v28;
      if (v28)
      {
        AudioConverterXPC_Client::dispose(v28, *(v2 + 184));
      }

      if (!v27)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v30 = 0;
      if (!v27)
      {
LABEL_45:
        v31 = *(v2 + 16);
        v32 = atomic_load((v31 + 64));
        if (v32)
        {
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v33 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(v31 + 22) - 1;
            v35 = *(v31 + 8);
            v36 = *(v31 + 20);
            *v46 = 136316418;
            *&v46[4] = "ACResourcePoolManager.h";
            *&v46[12] = 1024;
            *&v46[14] = 56;
            v47 = 2048;
            *v48 = v31;
            *&v48[8] = 1024;
            *&v48[10] = v34;
            v49 = 2080;
            v50 = v35;
            v51 = 1024;
            v52 = v36;
            _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverter Resource Manager %p -> Converter disappeared. Current number of converters: %u, number of %ss: %u.", v46, 0x32u);
          }

          os_unfair_lock_lock((v31 + 16));
          v37 = *(v31 + 22) - 1;
          *(v31 + 22) = v37;
          if (*v31 > v37 && (--*(v31 + 20), v38 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v31, 1), (v39 & 1) != 0))
          {
            v40 = v38;
            os_unfair_lock_unlock((v31 + 16));
            if (v40)
            {
              *v46 = &unk_1F033CE00;
              *&v46[8] = v2;
              *&v48[4] = v46;
              v41 = *(v40 + 1);
              if (!v41)
              {
                std::terminate();
              }

              std::function<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::operator=(v41 + 24, v46);
              std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](v46);
              atomic_store(0, (v2 + 416));
              AudioConverterXPC_Client::disconnect(v40);
              (*(*v40 + 8))(v40);
            }
          }

          else
          {
            os_unfair_lock_unlock((v31 + 16));
          }
        }

        goto LABEL_58;
      }
    }

    ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v27, v30);
    goto LABEL_45;
  }

LABEL_58:
  std::unique_ptr<auoop::WorkgroupPropagator>::reset[abi:ne200100]((v2 + 408), 0);
  v42 = *(v2 + 376);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  ExtendedAudioBufferList_Destroy(*(v2 + 352));
  v43 = *(v2 + 280);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  ExtendedAudioBufferList_Destroy(*(v2 + 256));
  std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100]((v2 + 208), 0);
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100]((v2 + 160));
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100]((v2 + 152));
  MEMORY[0x193ADF220](v2, 0x1060C40E6A37438);
LABEL_63:
  v44 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F665170(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    os_unfair_lock_unlock(v2 + 4);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AudioConverterXPC_Client::deleteRenderer(AudioConverterXPC_Client *this, uint64_t a2)
{
  MEMORY[0x193ADE6A0](v9, 62370775);
  xpc_dictionary_set_uint64(xdict, "clientRenderer", a2);
  v4 = *(this + 1);
  if (!v4)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v7, v4, v9);
  v5 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  return ((v5 == 0) << 32) | v5;
}

void sub_18F66525C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13[4];
  }

  __cxa_end_catch();
  JUMPOUT(0x18F665230);
}

void AudioConverterRenderServer::~AudioConverterRenderServer(AudioConverterRenderServer *this)
{
  *this = &unk_1F032F998;
  AudioConverterServer::shutdown(this);
  v2 = (this + 496);
  std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](&v2);

  AudioConverterServer::~AudioConverterServer(this);
}

{
  AudioConverterRenderServer::~AudioConverterRenderServer(this);

  JUMPOUT(0x193ADF220);
}

void AudioConverterServer::shutdown(AudioConverterServer *this)
{
  v2 = atomic_load(*(this + 2));
  if (v2 != 2)
  {
    atomic_store(1u, this + 41);
    v3 = *(this + 6);
    os_eventlink_cancel();
  }

  if (*(this + 88) == 1)
  {
    caulk::thread::join((this + 72));
    if (*(this + 88) == 1)
    {
      caulk::thread::~thread((this + 72));
      *(this + 88) = 0;
    }
  }
}

void AudioConverterRenderClient::~AudioConverterRenderClient(const std::__fs::filesystem::path **this)
{
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100](this + 51);
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100](this + 50);
  if (*(this + 360) == 1)
  {
    v2 = (this + 35);
    std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::~rt_sender((this + 1));
}

void std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; i = v5)
    {
      v5 = i - 11;
      ExtendedAudioBufferList_Destroy(*(i - 4));
    }

    v1[1] = v2;
    v6 = **a1;

    operator delete(v6);
  }
}

void audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::~rt_sender(uint64_t a1)
{
  v2 = atomic_load((a1 + 33));
  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(*(a1 + 8));
    if (v3 != 2)
    {
      atomic_store(1u, (a1 + 33));
      atomic_store(2u, *(a1 + 8));
      audioipc::eventlink_primitive::timed_wait_signal_or_error(*(a1 + 40), 0.02);
      v4 = *(a1 + 40);
      os_eventlink_cancel();
    }
  }

  audioipc::eventlink_primitive::~eventlink_primitive((a1 + 40));

  unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(a1);
}

void AudioConverterServer::~AudioConverterServer(const void **this)
{
  v8 = *MEMORY[0x1E69E9840];
  *this = &unk_1F032F9C8;
  if (*(this + 88) == 1)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v2 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_FAULT))
    {
      v4 = 136315394;
      v5 = "AudioConverterServer.h";
      v6 = 1024;
      v7 = 61;
      _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_FAULT, "%25s:%-5d Server destroyed before proper shutdown", &v4, 0x12u);
    }

    AudioConverterServer::shutdown(this);
  }

  caulk::mach::os_workgroup_managed::~os_workgroup_managed((this + 25));
  if (*(this + 192) == 1)
  {
    audioipc::os_workgroup_joiner::~os_workgroup_joiner((this + 15));
  }

  if (*(this + 88) == 1)
  {
    caulk::thread::~thread((this + 9));
  }

  audioipc::eventlink_primitive::~eventlink_primitive((this + 6));
  unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(this + 1);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_18F665690(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void audioipc::eventlink_primitive::~eventlink_primitive(audioipc::eventlink_primitive *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    *(this + 2) = 0;
  }
}

void unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__function::__func<pooledRenderer::AudioConverterOOP::Impl::~Impl()::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1},std::allocator<pooledRenderer::AudioConverterOOP::Impl::~Impl()::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1}>,void ()(swix::ipc_endpoint&,applesauce::xpc::object const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033CE00;
  a2[1] = v2;
  return result;
}

void sub_18F6659EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = *v3;
    }

    __cxa_end_catch();
    JUMPOUT(0x18F6659B0);
  }

  _Unwind_Resume(a1);
}

unint64_t acv2::Resampler2Wrapper::ProduceOutput(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  v7 = *(a1 + 8);
  if ((*(v7 + 28) & 0x20) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v7 + 44);
  }

  v55 = v8;
  v56 = 1;
  if ((*(v7 + 68) & 0x20) == 0)
  {
    v56 = *(v7 + 84);
  }

  v9 = 0;
  v50 = *(a1 + 16);
  v10 = 1;
  while (*a2 < *(a2 + 4))
  {
    ACBaseAudioSpan::setAfter(v7 + 168, a2);
    ACBaseAudioSpan::copyEmptyMetadataEventsFrom((v7 + 168), a2);
    v11 = *(v7 + 172);
    v12 = (*(*a1 + 80))(a1, v11);
    if (v12 <= 1)
    {
      LODWORD(v13) = 1;
    }

    else
    {
      LODWORD(v13) = v12;
    }

    acv2::AudioConverterChain::ObtainInput(v59, *(*(a1 + 8) + 8), *(a1 + 8), v13, v4);
    if (v60)
    {
      v53 = v3;
      v54 = v9;
      v14 = v59[0];
      v52 = v59[1];
      v58 = 0;
      v15 = *v59[0];
      if (*v59[0] >= v13)
      {
        v13 = v13;
      }

      else
      {
        v13 = v15;
      }

      v17 = (*(***(a1 + 24) + 144))(**(a1 + 24), v13);
      v18 = *(a1 + 56);
      if (v18)
      {
        acv2::AudioConverterBase::writeCapture(v18, v14, v16);
      }

      if (v15 | v17)
      {
        v21 = 0;
      }

      else
      {
        if ((*(a1 + 52) & 1) != 0 || !*(a1 + 48))
        {
          v22 = 0;
          goto LABEL_62;
        }

        if (v50 == 2)
        {
          v19 = Resampler2::PushZeroes(**(a1 + 24));
        }

        else if (*(a1 + 16))
        {
          v23 = 0;
          do
          {
            v19 = Resampler2::PushZeroes(*(*(a1 + 24) + 8 * v23++));
          }

          while (v23 < *(a1 + 16));
        }

        else
        {
          v19 = 0;
        }

        *(a1 + 52) = 1;
        v21 = v19 != 0;
      }

      v57 = 0;
      if (v15 || v17 || v21)
      {
        if (v50 == 2)
        {
          v24 = *(v14 + 2);
          v25 = *(v24 + 16);
          if ((*(v7 + 28) & 0x20) != 0)
          {
            v26 = *(v24 + 32);
          }

          else
          {
            v26 = v25 + 4;
          }

          v35 = *(v7 + 184);
          v36 = *(v35 + 16);
          if ((*(v7 + 68) & 0x20) != 0)
          {
            v37 = *(v35 + 32);
          }

          else
          {
            v37 = v36 + 4;
          }

          v57 = v13;
          v58 = v11;
          (*(***(a1 + 24) + 32))(**(a1 + 24), v25, v26, v36, v37, &v57, &v58, v55, v56);
        }

        else if (*(a1 + 16))
        {
          v27 = 0;
          v28 = 0;
          v29 = 16;
          do
          {
            v30 = *(v14 + 2);
            if ((*(v7 + 28) & 0x20) != 0)
            {
              v31 = *(v30 + v29);
            }

            else
            {
              v31 = *(v30 + 16) + v27;
            }

            v32 = *(v7 + 184);
            if ((*(v7 + 68) & 0x20) != 0)
            {
              v33 = *(v32 + v29);
            }

            else
            {
              v33 = *(v32 + 16) + v27;
            }

            v57 = v13;
            v58 = v11;
            v34 = *(*(a1 + 24) + 8 * v28);
            (*(*v34 + 32))(v34, v31, 0, v33, 0, &v57, &v58, v55, v56);
            ++v28;
            v29 += 16;
            v27 += 4;
          }

          while (v28 < *(a1 + 16));
        }
      }

      else
      {
        v58 = 0;
      }

      v38 = v58;
      v39 = *(v7 + 72);
      *(v7 + 168) = v58;
      Packets = ACBaseAudioSpan::sizeOfFirstPackets((v7 + 168), v38, v39);
      if (HIDWORD(Packets))
      {
        *(v7 + 176) = Packets;
        v41 = *(a1 + 64);
        v4 = a3;
        if (v41)
        {
          acv2::AudioConverterBase::writeCapture(v41, (v7 + 168), v40);
        }

        Packets = acv2::AudioConverterChain::ConsumedInput(*(*(a1 + 8) + 8), *v14, v52, v57);
        if (HIDWORD(Packets))
        {
          v22 = v57 != 0;
LABEL_62:
          v3 = v53;
          v9 = (v22 | v54) & 1;
          if ((v10 & 1) == 0)
          {
            v10 = 1;
          }

          goto LABEL_64;
        }
      }

      else
      {
        v4 = a3;
      }
    }

    else
    {
      LODWORD(Packets) = v59[0];
    }

    v22 = 0;
    v3 = Packets >> 8;
    if (v10)
    {
      v10 = 0;
    }

    v9 = Packets;
LABEL_64:
    v42 = *(v7 + 168);
    if (v42 || v22)
    {
      v43 = *(v7 + 176);
      v44 = *a2;
      v45 = *(a2 + 8);
      if (v42)
      {
        v46 = *(a2 + 32);
        if (v46)
        {
          v47 = *a2;
          v48 = *(v7 + 168);
          do
          {
            *(v46 + 16 * v47++) += v45;
            --v48;
          }

          while (v48);
        }
      }

      *a2 = v44 + v42;
      *(a2 + 8) = v45 + v43;
      ACBaseAudioSpan::copyFilledMetadataEventsFrom(a2, v7 + 168, 0);
      if (v10)
      {
        continue;
      }
    }

    break;
  }

  ACBaseAudioSpan::completeMetadataFrame(a2);
  return v9 | ((v3 & 0xFFFFFF) << 8) | (v10 << 32);
}

uint64_t acv2::SampleRateConverter::ProduceOutput(uint64_t a1, AudioConverterCapturer *a2, unsigned __int8 a3)
{
  v6 = (*(**(a1 + 160) + 16))(*(a1 + 160), a2, a3);
  v7 = *(a1 + 152);
  if (v7)
  {
    acv2::AudioConverterBase::writeCapture(v7, a2, v5);
  }

  return v6 & 0xFFFFFFFFFFLL;
}

void acv2::CodecConverter::~CodecConverter(acv2::CodecConverter *this)
{
  acv2::CodecConverter::~CodecConverter(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0334648;
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 107);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 106);
  v2 = *(this + 98);
  if (v2)
  {
    *(this + 99) = v2;
    operator delete(v2);
  }

  v3 = *(this + 95);
  if (v3)
  {
    *(this + 96) = v3;
    operator delete(v3);
  }

  v4 = *(this + 92);
  if (v4)
  {
    *(this + 93) = v4;
    operator delete(v4);
  }

  v5 = *(this + 90);
  *(this + 90) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(this + 608) == 1)
  {
    v6 = *(this + 68);
    if (v6)
    {
      *(this + 69) = v6;
      operator delete(v6);
    }

    v7 = *(this + 65);
    if (v7)
    {
      *(this + 66) = v7;
      operator delete(v7);
    }

    ExtendedAudioBufferList_Destroy(*(this + 64));
    ACAudioSpan::~ACAudioSpan((this + 408));
  }

  v8 = *(this + 42);
  if (v8)
  {
    *(this + 43) = v8;
    operator delete(v8);
  }

  if (*(this + 328) == 1)
  {
    ACAudioSpan::~ACAudioSpan((this + 224));
  }

  v9 = *(this + 27);
  if (v9)
  {
    CFRelease(v9);
  }

  acv2::CodecWrapper::~CodecWrapper(this + 21);

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

void acv2::CodecWrapper::~CodecWrapper(OpaqueAudioComponentInstance **this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 8) = 0;
    AudioCodecUninitialize(v2);
    AudioComponentInstanceDispose(*this);
  }
}

caulk::rt_safe_memory_resource *std::vector<AudioStreamPacketDescription,caulk::rt_allocator<AudioStreamPacketDescription>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
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

void auoop::WorkgroupPropagator::~WorkgroupPropagator(os_unfair_lock_s **this)
{
  v2 = *this;
  os_unfair_lock_lock(*this + 8);
  v4 = *&v2[10]._os_unfair_lock_opaque;
  v3 = *&v2[12]._os_unfair_lock_opaque;
  if (v4 != v3)
  {
    while (*v4 != this)
    {
      if (++v4 == v3)
      {
        v4 = *&v2[12]._os_unfair_lock_opaque;
        break;
      }
    }
  }

  if (v3 != v4)
  {
    v5 = v3 - (v4 + 1);
    if (v3 != v4 + 1)
    {
      memmove(v4, v4 + 1, v3 - (v4 + 1));
    }

    *&v2[12]._os_unfair_lock_opaque = v4 + v5;
  }

  os_unfair_lock_unlock(v2 + 8);
  v6 = this[6];
  if (v6)
  {
    this[7] = v6;
    operator delete(v6);
  }

  std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100]((this + 1));
}

void std::__shared_ptr_emplace<std::vector<AudioStreamPacketDescription>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::~rt_sender(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t Resampler2::GetNumberOfSourceFrames(Resampler2 *this, unsigned int a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(this + 132);
  if ((*(this + 133) & 1) == 0)
  {
    if ((*(this + 132) & 1) == 0)
    {
      if (*(this + 264) == 1)
      {
        RateRamp::RateRamp(v13);
        v12 = a2;
        RateRamp::Segment((this + 208), *(this + 30) + a3, &v12, 1000000000.0, v13);
        RateRamp::InputDuration(v13);
        v9 = vcvtpd_u64_f64(v11);
      }

      else
      {
        v9 = *(this + 21) * a2;
      }

      goto LABEL_8;
    }

LABEL_7:
    v9 = a2;
LABEL_8:
    v7 = vcvtpd_s64_f64((*(*this + 152))(this) + -1.0 + *(this + 20) + v9 + -0.0001 - *(this + 18));
    return v7 & ~(v7 >> 31);
  }

  if (*(this + 132))
  {
    goto LABEL_7;
  }

  v6 = *(this + 27);
  v7 = (*(*this + 152))(this) + ~*(this + 18) + (*(this + 26) + v6 * a2 + *(this + 31) - 1) / *(this + 31);
  return v7 & ~(v7 >> 31);
}

unsigned int Resampler2::GetNumberOfOutputFrames(Resampler2 *this, int a2)
{
  if (*(this + 133) == 1 && (*(this + 132) & 1) == 0)
  {
    v5 = ((a2 - (*(*this + 152))(this) + *(this + 18) + 1) * *(this + 31) - *(this + 26)) / *(this + 27);
    return v5 & ~(v5 >> 31);
  }

  else
  {
    v3 = (*(this + 18) + a2) - ((*(*this + 152))(this) + -1.0) - *(this + 20);
    if ((*(this + 132) & 1) == 0)
    {
      v3 = v3 * *(this + 22);
    }

    if (v3 < 0.0)
    {
      v3 = 0.0;
    }

    return vcvtmd_u64_f64(v3 + 0.0001);
  }
}

uint64_t Resampler2::PushConvert(Resampler2 *this, const float *a2, const float *a3, float *a4, float *a5, unsigned int *a6, unsigned int *a7, int a8, signed int a9, char a10)
{
  *(this + 24) = 1;
  v17 = *a6;
  v80 = *a7;
  v81 = v17;
  (*(*this + 24))(this, &v81, &v80);
  v18 = v80;
  v69 = a7;
  if (v80)
  {
    v19 = 0;
    v20 = 0;
    v21 = a5;
    v22 = v81;
    v23 = *(this + 18);
    v67 = 4 * a9;
    v70 = v21;
    v71 = a3;
    v77 = v21;
    v24 = a4;
    while (1)
    {
      v25 = *(this + 19) - v23;
      if (v25 >= v22)
      {
        v25 = v22;
      }

      v78 = v18;
      v79 = v25;
      (*(*this + 24))(this, &v79, &v78);
      v26 = v79;
      v27 = *(this + 18);
      v28 = (*(this + 10) + 4 * v27);
      v76 = v78;
      if (a8 == 1)
      {
        memcpy(v28, &a2[v19], 4 * v79);
        if (a3)
        {
          memcpy((*(this + 11) + 4 * *(this + 18)), &a3[v19], 4 * v79);
        }
      }

      else if (a3)
      {
        if (v79)
        {
          v29 = (*(this + 11) + 4 * v27);
          v30 = v19 * a8;
          v31 = v79;
          do
          {
            *v28++ = a2[v30];
            *v29++ = a3[v30];
            v30 += a8;
            --v31;
          }

          while (v31);
        }
      }

      else if (v79)
      {
        v32 = v19 * a8;
        v33 = v79;
        do
        {
          *v28++ = a2[v32];
          v32 += a8;
          --v33;
        }

        while (v33);
      }

      v75 = v26;
      if (a10)
      {
        v34 = *(this + 18);
        v35 = v77;
        if ((*(this + 200) & 1) == 0)
        {
          *(this + 24) = v34;
        }
      }

      else
      {
        v34 = *(this + 18);
        v35 = v77;
      }

      *(this + 200) = a10 & 1;
      v36 = v78;
      *(this + 18) = v34 + v79;
      if (!v36)
      {
        goto LABEL_53;
      }

      v73 = v19;
      v74 = v20;
      v72 = v24;
      if ((a10 & 1) == 0 || (*(this + 264) & 1) != 0 || *(this + 24) > vcvtmd_s64_f64(*(this + 20)))
      {
        v37 = *(this + 1);
        v38 = *(this + 2);
        v39 = (this + (v38 >> 1));
        if (v38)
        {
          v37 = *(*v39 + v37);
        }

        v40 = v24;
        v41 = a9;
        v37(v39, v40, v77, v36, a9);
        v35 = v77;
        v42 = *(this + 20);
        goto LABEL_27;
      }

      if (a9 == 2)
      {
        break;
      }

      if (a9 != 1)
      {
        goto LABEL_42;
      }

      bzero(v24, 4 * v36);
      v35 = v77;
      if (v77)
      {
        v49 = 4 * v36;
LABEL_41:
        bzero(v35, v49);
        v35 = v77;
      }

LABEL_48:
      if (*(this + 133) == 1)
      {
        v54 = *(this + 26) + *(this + 27) * v36;
        *(this + 26) = v54;
        v42 = *(this + 19) * v54;
      }

      else
      {
        v42 = *(this + 20) + v36 * *(this + 21);
      }

      *(this + 20) = v42;
      v41 = a9;
LABEL_27:
      v44 = v78;
      v43 = v79;
      v45 = v78 * v41;
      v46 = &v35[v45];
      if (!v35)
      {
        v46 = 0;
      }

      v77 = v46;
      *(this + 34) = *(this + 34) + v78;
      v47 = v42;
      v48 = 4 * (*(this + 18) - v42);
      memmove(*(this + 10), (*(this + 10) + 4 * v47), v48);
      if (v70)
      {
        memmove(*(this + 11), (*(this + 11) + 4 * v47), v48);
      }

      *(this + 20) = *(this + 20) - v47;
      v23 = *(this + 18) - v47;
      *(this + 18) = v23;
      *(this + 24) -= v47;
      *(this + 17) = *(this + 17) + v47;
      if (*(this + 133) == 1)
      {
        *(this + 26) -= *(*(this + 7) + 16) * v47;
      }

      v22 -= v75;
      v24 = &v72[v45];
      v19 = v43 + v73;
      v20 = v44 + v74;
      v18 -= v76;
      a3 = v71;
      if (!v18)
      {
        goto LABEL_53;
      }
    }

    if (v35 - v24 == 4)
    {
      v49 = 4 * (2 * v36);
      v35 = v24;
      goto LABEL_41;
    }

LABEL_42:
    if (v35)
    {
      v50 = 0;
      v51 = v36;
      do
      {
        *(v24 + v50) = 0.0;
        *(v35 + v50) = 0.0;
        v50 += v67;
        --v51;
      }

      while (v51);
    }

    else
    {
      v52 = v24;
      v53 = v36;
      do
      {
        *v52 = 0.0;
        v52 = (v52 + v67);
        --v53;
      }

      while (v53);
    }

    goto LABEL_48;
  }

  v20 = 0;
  v19 = 0;
LABEL_53:
  v55 = *a6;
  NumberOfSourceFrames = Resampler2::GetNumberOfSourceFrames(this, 1u, v20);
  v57 = v55 - v19;
  if (v55 != v19 && v57 <= NumberOfSourceFrames)
  {
    if (a8 == 1)
    {
      memcpy((*(this + 10) + 4 * *(this + 18)), &a2[v19], 4 * (v55 - v19));
      if (a3)
      {
        memcpy((*(this + 11) + 4 * *(this + 18)), &a3[v19], 4 * (v55 - v19));
      }
    }

    else
    {
      v59 = *(this + 18);
      v60 = (*(this + 10) + 4 * v59);
      if (a3)
      {
        v61 = (*(this + 11) + 4 * v59);
        v62 = v19 * a8;
        v63 = v55 - v19;
        do
        {
          *v60++ = a2[v62];
          *v61++ = a3[v62];
          v62 += a8;
          --v63;
        }

        while (v63);
      }

      else
      {
        v64 = v19 * a8;
        v65 = v55 - v19;
        do
        {
          *v60++ = a2[v64];
          v64 += a8;
          --v65;
        }

        while (v65);
      }
    }

    *(this + 18) += v57;
  }

  *v69 = v20;
  *(this + 24) = 0;
  return 0;
}

uint64_t Resampler2::PreFlight(Resampler2 *this, unsigned int *a2, unsigned int *a3)
{
  NumberOfSourceFrames = Resampler2::GetNumberOfSourceFrames(this, *a3, 0);
  result = (*(*this + 144))(this, *a2);
  if (NumberOfSourceFrames >= *a2)
  {
    if (result < *a3)
    {
      *a3 = result;
    }
  }

  else
  {
    *a2 = NumberOfSourceFrames;
  }

  return result;
}

double Resampler2::ConvertSIMD_SmallIntegerRatio(Resampler2 *this, float *a2, float *a3, int a4, int a5)
{
  v94 = *MEMORY[0x1E69E9840];
  v10 = **(this + 7);
  v11 = (*(*this + 152))(this);
  if (a4)
  {
    v12 = *(*(this + 7) + 16);
    v14 = *(this + 26);
    v13 = *(this + 27);
    v15 = *(this + 19) * v12;
    if (v14 + v13 * a4 <= v15)
    {
      v16 = v13 / v12;
      v17 = v13 % v12;
      v18 = v14 / v12;
      v19 = v14 % v12;
      if (*(this + 29) == 1650553971)
      {
        v20 = *(this + 10);
        v21 = (4 * v11) & 0x3FFFFFFF0;
        if (a3)
        {
          v22 = *(this + 11);
          v23 = a4;
          do
          {
            v24 = v10 + 4 * v19 * v11;
            v25 = (v20 + 4 * v18);
            v26 = (v22 + 4 * v18);
            v27 = *(v24 + 16);
            v28 = vmulq_f32(v25[1], v27);
            v29 = vmulq_f32(*v25, *v24);
            v30 = vmulq_f32(v26[1], v27);
            v31 = vmulq_f32(*v26, *v24);
            v32 = *(v24 + 32);
            v33 = *(v24 + 48);
            v34 = v26[2];
            v35 = v26[3];
            v36 = v25[2];
            v37 = v25[3];
            v38 = 0uLL;
            if (v21 == 64)
            {
              v39 = 0uLL;
              v40 = 0uLL;
              v41 = 0uLL;
            }

            else
            {
              v42 = (v24 + v21);
              v43 = (v24 + 64);
              v44 = v26 + 4;
              v45 = v25 + 4;
              v40 = 0uLL;
              v41 = 0uLL;
              v39 = 0uLL;
              do
              {
                v39 = vaddq_f64(v39, vaddq_f64(vcvt_hight_f64_f32(v28), vcvt_hight_f64_f32(v29)));
                v38 = vaddq_f64(v38, vaddq_f64(vcvtq_f64_f32(*v28.f32), vcvtq_f64_f32(*v29.f32)));
                v46 = vaddq_f64(vcvtq_f64_f32(*v30.f32), vcvtq_f64_f32(*v31.f32));
                v41 = vaddq_f64(v41, vaddq_f64(vcvt_hight_f64_f32(v30), vcvt_hight_f64_f32(v31)));
                v29 = vmulq_f32(v36, v32);
                v28 = vmulq_f32(v37, v33);
                v31 = vmulq_f32(v34, v32);
                v30 = vmulq_f32(v35, v33);
                v36 = *v45;
                v37 = v45[1];
                v45 += 2;
                v34 = *v44;
                v35 = v44[1];
                v44 += 2;
                v32 = *v43;
                v33 = v43[1];
                v40 = vaddq_f64(v40, v46);
                v43 += 2;
              }

              while (v43 != v42);
            }

            v47 = vmulq_f32(v33, v37);
            v48 = vmulq_f32(v32, v36);
            v49 = vmulq_f32(v33, v35);
            v50 = vmulq_f32(v32, v34);
            v51 = vaddq_f64(vaddq_f64(v41, vaddq_f64(vcvt_hight_f64_f32(v30), vcvt_hight_f64_f32(v31))), vaddq_f64(vcvt_hight_f64_f32(v49), vcvt_hight_f64_f32(v50)));
            v52 = vaddq_f64(vaddq_f64(v40, vaddq_f64(vcvtq_f64_f32(*v30.f32), vcvtq_f64_f32(*v31.f32))), vaddq_f64(vcvtq_f64_f32(*v49.f32), vcvtq_f64_f32(*v50.f32)));
            v49.f32[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v38, vaddq_f64(vcvtq_f64_f32(*v28.f32), vcvtq_f64_f32(*v29.f32))), vaddq_f64(vcvtq_f64_f32(*v47.f32), vcvtq_f64_f32(*v48.f32))), vaddq_f64(vaddq_f64(v39, vaddq_f64(vcvt_hight_f64_f32(v28), vcvt_hight_f64_f32(v29))), vaddq_f64(vcvt_hight_f64_f32(v47), vcvt_hight_f64_f32(v48)))));
            *a2 = v49.f32[0];
            *v52.f64 = vaddvq_f64(vaddq_f64(v52, v51));
            *a3 = *v52.f64;
            a2 += a5;
            a3 += a5;
            v18 += v16;
            v53 = v19 + v17;
            if (v19 + v17 < v12)
            {
              v54 = 0;
            }

            else
            {
              v54 = v12;
            }

            if (v53 >= v12)
            {
              ++v18;
            }

            v19 = v53 - v54;
            --v23;
          }

          while (v23);
        }

        else
        {
          v55 = a4;
          do
          {
            v56 = v10 + 4 * v19 * v11;
            v57 = (v20 + 4 * v18);
            v58 = vmulq_f32(v57[1], *(v56 + 16));
            v59 = vmulq_f32(*v57, *v56);
            v60 = *(v56 + 32);
            v61 = *(v56 + 48);
            v62 = v57[2];
            v63 = v57[3];
            v64 = 0uLL;
            if (v21 == 64)
            {
              v65 = 0uLL;
            }

            else
            {
              v66 = (v56 + v21);
              v67 = (v56 + 64);
              v68 = v57 + 4;
              v65 = 0uLL;
              do
              {
                v65 = vaddq_f64(v65, vaddq_f64(vcvt_hight_f64_f32(v58), vcvt_hight_f64_f32(v59)));
                v64 = vaddq_f64(v64, vaddq_f64(vcvtq_f64_f32(*v58.f32), vcvtq_f64_f32(*v59.f32)));
                v59 = vmulq_f32(v62, v60);
                v58 = vmulq_f32(v63, v61);
                v62 = *v68;
                v63 = v68[1];
                v68 += 2;
                v60 = *v67;
                v61 = v67[1];
                v67 += 2;
              }

              while (v67 != v66);
            }

            v69 = vmulq_f32(v61, v63);
            v70 = vmulq_f32(v60, v62);
            v70.f32[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v64, vaddq_f64(vcvtq_f64_f32(*v58.f32), vcvtq_f64_f32(*v59.f32))), vaddq_f64(vcvtq_f64_f32(*v69.f32), vcvtq_f64_f32(*v70.f32))), vaddq_f64(vaddq_f64(v65, vaddq_f64(vcvt_hight_f64_f32(v58), vcvt_hight_f64_f32(v59))), vaddq_f64(vcvt_hight_f64_f32(v69), vcvt_hight_f64_f32(v70)))));
            *a2 = v70.f32[0];
            a2 += a5;
            v18 += v16;
            v71 = v19 + v17;
            if (v19 + v17 < v12)
            {
              v72 = 0;
            }

            else
            {
              v72 = v12;
            }

            if (v71 >= v12)
            {
              ++v18;
            }

            v19 = v71 - v72;
            --v55;
          }

          while (v55);
        }
      }

      else if (a3)
      {
        StereoMultiCoefsSRC_Neon((*(this + 10) + 4 * v18), (*(this + 11) + 4 * v18), v10, a2, a3, a4, a5, v16 | (v17 << 16), v19, v12, v11);
      }

      else if ((v11 & 3) == 0)
      {
        MonoMultiCoefsSRC_Neon((*(this + 10) + 4 * v18), v10, a2, a4, a5, v16 | (v17 << 16), v19, v12, v11);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 136317186;
      v77 = "Resampler2.cpp";
      v78 = 1024;
      v79 = 2300;
      v80 = 2080;
      v81 = "ConvertSIMD_SmallIntegerRatio";
      v82 = 1024;
      v83 = 2300;
      v84 = 1024;
      v85 = v15;
      v86 = 1024;
      v87 = v14;
      v88 = 1024;
      v89 = v14 + v12 * a4;
      v90 = 1024;
      v91 = v13;
      v92 = 1024;
      v93 = v12;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%25s:%-5d CADSPUtility:%s:%d: input buffer ticks %u but would read from %u to %u (tick rate %u, offsets %u)!", buf, 0x40u);
    }
  }

  v73 = *(this + 26) + *(this + 27) * a4;
  *(this + 26) = v73;
  result = *(this + 19) * v73;
  *(this + 20) = result;
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F666FC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

float MonoMultiCoefsSRC_Neon(_OWORD *a1, uint64_t a2, float *a3, int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9)
{
  do
  {
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = (a2 + 4 * (a7 * a9));
    v15 = *a1;
    v16 = *(a1 + 1);
    v14 = (a1 + 2);
    v18 = *v13;
    v19 = v13[1];
    v17 = v13 + 2;
    v20 = a9 - 16;
    if (a9 != 16)
    {
      do
      {
        v22 = *v14;
        v23 = v14[1];
        v21 = v14 + 2;
        v9 = vmlaq_f32(v9, v15, v18);
        v20 -= 16;
        v25 = *v17;
        v26 = v17[1];
        v24 = v17 + 2;
        v10 = vmlaq_f32(v10, v16, v19);
        v15 = *v21;
        v16 = v21[1];
        v14 = v21 + 2;
        v11 = vmlaq_f32(v11, v22, v25);
        v18 = *v24;
        v19 = v24[1];
        v17 = v24 + 2;
        v12 = vmlaq_f32(v12, v23, v26);
      }

      while (v20);
    }

    a1 = (a1 + 4 * a6);
    a7 += HIWORD(a6);
    v27 = vaddq_f32(vmlaq_f32(v9, v15, v18), vmlaq_f32(v10, v16, v19));
    v28 = vaddq_f32(vmlaq_f32(v11, *v14, *v17), vmlaq_f32(v12, v14[1], v17[1]));
    if (a7 >= a8)
    {
      a7 -= a8;
      a1 = (a1 + 4);
    }

    v29 = vaddq_f32(v27, v28);
    result = vaddv_f32(*&vpaddq_f32(v29, v29));
    --a4;
    *a3 = result;
    a3 += a5;
  }

  while (a4);
  return result;
}