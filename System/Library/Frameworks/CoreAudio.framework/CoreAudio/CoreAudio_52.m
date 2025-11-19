void sub_1DE600AE4(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_ObjectMap::ReleaseObject(v3, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HALS_IOContext_Legacy_Impl::WaitForTapStart(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::LogState(uint64_t a1, uint64_t a2, int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a3;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a2 + 16), "    ", 4);
      --v6;
    }

    while (v6);
  }

  v7 = (a2 + 16);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "IO Context ", 11);
  v9 = MEMORY[0x1E12C1210](v8, *(*(a1 + 24) + 16));
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v32, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2000000000;
  v30[3] = &v32;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2000000000;
  v29 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZNK26HALS_IOContext_Legacy_Impl8LogStateERNSt3__118basic_stringstreamIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke;
  v23[3] = &unk_1E8677E30;
  v23[4] = v30;
  v23[5] = v28;
  v23[6] = &v24;
  v23[7] = a1;
  v11 = (*(**(a1 + 24) + 64))(*(a1 + 24));
  HALB_CommandGate::ExecuteCommand(v11, v23);
  if (a3 != -1)
  {
    v12 = a3 + 1;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "    ", 4);
      --v12;
    }

    while (v12);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Client ID:      ", 16);
  v13 = MEMORY[0x1E12C1210](v7, *(v25 + 6));
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  if (a3 != -1)
  {
    v15 = a3 + 1;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "    ", 4);
      --v15;
    }

    while (v15);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "IO Thread Name: ", 16);
  v16 = strlen(&v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v32, v16);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v17 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  if (a3 != -1)
  {
    v18 = a3 + 1;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "    ", 4);
      --v18;
    }

    while (v18);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Is Running:     ", 16);
  if (*(a1 + 1340))
  {
    v19 = "yes";
  }

  else
  {
    v19 = "no";
  }

  if (*(a1 + 1340))
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v19, v20);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v21 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1DE6010BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, std::locale a29, std::locale a30)
{
  std::locale::~locale(&a29);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

size_t ___ZNK26HALS_IOContext_Legacy_Impl8LogStateERNSt3__118basic_stringstreamIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke(void *a1)
{
  v2 = a1[7];
  result = strlcpy(*(*(a1[4] + 8) + 24), (v2 + 500), 0x80uLL);
  *(*(a1[5] + 8) + 24) = *(v2 + 1340);
  *(*(a1[6] + 8) + 24) = **(*(v2 + 24) + 72);
  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::UpdateIssueReportersOnEngines(HALS_IOContext_Legacy_Impl *this)
{
  v4[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v4[1] = &v2;
  v2 = &__block_literal_global_13673;
  v3 = &off_1F5983F18;
  v5 = v4;
  v6[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v6[1] = &v5;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(this + 196), *(this + 197), v6, &v3);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl29UpdateIssueReportersOnEnginesEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    (*(*v2 + 624))(v2);
  }

  return 0;
}

void HALS_IOContext_Legacy_Impl::ExecuteWorkWithControlAndIOThreadLocker(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v11 = a2;
  v12 = a3;
  v5 = a1 + 312;
  v6 = *(a1 + 320);
  v7 = pthread_self();
  v8 = pthread_equal(v6, v7);
  if (!v8)
  {
    os_unfair_recursive_lock_lock_with_options();
  }

  v9 = v5;
  v10 = HALB_Mutex::Lock((a1 + 328));
  a2(&v12);
  HALB_IOThread::Locker::~Locker(&v9);
  if (!v8)
  {
    os_unfair_recursive_lock_unlock();
  }
}

void sub_1DE601328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALB_IOThread::Locker::~Locker(&a9);
  if (!v9)
  {
    os_unfair_recursive_lock_unlock();
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::ExecuteWorkWithIOThreadUnlocker(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = a1 + 312;
  v5 = HALB_Mutex::Unlock((a1 + 328));
  a2(&v7);
  HALB_IOThread::Unlocker::~Unlocker(&v4);
}

void HALS_IOContext_Legacy_Impl::ExecuteWorkWithIOThreadLocker(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = a1 + 312;
  v5 = HALB_Mutex::Lock((a1 + 328));
  a2(&v7);
  HALB_IOThread::Locker::~Locker(&v4);
}

uint64_t HALS_IOContext_Legacy_Impl::SetIORunningStateObserver(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v10 = v9;
      (*(*v3 + 24))(v3, v9);
    }

    else
    {
      v10 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v10 = 0;
  }

  v4 = a1 + 1432;
  if ((a1 + 1432) != v9)
  {
    v5 = v10;
    v6 = *(a1 + 1456);
    if (v10 == v9)
    {
      if (v6 == v4)
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = 0;
        (*(**(a1 + 1456) + 24))(*(a1 + 1456), v9);
        (*(**(a1 + 1456) + 32))(*(a1 + 1456));
        *(a1 + 1456) = 0;
        v10 = v9;
        (*(v11[0] + 24))(v11, a1 + 1432);
        (*(v11[0] + 32))(v11);
      }

      else
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = *(a1 + 1456);
      }

      *(a1 + 1456) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(a1 + 1456), v9);
      (*(**(a1 + 1456) + 32))(*(a1 + 1456));
      *(a1 + 1456) = v10;
      v10 = v9;
    }

    else
    {
      v10 = *(a1 + 1456);
      *(a1 + 1456) = v5;
    }
  }

  result = std::__function::__value_func<void ()(IORunningState)>::~__value_func[abi:ne200100](v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE601738(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(IORunningState)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL HALS_IOContext_Legacy_Impl::AreClientBuffersEmpty(HALS_IOContext_Legacy_Impl *this)
{
  v1 = 0;
  v2 = *(this + 340);
  v3 = *(this + 202);
  v4 = (*(this + 203) - v3) >> 5;
  while (1)
  {
    v5 = v1;
    if (v4 <= v1)
    {
      break;
    }

    v6 = *(v3 + 32 * v1 + 8);
    if (*(v3 + 32 * v5 + 16) != v6)
    {
      v7 = *v6;
      if (-1601513229 * ((*(*(v3 + 32 * v5 + 8) + 8) - v7) >> 3) && v7 != 0)
      {
        if (!*(v7 + 108) || ((v9 = *(v7 + 112), *(v7 + 120) != v9) ? (v10 = v9 == 0) : (v10 = 1), v10))
        {
          v9 = (v7 + 456);
        }

        v11 = *v9;
        v12 = *(v11 + 88) ? *(v11 + 388) : 0;
        v13 = *(v7 + 56);
        if (v13 && v2 != 0)
        {
          v15 = (v13 + v12);
          v16 = 1;
          do
          {
            v17 = *v15++;
            v18 = v17;
          }

          while (v17 == 0.0 && v16++ < v2);
          if (v18 != 0.0)
          {
            break;
          }
        }
      }
    }

    v1 = v5 + 1;
  }

  return v4 <= v5;
}

uint64_t HALS_IOContext_Legacy_Impl::ClearInputBuffers(HALS_IOContext_Legacy_Impl *this)
{
  v2 = *(this + 340);
  v3[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_0>;
  v3[1] = &v2;
  *&v4 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *(&v4 + 1) = v3;
  return VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 199), *(this + 200), &v4);
}

uint64_t HALS_IOContext_Legacy_Impl::ClearOutputBuffers(HALS_IOContext_Legacy_Impl *this)
{
  v2 = *(this + 340);
  *&v3 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_1>;
  *(&v3 + 1) = &v2;
  return VisitableVector<HALS_IOStackDescription>::apply<>(*(this + 202), *(this + 203), &v3);
}

void HALS_IOContext_Legacy_Impl::RefreshComposition(HALS_IOContext_Legacy_Impl *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3002000000;
  v9 = __Block_byref_object_copy__13_13676;
  v10 = __Block_byref_object_dispose__14_13677;
  cf = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN26HALS_IOContext_Legacy_Impl18RefreshCompositionEv_block_invoke;
  v5[3] = &unk_1E8677E80;
  v5[4] = &v6;
  v5[5] = this;
  v2 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v7[5];
  if (v3)
  {
    HALS_IOContext_Legacy_Impl::SetComposition(this, v3);
  }

  _Block_object_dispose(&v6, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DE601B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  applesauce::CF::DictionaryRef::~DictionaryRef((v7 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13_13676(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14_13677(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZN26HALS_IOContext_Legacy_Impl18RefreshCompositionEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 1544);
  if (v3)
  {
    CFRetain(v3);
    v4 = *(v2 + 1544);
    if (v4)
    {
      v5 = CFGetTypeID(v4);
      if (v5 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_1DE601C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::AssessIOBufferSize(HALS_IOContext_Legacy_Impl *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4802000000;
  v9 = __Block_byref_object_copy__13617;
  v10 = __Block_byref_object_dispose__13618;
  *__p = 0u;
  v12 = 0u;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN26HALS_IOContext_Legacy_Impl18AssessIOBufferSizeEv_block_invoke;
  v5[3] = &unk_1E8677E58;
  v5[4] = &v6;
  v5[5] = this;
  v2 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v7[5];
  v4 = (v7[6] - v3) >> 2;
  if (-1431655765 * v4)
  {
    HALS_Object::PropertiesChanged(*(this + 3), *(v7 + 16), **(*(this + 3) + 72), 0xAAAAAAAAAAAAAAABLL * v4, v3);
  }

  _Block_object_dispose(&v6, 8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DE601DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DE601E2C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext_Legacy_Impl::ResumeAllIO(atomic_uint *this)
{
  v4 = (this + 78);
  v5 = HALB_Mutex::Lock((this + 82));
  while (atomic_load(this + 334))
  {
    atomic_fetch_add(this + 334, 0xFFFFFFFF);
  }

  HALB_IOThread::Locker::~Locker(&v4);
}

uint64_t HALS_IOContext_Legacy_Impl::ResumeIOForRegistration(atomic_uint *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!atomic_fetch_add(this + 334, 0xFFFFFFFF))
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_IOContext_Legacy_Impl.cpp";
      v12 = 1024;
      v13 = 926;
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d The IOContext is not already disabled during the resume call for registration!", &v10, 0x12u);
    }
  }

  v6 = *(*(this + 3) + 16);
  kdebug_trace();
  v7 = *(*(this + 3) + 16);
  result = kdebug_trace();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::PauseIOForRegistration(atomic_uint *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!atomic_fetch_add(this + 334, 1u))
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_IOContext_Legacy_Impl.cpp";
      v12 = 1024;
      v13 = 844;
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d The IOContext is not already disabled during the pause call for registration!", &v10, 0x12u);
    }
  }

  v6 = *(*(this + 3) + 16);
  kdebug_trace();
  v7 = *(*(this + 3) + 16);
  kdebug_trace();
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::IsIORunningNotInCatchupMode(HALS_IOContext_Legacy_Impl *this)
{
  if ((*(this + 356) - 5) < 0xFFFFFFFD)
  {
    return *(this + 1340);
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_IOContext_Legacy_Impl::GetDeviceSet@<X0>(HALS_IOContext_Legacy_Impl *this@<X0>, uint64_t a2@<X8>)
{
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v12 = this + 312;
  v4 = HALB_Mutex::Lock((this + 328));
  v5 = 0;
  v13 = v4;
  v6 = 1;
  do
  {
    v7 = v5;
    NumberStreams = HALS_IOContextDescription::GetNumberStreams(this + 1536, v6 & 1);
    if (NumberStreams)
    {
      for (i = 0; i != NumberStreams; ++i)
      {
        HALS_IOContextDescription::GetStreamInfoAtIndex(this + 192, v6 & 1, i, v11);
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v14, v11[0]);
      }
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) == 0);
  std::unordered_set<unsigned int>::unordered_set(a2, v14);
  HALB_IOThread::Locker::~Locker(&v12);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v14);
}

void sub_1DE6022AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  HALB_IOThread::Locker::~Locker(va);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::DeviceDied(HALS_IOContext_Legacy_Impl *this, const __CFString *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN26HALS_IOContext_Legacy_Impl10DeviceDiedEPK10__CFString_block_invoke;
  v9[3] = &unk_1E8678088;
  v9[4] = &v10;
  v9[5] = this;
  v9[6] = a2;
  v4 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v4, v9);
  if (*(v11 + 24) == 1)
  {
    v5 = *(*(this + 3) + 16);
    HALS_IOContext_Legacy_Impl::PauseIO(this);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZN26HALS_IOContext_Legacy_Impl10DeviceDiedEPK10__CFString_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_45_13686;
    v8[4] = this;
    v8[5] = a2;
    v6 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v6, v8);
    (*(**(*(this + 3) + 104) + 240))(*(*(this + 3) + 104));
    v7 = *(*(this + 3) + 16);
    HALS_IOContext_Legacy_Impl::ResumeIO(this);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl10DeviceDiedEPK10__CFString_block_invoke(uint64_t a1)
{
  result = HALS_IOContextDescription::GetEngineInfoForDeviceUID((*(a1 + 40) + 1536), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void ___ZN26HALS_IOContext_Legacy_Impl10DeviceDiedEPK10__CFString_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 312;
  v4 = HALB_Mutex::Lock((v2 + 328));
  if (HALS_IOContextDescription::GetEngineInfoForDeviceUID((v2 + 1536), *(a1 + 40)))
  {
    HALS_IOContextDescription::DeviceDied((v2 + 1536), *(a1 + 40));
  }

  HALB_IOThread::Locker::~Locker(&v3);
}

void HALS_IOContext_Legacy_Impl::DeviceArrived(HALS_IOContext_Legacy_Impl *this, HALS_Device *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN26HALS_IOContext_Legacy_Impl13DeviceArrivedEP11HALS_Device_block_invoke;
  v9[3] = &unk_1E8678040;
  v9[5] = this;
  v9[6] = a2;
  v9[4] = &v10;
  v4 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v4, v9);
  if (*(v11 + 24) == 1)
  {
    v5 = *(*(this + 3) + 16);
    HALS_IOContext_Legacy_Impl::PauseIO(this);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZN26HALS_IOContext_Legacy_Impl13DeviceArrivedEP11HALS_Device_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_43_13688;
    v8[4] = this;
    v8[5] = a2;
    v6 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v6, v8);
    (*(**(*(this + 3) + 104) + 240))(*(*(this + 3) + 104));
    v7 = *(*(this + 3) + 16);
    HALS_IOContext_Legacy_Impl::ResumeIO(this);
  }

  _Block_object_dispose(&v10, 8);
}

void ___ZN26HALS_IOContext_Legacy_Impl13DeviceArrivedEP11HALS_Device_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(**(a1 + 48) + 216))(*(a1 + 48));
  v4 = 1;
  *(*(*(a1 + 32) + 8) + 24) = HALS_IOContextDescription::GetEngineInfoForDeviceUID((v2 + 1536), v3) != 0;
  CACFString::~CACFString(&v3);
}

void ___ZN26HALS_IOContext_Legacy_Impl13DeviceArrivedEP11HALS_Device_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = (*(**(a1 + 40) + 216))(*(a1 + 40));
  v15 = 1;
  v12 = v2 + 312;
  v13 = HALB_Mutex::Lock((v2 + 328));
  if (HALS_IOContextDescription::GetEngineInfoForDeviceUID((v2 + 1536), v14))
  {
    v3 = *(a1 + 40);
    v16 = (*(*v3 + 216))(v3);
    v17 = 1;
    EngineInfoForDeviceUID = HALS_IOContextDescription::GetEngineInfoForDeviceUID((v2 + 1536), v16);
    if (EngineInfoForDeviceUID)
    {
      v5 = HALS_IODevice::CopyIOEngine(v3);
      v6 = v5;
      if (v5)
      {
        v7 = *(EngineInfoForDeviceUID + 88);
        *(EngineInfoForDeviceUID + 88) = v5;
        *(EngineInfoForDeviceUID + 940) = 0;
        *(EngineInfoForDeviceUID + 830) = (*(*v5 + 880))(v5);
        HALS_ObjectMap::RetainObject(*(EngineInfoForDeviceUID + 88), v8);
        HALS_ObjectMap::ReleaseObject(v7, v9);
        HALS_ObjectMap::ReleaseObject(v6, v10);
        v11 = *(*(EngineInfoForDeviceUID + 88) + 16);
        operator new();
      }
    }

    CACFString::~CACFString(&v16);
  }

  HALB_IOThread::Locker::~Locker(&v12);
  CACFString::~CACFString(&v14);
}

void sub_1DE6029E0(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  HALS_ObjectMap::ReleaseObject(v21, a2);
  CACFString::~CACFString(&a14);
  HALB_IOThread::Locker::~Locker(&a10);
  CACFString::~CACFString(&a12);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::ClockDeviceDied(HALS_IOContext_Legacy_Impl *this, const __CFString *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN26HALS_IOContext_Legacy_Impl15ClockDeviceDiedEPK10__CFString_block_invoke;
  v9[3] = &unk_1E8677FF8;
  v9[4] = &v10;
  v9[5] = this;
  v9[6] = a2;
  v4 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v4, v9);
  if (*(v11 + 24) == 1)
  {
    v5 = *(*(this + 3) + 16);
    HALS_IOContext_Legacy_Impl::PauseIO(this);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZN26HALS_IOContext_Legacy_Impl15ClockDeviceDiedEPK10__CFString_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_41_13690;
    v8[4] = this;
    v8[5] = a2;
    v6 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v6, v8);
    v7 = *(*(this + 3) + 16);
    HALS_IOContext_Legacy_Impl::ResumeIO(this);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl15ClockDeviceDiedEPK10__CFString_block_invoke(uint64_t a1)
{
  result = HALS_IOContextDescription::HasClockDevice(*(*(a1 + 40) + 1544), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___ZN26HALS_IOContext_Legacy_Impl15ClockDeviceDiedEPK10__CFString_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 312;
  v4 = HALB_Mutex::Lock((v2 + 328));
  HALS_IOContextDescription::DeviceDied((v2 + 1536), *(a1 + 40));
  HALB_IOThread::Locker::~Locker(&v3);
}

void HALS_IOContext_Legacy_Impl::ClockDeviceArrived(HALS_IOContext_Legacy_Impl *this, const __CFString *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN26HALS_IOContext_Legacy_Impl18ClockDeviceArrivedEPK10__CFString_block_invoke;
  v8[3] = &unk_1E8677FB0;
  v8[4] = &v9;
  v8[5] = this;
  v8[6] = a2;
  v3 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v3, v8);
  if (*(v10 + 24) == 1)
  {
    v4 = *(*(this + 3) + 16);
    HALS_IOContext_Legacy_Impl::PauseIO(this);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___ZN26HALS_IOContext_Legacy_Impl18ClockDeviceArrivedEPK10__CFString_block_invoke_2;
    v7[3] = &__block_descriptor_tmp_39_13692;
    v7[4] = this;
    v5 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v5, v7);
    v6 = *(*(this + 3) + 16);
    HALS_IOContext_Legacy_Impl::ResumeIO(this);
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl18ClockDeviceArrivedEPK10__CFString_block_invoke(uint64_t a1)
{
  result = HALS_IOContextDescription::HasClockDevice(*(*(a1 + 40) + 1544), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___ZN26HALS_IOContext_Legacy_Impl18ClockDeviceArrivedEPK10__CFString_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 + 312;
  v3 = HALB_Mutex::Lock((v1 + 328));
  HALS_IOContextDescription::PickMasterEngine((v1 + 1536));
  HALB_IOThread::Locker::~Locker(&v2);
}

void HALS_IOContext_Legacy_Impl::SetProcessInputMuteState(HALS_IOContext_Legacy_Impl *this, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN26HALS_IOContext_Legacy_Impl24SetProcessInputMuteStateEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_37_13693;
  v3[4] = this;
  v4 = a2;
  v2 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t HALS_IOContext_Legacy_Impl::GetSimpleStreamUsage(HALS_IOContext_Legacy_Impl *this)
{
  v2 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 208), 0, *(this + 209));
  v3 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 205), 0, *(this + 206));
  v4 = *(this + 442);
  v5 = v2 == v4;
  if ((v2 - v4) | v3)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == v4;
    }

    if (!v6 && !v4)
    {
      return 2;
    }

    if (!v3)
    {
      v5 = 0;
    }

    if (v5 && !v4)
    {
      return 1;
    }

    if (!v6 && v4 != 0)
    {
      return 4;
    }

    if (v2 != v4 && v3)
    {
      if (v4)
      {
        return 7;
      }

      else
      {
        return 6;
      }
    }

    v8 = !v5 || v4 == 0;
    v9 = 5;
  }

  else
  {
    v8 = v4 == 0;
    v9 = 3;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t HALS_IOContext_Legacy_Impl::GetStreamLatencyAtIndex(HALS_IOContext_Legacy_Impl *this, int a2, unsigned int a3)
{
  if (a2 && (v3 = *(this + 199), 0xCBEEA4E1A08AD8F3 * ((*(this + 200) - v3) >> 3) > a3) && (v4 = v3 + 472 * a3, *(v4 + 108) == 1) && *(v4 + 164) == 1)
  {
    return *(v4 + 160);
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_IOContext_Legacy_Impl::GetNumberInputStreamsOfType(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 1768);
  }

  if (a2)
  {
    return 0;
  }

  return HALS_IOContextDescription::GetNumberStreams(a1 + 1536, 1) - *(a1 + 1768);
}

void HALS_IOContext_Legacy_Impl::Deactivate(HALS_IOContext_Legacy_Impl *this)
{
  v2 = (this + 312);
  v22 = (this + 312);
  v3 = this + 328;
  v23 = HALB_Mutex::Lock((this + 328));
  if (*(this + 1512) != 0)
  {
    HALS_IOPrewarmManager::GetState(&__p, this + 189);
    HALS_IOContext_Legacy_Impl::ResetEngineState_Off(this, &__p);
    if (__p)
    {
      operator delete(__p);
    }
  }

  __p = v3;
  LODWORD(v12) = HALB_Mutex::Lock(v3);
  HALB_IOThread::_WaitForState(v2, 1735552612);
  *(this + 493) = 1;
  HALB_Guard::Locker::~Locker(&__p);
  v4 = *(this + 3);
  v5 = **(v4 + 72);
  v6 = *(v4 + 16);
  v16[0] = 0;
  v16[1] = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  LOWORD(v14) = 0;
  v15 = v16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = v5;
  v21 = v6;
  HALS_IOContextHostedDSP::Remove(*(this + 272), (this + 1536), *(this + 340), v5, v6, &__p, v7);
  HALS_MutationChangeSynchronizer::Wait(__p, v12);
  HALS_IOContextDescription::SetToEmpty((this + 1536));
  *(this + 382) = 0;
  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(&__p);
  HALB_IOThread::Locker::~Locker(&v22);
  v8 = *(this + 173);
  v22 = this;
  v9 = atomic_load((v8 + 32));
  if (v9)
  {
    atomic_store(1u, (v8 + 33));
  }

  v10 = *v8;
  __p = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = ___ZN10applesauce8dispatch2v19sync_implIRZN26HALS_IOContext_Legacy_Impl10DeactivateEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  v14 = &__block_descriptor_tmp_136_13694;
  v15 = &v22;
  dispatch_sync(v10, &__p);
}

void sub_1DE6032BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE60317CLL);
}

void sub_1DE6032C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  HALB_IOThread::Locker::~Locker((v9 - 48));
  _Unwind_Resume(a1);
}

void ___ZN10applesauce8dispatch2v19sync_implIRZN26HALS_IOContext_Legacy_Impl10DeactivateEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = *(v1 + 1408);
  *(v1 + 1400) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

double HALS_IOContext_Legacy_Impl::Initialize(HALS_IOContext_Legacy_Impl *this, int a2)
{
  *(this + 340) = a2;
  *&result = 0x200000001;
  *(this + 258) = 0x200000001;
  return result;
}

void HALS_IOContext_Legacy_Impl::~HALS_IOContext_Legacy_Impl(HALS_IOContext_Legacy_Impl *this)
{
  HALS_IOContext_Legacy_Impl::~HALS_IOContext_Legacy_Impl(this);

  JUMPOUT(0x1E12C1730);
}

{
  if (*(this + 264))
  {
    std::thread::join(this + 264);
  }

  AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(*(this + 3));
  HALS_IOContext_Legacy_Impl::EnableCaptureFiles(this, AudioCaptureMode);
  v3 = *(this + 274);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<HALS_IOContextHostedDSP>::~unique_ptr[abi:ne200100](this + 272);
  if (*(this + 2175) < 0)
  {
    operator delete(*(this + 269));
  }

  std::thread::~thread(this + 264);
  std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::~__hash_table(this + 2072);
  HALS_IOContextDescription::~HALS_IOContextDescription((this + 1536));
  v4 = *(this + 184);
  if (v4)
  {
    *(this + 185) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<void ()(IORunningState)>::~__value_func[abi:ne200100](this + 1432);
  v5 = *(this + 176);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 174);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::~__value_func[abi:ne200100](this + 1104);
  HALS_IOThread::~HALS_IOThread((this + 312));
  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t *std::unique_ptr<HALS_IOContextHostedDSP>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v5 = v2;
    std::vector<HALS_IOContextHostedDSP::HostedDSPList::ExtendedInstanceInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x1E12C1730](v2, 0x20C40769AC3DALL);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<HALS_MultiTap * const,HALS_IOContext_Legacy_Impl::ActiveTap>,0>(v2 + 2);
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

void std::vector<HALS_IOContextHostedDSP::HostedDSPList::ExtendedInstanceInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        *(v4 - 1) = 0;
        if (v6)
        {
          HALS_IOContextHostedDSP::DSPStreamInstance::~DSPStreamInstance(v6);
          MEMORY[0x1E12C1730]();
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

atomic_uint *___ZN26HALS_IOContext_Legacy_Impl18SetVolumeForEngineEP13HALS_IOEnginebf_block_invoke(atomic_uint *result)
{
  v1 = *(result + 4);
  v2 = *(result + 52);
  v3 = result[12];
  v4 = *(v1 + 1568);
  v5 = *(v1 + 1576);
  if (v4 != v5)
  {
    while (*(*v4 + 11) != *(result + 5))
    {
      if (++v4 == v5)
      {
        return result;
      }
    }
  }

  if (v4 != v5)
  {
    result = *v4;
    if (*v4)
    {
      if (*(result + 11))
      {
        v6 = round(*(result + 106) * 0.05);
        LODWORD(v7) = v3;
        *(&v7 + 1) = 0;
        v8 = v6;
        return HALS_IOEngineInfo::write_volume_target_info_potentially_blocking(result, v2, &v7);
      }
    }
  }

  return result;
}

void sub_1DE603670(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

atomic_uint *___ZN26HALS_IOContext_Legacy_Impl19RampVolumeForEngineEP13HALS_IOEnginebfdd_block_invoke(atomic_uint *result)
{
  v1 = *(result + 4);
  v2 = *(result + 68);
  v3 = result[16];
  v4 = *(result + 3);
  v5 = *(v1 + 1568);
  v6 = *(v1 + 1576);
  if (v5 != v6)
  {
    while (*(*v5 + 11) != *(result + 5))
    {
      if (++v5 == v6)
      {
        return result;
      }
    }
  }

  if (v5 != v6)
  {
    result = *v5;
    if (*v5)
    {
      v7 = v3;
      v8 = v4;
      return HALS_IOEngineInfo::write_volume_target_info_potentially_blocking(result, v2, &v7);
    }
  }

  return result;
}

void sub_1DE603710(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext_Legacy_Impl::IncrementOutputFrameCounterForTaps(HALS_IOContext_Legacy_Impl *this, uint64_t a2)
{
  for (i = *(this + 261); i; i = *i)
  {
    if (*(i + 40) == 1)
    {
      v5 = i[3];
      v6 = *(*(this + 3) + 16);
      if (std::__shared_mutex_base::try_lock_shared((v5 + 176)))
      {
        HALS_MultiTap::fetch_writer_state(&v7, v5, v6);
        if (v7)
        {
          *(v7 + 280) += a2;
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        std::__shared_mutex_base::unlock_shared((v5 + 176));
      }
    }
  }
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(uint64_t result, unsigned int a2, AudioTimeStamp *a3, double a4)
{
  memset(&v5.mHostTime, 0, 48);
  *&v5.mFlags = 1;
  v4 = *(result + 1560);
  if (v4)
  {
    v5.mSampleTime = *(v4 + 440) + *(result + 1352) + (*(result + 1368) * a2) + a4;
    if (*(v4 + 88))
    {
      return HALS_IOClock::TranslateTime(*(v4 + 368), &v5, a3);
    }
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(HALS_IOContext_Legacy_Impl *this, AudioTimeStamp *a2)
{
  v5 = *(*(this + 3) + 16);
  v3 = &unk_1F5983F68;
  v4 = a2;
  v7[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(AudioTimeStamp &)::$_0>;
  v7[1] = &v4;
  v6 = &off_1F5983F18;
  v8 = v7;
  v9[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v9[1] = &v8;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(this + 196), *(this + 197), v9, &v6, &v3);
}

BOOL HALS_IOContext_Legacy_Impl::PerformIO(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, char a7)
{
  v11 = (a1 + 1536);
  v91 = *(a1 + 1560);
  *a6 = 0;
  v102 = 0;
  v109 = HALS_IOContext_Legacy_Impl::IsAnyEngineMixing_Helper;
  v110 = &v102;
  *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(BOOL &,HALS_IOEngineInfo &),std::reference_wrapper<BOOL>,std::placeholders::__ph<1> const&>>;
  *&v104.mFormatID = &v109;
  v98 = &off_1F5983F18;
  v105 = &v104;
  *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&v92[8] = &v105;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(a1 + 1568), *(a1 + 1576), v92, &v98);
  v12 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(a1 + 1664), 0, *(a1 + 1672));
  v13 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(a1 + 1640), 0, *(a1 + 1648));
  v89 = v11;
  v14 = HALS_IOContextDescription::GetNumberStreams(v11, 0) != 0;
  v15 = v13;
  v85 = v13 == 0;
  v16 = a3;
  v17 = v85 && v14;
  v98 = a1;
  v99 = a4;
  v100 = v16;
  v101 = a7;
  *v96 = &off_1F5983FA8;
  *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_0>;
  *&v104.mFormatID = &v98;
  v105 = &off_1F5983F18;
  v109 = &v104;
  *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&v92[8] = &v109;
  v18 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, &v105, v96);
  if (v18)
  {
    goto LABEL_93;
  }

  v19 = v91;
  if (!v91)
  {
    return v18 || v19 == 0;
  }

  if (*(*(*(a1 + 24) + 72) + 40))
  {
    *(a1 + 1144) = bswap64(*a2);
    *(a1 + 1152) = bswap64(*(a2 + 8));
    *(a1 + 1160) = bswap64(*(a2 + 16));
    *(a1 + 1200) = bswap32(*(a2 + 56));
    v20 = (a1 + 1208);
    *(a1 + 1208) = bswap64(v91[74]);
    *(a1 + 1216) = bswap64(v91[75]);
    *(a1 + 1224) = bswap64(*(a2 + 16));
    *(a1 + 1264) = bswap32(*(a2 + 56));
    v21 = (a1 + 1272);
    *(a1 + 1272) = bswap64(v91[82]);
    *(a1 + 1280) = bswap64(v91[83]);
    v22 = bswap64(*(a2 + 16));
    v23 = bswap32(*(a2 + 56));
  }

  else
  {
    *(a1 + 1144) = *a2;
    *(a1 + 1152) = *(a2 + 8);
    *(a1 + 1160) = *(a2 + 16);
    *(a1 + 1200) = *(a2 + 56);
    v20 = (a1 + 1208);
    *(a1 + 1208) = v91[74];
    *(a1 + 1216) = v91[75];
    *(a1 + 1224) = *(a2 + 16);
    *(a1 + 1264) = *(a2 + 56);
    v21 = (a1 + 1272);
    *(a1 + 1272) = v91[82];
    *(a1 + 1280) = v91[83];
    v22 = *(a2 + 16);
    v23 = *(a2 + 56);
  }

  *(a1 + 1288) = v22;
  *(a1 + 1328) = v23;
  v24 = *(a1 + 1136);
  v25 = *(a1 + 1144);
  v26 = *(a1 + 1160);
  v27 = *(a1 + 1192);
  v24[8] = *(a1 + 1176);
  v24[9] = v27;
  v24[6] = v25;
  v24[7] = v26;
  v28 = *(a1 + 1136);
  v29 = *v20;
  v30 = v20[1];
  v31 = v20[3];
  v28[12] = v20[2];
  v28[13] = v31;
  v28[10] = v29;
  v28[11] = v30;
  v32 = *(a1 + 1136);
  v33 = *v21;
  v34 = v21[1];
  v35 = v21[3];
  v32[16] = v21[2];
  v32[17] = v35;
  v32[14] = v33;
  v32[15] = v34;
  __dmb(0xBu);
  if (v12 && ((*(a1 + 1416) & 1) != 0 || *(a1 + 1417) == 1))
  {
    v36 = (*(*(a1 + 24) + 16) | (v16 << 32));
    v109 = HALS_IOPerformer::begin_reading;
    v110 = v36;
    *v103 = &off_1F5983FA8;
    *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &,unsigned int),unsigned int,std::placeholders::__ph<1> const&,unsigned int &>>;
    *&v104.mFormatID = &v109;
    *v96 = &off_1F5983F18;
    v105 = &v104;
    *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    *&v92[8] = &v105;
    v18 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, v96, v103);
    if (v18)
    {
      return v18 || v19 == 0;
    }

    v37 = v15;
    v38 = v17;
    v105 = a1;
    v39 = v16;
    LODWORD(v106) = v16;
    *v96 = &unk_1F5987718;
    v97 = v89;
    *v103 = &unk_1F5982640;
    *v92 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_1>;
    *&v92[8] = &v105;
    v40 = *(a1 + 1592);
    v41 = *(a1 + 1600);
    if (*&v40 != v41)
    {
      v42 = 0;
      v43 = 0;
      do
      {
        if (v42)
        {
          v43 = (v43 + 1);
        }

        else
        {
          v43 = 0;
        }

        v104.mSampleRate = v40;
        *&v104.mFormatID = v43;
        if (((*(*v96 + 16))(v96, &v104) & 1) == 0 && ((*(*v103 + 16))(v103, &v104) & 1) == 0)
        {
          v109 = *&v40;
          v110 = v43;
          if ((*v92)(&v92[8], &v109))
          {
            goto LABEL_96;
          }
        }

        *&v40 += 472;
        v42 = 1;
      }

      while (*&v40 != v41);
    }

    v44 = *(*(a1 + 24) + 16);
    v109 = HALS_IOPerformer::end_reading;
    LODWORD(v110) = v44;
    v95 = &off_1F5983FA8;
    *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
    *&v104.mFormatID = &v109;
    *v103 = &off_1F5983F18;
    *v96 = &v104;
    *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    *&v92[8] = v96;
    if (VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, v103, &v95))
    {
      goto LABEL_96;
    }

    LODWORD(v16) = v39;
    v15 = v37;
    *&v104.mSampleRate = a1;
    v104.mFormatID = v39;
    v109 = &unk_1F5982640;
    *v92 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_2>;
    *&v92[8] = &v104;
    if (VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOStreamGroup::FilterClocklessReferenceStreamOnlyEngines>(*(a1 + 1592), *(a1 + 1600), v92, &v109))
    {
      goto LABEL_96;
    }

    v17 = v38;
    if (*(*(*(a1 + 24) + 72) + 40) == 1)
    {
      HALS_IOContextDescription::EndianSwapSharedBuffers(v89, 1, v16);
    }
  }

  v45 = mach_absolute_time();
  if (HALS_IOContext::CallClientIOProc(*(a1 + 24), *(a1 + 1344), v16, *(a1 + 1377), v102) == 1)
  {
    *(a1 + 289) = 1;
  }

  v46 = mach_absolute_time();
  v47 = __udivti3();
  if (v46 >= v45)
  {
    v48 = v47;
  }

  else
  {
    v48 = -v47;
  }

  *a6 = v48;
  if (v15)
  {
    if (a5)
    {
      goto LABEL_100;
    }
  }

  else
  {
    if (a5)
    {
      v49 = 0;
    }

    else
    {
      v49 = v17;
    }

    if (!v49)
    {
      goto LABEL_100;
    }
  }

  if ((HALB_IOThread::HasBeenStopped((a1 + 312)) | v17))
  {
    LODWORD(v104.mSampleRate) = *(a1 + 1360);
    v50 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_1>;
LABEL_42:
    *v92 = v50;
    *&v92[8] = &v104;
    VisitableVector<HALS_IOStackDescription>::apply<>(*(a1 + 1616), *(a1 + 1624), v92);
    goto LABEL_43;
  }

  if (*(*(*(a1 + 24) + 72) + 40) == 1)
  {
    LODWORD(v104.mSampleRate) = v16;
    v50 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_1>;
    goto LABEL_42;
  }

LABEL_43:
  v94[0] = 0;
  v94[1] = 0;
  HALS_System::GetInstance(v92, 0, v94);
  v51 = v16;
  v52 = *(*v92 + 1560);
  if (*&v92[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v92[8]);
  }

  if (v52)
  {
    v53 = *(a1 + 2064) - 1;
    v54 = *(a1 + 2068);
    LODWORD(v109) = 0;
    v111 = 0;
    v112 = 0;
    v110 = 0;
    v96[0] = 0;
    memset(v92, 0, 40);
    OutputStackDescriptionForChannel = HALS_IOContextDescription::GetOutputStackDescriptionForChannel(v89, v53, &v109, v96);
    if (OutputStackDescriptionForChannel)
    {
      HALS_IOStackDescription::GetFormat(&v109, v92);
    }

    if (v111 == v110)
    {
      v56 = 0;
    }

    else if (-1601513229 * ((v110[1] - *v110) >> 3))
    {
      v56 = *v110;
    }

    else
    {
      v56 = 0;
    }

    LODWORD(v105) = 0;
    v107 = 0;
    v108 = 0;
    v106 = 0;
    v103[0] = 0;
    memset(&v104, 0, sizeof(v104));
    v57 = HALS_IOContextDescription::GetOutputStackDescriptionForChannel(v89, v54 - 1, &v105, v103);
    if (v57)
    {
      HALS_IOStackDescription::GetFormat(&v105, &v104);
    }

    if (v107 == v106)
    {
      v58 = 0;
    }

    else
    {
      v58 = *v106;
      if (!(-1601513229 * ((*(v106 + 1) - *v106) >> 3)))
      {
        v58 = 0;
      }
    }

    if (*&v92[8] == 1819304813)
    {
      v59 = OutputStackDescriptionForChannel;
    }

    else
    {
      v59 = 0;
    }

    if (v59 == 1)
    {
      v60 = *(v56 + 56);
      if (v60)
      {
        v61 = v104.mFormatID == 1819304813 ? v57 : 0;
        if (v61 == 1)
        {
          v62 = *(v58 + 56);
          if (v62)
          {
            if (!*(v56 + 108) || (v63 = *(v56 + 112), *(v56 + 120) == v63) || !v63)
            {
              v63 = (v56 + 456);
            }

            v64 = *v63;
            if (!*(v58 + 108) || (v65 = *(v58 + 112), *(v58 + 120) == v65) || !v65)
            {
              v65 = v58 + 456;
            }

            v66 = (v60 + *(v64 + 388));
            v67 = (v62 + *(*v65 + 388));
            if (v66 == v67 && *&v92[28] == 2)
            {
              if (v51)
              {
                v68 = v51;
                do
                {
                  v69 = (*v66 + v66[1]) * 0.5;
                  *v66 = v69;
                  v66[1] = v69;
                  v66 += 2;
                  --v68;
                }

                while (v68);
              }
            }

            else if (v51)
            {
              v70 = &v67[v103[0]];
              v71 = &v66[v96[0]];
              v72 = 4 * v104.mChannelsPerFrame;
              v73 = 4 * *&v92[28];
              v74 = v51;
              do
              {
                v75 = (*v71 + *v70) * 0.5;
                *v71 = v75;
                *v70 = v75;
                v70 = (v70 + v72);
                v71 = (v71 + v73);
                --v74;
              }

              while (v74);
            }
          }
        }
      }
    }

    *&v104.mSampleRate = &v106;
    std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](&v104);
    *v92 = &v110;
    std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](v92);
  }

  v76 = mach_absolute_time();
  v77 = *(a1 + 1418);
  if (v77 == 1)
  {
    v78 = *(a2 + 16);
    *v92 = *a2;
    *&v92[16] = v78;
    v79 = *(a2 + 48);
    *&v92[32] = *(a2 + 32);
    v93 = v79;
    HALS_IOContext_Legacy_Impl::ProcessOutputForTaps(a1, v51, v92);
  }

  *v96 = a1;
  LODWORD(v97) = v51;
  v109 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_3>;
  v110 = v96;
  v105 = &unk_1F5987768;
  v106 = v89;
  *v103 = &v109;
  *&v104.mSampleRate = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
  *&v104.mFormatID = v103;
  *v92 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
  *&v92[8] = &v104;
  if (VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a1 + 1616), *(a1 + 1624), v92, &v105))
  {
    goto LABEL_92;
  }

  v80 = *(*(a1 + 24) + 16);
  v109 = HALS_IOPerformer::begin_writing;
  LODWORD(v110) = v80;
  v95 = &off_1F5983FA8;
  *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
  *&v104.mFormatID = &v109;
  *v103 = &off_1F5983F18;
  v105 = &v104;
  *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&v92[8] = &v105;
  if (VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, v103, &v95))
  {
LABEL_92:
    v18 = 1;
LABEL_93:
    v19 = v91;
    return v18 || v19 == 0;
  }

  *&v104.mSampleRate = a1;
  v104.mFormatID = v51;
  v19 = v91;
  if (HALS_IOContextDescription::ApplyToOutput_ButSkipReferenceStreamOnlyEngines(*(a1 + 1616), *(a1 + 1624), caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_4>, &v104) || (v81 = *(*(a1 + 24) + 16), *v92 = HALS_IOPerformer::end_writing, *&v92[8] = v81, v109 = &off_1F5983FA8, HALS_IOContext_Legacy_Impl::engine_apply<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>,FilterClocklessReferenceStreamOnlyEngines>(*(a1 + 1568), *(a1 + 1576), v92, &v109)))
  {
LABEL_96:
    v18 = 1;
    return v18 || v19 == 0;
  }

  if ((v77 & 1) == 0)
  {
    v82 = *(a2 + 16);
    *v92 = *a2;
    *&v92[16] = v82;
    v83 = *(a2 + 48);
    *&v92[32] = *(a2 + 32);
    v93 = v83;
    HALS_IOContext_Legacy_Impl::ProcessOutputForTaps(a1, v51, v92);
  }

  *(a1 + 1496) = (mach_absolute_time() - v76) * 0.0000000416666667;
LABEL_100:
  v84 = *(*(a1 + 24) + 16);
  v109 = HALS_IOPerformer::end_io_cycle;
  LODWORD(v110) = v84;
  *v103 = &unk_1F5983F68;
  *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
  *&v104.mFormatID = &v109;
  *v96 = &off_1F5983F18;
  v105 = &v104;
  *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&v92[8] = &v105;
  v18 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, v96, v103);
  return v18 || v19 == 0;
}

uint64_t HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(_opaque_pthread_t **this, unsigned int a2)
{
  v5 = 0;
  v4 = 0;
  result = HALS_IOContext_Legacy_Impl::GetRealtimePriorityThreadParameters(this, a2, &v5, &v4);
  if (!result)
  {
    HALB_IOThread::ConfigureThreadForRealtimePriority(this + 39, v5, v4);
    return 0;
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleBufferSizeChanged(CAAudioTimeStamp &,unsigned int,unsigned int,long long &)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to update realtime priority parameters with code: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleBufferSizeChanged(CAAudioTimeStamp &,unsigned int,unsigned int,long long &)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOStreamGroup::FilterClocklessReferenceStreamOnlyEngines>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v14[8] = v4;
  v14[9] = v5;
  v9 = a1;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (v10)
    {
      ++v11;
    }

    else
    {
      v11 = 0;
    }

    v14[0] = v9;
    v14[1] = v11;
    if (((*(*a4 + 16))(a4, v14) & 1) == 0)
    {
      v13[0] = v9;
      v13[1] = v11;
      result = (*a3)((a3 + 1), v13);
      if (result)
      {
        break;
      }
    }

    v9 += 472;
    v10 = 1;
    if (v9 == a2)
    {
      return 0;
    }
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::ProcessOutputForTaps(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v192 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 2088);
  if (v3)
  {
    v4 = a2;
    v5 = a1;
    v136 = a2;
    while (1)
    {
      if (v3[40] == 1)
      {
        v6 = atomic_load(v3 + 41);
        if ((v6 & 1) == 0 && v3[40] == 1)
        {
          v7 = *(v3 + 3);
          if (v7)
          {
            v8 = *a3;
            v9 = *(a3 + 8);
            v10 = *(a3 + 32);
            v172 = *(a3 + 16);
            v173 = v10;
            v174 = *(a3 + 48);
            v11 = *(v5 + 1352);
            v12 = *(v7 + 72);
            if ((v12 & 0x100000000) != 0)
            {
              v13 = HALS_ObjectMap::CopyObjectByObjectID(v12);
              v15 = v13;
              if (v13)
              {
                v16 = (*(*v13 + 208))(v13);
                EngineInfoForDeviceUID = HALS_IOContextDescription::GetEngineInfoForDeviceUID((v5 + 1536), v16);
                if (EngineInfoForDeviceUID)
                {
                  v8 = *(EngineInfoForDeviceUID + 440);
                  v9 = *(EngineInfoForDeviceUID + 448);
                  v18 = *(EngineInfoForDeviceUID + 472);
                  v172 = *(EngineInfoForDeviceUID + 456);
                  v173 = v18;
                  v174 = *(EngineInfoForDeviceUID + 488);
                  v11 = (*(*EngineInfoForDeviceUID + 192))(EngineInfoForDeviceUID, 0);
                }
              }

              HALS_ObjectMap::ReleaseObject(v15, v14);
              v7 = *(v3 + 3);
            }

            v19 = *(*(v5 + 24) + 16);
            v20 = *(v5 + 1360);
            v21 = *(v5 + 1368);
            if (std::__shared_mutex_base::try_lock_shared((v7 + 176)))
            {
              HALS_MultiTap::fetch_writer_state(&v157, v7, v19);
              v22 = v157;
              if (v157)
              {
                if (*(v7 + 76) == 1)
                {
                  *(v157 + 27) = v8;
                  *(v22 + 28) = v9;
                  v23 = v173;
                  *(v22 + 232) = v172;
                  *(v22 + 248) = v23;
                  *(v22 + 264) = v174;
                }

                else
                {
                  buf.mSampleTime = 0.0;
                  buf.mHostTime = v9;
                  memset(&buf.mRateScalar, 0, 40);
                  *&buf.mFlags = 2;
                  *(v157 + 68) = 3;
                  HALS_MultiTap::translate_time(v7, &buf, (v22 + 216));
                  v11 = 0;
                  v8 = floor(*(v22 + 27) * (**(v22 + 1) / *(v7 + 24)));
                }

                *(v22 + 35) = v11;
                *(v22 + 27) = v8 + (v21 * v20);
              }

              if (v158)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v158);
              }

              std::__shared_mutex_base::unlock_shared((v7 + 176));
            }

            atomic_store(1u, v3 + 41);
          }
        }

        v24 = *(v3 + 6);
        v25 = *v24;
        if (v25 != (*(v3 + 7) - v24 - 8) >> 4)
        {
          goto LABEL_199;
        }

        if (v25)
        {
          v26 = 0;
          v27 = 0;
          while (1)
          {
            HALS_IOContextDescription::GetStreamInfoAtIndex((v5 + 1536), 0, v27, &buf);
            v24 = *(v3 + 6);
            v28 = &v24[v26];
            v24[v26 + 2] = buf.mSMPTETime.mFlags;
            v29 = buf.mSMPTETime.mType * v4;
            if (LODWORD(buf.mWordClockTime) != 1819304813)
            {
              v29 = *&buf.mSMPTETime.mSubframes;
            }

            v28[3] = v29;
            *(v28 + 2) = HALS_IOContextDescription::GetIOBufferForStreamAtIndex((v5 + 1536), 0, v27);
            v30 = *v24;
            if (v30 != (*(v3 + 7) - v24 - 8) >> 4)
            {
              break;
            }

            ++v27;
            v26 += 4;
            if (v27 >= v30)
            {
              goto LABEL_29;
            }
          }

LABEL_199:
          CAAssertRtn();
LABEL_200:
          CAAssertRtn();
LABEL_201:
          __assert_rtn("GetNumberBuffers", "HALS_MultiChannelMixer.cpp", 41, "GetAudioBufferList().mNumberBuffers == (mStorage.size() - kHeaderSize) / sizeof(AudioBuffer)");
        }

LABEL_29:
        v31 = *(v3 + 3);
        v32 = *(*(v5 + 24) + 16);
        if (std::__shared_mutex_base::try_lock_shared((v31 + 176)))
        {
          break;
        }
      }

LABEL_194:
      v3 = *v3;
      if (!v3)
      {
        goto LABEL_198;
      }
    }

    HALS_MultiTap::fetch_writer_state(&v152, v31, v32);
    if (!v152 || (__C = *(v152 + 18)) == 0 || !*(v152 + 19))
    {
LABEL_191:
      if (v153)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v153);
      }

      std::__shared_mutex_base::unlock_shared((v31 + 176));
      goto LABEL_194;
    }

    if (v136 >= *(v152 + 17))
    {
      v33 = *(v152 + 17);
    }

    else
    {
      v33 = v136;
    }

    v34 = v152;
    bzero(__C, v33 * *(v31 + 48));
    v137 = v3;
    v149 = v34;
    if (*(v34 + 10) == 2 && *(v34 + 15) == 1)
    {
      memcpy(__C, *&v24[4 * *(v34 + 14) + 4], v24[4 * *(v34 + 14) + 3]);
    }

    else
    {
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_223;
      }

      v133 = v31;
      v37 = v31 + 48;
      v35 = *(v31 + 48);
      v36 = *(v37 + 4);
      v38 = *v24;
      v39 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      v172.__vftable = v39;
      *&v173 = v39 + ((16 * v38) | 8);
      bzero(v39, (16 * v38) | 8);
      v172.__imp_.__imp_ = v39 + ((16 * v38) | 8);
      v146 = v39;
      LODWORD(v39->~logic_error) = v38;
      v157 = 0;
      v158 = 0uLL;
      v40 = *v24;
      if (v40)
      {
        *&buf.mSMPTETime.mSubframes = &v157;
        v41 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(v40);
        *&buf.mSampleTime = v41;
        buf.mHostTime = v41;
        v43 = v41 + 24 * v42;
        *&buf.mRateScalar = v41;
        buf.mWordClockTime = v43;
        v44 = (v157 + v41 - v158);
        std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<caulk::rt::vector<float>>,caulk::rt::vector<float>*>(&v157, v157, v158, v44);
        v45 = v157;
        v46 = *(&v158 + 1);
        v157 = v44;
        *&v158 = v41;
        *(&v158 + 1) = v43;
        *&buf.mRateScalar = v45;
        buf.mWordClockTime = v46;
        *&buf.mSampleTime = v45;
        buf.mHostTime = v45;
        std::__split_buffer<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>> &>::~__split_buffer(&buf);
        v47 = v33 * v36;
        if (*v24)
        {
          v48 = 0;
          v145 = v35 * v33;
          do
          {
            memset(&__A, 0, sizeof(__A));
            if (v47)
            {
              if (v47 >> 62)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              if (!*MEMORY[0x1E69E3C08])
              {
                goto LABEL_223;
              }

              v49 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
              v50 = v49 + 4 * v47;
              __A.__r_.__value_.__r.__words[0] = v49;
              __A.__r_.__value_.__r.__words[2] = v50;
              bzero(v49, 4 * v47);
              __A.__r_.__value_.__l.__size_ = v50;
            }

            else
            {
              v50 = 0;
            }

            v51 = v158;
            if (v158 >= *(&v158 + 1))
            {
              v53 = 0xAAAAAAAAAAAAAAABLL * ((v158 - v157) >> 3);
              v54 = v53 + 1;
              if (v53 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((*(&v158 + 1) - v157) >> 3) > v54)
              {
                v54 = 0x5555555555555556 * ((*(&v158 + 1) - v157) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v158 + 1) - v157) >> 3) >= 0x555555555555555)
              {
                v55 = 2.77499655e-257;
              }

              else
              {
                v55 = *&v54;
              }

              *&buf.mSMPTETime.mSubframes = &v157;
              if (v55 == 0.0)
              {
                v56 = 0;
              }

              else
              {
                v55 = COERCE_DOUBLE(std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(*&v55));
              }

              v57 = *&v55 + 24 * v53;
              buf.mSampleTime = v55;
              buf.mHostTime = v57;
              buf.mWordClockTime = *&v55 + 24 * v56;
              *v57 = *&__A.__r_.__value_.__l.__data_;
              *(v57 + 16) = v50;
              memset(&__A, 0, sizeof(__A));
              *&buf.mRateScalar = v57 + 24;
              v58 = (v157 + v57 - v158);
              std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<caulk::rt::vector<float>>,caulk::rt::vector<float>*>(&v157, v157, v158, v58);
              v59 = v157;
              v60 = *(&v158 + 1);
              v157 = v58;
              mRateScalar = buf.mRateScalar;
              v158 = *&buf.mRateScalar;
              *&buf.mRateScalar = v59;
              buf.mWordClockTime = v60;
              *&buf.mSampleTime = v59;
              buf.mHostTime = v59;
              std::__split_buffer<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>> &>::~__split_buffer(&buf);
              v52 = mRateScalar;
            }

            else
            {
              *v158 = *&__A.__r_.__value_.__l.__data_;
              *(v51 + 16) = v50;
              memset(&__A, 0, sizeof(__A));
              *&v52 = v51 + 24;
            }

            *&v158 = v52;
            std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100](&__A);
            ++v48;
            v61 = *v24;
          }

          while (v48 < v61);
          v146 = v172.__vftable;
          if (v61)
          {
            v62 = 0;
            v139 = v24 + 2;
            v141 = &v172.~logic_error_0;
            v142 = v33 * v36;
            v143 = v24;
            v144 = (v172.__imp_.__imp_ - v172.__vftable - 8) >> 4;
            while (0xAAAAAAAAAAAAAAABLL * ((v158 - v157) >> 3) > v62)
            {
              v148 = *(v157 + 3 * v62);
              if (v36)
              {
                v63 = 0;
                v64 = &v139[4 * v62];
                do
                {
                  v65 = *v64;
                  if (!v65)
                  {
                    goto LABEL_79;
                  }

                  v66 = v33;
                  v67 = 0;
                  v68 = 0;
                  v69 = 0;
                  v70 = 0;
                  do
                  {
                    v71 = *(v149 + 6);
                    if (0xCCCCCCCCCCCCCCCDLL * ((*(v149 + 7) - v71) >> 4) <= v62)
                    {
                      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
                    }

                    v73 = (v71 + 80 * v62 + 56);
                    v72 = *v73;
                    if (0xAAAAAAAAAAAAAAABLL * ((v73[1] - *v73) >> 3) > v69)
                    {
                      v74 = (v72 + v68);
                      v75 = *v74;
                      if (v63 < (v74[1] - *v74) >> 2)
                      {
                        v76 = *(v64 + 1);
                        LODWORD(__A.__r_.__value_.__l.__data_) = *(v75 + 4 * v63);
                        if (*&__A.__r_.__value_.__l.__data_ != 0.0)
                        {
                          if (v70)
                          {
                            MEMORY[0x1E12C2960](v76 + v67);
                          }

                          else
                          {
                            MEMORY[0x1E12C2970](v76 + v67);
                          }

                          v70 = 1;
                        }

                        v65 = *v64;
                      }
                    }

                    ++v69;
                    v68 += 24;
                    v67 += 4;
                  }

                  while (v69 < v65);
                  v33 = v66;
                  if ((v70 & 1) == 0)
                  {
LABEL_79:
                    LODWORD(__A.__r_.__value_.__l.__data_) = 0;
                    vDSP_vfill(&__A, v148 + v63, v36, v33);
                  }

                  ++v63;
                }

                while (v63 != v36);
              }

              if (v144 != LODWORD(v146->~logic_error))
              {
                goto LABEL_201;
              }

              if (v62 == v144)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "accessing a RealTimeSafeBufferList with an out-of-range index");
                exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
                __cxa_throw(exception, off_1E8672F68, MEMORY[0x1E69E5280]);
              }

              v47 = v142;
              v77 = &v141[2 * v62];
              *v77 = v36;
              *(v77 + 1) = v145;
              v77[1] = v148;
              if (++v62 >= *v143)
              {
                goto LABEL_86;
              }
            }

            goto LABEL_200;
          }
        }
      }

      else
      {
        v47 = v33 * v36;
      }

LABEL_86:
      if (LODWORD(v146->~logic_error))
      {
        v78 = 0;
        v79 = 0;
        v80 = 16;
        do
        {
          v81 = *(&v146->~logic_error + v80);
          LODWORD(__A.__r_.__value_.__l.__data_) = 1065353216;
          if (v79)
          {
            MEMORY[0x1E12C2960](v81, 1, &__A, __C, 1, __C, 1, v47);
          }

          else
          {
            MEMORY[0x1E12C2970](v81, 1, &__A, __C, 1, v47);
          }

          ++v78;
          v80 += 16;
          v79 = 1;
        }

        while (v78 < LODWORD(v146->~logic_error));
      }

      else
      {
        LODWORD(__A.__r_.__value_.__l.__data_) = 0;
        vDSP_vfill(&__A, __C, 1, v33);
      }

      *&buf.mSampleTime = &v157;
      std::vector<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&buf);
      std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](&v172);
      v31 = v133;
    }

    v82 = (v149[27] + *(v149 + 35));
    if ((*(v31 + 76) & 1) == 0)
    {
      v82 += *(v31 + 68);
    }

    if (*(v149 + 20) != v82)
    {
      v83 = *(v149 + 16);
      v84 = v83[25];
      if (v84)
      {
        HALS_ProcessorGraph::Visit<std::shared_ptr<HALS_AudioNode> &,HALS_ProcessorGraph::Reset(void)::$_0 &>(v84);
      }

      else
      {
        v85 = v83[14];
        if (v85)
        {
          (*(*v85 + 32))(v85);
        }

        v86 = v83[16];
        if (v86)
        {
          (*(*v86 + 16))(v86);
        }

        v87 = v83[18];
        if (v87)
        {
          (*(*v87 + 72))(v87);
        }
      }

      v149[21] = 0.0;
    }

    *(v149 + 20) = v82 + v33;
    v151 = v33;
    v88 = (*(**(v149 + 16) + 16))(*(v149 + 16), 0, v33);
    if (!(*(**(v149 + 16) + 16))(*(v149 + 16), 1, v88))
    {
      v151 = 0;
      v90 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v91 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v91)
      {
        atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
LABEL_223:
        __break(1u);
      }

      v92 = *(v90 + 8);
      v93 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v93 + 16) = 0;
      *(v93 + 20) = 16;
      *(v93 + 24) = "HALS_MultiTap.cpp";
      *(v93 + 32) = 804;
      *v93 = &unk_1F598BF18;
      *(v93 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v92, v93);
      if (v91)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v91);
      }
    }

    v94 = v31;
    if (v88 >= 0x2000)
    {
      v95 = 0x2000;
    }

    else
    {
      v95 = v88;
    }

    v150 = v95;
    if (v88 > 0x2000)
    {
      v96 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v97)
      {
        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_223;
      }

      v98 = *(v96 + 8);
      v99 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v99 + 16) = 0;
      *(v99 + 20) = 16;
      *(v99 + 24) = "HALS_MultiTap.cpp";
      *(v99 + 32) = 810;
      *(v99 + 36) = v88;
      *(v99 + 40) = v95;
      *v99 = &unk_1F598BF70;
      *(v99 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v98, v99);
      if (v97)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v97);
      }
    }

    v100 = v149;
    v89.n128_f64[0] = v82;
    HALS_IOProcessor::Process(*(v149 + 16), v89, *(v149 + 18), &v151, *(v149 + 19), &v150, 0, 0);
    v31 = v94;
    v101 = *(v149 + 21);
    v102 = *(v149 + 16);
    if (!v101)
    {
      v103 = v102[8];
      if (v103 == 0.0)
      {
        v124 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v124 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v102);
        }

        v126 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v125 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v125)
        {
          atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
          v127 = *v126;
          std::__shared_weak_count::__release_shared[abi:ne200100](v125);
        }

        else
        {
          v127 = *v126;
        }

        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mSampleTime) = 136315650;
          *(&buf.mSampleTime + 4) = "HALS_MultiTap.cpp";
          WORD2(buf.mHostTime) = 1024;
          *(&buf.mHostTime + 6) = 819;
          WORD1(buf.mRateScalar) = 2080;
          *(&buf.mRateScalar + 4) = "not (writer_state_ptr->m_processor_ptr->GetLocalFormat().mSampleRate != 0)";
          _os_log_error_impl(&dword_1DE1F9000, v127, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid sample rate", &buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v163);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid sample rate", &__A);
        std::logic_error::logic_error(v154, &__A);
        *v154 = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v172, v154);
        *(&v173 + 1) = 0;
        v174 = 0uLL;
        v175 = -1;
        v172.__vftable = &unk_1F5991430;
        *&v173 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&buf, &v172);
        *&buf.mSMPTETime.mSubframes = "void HALS_MultiTap::write(AudioObjectID, int64_t, const AudioBufferList *, const AudioTimeStamp *)";
        *&buf.mSMPTETime.mType = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_MultiTap.cpp";
        *&buf.mSMPTETime.mHours = 819;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v165);
      }

      v104 = v102[3];
      if (v104 == 0.0)
      {
        v128 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v128 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v102);
        }

        v130 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v129 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v129)
        {
          atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
          v131 = *v130;
          std::__shared_weak_count::__release_shared[abi:ne200100](v129);
        }

        else
        {
          v131 = *v130;
        }

        if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mSampleTime) = 136315650;
          *(&buf.mSampleTime + 4) = "HALS_MultiTap.cpp";
          WORD2(buf.mHostTime) = 1024;
          *(&buf.mHostTime + 6) = 820;
          WORD1(buf.mRateScalar) = 2080;
          *(&buf.mRateScalar + 4) = "not (writer_state_ptr->m_processor_ptr->GetSharedFormat().mSampleRate != 0)";
          _os_log_error_impl(&dword_1DE1F9000, v131, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid sample rate", &buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v163);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid sample rate", &__A);
        std::logic_error::logic_error(v154, &__A);
        *v154 = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v172, v154);
        *(&v173 + 1) = 0;
        v174 = 0uLL;
        v175 = -1;
        v172.__vftable = &unk_1F5991430;
        *&v173 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&buf, &v172);
        *&buf.mSMPTETime.mSubframes = "void HALS_MultiTap::write(AudioObjectID, int64_t, const AudioBufferList *, const AudioTimeStamp *)";
        *&buf.mSMPTETime.mType = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_MultiTap.cpp";
        *&buf.mSMPTETime.mHours = 820;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v165);
      }

      v101 = vcvtmd_s64_f64(v103 / v104 * v82);
      v100 = v149;
      *(v149 + 21) = v101;
    }

    v105 = v151;
    v106 = *(v100 + 18);
    if (HALS_IOProcessor::NeedsLocalBuffer(v102))
    {
      v105 = v150;
      v106 = *(v100 + 19);
    }

    os_unfair_lock_lock((v31 + 432));
    v107 = *(v31 + 544);
    *v154 = 0;
    *&v154[8] = 0u;
    v155 = 0u;
    v156 = 0;
    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&buf, v107);
    if ((LOBYTE(buf.mSampleTime) & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(&buf);
    }

    v108 = *&buf.mHostTime;
    if (*&buf.mSMPTETime.mSubframes)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf.mSMPTETime.mSubframes);
    }

    if (vcvtmd_s64_f64(v108) >= v105)
    {
      v111 = v105;
    }

    else
    {
      AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&buf, v107);
      if ((LOBYTE(buf.mSampleTime) & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(&buf);
      }

      v109 = *&buf.mHostTime;
      if (*&buf.mSMPTETime.mSubframes)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf.mSMPTETime.mSubframes);
      }

      v110 = vcvtmd_s64_f64(v109);
      v101 += v105 - v110;
      v111 = v110 - (v105 - v110);
      v106 += 4 * (v105 - v110) * *(v31 + 48);
    }

    if (v111 < 1)
    {
LABEL_183:
      if (SBYTE7(v155) < 0)
      {
        operator delete(*&v154[8]);
      }

      os_unfair_lock_unlock((v31 + 432));
      v121 = *(v149 + 21);
      kdebug_trace();
      v4 = a2;
      v5 = a1;
      v3 = v137;
      *(v149 + 21) += v105;
      (*(**(v31 + 544) + 72))(&buf);
      v122 = vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time(&buf.mSMPTETime.mType));
      if (*(v31 + 448) < v122)
      {
        *(v31 + 448) = v122;
      }

      if (v188)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v188);
      }

      if (*&buf.mSMPTETime.mSubframes)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf.mSMPTETime.mSubframes);
      }

      goto LABEL_191;
    }

    v112 = *(v31 + 568);
    v177 = *(v31 + 560);
    v178 = v112;
    if (v112)
    {
      atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&__A, &v177, v101, (v101 + v111));
    if (v178)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v178);
    }

    v165 = __A;
    v166 = v180;
    v167 = v181;
    if (v181)
    {
      atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v168 = v182;
    v169 = v183;
    v170 = v184;
    v171 = v185;
    if (v185)
    {
      atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_writable_range(v107, &v165, &v172);
    if (v171)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v171);
    }

    if (v167)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v167);
    }

    v113 = *(v31 + 48);
    v164[0] = v111 * v113;
    v164[1] = v106;
    if (!v106 && v113)
    {
      std::terminate();
    }

    (*(***(v31 + 552) + 24))(**(v31 + 552), v164);
    v114 = *(v31 + 552);
    v116 = *v114;
    v115 = v114[1];
    if (v115)
    {
      atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v163 = __A;
    v117 = v180;
    v118 = v181;
    if (v181)
    {
      atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v161 = v182;
    v162 = v183;
    v119 = v184;
    v120 = v185;
    if (v185)
    {
      atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&buf.mHostTime = v163;
    *&buf.mSampleTime = &unk_1F598F618;
    *&buf.mSMPTETime.mSubframes = v117;
    *&buf.mSMPTETime.mType = v118;
    if (v118)
    {
      atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&buf.mSMPTETime.mHours = v161;
    v187 = v162;
    v188 = v119;
    v189 = v120;
    if (v120)
    {
      atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
      v190 = v116;
      v191 = v115;
      std::__shared_weak_count::__release_shared[abi:ne200100](v120);
      if (!v118)
      {
LABEL_165:
        AMCP::DAL::Fixed_Buffer::create_readable_range(&buf, &v157);
        AMCP::DAL::Writable_Range::receive_data(&v172, v154, &v157);
        if (v160)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v160);
        }

        if (v159)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v159);
        }

        *&buf.mSampleTime = &unk_1F598F618;
        if (v191)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v191);
        }

        if (v189)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v189);
        }

        if (*&buf.mSMPTETime.mType)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf.mSMPTETime.mType);
        }

        if (v176)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v176);
        }

        if (v174)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v174);
        }

        if (v185)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v185);
        }

        if (v181)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v181);
        }

        goto LABEL_183;
      }
    }

    else
    {
      v190 = v116;
      v191 = v115;
      if (!v118)
      {
        goto LABEL_165;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v118);
    goto LABEL_165;
  }

LABEL_198:
  v123 = *MEMORY[0x1E69E9840];
}

void sub_1DE605D34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = *(v2 - 208);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v14[8] = v4;
  v14[9] = v5;
  v9 = a1;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (v10)
    {
      ++v11;
    }

    else
    {
      v11 = 0;
    }

    v14[0] = v9;
    v14[1] = v11;
    if (((*(*a4 + 16))(a4, v14) & 1) == 0)
    {
      v13[0] = v9;
      v13[1] = v11;
      result = (*a3)((a3 + 1), v13);
      if (result)
      {
        break;
      }
    }

    v9 += 32;
    v10 = 1;
    if (v9 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t HALS_IOContextDescription::ApplyToOutput_ButSkipReferenceStreamOnlyEngines(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5 = v6;
  v8[0] = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription47ApplyToOutput_ButSkipReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
  v8[1] = &v5;
  *&v7 = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *(&v7 + 1) = v8;
  return VisitableVector<HALS_IOStackDescription>::apply<>(a1, a2, &v7);
}

uint64_t HALS_IOContext_Legacy_Impl::engine_apply<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>,FilterClocklessReferenceStreamOnlyEngines>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
  v6[1] = a3;
  v5 = &off_1F5983F18;
  v7 = v6;
  v8[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v8[1] = &v7;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(a1, a2, v8, &v5, a4);
}

uint64_t _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription47ApplyToOutput_ButSkipReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_(uint64_t (****a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v11 = *(a6 + 112), *(a6 + 120) != v11) ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    v11 = (a6 + 456);
  }

  v13 = *v11;
  if (!v13)
  {
    return 0;
  }

  v14 = *a1;
  if ((*(*v13 + 136))(v13))
  {
    return 0;
  }

  v16 = (*v14 + 1);
  v17 = **v14;

  return v17(v16, a2, a3, a4, a5, a6);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_4>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = *a1;
  v8 = **a1;
  v11[0] = &unk_1F5982158;
  v11[1] = v8;
  if (a6[464] == 1)
  {
    return (*(*a6 + 16))(a6, v11, *(v7 + 2));
  }

  v10 = IOContextViewForIOPerformer::owner_object_id(v11);
  return (*(*a6 + 24))(a6, v10);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 16);
  if (v7 == v6 || ((v8 = *v6, -1601513229 * ((v6[1] - *v6) >> 3)) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v10 = 0;
  }

  else
  {
    if (!*(v8 + 108) || ((v11 = *(v8 + 112), *(v8 + 120) != v11) ? (v12 = v11 == 0) : (v12 = 1), v12))
    {
      v11 = v8 + 456;
    }

    v10 = *(*v11 + 388);
  }

  v18 = v2;
  v19 = v3;
  v16[0] = a2;
  v16[1] = v5;
  v17 = v10;
  v15 = v16;
  *&v14 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}::operator() const({lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1})::{lambda(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)#1}>;
  *(&v14 + 1) = &v15;
  return VisitableVector<HALS_IOStreamGroup>::apply<>(v6, v7, &v14);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}::operator() const({lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1})::{lambda(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)#1}>(uint64_t **a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a1;
  *&v5 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo&)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}::operator() const({lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1})::{lambda(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)#1}>;
  *(&v5 + 1) = v3;
  return VisitableVector<HALS_IOStreamInfo>::apply<>(*v2, v2[1], &v5);
}

uint64_t _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_(uint64_t (****a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (!*(a6 + 108))
  {
    if (!*(a6 + 456))
    {
      return 0;
    }

LABEL_17:
    v14 = (a6 + 456);
    goto LABEL_18;
  }

  v12 = *(a6 + 112);
  if (*(a6 + 120) == v12 || v12 == 0)
  {
    if (!*(a6 + 456))
    {
      return 0;
    }
  }

  else if (!*v12)
  {
    return 0;
  }

  v14 = *(a6 + 112);
  if (*(a6 + 120) == v14 || v14 == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (!(*(**v14 + 328))(*v14))
  {
    return 0;
  }

  v16 = (*v11 + 1);
  v17 = **v11;

  return v17(v16, a2, a3, a4, a5, a6);
}

caulk::rt_safe_memory_resource *caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_3>(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = **a1;
  v9 = &unk_1F5982158;
  v35[0] = &unk_1F5982158;
  v35[1] = v8;
  v10 = *(v7 + 2);
  if (*(a6 + 464) == 1)
  {
    HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(&v36, 1869968496, v35, a6, v10);
    return HostedDSP_StreamProcessor::PerformIO_ProcessStream(&v36);
  }

  v13 = *(a6 + 108);
  if (!v13 || ((v14 = *(a6 + 112), *(a6 + 120) != v14) ? (v15 = v14 == 0) : (v15 = 1), v15))
  {
    v14 = a6 + 456;
  }

  v16 = *v14;
  if (!*(*v14 + 88))
  {
    return 0;
  }

  v17 = *(v16 + 388);
  v18 = *(v16 + 4 * *(a6 + 8) + 752);
  v40 = v18;
  if (*(a6 + 96))
  {
    v39 = v10;
    v19 = *(a6 + 32);
    v20 = *(a6 + 40);
    if (v19)
    {
      v21 = (v19 + v17);
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = (v20 + v17);
    }

    else
    {
      v22 = 0;
    }

    v23 = 24;
    if (v21 | v22)
    {
      v23 = 48;
    }

    v24 = *(a6 + v23);
    if (v13)
    {
      ClientFormat = HALS_IODSPInfo::GetClientFormat(&v36, (a6 + 112));
    }

    else
    {
      ClientFormat = *(a6 + 416);
      v26 = *(a6 + 432);
      v36 = ClientFormat;
      v37 = v26;
      v38 = *(a6 + 448);
    }

    if (v18 * DWORD2(v37) > v24)
    {
      if (*(a6 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v36, (a6 + 112));
      }

      else
      {
        v27 = *(a6 + 432);
        v36 = *(a6 + 416);
        v37 = v27;
        v38 = *(a6 + 448);
      }

      v28 = v24 / DWORD2(v37);
      v40 = v28;
      v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = v21;
      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
        return result;
      }

      v31 = *(v29 + 8);
      v32 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v32 + 16) = 0;
      *(v32 + 20) = 16;
      *(v32 + 24) = "HALS_IOPerformer.cpp";
      *(v32 + 32) = 335;
      *(v32 + 36) = v18;
      *(v32 + 40) = v28;
      *v32 = &unk_1F5971CE0;
      *(v32 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v31, v32);
      v21 = v34;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    ClientFormat.n128_u64[0] = *(v16 + 656);
    HALS_IOProcessor::Process(*(a6 + 96), ClientFormat, (*(a6 + 56) + a4), &v39, (*(a6 + 16) + v17), &v40, v21, v22);
    v9 = v35[0];
  }

  if ((*(v9 + 19))(v35, 0))
  {
    if (*(a6 + 108))
    {
      HALS_IODSPInfo::GetClientFormat(&v36, (a6 + 112));
    }

    else
    {
      v33 = *(a6 + 432);
      v36 = *(a6 + 416);
      v37 = v33;
      v38 = *(a6 + 448);
    }

    bzero((*(a6 + 16) + v17), v40 * DWORD2(v37));
  }

  return (*(*v16 + 112))(v16, v35, *(a6 + 12), *(a6 + 56) + v17, v10);
}

caulk::rt_safe_memory_resource *caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_2>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = **a1;
  v18[0] = &unk_1F5982158;
  v18[1] = v3;
  v4 = *a2;
  v5 = *(v2 + 2);
  if (*(*a2 + 464) == 1)
  {
    HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(v20, 1768845428, v18, v4, v5);
    return HostedDSP_StreamProcessor::PerformIO_ProcessStream(v20);
  }

  else
  {
    if (!*(v4 + 108) || ((v7 = *(v4 + 112), *(v4 + 120) != v7) ? (v8 = v7 == 0) : (v8 = 1), v8))
    {
      v7 = (v4 + 456);
    }

    v9 = *v7;
    if ((*(**v7 + 16))(*v7))
    {
      v10 = *(v9 + 388);
      v20[0] = *(v9 + 4 * *(v4 + 8) + 752);
      v6 = (*(*v9 + 104))(v9, v18, *(v4 + 12), *(v4 + 56) + v10);
      v12 = *(v4 + 96);
      if (v12)
      {
        v19 = v5;
        v13 = *(v4 + 32);
        v14 = *(v4 + 40);
        if (v13)
        {
          v15 = (v13 + v10);
        }

        else
        {
          v15 = 0;
        }

        if (v14)
        {
          v16 = (v14 + v10);
        }

        else
        {
          v16 = 0;
        }

        v11.n128_u64[0] = *(v9 + 592);
        HALS_IOProcessor::Process(v12, v11, (*(v4 + 56) + v10), &v19, (*(v4 + 16) + v10), v20, v15, v16);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_1>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = **a1;
  v28[0] = &unk_1F5982158;
  v28[1] = v3;
  v4 = *(v2 + 2);
  v5 = *a2;
  if (*(*a2 + 464) != 1)
  {
    if (*(v5 + 380) == 1 && HALS_IOPerformer::can_read_from_stream(v28, *a2))
    {
      if ((*(v5 + 380) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (!*(v5 + 108) || ((v18 = *(v5 + 112), *(v5 + 120) != v18) ? (v19 = v18 == 0) : (v19 = 1), v19))
      {
        v18 = (v5 + 456);
      }

      return (*(**v18 + 120))(*v18, *(v5 + 12), v4, *(v5 + 376));
    }

    else
    {
      if (!HALS_IOPerformer::can_read_from_stream(v28, v5))
      {
        return 0;
      }

      if (!*(v5 + 108) || ((v21 = *(v5 + 112), *(v5 + 120) != v21) ? (v22 = v21 == 0) : (v22 = 1), v22))
      {
        v21 = v5 + 456;
      }

      v23 = *v21;
      v24 = *(v5 + 24);
      v25 = *(*v21 + 756);
      v29 = *(v5 + 16);
      LODWORD(v30) = 0;
      HIDWORD(v30) = v24;
      LODWORD(v31) = v25;
      v26 = (*(v28[0] + 80))(v28);
      return (*(*v23 + 80))(v23, v26, *(v5 + 12), v25, &v29);
    }
  }

  HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(&v29, 1768845428, v28, v5, v4);
  if (v29 != 1768845428)
  {
    return 0;
  }

  v6 = *(v31 + 112);
  v7 = *(v31 + 120);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(*v6 + 88);
    if (v9)
    {
      if ((*(*v9 + 336))(v9))
      {
        v10 = *v6;
        if (*(*(*v6 + 368) + 96))
        {
          v11 = v6[25];
          if (*(v10 + 505) == 1 && v11 <= 3)
          {
            v13 = v6[6];
            v14 = *(v10 + 756);
            v32 = *(v6 + 2);
            v33 = 0;
            v34 = v13;
            v35 = v14;
            if (v11 - 1 > 1 || ((*(**(v10 + 88) + 696))(*(v10 + 88)) & 1) != 0)
            {
              if (*(v6 + 124) == 1)
              {
                v15 = (*(**(*v6 + 88) + 776))(*(*v6 + 88), v6[24], v35, *v6, v6[30]);
              }

              else
              {
                v16 = *(*v6 + 88);
                v17 = (*(*v30 + 80))(v30);
                v15 = (*(*v16 + 768))(v16, v17, v6[24], v35, *v6, &v32);
              }

              v8 = v15;
            }

            else if (v32 && v34 > v33)
            {
              bzero((v32 + v33), v34 - v33);
            }
          }
        }
      }
    }

    v6 += 32;
  }

  while (v6 != v7);
  return v8;
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_0>(uint64_t **a1, unsigned int *a2)
{
  v3 = *a1;
  v4 = **a1;
  v16[0] = &unk_1F5982158;
  v16[1] = v4;
  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = *(v3 + 16);
  if (!(*(*a2 + 16))(a2))
  {
    return 0;
  }

  HALS_IOPerformer::update_io_parameters(v16, a2, v5, v6, v7);
  v8 = (v7 & 1) != 0 || (*(*a2 + 192))(a2, 0) == 0;
  v10 = (*(v16[0] + 48))(v16);
  v11 = (*(v16[0] + 16))(v16);
  v12 = (*(v16[0] + 40))(v16).n128_f32[0];
  (*(*a2 + 128))(a2, v10, v11, v12);
  v13 = (*(v16[0] + 80))(v16);
  v9 = (*(*a2 + 32))(a2, v13);
  if (v8)
  {
    v14 = (*(v16[0] + 80))(v16);
    (*(*a2 + 312))(a2, v14, v5);
  }

  return v9;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(AudioTimeStamp &)::$_0>(void **a1, uint64_t a2)
{
  v3 = **a1;
  v4 = v3[1];
  *&v12.mSampleTime = *v3;
  *&v12.mRateScalar = v4;
  v5 = v3[3];
  *&v12.mSMPTETime.mSubframes = v3[2];
  *&v12.mSMPTETime.mHours = v5;
  v6 = *(a2 + 368);
  if (*(v6 + 96))
  {
    v7 = v12.mHostTime == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a2 + 904) = 0u;
    *(a2 + 920) = 0u;
    *(a2 + 872) = 0u;
    *(a2 + 888) = 0u;
  }

  else
  {
    v12.mFlags = 2;
    v11.mFlags = 1;
    HALS_IOClock::TranslateTime(v6, &v12, &v11);
    v12.mSampleTime = v11.mSampleTime;
    v12.mFlags = 2;
    v11.mFlags = 2;
    HALS_IOClock::TranslateTime(*(a2 + 368), &v12, &v11);
    v8 = *&v11.mRateScalar;
    *(a2 + 872) = *&v11.mSampleTime;
    *(a2 + 888) = v8;
    v9 = *&v11.mSMPTETime.mHours;
    *(a2 + 904) = *&v11.mSMPTETime.mSubframes;
    *(a2 + 920) = v9;
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTime(uint64_t result, unsigned int a2, AudioTimeStamp *a3)
{
  memset(&v4.mHostTime, 0, 48);
  *&v4.mFlags = 1;
  v3 = *(result + 1560);
  if (v3)
  {
    v4.mSampleTime = *(v3 + 440) + *(result + 1352) + a2 + -1.0;
    if (*(v3 + 88))
    {
      return HALS_IOClock::TranslateTime(*(v3 + 368), &v4, a3);
    }
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(uint64_t a1, AudioTimeStamp *a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  v79 = *MEMORY[0x1E69E9840];
  v10 = (a1 + 312);
  v11 = HALS_IOThread::ClearAllSyscallMasks((a1 + 312));
  if (v11)
  {
    v12 = v11;
    v13 = a5;
    v14 = v10;
    v15 = a2;
    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(v16 + 8);
    v19 = __error();
    v20 = strerror(*v19);
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_42;
    }

    v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v21 + 16) = 0;
    *(v21 + 20) = 16;
    *(v21 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v21 + 32) = 1580;
    *(v21 + 36) = v12;
    *(v21 + 40) = v20;
    *v21 = &unk_1F59829C0;
    *(v21 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v18, v21);
    a2 = v15;
    v10 = v14;
    a5 = v13;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  v22 = *(a1 + 1508);
  *(a1 + 1508) = 0;
  if ((v22 & 1) == 0)
  {
    mSampleTime = a2->mSampleTime;
    mHostTime = a2->mHostTime;
    v25 = *a3;
    v26 = *(a4 + 8);
    kdebug_trace();
    v27 = *(a1 + 1344);
    v28 = *(a1 + 1368) * 1000.0;
    kdebug_trace();
  }

  if (*(a1 + 1509) != 1 || std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(a1 + 1640), 0, *(a1 + 1648)))
  {
    goto LABEL_17;
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x2000000000;
  v73 = 0;
  v63 = MEMORY[0x1E69E9820];
  v64 = 0x40000000;
  v65 = ___ZNK26HALS_IOContext_Legacy_Impl28CanHandleOverloadWithCatchupER16CAAudioTimeStamp_block_invoke;
  v66 = &unk_1E8677EE8;
  v68 = a1;
  v69 = a2;
  v67 = &v70;
  v29 = (*(**(a1 + 24) + 64))(*(a1 + 24));
  HALB_CommandGate::ExecuteCommand(v29, &v63);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(v71 + 24);
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 4253;
    *&buf[18] = 1024;
    v78 = v30;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Can handle overload: %d", buf, 0x18u);
  }

  v31 = *(v71 + 24);
  _Block_object_dispose(&v70, 8);
  if (v31 == 1)
  {
    *(a1 + 1424) = 3;
    v32 = *(a1 + 1456);
    if (v32)
    {
      std::function<void ()(IORunningState)>::operator()(v32, 3);
    }

    v33 = *(a1 + 1208);
    v34 = *(a1 + 1216);
    kdebug_trace();
    v35 = 0;
  }

  else
  {
LABEL_17:
    if ((v22 & 1) == 0)
    {
      v63 = v10;
      LODWORD(v64) = HALB_Mutex::Unlock((a1 + 328));
      HALS_IOContext::SignalOverloadToClient(*(a1 + 24));
      HALB_IOThread::Unlocker::~Unlocker(&v63);
    }

    *(a1 + 1352) = 0;
    v36 = *(*(a1 + 24) + 16);
    *buf = HALS_IOContext_Legacy_Impl::ResetTimeForOverload_Helper;
    *&buf[8] = v36;
    v74 = &off_1F5983FA8;
    v70 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
    v71 = buf;
    v75 = &off_1F5983F18;
    v76 = &v70;
    v63 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    v64 = &v76;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), &v63, &v75, &v74);
    HALS_IOContext_Legacy_Impl::UpdateTime(a1);
    HALS_IOContext_Legacy_Impl::AnchorTime(a1);
    *buf = HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_ResetEngineInfo;
    *&buf[8] = a1;
    *&buf[16] = a5;
    v74 = &off_1F5983FA8;
    v70 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &,unsigned int),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&,unsigned int &>>;
    v71 = buf;
    v75 = &off_1F5983F18;
    v76 = &v70;
    v63 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    v64 = &v76;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), &v63, &v75, &v74);
    v37 = *(*(*(a1 + 24) + 72) + 40);
    v38 = *(*(a1 + 1560) + 368);
    v39 = v38 + 200;
    v40 = *(v38 + 200 + 40 * *(v38 + 192)) * 24000000.0 / 24000000.0;
    v41 = COERCE_DOUBLE(bswap64(*&v40));
    if (*(*(*(a1 + 24) + 72) + 40))
    {
      v40 = v41;
    }

    v42 = *(a1 + 1136);
    *v42 = v40;
    v43 = *(v39 + 40 * *(v38 + 192) + 8) * 24000000.0 / 24000000.0;
    v44 = COERCE_DOUBLE(bswap64(*&v43));
    if (v37)
    {
      v43 = v44;
    }

    *(v42 + 8) = v43;
    v45 = v39 + 40 * *(v38 + 192);
    if (v37)
    {
      v46 = bswap64(*(v45 + 16));
      v47 = bswap64(*(v39 + 40 * *(v38 + 192) + 24));
      v48 = bswap64(*(v39 + 40 * *(v38 + 192) + 32));
      v49 = 50331648;
    }

    else
    {
      v46 = *(v45 + 16);
      v47 = *(v39 + 40 * *(v38 + 192) + 24);
      v48 = *(v39 + 40 * *(v38 + 192) + 32);
      v49 = 3;
    }

    *(v42 + 16) = v46;
    *(v42 + 32) = v47;
    *(v42 + 40) = v48;
    *(v42 + 88) = v49;
    v50 = bswap32(a5);
    if (v37)
    {
      v51 = v50;
    }

    else
    {
      v51 = a5;
    }

    *(v42 + 24) = v51;
    __dmb(0xBu);
    v52 = *(a1 + 1560);
    if (v52)
    {
      if (*(v52 + 88))
      {
        v53 = *(v52 + 368);
        if (v53)
        {
          HALS_IOClock::GetCurrentTime(v53, a2);
        }
      }
    }

    v35 = 1;
  }

  if (!HALS_IOContext::GetAudioCaptureMode(*(a1 + 24)))
  {
    v56 = HALS_IOThread::EnableRTSafeSyscallMasks(v10);
    if (v56)
    {
      v57 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v58 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v59 = *(v57 + 8);
      v60 = __error();
      v61 = strerror(*v60);
      if (*MEMORY[0x1E69E3C08])
      {
        v62 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v62 + 16) = 0;
        *(v62 + 20) = 16;
        *(v62 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
        *(v62 + 32) = 1639;
        *(v62 + 36) = v56;
        *(v62 + 40) = v61;
        *v62 = &unk_1F5982A18;
        *(v62 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v59, v62);
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
    }
  }

LABEL_35:
  v54 = *MEMORY[0x1E69E9840];
  return v35;
}

void sub_1DE607728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTimeAndCheckOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,HALS_IOContext_Legacy_Impl::PerformIOReturn,unsigned int,unsigned int,long long,long long,CAAudioTimeStamp &,CAAudioTimeStamp &)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v6 = *(a6 + 112), *(a6 + 120) != v6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v6 = (a6 + 456);
  }

  v8 = *v6;
  v9 = *(*v6 + 88);
  if (v9 && *(v8 + 832) == 1)
  {
    (*(*v9 + 848))(v9, *(*(**a1 + 24) + 16), a5, *(*a1 + 8), *(*a1 + 16));
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::UpdateTime(HALS_IOContext_Legacy_Impl *this)
{
  v1 = *(*(this + 3) + 16) | (*(this + 1340) << 32);
  v4[0] = HALS_IOContext_Legacy_Impl::UpdateTime_Helper;
  v4[1] = v1;
  v3 = &unk_1F5983FE8;
  v6[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &,BOOL),unsigned int,std::placeholders::__ph<1> const&,BOOL volatile&>>;
  v6[1] = v4;
  v5 = &off_1F5983F18;
  v7 = v6;
  v8[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v8[1] = &v7;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(this + 196), *(this + 197), v8, &v5, &v3);
}

void HALS_IOContext_Legacy_Impl::AnchorTime(HALS_IOContext_Legacy_Impl *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = *(this + 195);
  if (v1 && *(v1 + 88))
  {
    if (*(this + 356) == 1)
    {
      v28.mFlags = 2;
      v28.mHostTime = *(this + 183);
      v25.mFlags = 7;
      HALS_IOClock::TranslateTime(*(v1 + 368), &v28, &v25);
      v28 = v25;
      v3 = (*(v1 + 404) + *(v1 + 396) + *(v1 + 420));
      v28.mFlags = 1;
      v28.mSampleTime = v25.mSampleTime + v3;
      HALS_IOClock::TranslateTime(*(v1 + 368), &v28, &v25);
      v26 = 0;
      v29 = &v26;
      *&v22.mSampleTime = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::AnchorTimeForCatchupMode(void)::$_0>;
      v22.mHostTime = &v29;
      v23[0] = &off_1F5983F18;
      v30 = &v22;
      *&buf.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
      buf.mHostTime = &v30;
      VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(this + 196), *(this + 197), &buf, v23);
      buf.mFlags = 7;
      HALS_IOClock::GetCurrentTime(*(v1 + 368), &buf);
      v4 = *(v1 + 368);
      v5 = buf.mSampleTime - v26 / *(v4 + 112);
      mSampleTime = v25.mSampleTime;
      if (v25.mSampleTime < v5)
      {
        v22.mHostTime = v25.mHostTime;
        *&v22.mRateScalar = *&v25.mRateScalar;
        *&v22.mSMPTETime.mSubframes = *&v25.mSMPTETime.mSubframes;
        *&v22.mSMPTETime.mHours = *&v25.mSMPTETime.mHours;
        v22.mFlags = 1;
        v22.mSampleTime = v5 + v3;
        v25.mFlags = 7;
        HALS_IOClock::TranslateTime(v4, &v22, &v25);
        v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!*MEMORY[0x1E69E3C08])
        {
          __break(1u);
        }

        v9 = *(v7 + 8);
        mSampleTime = v25.mSampleTime;
        v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v10 + 16) = 0;
        *(v10 + 20) = 0;
        *(v10 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
        *(v10 + 32) = 4003;
        *(v10 + 40) = mSampleTime;
        *v10 = &unk_1F5983368;
        *(v10 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v9, v10);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      v11 = *(this + 151);
      if (mSampleTime < v11)
      {
        v11 = mSampleTime;
      }

      *(this + 151) = v11;
      *(*(this + 142) + 160) = v11;
      *(this + 356) = 2;
      v12 = *(this + 182);
      if (v12)
      {
        std::function<void ()(IORunningState)>::operator()(v12, 2);
      }

      kdebug_trace();
      *&v22.mSampleTime = HALS_IOContext_Legacy_Impl::AnchorTime_Helper;
      v22.mHostTime = this;
      *&v22.mRateScalar = &v25;
      v22.mWordClockTime = v1;
      v24 = &unk_1F5983F68;
      v23[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl::AnchorTime_Helper_Context &,HALS_IOEngineInfo &),HALS_IOContext_Legacy_Impl::AnchorTime_Helper_Context &,std::placeholders::__ph<1> const&>>;
      v23[1] = &v22;
      v27 = COERCE_DOUBLE(&off_1F5983F18);
      v29 = v23;
      v30 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
      p_buf = &v29;
      VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(this + 196), *(this + 197), &v30, &v27, &v24);
    }

    else
    {
      v28.mFlags = 7;
      HALS_IOClock::GetCurrentTime(*(v1 + 368), &v28);
      v27 = 0.0;
      Raw0Time = HALS_IOClock::GetRaw0Time(*(v1 + 368), &v27, &v26);
      v14 = 0;
      LODWORD(Raw0Time) = *(v1 + 396);
      v15 = *&Raw0Time;
      if (v28.mSampleTime - v27 >= v15)
      {
        v16 = v28.mSampleTime;
      }

      else
      {
        v16 = v27 + v15;
      }

      v17 = MEMORY[0x1E69E9C10];
      do
      {
        v18.n128_f64[0] = HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(this);
        v19 = v18.n128_f64[0];
        if (v16 >= v18.n128_f64[0])
        {
          v18.n128_f64[0] = v16;
        }

        v16 = (*(**(v1 + 88) + 640))(*(v1 + 88), (*(v1 + 420) + *(v1 + 404)), (*(v1 + 416) + *(v1 + 400)), v18);
        v28.mSampleTime = v16;
        v28.mFlags = 1;
        v25.mFlags = 7;
        HALS_IOClock::TranslateTime(*(v1 + 368), &v28, &v25);
        *&buf.mSampleTime = HALS_IOContext_Legacy_Impl::AnchorTime_Helper;
        buf.mHostTime = this;
        *&buf.mRateScalar = &v25;
        buf.mWordClockTime = v1;
        v24 = &off_1F5983FA8;
        v30 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl::AnchorTime_Helper_Context &,HALS_IOEngineInfo &),HALS_IOContext_Legacy_Impl::AnchorTime_Helper_Context &,std::placeholders::__ph<1> const&>>;
        p_buf = &buf;
        v29 = &off_1F5983F18;
        v23[0] = &v30;
        *&v22.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
        v22.mHostTime = v23;
        VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(this + 196), *(this + 197), &v22, &v29, &v24);
        v20 = HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(this);
        if (v20 == v19)
        {
          break;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.mSampleTime) = 136316418;
          *(&buf.mSampleTime + 4) = "HALS_IOContext_Legacy_Impl.cpp";
          WORD2(buf.mHostTime) = 1024;
          *(&buf.mHostTime + 6) = 4092;
          WORD1(buf.mRateScalar) = 2048;
          *(&buf.mRateScalar + 4) = v20;
          WORD2(buf.mWordClockTime) = 2048;
          *(&buf.mWordClockTime + 6) = v19;
          HIWORD(buf.mSMPTETime.mCounter) = 2048;
          *&buf.mSMPTETime.mType = v20 - v19;
          buf.mSMPTETime.mHours = 1024;
          *&buf.mSMPTETime.mMinutes = v14;
          _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Retrying anchor for new context earliestAnchorSampleTimeRetry = %f, earliestAnchorSampleTime= %f, diff = %f retryCount = %d", &buf, 0x36u);
        }

        ++v14;
      }

      while (v14 != 5);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,CAAudioTimeStamp const&,CAAudioTimeStamp const&,unsigned int,double,HALS_IOContext_Legacy_Impl::PerformIOReturn)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set the RT safe syscall masks: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,CAAudioTimeStamp const&,CAAudioTimeStamp const&,unsigned int,double,HALS_IOContext_Legacy_Impl::PerformIOReturn)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_ResetEngineInfo(HALS_IOContext_Legacy_Impl *this, HALS_IOContext_Legacy_Impl *a2, HALS_IOEngineInfo *a3)
{
  if (*(a2 + 11))
  {
    v4[0] = &unk_1F5982158;
    v4[1] = this;
    HALS_IOPerformer::update_io_parameters(v4, a2, a3, 0, 1);
  }

  return 0;
}

Float64 HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(HALS_IOContext_Legacy_Impl *this)
{
  v6[1] = this;
  v7 = 0;
  v6[0] = &v7;
  v10[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(void)::$_0>;
  v10[1] = v6;
  v8[1] = this + 1536;
  v9 = v10;
  v8[0] = &unk_1F5987768;
  *&v4.mSampleTime = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
  v4.mHostTime = &v9;
  *&v5.mSampleTime = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
  v5.mHostTime = &v4;
  VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(this + 202), *(this + 203), &v5, v8);
  if (!v7)
  {
    return 0.0;
  }

  v5.mSampleTime = 0.0;
  memset(&v5.mRateScalar, 0, 48);
  memset(&v4, 0, sizeof(v4));
  v5.mFlags = 2;
  v5.mHostTime = v7;
  v4.mFlags = 1;
  result = 0.0;
  v3 = *(this + 195);
  if (v3)
  {
    if (*(v3 + 88))
    {
      HALS_IOClock::TranslateTime(*(v3 + 368), &v5, &v4);
      return v4.mSampleTime;
    }
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::AnchorTime_Helper(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3 && (v4 = *(*(a1 + 16) + 88)) != 0 && *(v4 + 16) != *(v3 + 16))
  {
    v10 = *(a1 + 8);
    v11 = v10[1];
    *&v16.mSampleTime = *v10;
    *&v16.mRateScalar = v11;
    v12 = v10[3];
    *&v16.mSMPTETime.mSubframes = v10[2];
    *&v16.mSMPTETime.mHours = v12;
    v16.mFlags = 2;
    v13 = (a2 + 440);
    *(a2 + 496) = 7;
    if (*(a2 + 829) != 1 || (*(a2 + 828) & 1) != 0 || ((*(*a2 + 344))(a2) & 1) != 0)
    {
      HALS_IOClock::TranslateTime(*(a2 + 368), &v16, (a2 + 440));
    }

    else
    {
      v14 = *&v16.mRateScalar;
      *v13 = *&v16.mSampleTime;
      *(a2 + 456) = v14;
      v15 = *&v16.mSMPTETime.mHours;
      *(a2 + 472) = *&v16.mSMPTETime.mSubframes;
      *(a2 + 488) = v15;
    }
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[3];
    *(a2 + 472) = v5[2];
    *(a2 + 488) = v8;
    *(a2 + 440) = v6;
    *(a2 + 456) = v7;
  }

  *(a2 + 505) = 1;
  return 0;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(void)::$_0>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v8 = *(a6 + 112), *(a6 + 120) != v8) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v8 = (a6 + 456);
  }

  v23 = v6;
  v24 = v7;
  v10 = *v8;
  v11 = *(*v8 + 88);
  if (v11)
  {
    v12 = *a1;
    v13 = (*(*v11 + 872))(v11, *(*(*(*a1 + 8) + 24) + 16), *(a6 + 12));
    if (v13 > 0.0)
    {
      LODWORD(v14) = *(v10 + 392);
      v15 = v13 - v14;
      *&v16 = *(v10 + 400);
      v17 = v15 - *&v16;
      LODWORD(v16) = *(v10 + 416);
      v18 = v17 - v16 - roundf(*(*(v12 + 8) + 1368) * *(*(v12 + 8) + 1360));
      *&v22.mFlags = 0;
      if (v18 < 0.0)
      {
        v18 = 0.0;
      }

      memset(&v22.mHostTime, 0, 48);
      memset(&v21, 0, sizeof(v21));
      v22.mSampleTime = v18;
      v22.mFlags = 1;
      v21.mFlags = 2;
      HALS_IOClock::TranslateTime(*(v10 + 368), &v22, &v21);
      mHostTime = **v12;
      if (mHostTime <= v21.mHostTime)
      {
        mHostTime = v21.mHostTime;
      }

      **v12 = mHostTime;
    }
  }

  return 0;
}

void sub_1DE6083C8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6083B4);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::AnchorTimeForCatchupMode(void)::$_1,std::tuple<char const*,int,double>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Pinning anchor time to Sample: %0.f", &v11, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::AnchorTimeForCatchupMode(void)::$_1,std::tuple<char const*,int,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::AnchorTimeForCatchupMode(void)::$_0>(unint64_t ***a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 504) = 1;
  v3 = *(a2 + 88);
  if (v3)
  {
    v5 = (*(*v3 + 336))(v3);
    v6 = (*(*(a2 + 368) + 112) * GetAvailableCatchupSamplesForDevice(v5));
    if (**v2 > v6)
    {
      v6 = **v2;
    }

    **v2 = v6;
  }

  return 0;
}

uint64_t GetAvailableCatchupSamplesForDevice(HALS_IODevice *a1)
{
  v1 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = (*(*a1 + 416))(a1);
    v3 = *v1;
    if (v2)
    {
      v1 = (*(v3 + 424))(v1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = "HALS_IOContext_Legacy_Impl.cpp";
        v10 = 1024;
        v11 = 5540;
        v12 = 2048;
        v13 = v1;
        v4 = MEMORY[0x1E69E9C10];
        v5 = "%25s:%-5d  \tUsing past data: %lld";
LABEL_7:
        _os_log_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0x1Cu);
      }
    }

    else
    {
      v1 = vcvts_n_f32_u32((*(v3 + 304))(v1), 1uLL);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = "HALS_IOContext_Legacy_Impl.cpp";
        v10 = 1024;
        v11 = 5548;
        v12 = 2048;
        v13 = v1;
        v4 = MEMORY[0x1E69E9C10];
        v5 = "%25s:%-5d  Using ring buffer: %lld";
        goto LABEL_7;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::UpdateTime_Helper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOEngineInfo *a3)
{
  result = *(a2 + 88);
  if (result)
  {
    v20 = 0uLL;
    v21 = 0.0;
    (*(*result + 632))(result, this, &v20, &v20 + 8, &v21);
    v6 = *(a2 + 368);
    *&v23.mSampleTime = v20;
    v23.mRateScalar = v21;
    v7 = HALS_IOClock::Update(v6, &v23);
    if (v7)
    {
      v8 = v7;
      (*(**(a2 + 88) + 648))(*(a2 + 88), this, v7);
      if ((v8 & 6) == 0)
      {
        return 1;
      }

      v10 = HALS_ObjectMap::CopyObjectByObjectID(this);
      if (!v10)
      {
LABEL_7:
        HALS_ObjectMap::ReleaseObject(v10, v9);
        return 1;
      }

      result = *MEMORY[0x1E69E3C08];
      if (*MEMORY[0x1E69E3C08])
      {
        v11 = **(v10 + 26);
        v12 = caulk::rt_safe_memory_resource::rt_allocate(result);
        *(v12 + 16) = 0;
        *(v12 + 24) = v8 | (this << 32);
        *v12 = &unk_1F597F6E0;
        *(v12 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v11, v12);
        goto LABEL_7;
      }

      __break(1u);
    }

    else
    {
      v13 = (a2 + 872);
      v14 = *(a2 + 888);
      *&v23.mSampleTime = *(a2 + 872);
      *&v23.mRateScalar = v14;
      v15 = *(a2 + 920);
      *&v23.mSMPTETime.mSubframes = *(a2 + 904);
      *&v23.mSMPTETime.mHours = v15;
      v16 = *(a2 + 368);
      if (*(v16 + 96) && v23.mHostTime)
      {
        v17 = *(v16 + 112) - *(v16 + 40 * *(v16 + 192) + 200);
        if (v17 > 0.0)
        {
          v23.mHostTime = (v17 + v23.mHostTime);
          v22.mHostTime = v23.mHostTime;
          v23.mFlags = 2;
          v22.mFlags = 1;
          HALS_IOClock::TranslateTime(v16, &v23, &v22);
          v18 = *&v22.mRateScalar;
          *v13 = *&v22.mSampleTime;
          *(a2 + 888) = v18;
          v19 = *&v22.mSMPTETime.mHours;
          *(a2 + 904) = *&v22.mSMPTETime.mSubframes;
          *(a2 + 920) = v19;
        }
      }

      else
      {
        *(a2 + 920) = 0;
        *(a2 + 888) = 0u;
        *(a2 + 904) = 0u;
        *v13 = 0u;
        *(a2 + 928) = 3;
      }

      return 0;
    }
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::ResetTimeForOverload_Helper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOEngineInfo *a3)
{
  v4 = *(a2 + 88);
  if (v4)
  {
    v10 = 0.0;
    v11 = 0;
    v12 = 0;
    (*(*v4 + 632))(v4, this, &v10, &v11, &v12);
    v9 = 0.0;
    HALS_IOClock::GetRaw0Time(*(a2 + 368), &v9, &v8);
    LODWORD(v6) = *(a2 + 856);
    if (v10 > v9 + v6)
    {
      (*(**(a2 + 88) + 648))(*(a2 + 88), this, 4, v10);
    }
  }

  return 0;
}

void ___ZNK26HALS_IOContext_Legacy_Impl28CanHandleOverloadWithCatchupER16CAAudioTimeStamp_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = (*(**(*(v2 + 1560) + 88) + 336))(*(*(v2 + 1560) + 88));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "HALS_IOContext_Legacy_Impl.cpp";
    v9 = 1024;
    v10 = 4238;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Handling overload with catchup mode: ", &v7, 0x12u);
  }

  v4 = **(a1 + 48) - GetAvailableCatchupSamplesForDevice(v3);
  v5 = *(v2 + 1208);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "HALS_IOContext_Legacy_Impl.cpp";
    v9 = 1024;
    v10 = 4245;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  \tFound oldest valid sample: %.0f, nextReadSample: %.0f", &v7, 0x26u);
  }

  if (v5 > v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,CAAudioTimeStamp const&,CAAudioTimeStamp const&,unsigned int,double,HALS_IOContext_Legacy_Impl::PerformIOReturn)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to clear the syscall masks: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,CAAudioTimeStamp const&,CAAudioTimeStamp const&,unsigned int,double,HALS_IOContext_Legacy_Impl::PerformIOReturn)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContext_Legacy_Impl::IOWorkLoop_ReportClientTimeout(uint64_t a1, unsigned int *a2, uint64_t a3, char a4)
{
  v8 = *(*(a1 + 24) + 232);
  v9 = *(v8 + 32);
  v10 = *(v8 + 96);
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a2 + 2);
  v13 = __udivti3();
  if (v12 >= v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  if (a4)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(a1 + 576);
  v49 = *(a1 + 600);
  v50 = *(a1 + 584);
  if (a4)
  {
    v17 = a3;
  }

  else
  {
    v17 = 1;
  }

  if (a4)
  {
    v18 = (v17 * *a2);
  }

  else
  {
    v18 = 1.0;
  }

  v84[0] = 0;
  pthread_threadid_np(0, v84);
  LOBYTE(v71) = v15;
  v19 = *(a1 + 24);
  DWORD1(v71) = *(v19 + 16);
  DWORD2(v71) = *(a1 + 1344);
  if (*(a1 + 1520))
  {
    v20 = 0;
  }

  else
  {
    v20 = *(a1 + 1512) != 0;
  }

  BYTE12(v71) = v20;
  *(&v71 + 13) = 0;
  HIBYTE(v71) = 0;
  *&v72 = v18;
  v21 = *(v19 + 88);
  if (v21)
  {
    v22 = *(a2 + 17);
    v23 = (*(*v21 + 136))(v21, *(a2 + 9) - v22);
    v24 = *(*(a1 + 24) + 88);
    *(&v72 + 1) = v22 + (v23 * 24000000.0);
    v25 = (a2 + 36);
    v26 = (a2 + 20);
    if (v24)
    {
      v27 = *v25;
      v28 = (v27 + ((*(*v24 + 136))(v24, (*v26 - *v25)) * 24000000.0));
      goto LABEL_24;
    }
  }

  else
  {
    *(&v72 + 1) = 0;
    v25 = (a2 + 36);
    v26 = (a2 + 20);
  }

  v28 = 0.0;
LABEL_24:
  *&v73 = v28;
  DWORD2(v73) = *a2;
  v29 = *(a2 + 18);
  *&v74 = v84[0];
  *(&v74 + 1) = v29;
  v30 = *(a2 + 10);
  v75 = v30;
  if (*(a1 + 2175) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *(a1 + 2152), *(a1 + 2160));
    v29 = *v25;
    v30 = *v26;
  }

  else
  {
    v76 = *(a1 + 2152);
  }

  v31 = __udivti3();
  v32 = *(a1 + 1560);
  *&v77 = *(v32 + 848);
  v33 = *(a1 + 24);
  DWORD2(v77) = *(*(v33 + 72) + 4);
  if (v30 >= v29)
  {
    v34 = v31;
  }

  else
  {
    v34 = -v31;
  }

  v35 = *(a2 + 30);
  *&v78 = *(a2 + 29);
  *(&v78 + 1) = v34;
  *&v79 = v35;
  *(&v79 + 1) = v14;
  v36 = *(v32 + 440);
  *&v80 = *(a1 + 1368);
  *(&v80 + 1) = v36;
  v81 = *(a1 + 1352);
  v82 = *(v33 + 216);
  *v83 = v16;
  *&v83[8] = v50;
  *&v83[24] = v49;
  memset(&v83[40], 0, 40);
  v37 = *(v33 + 232);
  v56 = v73;
  v57 = v74;
  v58 = v75;
  v54 = v71;
  v55 = v72;
  v38 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v76;
  }

  v68 = *&v83[32];
  v69 = *&v83[48];
  v70 = *&v83[64];
  v64 = v81;
  v65 = v82;
  v66 = *v83;
  v67 = *&v83[16];
  v60 = v77;
  v61 = v78;
  v62 = v79;
  v63 = v80;
  v51 = *(a2 + 2);
  v52 = *(a2 + 6);
  v39 = *(a2 + 10);
  v53 = *(a2 + 14);
  *(v37 + 1) = 1;
  if (a4)
  {
    *(v37 + 88) = v51;
    *(v37 + 104) = v52;
    *(v37 + 120) = v39;
    *(v37 + 136) = v53;
  }

  v40 = *(v37 + 8);
  *v40 = v54;
  *(v40 + 64) = v58;
  *(v40 + 32) = v56;
  *(v40 + 48) = v57;
  *(v40 + 16) = v55;
  std::string::operator=((v40 + 72), &__p);
  v41 = v60;
  v42 = v62;
  *(v40 + 112) = v61;
  *(v40 + 128) = v42;
  *(v40 + 96) = v41;
  v43 = v63;
  v44 = v64;
  v45 = v66;
  *(v40 + 176) = v65;
  *(v40 + 192) = v45;
  *(v40 + 144) = v43;
  *(v40 + 160) = v44;
  v46 = v67;
  v47 = v68;
  v48 = v70;
  *(v40 + 240) = v69;
  *(v40 + 256) = v48;
  *(v40 + 208) = v46;
  *(v40 + 224) = v47;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v38 & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v76.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v38 < 0)
  {
    goto LABEL_39;
  }
}

uint64_t HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(HALS_IOContext_Legacy_Impl *this, uint64_t a2)
{
  v4 = 0;
  v3 = &unk_1F5983F68;
  v6[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(void)::$_0>;
  v6[1] = &v4;
  v5 = &off_1F5983F18;
  v7 = v6;
  v8[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v8[1] = &v7;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(this, a2, v8, &v5, &v3);
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(void)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    (*(*v2 + 896))(v2);
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::IsTimeRunning(uint64_t this, uint64_t a2, int a3)
{
  v7 = HALS_IOContext_Legacy_Impl::IsTimeRunning_Helper;
  v8 = a3;
  v6 = &unk_1F5983F68;
  v10[0] = caulk::function_ref<int ()(HALS_IOEngineInfo const&)>::functor_invoker<std::__bind<int (&)(HALS_IOEngineInfo const&,unsigned int),std::placeholders::__ph<1> const&,unsigned int &>>;
  v10[1] = &v7;
  v9 = &off_1F5983F18;
  v11 = v10;
  v12 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ConstItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo const&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ConstItemWithIndex &)#1}>;
  v13 = &v11;
  if (this == a2)
  {
    return 1;
  }

  v4 = this;
  LOBYTE(this) = 0;
  v5 = 0;
  while (1)
  {
    if (this)
    {
      ++v5;
    }

    else
    {
      v5 = 0;
    }

    v15[0] = v4;
    v15[1] = v5;
    if (((v9[2])(&v9, v15) & 1) == 0 && (v6[2](&v6, v15) & 1) == 0)
    {
      v14[0] = v4;
      v14[1] = v5;
      if (v12(&v13, v14))
      {
        break;
      }
    }

    v4 += 8;
    this = 1;
    if (v4 == a2)
    {
      return this;
    }
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::UpdateEngineMixing(HALS_IOContext_Legacy_Impl *this)
{
  v2 = 0;
  v5[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UpdateEngineMixing(void)::$_0>;
  v5[1] = &v2;
  v3[1] = this + 1536;
  v4 = v5;
  v3[0] = &unk_1F5987768;
  v6[0] = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
  v6[1] = &v4;
  v7[0] = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
  v7[1] = v6;
  return VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(this + 202), *(this + 203), v7, v3);
}

void HALS_IOContext_Legacy_Impl::StartTapOutput(HALS_IOContext_Legacy_Impl *this)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(this + 262))
  {
    for (i = *(this + 261); i; i = *i)
    {
      v3 = atomic_load(i + 42);
      if ((v3 & 1) == 0)
      {
        HALS_IOContext_Legacy_Impl::StartTapOutput(this, i + 3);
      }
    }

    if ((*(this + 1765) & 1) == 0)
    {
      v28 = 0u;
      v29 = 0u;
      v30 = 1065353216;
      v4 = (this + 2088);
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        v5 = *(v4[3] + 512);
        if (v5)
        {
          v6 = *(*(this + 3) + 16);
          do
          {
            v7 = *(v5 + 4);
            v31 = v7;
            if (v7 != v6)
            {
              v8 = HALS_ObjectMap::CopyObjectByObjectID(v7);
              v10 = v8;
              if (v8)
              {
                if ((*(**(v8 + 104) + 464))(*(v8 + 104)))
                {
                  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v28, v7);
                }
              }

              HALS_ObjectMap::ReleaseObject(v10, v9);
            }

            v5 = *v5;
          }

          while (v5);
        }
      }

      if (*(this + 262))
      {
        v11 = *(&v29 + 1) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = 0;
        while ((HALB_IOThread::HasBeenStopped((this + 312)) & 1) == 0)
        {
          v13 = *(*(this + 3) + 16);
          v14 = *(this + 262);
          kdebug_trace();
          v15 = (this + 2088);
          while (1)
          {
            v15 = *v15;
            if (!v15)
            {
              break;
            }

            v16 = v15[3];
            v32 = 0u;
            v33 = 0u;
            v34 = 1065353216;
            v17 = *(v16 + 512);
            if (v17)
            {
              do
              {
                v31 = *(v17 + 4);
                v18 = v31;
                if (std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v28, v31))
                {
                  v19 = HALS_ObjectMap::CopyObjectByObjectID(v18);
                  v20 = v19;
                  if (!v19 || ((*(**(v19 + 104) + 160))(*(v19 + 104)) & 1) != 0 || ((*(**(v20 + 13) + 184))(*(v20 + 13)) & 1) != 0)
                  {
                    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v32, v18);
                  }

                  HALS_ObjectMap::ReleaseObject(v20, v21);
                }

                v17 = *v17;
              }

              while (v17);
              for (j = v33; j; j = *j)
              {
                v23 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v28, *(j + 4));
                if (v23)
                {
                  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(&v28, v23);
                }
              }
            }

            std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v32);
          }

          v24 = mach_absolute_time();
          HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(this, v24 + 2400000);
          if (*(this + 262))
          {
            v12 = 1;
            if (*(&v29 + 1))
            {
              continue;
            }
          }

          goto LABEL_44;
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_45;
        }

        v25 = *(this + 262);
LABEL_44:
        v26 = *(*(this + 3) + 16);
        kdebug_trace();
      }

LABEL_45:
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v28);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void HALS_IOContext_Legacy_Impl::SendIsRunningNotifications(HALS_Object **this)
{
  v11 = *MEMORY[0x1E69E9840];
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
  if ((*(*platform_behaviors + 16))(platform_behaviors))
  {
    v9 = *"niogbolg";
    v10 = 1735159650;
    HALB_Mutex::Unlock((this + 41));
    v3 = this[3];
    v4 = *(v3 + 20);
    if (!v4)
    {
      v4 = *(v3 + 4);
    }

    HALS_Object::PropertiesChanged_Sync(v3, v4, **(v3 + 9), 2, &v9);
    HALB_Mutex::Lock((this + 41));
  }

  else
  {
    DWORD2(v9) = 0;
    *&v9 = *"enogbolg";
    v5 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 388));
    v7 = v5;
    if (v5 && *(v5 + 20) == 1633773415)
    {
      HALS_Object::PropertiesChanged(this[3], *(this + 388), **(this[3] + 9), 1, &v9);
    }

    HALS_ObjectMap::ReleaseObject(v7, v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982B20;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982AC8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982BA0;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982B48;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned int _CalculateOverloadThresholdSampleAdjustment(double a1, unsigned int result, unsigned int a3)
{
  if (a3 == result)
  {
    v3 = 0.25;
    v4 = 0.125;
    v5 = 0.0625;
    if (a3 >= 0x201)
    {
      v5 = 0.0;
    }

    if (a3 >= 0x101)
    {
      v4 = v5;
    }

    if (a3 >= 0x81)
    {
      v3 = v4;
    }

    v6 = 2.0;
    if (a1 >= 32000.0)
    {
      v6 = 1.0;
      if (a1 >= 64000.0)
      {
        v6 = 0.25;
        if (a1 < 128000.0)
        {
          v6 = 0.5;
        }
      }
    }

    return vcvtmd_u64_f64(v3 * a3 * v6);
  }

  else if (a3 > result)
  {
    return a3;
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982C20;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5982BC8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::engine_apply<std::__bind<int (&)(HALS_IOContext_Legacy_Impl*,HALS_IOEngineInfo &,unsigned int),HALS_IOContext_Legacy_Impl*,std::placeholders::__ph<1> const&,unsigned int &>,FilterIfEngineOnlyNeedsReferenceStream>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &,unsigned int),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&,unsigned int &>>;
  v6[1] = a3;
  v5 = &off_1F5983F18;
  v7 = v6;
  v8[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v8[1] = &v7;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(a1, a2, v8, &v5, a4);
}

void HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(uint64_t a1, unsigned int *a2)
{
  v2 = a2;
  v221 = *MEMORY[0x1E69E9840];
  if (HALB_IOThread::HasBeenStopped((a1 + 312)))
  {
    *(v2 + 249) = 1;
    goto LABEL_219;
  }

  v4 = *(a1 + 1128);
  if (v4)
  {
    std::function<void ()(HALS_IOContext_Legacy_Impl *)>::operator()(v4, a1);
    std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::operator=[abi:ne200100](a1 + 1104);
  }

  if (*(a1 + 1352) <= (2 * *(a1 + 1360)))
  {
    v5 = v2;
  }

  else
  {
    v5 = (a1 + 1360);
  }

  v6 = *v5;
  v2[54] = *v5;
  v7 = *(a1 + 1560);
  if (v7)
  {
    if (*(v7 + 88))
    {
      v8 = *(v7 + 368);
      if (v8)
      {
        HALS_IOClock::GetCurrentTime(v8, (v2 + 2));
        v6 = v2[54];
      }
    }
  }

  v9 = *v2;
  if (*v2 != v6)
  {
    v10 = *(*(a1 + 24) + 16);
    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_223;
    }

    v14 = *(v11 + 8);
    v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v15 + 16) = 0;
    *(v15 + 20) = 0;
    *(v15 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v15 + 32) = 2123;
    *(v15 + 36) = v10;
    *(v15 + 40) = v9;
    *(v15 + 44) = v6;
    *v15 = &unk_1F5982E78;
    *(v15 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v14, v15);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v16 = v2[54];
    v17 = *v2;
    v18 = *(v2 + 1);
    v19 = *(v2 + 2);
    (*(**(*(a1 + 24) + 104) + 752))(*(*(a1 + 24) + 104));
    kdebug_trace();
    v20 = ++*(a1 + 1344);
    v21 = *(v2 + 1);
    v22 = *(v2 + 2);
    kdebug_trace();
    v23 = v17 + v17 - v16;
    *(a1 + 1352) += v23;
    HALS_IOContext_Legacy_Impl::IncrementOutputFrameCounterForTaps(a1, v23);
    v24 = bswap32(v16);
    if (*(*(*(a1 + 24) + 72) + 40))
    {
      v25 = v24;
    }

    else
    {
      v25 = v16;
    }

    *(*(a1 + 1136) + 24) = v25;
    __dmb(0xBu);
    memset(&buf, 0, sizeof(buf));
    buf.mFlags = 3;
    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(a1, v16, &buf, -1.0);
    HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(a1, &buf);
    v26 = *(*(a1 + 24) + 88);
    if (v26)
    {
      (*(*v26 + 72))(v26);
    }

    v27 = HALS_IOContext_Legacy_Impl::PerformIO(a1, (v2 + 2), v16, v17 - v16, *(a1 + 1424), v2 + 29, 0);
    v28 = *(a1 + 1560);
    if (v28)
    {
      if (*(v28 + 88))
      {
        v29 = *(v28 + 368);
        if (v29)
        {
          HALS_IOClock::GetCurrentTime(v29, (v2 + 2));
        }
      }
    }

    v30 = HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(a1, v16);
    if (v30)
    {
      v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = *(v31 + 8);
      v34 = __error();
      v35 = strerror(*v34);
      if (!*v13)
      {
        goto LABEL_223;
      }

      v36 = caulk::rt_safe_memory_resource::rt_allocate(*v13);
      *(v36 + 16) = 0;
      *(v36 + 20) = 16;
      *(v36 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v36 + 32) = 1338;
      *(v36 + 36) = v30;
      *(v36 + 40) = v35;
      *v36 = &unk_1F5982968;
      *(v36 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v33, v36);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    v2[55] = v27;
    v37 = *(a1 + 1560);
    v38 = *v2;
    v6 = v2[54];
    if (v6 == *v2)
    {
      v39 = *(v37 + 848);
      v40 = 0.25;
      if (v38 >= 0x81)
      {
        v40 = 0.125;
        if (v38 >= 0x101)
        {
          v40 = 0.0625;
          if (v38 >= 0x201)
          {
            v40 = 0.0;
          }
        }
      }

      v41 = 2.0;
      if (v39 >= 32000.0)
      {
        v41 = 1.0;
        if (v39 >= 64000.0)
        {
          v41 = 0.25;
          if (v39 < 128000.0)
          {
            v41 = 0.5;
          }
        }
      }

      v38 = vcvtmd_u64_f64(v40 * v38 * v41);
    }

    else if (v6 > v38)
    {
      v38 = v2[54];
    }

    v2[50] = v38;
    *v2 = v6;
    if (*(v37 + 88))
    {
      v42 = *(*(v37 + 368) + 112);
    }

    else
    {
      v42 = 544.217687;
    }

    *(v2 + 26) = v42 * v6;
  }

  v43 = *(a1 + 1424);
  v2[56] = v43;
  if ((v43 & 0xFFFFFFFE) == 2)
  {
    v44 = *(a1 + 1560);
    if (!v44)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.mSampleTime) = 136315394;
        *(&buf.mSampleTime + 4) = "HALS_IOContext_Legacy_Impl.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 2168;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: no master engine info for catch up mode", &buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v45 = *(a1 + 1208);
    v46 = *(v2 + 1);
    v47 = *(v44 + 848);
    v187.__r_.__value_.__r.__words[0] = 0;
    *&v188.mSampleTime = &v187;
    v188.mHostTime = v47;
    *&v186.mSampleTime = &unk_1F5987718;
    v186.mHostTime = a1 + 1536;
    v192[0] = &unk_1F5982640;
    *&buf.mSampleTime = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ConstItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::GetLargestInputSafetyOffsetInHostSamples(void)::$_0>;
    buf.mHostTime = &v188;
    v48 = *(a1 + 1592);
    v49 = *(a1 + 1600);
    if (*&v48 != v49)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        if (v50)
        {
          ++v51;
        }

        else
        {
          v51 = 0;
        }

        v197.mSampleTime = v48;
        v197.mHostTime = v51;
        if (((*(*&v186.mSampleTime + 16))(&v186, &v197) & 1) == 0 && ((*(v192[0] + 16))(v192, &v197) & 1) == 0)
        {
          *&v193 = v48;
          *(&v193 + 1) = v51;
          if ((*&buf.mSampleTime)(&buf.mHostTime, &v193))
          {
            break;
          }
        }

        *&v48 += 472;
        v50 = 1;
      }

      while (*&v48 != v49);
    }

    v52 = v45 + v6 + v6;
    v53 = v46 - *&v187.__r_.__value_.__l.__data_;
    if (v52 <= v53)
    {
      goto LABEL_85;
    }

    *(a1 + 1424) = 4;
    v54 = *(a1 + 1456);
    if (v54)
    {
      std::function<void ()(IORunningState)>::operator()(v54, 4);
    }

    v55 = *(a1 + 1208);
    v56 = *(a1 + 1216);
    kdebug_trace();
    v57 = HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(a1, v2[54]);
    if (v57)
    {
      v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v59 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = *(v58 + 8);
      v61 = __error();
      v62 = strerror(*v61);
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_223;
      }

      v63 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v63 + 16) = 0;
      *(v63 + 20) = 16;
      *(v63 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v63 + 32) = 2188;
      *(v63 + 36) = v57;
      *(v63 + 40) = v62;
      *v63 = &unk_1F5982ED0;
      *(v63 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v60, v63);
      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }
    }

    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTime(a1, *v2, (v2 + 18));
    v64 = *(a1 + 1360);
    LODWORD(v186.mSampleTime) = *(*(a1 + 24) + 16);
    HIDWORD(v186.mSampleTime) = v64;
    v191[0] = &off_1F5983F18;
    *&v197.mSampleTime = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>;
    v197.mHostTime = &v186;
    v192[0] = &off_1F5983F18;
    v187.__r_.__value_.__r.__words[0] = &v197;
    *&buf.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    buf.mHostTime = &v187;
    v65 = *(a1 + 1568);
    v66 = *(a1 + 1576);
    if (*&v65 != v66)
    {
      v67 = 0;
      v68 = 0;
      do
      {
        if (v67)
        {
          ++v68;
        }

        else
        {
          v68 = 0;
        }

        *&v193 = v65;
        *(&v193 + 1) = v68;
        if (((*(v192[0] + 16))(v192, &v193) & 1) == 0 && ((*(v191[0] + 16))(v191, &v193) & 1) == 0)
        {
          v188.mSampleTime = v65;
          v188.mHostTime = v68;
          if ((*&buf.mSampleTime)(&buf.mHostTime, &v188))
          {
            break;
          }
        }

        *&v65 += 8;
        v67 = 1;
      }

      while (*&v65 != v66);
    }

    v69 = *(v2 + 9);
    v70 = *(v2 + 10);
    v71 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v72 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v73 = *(v71 + 8);
      v74 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v74 + 16) = 0;
      *(v74 + 20) = 0;
      *(v74 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v74 + 32) = 2203;
      *(v74 + 40) = v52;
      *(v74 + 48) = v53;
      *(v74 + 56) = v69;
      *(v74 + 64) = 0;
      *(v74 + 72) = v70;
      *v74 = &unk_1F5982F28;
      *(v74 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v73, v74);
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v72);
      }

      v75 = *(*(*(a1 + 24) + 232) + 8);
      if (*(v75 + 13) == 1)
      {
        *(v75 + 13) = 257;
      }

LABEL_85:
      v76 = 0;
      goto LABEL_198;
    }

LABEL_223:
    __break(1u);
    return;
  }

  if (*(a1 + 2128) == 1)
  {
    if (*(a1 + 2136) == *(a1 + 1344))
    {
      HALS_IOContext_Legacy_Impl::IOWorkLoop_ReportClientTimeout(a1, v2, 0, 0);
    }

    else
    {
      v79 = *(a1 + 1344);
    }
  }

  else
  {
    v77 = *(a1 + 1344);
    v78 = *(a1 + 2144);
    if (v78 && v78 == v77)
    {
      HALS_IOContext_Legacy_Impl::IOWorkLoop_ReportClientTimeout(a1, v2, v77 - *(a1 + 2136), 1);
      *(a1 + 2128) = 0;
      *(a1 + 2136) = 0;
      *(a1 + 2144) = 0;
    }
  }

  v76 = 0;
  v80 = 0;
  memset(&v186, 0, sizeof(v186));
  v186.mFlags = 3;
  v81 = v2[55];
  v82 = v2[50];
  v83 = v82;
  v84 = *v2;
  v85 = (v82 + *v2);
  v183 = *(v2 + 29);
  v175 = *(v2 + 30);
  while (1)
  {
    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTime(a1, v84, (v2 + 18));
    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(a1, v84, &v186, v83);
    memset(&v188, 0, sizeof(v188));
    v188.mFlags = 3;
    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(a1, v84, &v188, v85);
    HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(a1, &v188);
    if (v81 != 1)
    {
      break;
    }

    if ((HALB_IOThread::HasBeenStopped((a1 + 312)) & 1) == 0)
    {
      goto LABEL_101;
    }

    v80 = 1;
    v81 = 1;
LABEL_169:
    v153 = (HALB_IOThread::HasBeenStopped((a1 + 312)) ^ 1) & v80;
    v80 = 1;
    if ((v153 & 1) == 0)
    {
      goto LABEL_196;
    }
  }

  if (v81 == 2)
  {
    goto LABEL_169;
  }

  v86 = *(v2 + 1);
  mSampleTime = v186.mSampleTime;
  v80 = v86 >= v186.mSampleTime;
  if (HALB_IOThread::HasBeenStopped((a1 + 312)))
  {
    goto LABEL_169;
  }

  if (v86 < mSampleTime)
  {
    goto LABEL_195;
  }

LABEL_101:
  v88 = *(a1 + 1560);
  if (v88)
  {
    v89 = *(v88 + 440);
  }

  else
  {
    v89 = 0;
  }

  if (*(a1 + 1508) == 1)
  {
    if ((HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(a1, (v2 + 2), &v186, (v2 + 18), v84) & 1) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_166;
  }

  if (*(a1 + 1520))
  {
    v181 = 0;
  }

  else
  {
    v181 = *(a1 + 1512) != 0;
  }

  v90 = *(a1 + 24);
  v178 = *(v90 + 216);
  v179 = *(v90 + 16);
  v91 = *(v2 + 1);
  v92 = v186.mSampleTime;
  v93 = *(v2 + 18);
  mHostTime = v186.mHostTime;
  v95 = __udivti3();
  v180 = mHostTime;
  if (mHostTime >= v93)
  {
    v96 = v95;
  }

  else
  {
    v96 = -v95;
  }

  v97 = *(a1 + 576);
  v176 = *(a1 + 600);
  v177 = *(a1 + 584);
  v98 = *(a1 + 2176);
  v182 = v96;
  if (!v98)
  {
    v116 = 0;
    v101 = a2;
    goto LABEL_147;
  }

  v100 = *(v98 + 24);
  v99 = *(v98 + 32);
  if (v99)
  {
    atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v101 = a2;
  if (!v100)
  {
    v111 = 0;
    v104 = 0;
    if (!v99)
    {
      goto LABEL_141;
    }

LABEL_140:
    std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    goto LABEL_141;
  }

  v103 = *v100;
  v102 = v100[1];
  if (*v100 == v102)
  {
    v111 = 0;
    v104 = 0;
    goto LABEL_139;
  }

  v174 = v99;
  v104 = 0;
  do
  {
    v105 = *v103;
    v106 = v103[1];
    if (v106)
    {
      atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v107 = *(v105 + 24);
    v108 = *(v105 + 32);
    v109 = __udivti3();
    if (v108 >= v107)
    {
      v110 = v109;
    }

    else
    {
      v110 = -v109;
    }

    if (v106)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v106);
    }

    v104 += v110;
    v103 += 2;
  }

  while (v103 != v102);
  v111 = 0;
  if (v182 < 1)
  {
    v101 = a2;
    goto LABEL_192;
  }

  v101 = a2;
  v99 = v174;
  if (v104 < 1)
  {
LABEL_139:
    if (!v99)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

  v197.mSampleTime = 0.0;
  v197.mHostTime = 0;
  *&v193 = 0;
  v111 = v104 >= v182;
  if (v104 < v182)
  {
    if (v104 / v182 <= 0.9)
    {
      goto LABEL_189;
    }

    *&buf.mSampleTime = &unk_1F5985708;
    buf.mHostTime = &v197;
    *&buf.mRateScalar = &v193;
    buf.mWordClockTime = &buf;
    HALB_RealtimeDuration_Collection::enumSubDurations(v100, &buf);
    std::__function::__value_func<void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::~__value_func[abi:ne200100](&buf);
    v154 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v113 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v113)
    {
      atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v155 = *(v154 + 8);
    if (*&v197.mSampleTime)
    {
      v156 = (*(**&v197.mSampleTime + 16))(*&v197.mSampleTime);
    }

    else
    {
      v156 = 0;
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_223;
    }

    v158 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v158 + 16) = 0;
    *(v158 + 20) = 2;
    *(v158 + 24) = "HALS_IOContextHostedDSP.cpp";
    *(v158 + 32) = 1582;
    *(v158 + 36) = v156;
    *(v158 + 40) = 90;
    *(v158 + 48) = v182;
    *(v158 + 56) = v104;
    *v158 = &unk_1F59857F0;
    *(v158 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v155, v158);
    if (!v113)
    {
LABEL_189:
      v111 = 0;
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  *&buf.mSampleTime = &unk_1F5985708;
  buf.mHostTime = &v197;
  *&buf.mRateScalar = &v193;
  buf.mWordClockTime = &buf;
  HALB_RealtimeDuration_Collection::enumSubDurations(v100, &buf);
  std::__function::__value_func<void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::~__value_func[abi:ne200100](&buf);
  v112 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v113 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v113)
  {
    atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v173 = *(v112 + 8);
  if (*&v197.mSampleTime)
  {
    v114 = (*(**&v197.mSampleTime + 16))(*&v197.mSampleTime);
    if (*&v197.mSampleTime)
    {
      v115 = (*(**&v197.mSampleTime + 24))(*&v197.mSampleTime);
      goto LABEL_182;
    }
  }

  else
  {
    v114 = 0;
  }

  v115 = 0;
LABEL_182:
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_223;
  }

  v157 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v157 + 16) = 0;
  *(v157 + 20) = 16;
  *(v157 + 24) = "HALS_IOContextHostedDSP.cpp";
  *(v157 + 32) = 1569;
  *(v157 + 36) = v114;
  *(v157 + 40) = v115;
  *(v157 + 48) = v182;
  *(v157 + 56) = v104;
  *v157 = &unk_1F5985798;
  *(v157 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v173, v157);
  if (v113)
  {
LABEL_188:
    std::__shared_weak_count::__release_shared[abi:ne200100](v113);
    goto LABEL_190;
  }

  v111 = 1;
LABEL_190:
  if (v197.mHostTime)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v197.mHostTime);
  }

LABEL_192:
  v99 = v174;
  if (v174)
  {
    goto LABEL_140;
  }

LABEL_141:
  if (v183 >= v104)
  {
    v117 = v104;
  }

  else
  {
    v117 = 0;
  }

  v183 -= v117;
  if (v111)
  {
    v118 = *(v101 + 18);
    *(v101 + 17);
    kdebug_trace();
    v116 = 1;
  }

  else
  {
    v116 = 0;
  }

LABEL_147:
  v119 = *(a1 + 24);
  v120 = *(v119 + 232);
  v121 = *(a1 + 1344);
  if (*(a1 + 2175) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, *(a1 + 2152), *(a1 + 2160));
    v119 = *(a1 + 24);
  }

  else
  {
    v187 = *(a1 + 2152);
  }

  v122 = v101;
  v123 = *(v101 + 18);
  v124 = v122[10];
  v125 = *(*(a1 + 1560) + 848);
  v126 = *(*(v119 + 72) + 4);
  v127 = *(a1 + 1368);
  v128 = *(a1 + 1352);
  v192[0] = 0;
  pthread_threadid_np(0, v192);
  LOBYTE(buf.mSampleTime) = 0;
  HIDWORD(buf.mSampleTime) = v179;
  LODWORD(buf.mHostTime) = v121;
  BYTE4(buf.mHostTime) = v181;
  *(&buf.mHostTime + 5) = 0;
  HIBYTE(buf.mHostTime) = v116;
  buf.mRateScalar = v91 - v92;
  *&buf.mWordClockTime = v92;
  *&buf.mSMPTETime.mSubframes = v180;
  buf.mSMPTETime.mType = v84;
  *&buf.mSMPTETime.mHours = v192[0];
  *&buf.mFlags = v123;
  mRateScalar = v124;
  v129 = SHIBYTE(v187.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = v187;
  }

  v130 = v127;
  v131 = *(v120 + 32);
  v132 = *(a2 + 2);
  v133 = __udivti3();
  *&v214 = v125;
  DWORD2(v214) = v126;
  *&v215 = v183;
  *(&v215 + 1) = v182;
  if (v132 >= v131)
  {
    v134 = v133;
  }

  else
  {
    v134 = -v133;
  }

  *&v216 = v175;
  *(&v216 + 1) = v134;
  *&v217 = v130;
  *(&v217 + 1) = v89;
  v218 = v128;
  v219 = v178;
  *&v220[0] = v97;
  *(v220 + 8) = v177;
  *(&v220[1] + 8) = v176;
  *(&v220[2] + 8) = 0u;
  *(&v220[3] + 8) = 0u;
  *(&v220[4] + 1) = 0;
  v197 = buf;
  v198 = mRateScalar;
  v135 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __s;
  }

  v208 = v220[2];
  v209 = v220[3];
  v210 = v220[4];
  v204 = v218;
  v205 = v219;
  v206 = v220[0];
  v207 = v220[1];
  v200 = v214;
  v201 = v215;
  v202 = v216;
  v203 = v217;
  v2 = a2;
  v137 = *(a2 + 6);
  v193 = *(a2 + 2);
  v136 = v193;
  v194 = v137;
  v139 = *(a2 + 14);
  v195 = *(a2 + 10);
  v138 = v195;
  v196 = v139;
  *v120 = 1;
  *(v120 + 24) = v136;
  *(v120 + 40) = v137;
  *(v120 + 56) = v138;
  *(v120 + 72) = v139;
  v140 = *(v120 + 8);
  v141 = *&v197.mRateScalar;
  v142 = *&v197.mSMPTETime.mSubframes;
  v143 = *&v197.mSMPTETime.mHours;
  *(v140 + 64) = v198;
  *(v140 + 32) = v142;
  *(v140 + 48) = v143;
  *(v140 + 16) = v141;
  *v140 = *&v197.mSampleTime;
  std::string::operator=((v140 + 72), &__p);
  v144 = v200;
  v145 = v202;
  *(v140 + 112) = v201;
  *(v140 + 128) = v145;
  *(v140 + 96) = v144;
  v146 = v203;
  v147 = v204;
  v148 = v206;
  *(v140 + 176) = v205;
  *(v140 + 192) = v148;
  *(v140 + 144) = v146;
  *(v140 + 160) = v147;
  v149 = v207;
  v150 = v208;
  v151 = v210;
  *(v140 + 240) = v209;
  *(v140 + 256) = v151;
  *(v140 + 208) = v149;
  *(v140 + 224) = v150;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v135 < 0)
    {
      goto LABEL_172;
    }

LABEL_161:
    if (v129 < 0)
    {
LABEL_173:
      operator delete(v187.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((v135 & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

LABEL_172:
    operator delete(__s.__r_.__value_.__l.__data_);
    if (v129 < 0)
    {
      goto LABEL_173;
    }
  }

  v152 = HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(a1, (a2 + 2), &v186, (a2 + 18), v84);
  if (*(a1 + 1424) == 3)
  {
    *(*(*(*(a1 + 24) + 232) + 8) + 13) = 1;
    if ((v152 & 1) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_166;
  }

  if (v152)
  {
LABEL_166:
    memset(&v197, 0, 24);
    DWORD2(v193) = v84;
    *&v194 = &v197;
    v191[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTimeAndCheckOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,HALS_IOContext_Legacy_Impl::PerformIOReturn,unsigned int,unsigned int,long long,long long,CAAudioTimeStamp &,CAAudioTimeStamp &)::$_0>;
    v191[1] = &v193;
    v190 = v191;
    v189[0] = &unk_1F5987768;
    v189[1] = a1 + 1536;
    v192[0] = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
    v192[1] = &v190;
    *&v193 = a1;
    *&buf.mSampleTime = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
    buf.mHostTime = v192;
    VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a1 + 1616), *(a1 + 1624), &buf, v189);
    if (v197.mHostTime == *(a1 + 1344))
    {
      *(*(*(*(a1 + 24) + 232) + 8) + 168) = v197.mSampleTime;
    }

    v81 = 0;
    v76 = 1;
    v80 = 1;
    goto LABEL_169;
  }

LABEL_194:
  v76 = 0;
LABEL_195:
  HALB_IOThread::HasBeenStopped((a1 + 312));
LABEL_196:
  v159 = *(v2 + 2);
  if (v159 + 24000000.0 < *(v2 + 10))
  {
    *(v2 + 10) = (*(v2 + 26) + v159);
  }

LABEL_198:
  v160 = *(v2 + 9);
  v161 = *(v2 + 10);
  (*(**(*(a1 + 24) + 104) + 752))(*(*(a1 + 24) + 104));
  kdebug_trace();
  if (v76)
  {
    *(a1 + 1344) = 0;
    v185[0] = 0;
    v185[1] = 0;
    HALS_System::GetInstance(&v193, 0, v185);
    v162 = v193;
    if (v193)
    {
      if (*(v193 + 1880) == 1 && *(*(a1 + 24) + 241) == 1)
      {
        v163 = mach_absolute_time();
        if (*(v162 + 1880) == 1)
        {
          v164 = *(v162 + 1864);
          if (v164)
          {
            v165 = v163;
            std::string::basic_string[abi:ne200100]<0>(&v197, "HAL-Generated Dump");
            v166 = *v164;
            *&buf.mSampleTime = MEMORY[0x1E69E9820];
            buf.mHostTime = 3321888768;
            *&buf.mRateScalar = ___ZN13HALB_Tailspin17DumpTailspinAsyncEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
            buf.mWordClockTime = &__block_descriptor_72_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
            *&buf.mSMPTETime.mSubframes = v164;
            *&buf.mSMPTETime.mType = v165;
            if (SHIBYTE(v197.mRateScalar) < 0)
            {
              std::string::__init_copy_ctor_external(&buf.mSMPTETime.mHours, *&v197.mSampleTime, v197.mHostTime);
            }

            else
            {
              *&buf.mSMPTETime.mHours = *&v197.mSampleTime;
              mRateScalar = v197.mRateScalar;
            }

            AMCP::Utility::Dispatch_Queue::async(v166, &buf);
            if (SHIBYTE(mRateScalar) < 0)
            {
              operator delete(*&buf.mSMPTETime.mHours);
            }

            if (SHIBYTE(v197.mRateScalar) < 0)
            {
              operator delete(*&v197.mSampleTime);
            }
          }
        }
      }
    }

    v170 = *(&v193 + 1);
    if (*(&v193 + 1))
    {
LABEL_218:
      std::__shared_weak_count::__release_shared[abi:ne200100](v170);
    }
  }

  else
  {
    v167 = *(a1 + 24);
    v168 = *(v167 + 88);
    v169 = *(v167 + 96);
    if (v169)
    {
      atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v168)
    {
      (*(*v168 + 64))(v168, *(a1 + 1496));
    }

    if (v169)
    {
      v170 = v169;
      goto LABEL_218;
    }
  }

LABEL_219:
  v171 = *MEMORY[0x1E69E9840];
}

void sub_1DE60B480(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a71 < 0)
    {
      operator delete(__p);
    }

    if (a59)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a59);
    }

    __cxa_begin_catch(a1);
    v73 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v74 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v74)
    {
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v75 = *(v73 + 8);
    a51 = 16;
    HasBeenStopped = HALB_IOThread::HasBeenStopped((v71 + 312));
    v77 = 2233;
    if (HasBeenStopped)
    {
      v77 = 0x1000008B9;
    }

    v78 = v77 | (*(a28 + 249) << 40);
    *&a31 = "HALS_IOContext_Legacy_Impl.cpp";
    *(&a31 + 1) = v78;
    caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>(v75, &a51, &a31);
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    *(a28 + 249) = 1;
    __cxa_end_catch();
    JUMPOUT(0x1DE60B37CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE60B680()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE60B538);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982CA0;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5982C48;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982D20;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982CC8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982DA0;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982D48;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Completed HALS_IOContext_Legacy_Impl::IOWorkLoopInit - %d", &v10, 0x18u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d An Exception was thrown during Init - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set the RT safe syscall masks: %d - %s", &v11, 0x22u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::function<void ()(HALS_IOContext_Legacy_Impl *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982FD8;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982F80;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d An Exception was thrown during SyncTimeline - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,double,double,double,long long,unsigned long long>>::perform(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v15 = 136316674;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Switching to realtime - end of next buffer: %0.f  last valid: %0.f  wakeTime: %0.f  next buffer host: %lld  wake host: %llu", &v15, 0x44u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,double,double,double,long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>(unsigned int **a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 504) = 0;
  (*(**(a2 + 88) + 408))(*(a2 + 88), *v2, a2);
  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to update realtime priority parameters with code: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ConstItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::GetLargestInputSafetyOffsetInHostSamples(void)::$_0>(double ***a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 108) || ((v3 = *(v2 + 112), *(v2 + 120) != v3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v3 = (v2 + 456);
  }

  v5 = *v3;
  if (*(*v3 + 88))
  {
    v6 = *(*a1 + 1);
    v7 = *(v5 + 848) / v6;
    LODWORD(v6) = *(v5 + 396);
    v8 = v7 * *&v6;
    v9 = **a1;
    if (*v9 >= v8)
    {
      v8 = *v9;
    }

    *v9 = v8;
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,unsigned int,unsigned int,unsigned int>>::perform(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 44);
    v13 = 136316162;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d ioc (%u) - handle buffer frame size change, old %u new %u", &v13, 0x24u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,unsigned int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_BeginIO(HALS_IOContext_Legacy_Impl *this, HALS_IOContext_Legacy_Impl *a2, HALS_IOEngineInfo *a3)
{
  if (!*(a2 + 11))
  {
    return 0;
  }

  v10[0] = &unk_1F5982158;
  v10[1] = this;
  HALS_IOPerformer::update_io_parameters(v10, a2, a3, 0, 1);
  v5 = *(a2 + 11);
  v6 = *(*(this + 3) + 16);
  HALS_IOContextDescription::CreateDriverIOThreadStateChangeDictionary(&cf, this + 1536, 0);
  v7 = (*(*v5 + 728))(v5, v6, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_1DE60C80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to change thread to realtime priority with code: %d - %s", &v11, 0x22u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d WaitForClientToBeginTransport failed - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d During init we were told to stop - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UpdateEngineMixing(void)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v6 = *(a6 + 112), *(a6 + 120) != v6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v6 = (a6 + 456);
  }

  v8 = *v6;
  v9 = *(v8 + 88);
  if (v9 && *(v8 + 832) == 1)
  {
    (*(*v9 + 720))(v9);
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d During init we were told to exit - thread hasBeenStopped: %d and shouldExit: %d", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ConstItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo const&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ConstItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

BOOL HALS_IOContext_Legacy_Impl::IsTimeRunning_Helper(HALS_IOContext_Legacy_Impl *this, const HALS_IOEngineInfo *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 11))
  {
    v3 = *(*(this + 46) + 96);
    result = v3 == 0;
    if (a2 == 1 && !v3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = "HALS_IOContext_Legacy_Impl.cpp";
        v8 = 1024;
        v9 = 3603;
        v10 = 2082;
        v11 = this + 112;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IsTimeRunning_Helper: Device %{public}s is not running.", &v6, 0x1Cu);
      }

      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::ResetTime_Helper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOEngineInfo *a3)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    v4 = *(a2 + 368);
    v5 = *(a2 + 848);
    v6 = *(a2 + 856);
    v7 = *(a2 + 860);
    v8 = *(a2 + 864);
    v9 = (*(*v3 + 392))(v3);
    HALS_IOClock::Reset(v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::_ResetOverloadTimeOnEngines(void)::$_0>(uint64_t a1, uint64_t a2)
{
  *(a2 + 904) = 0u;
  *(a2 + 920) = 0u;
  *(a2 + 872) = 0u;
  *(a2 + 888) = 0u;
  return 0;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::RegisterIOThread(void)::$_0>(unsigned int **a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (!v2)
  {
    return 0;
  }

  v4 = *a1;
  if ((*(*v2 + 336))(*(a2 + 88)))
  {
    v6 = *((*(*v2 + 336))(v2) + 44);
  }

  else
  {
    v6 = 0;
  }

  v5.n128_u64[0] = *(a2 + 848);
  v9 = *v4;
  v8 = v4[1];
  v10 = **(v4 + 1);
  v11 = *(*v2 + 656);

  return v11(v2, v6, v8, v9, v10, v5);
}

float HALS_IOContext_Legacy_Impl::GetScalarVolume(HALS_IOContext_Legacy_Impl *this)
{
  if (!this)
  {
    return 1.0;
  }

  v1 = *(this + 11);
  if (!v1)
  {
    return 1.0;
  }

  v2 = (*(*v1 + 336))(v1);
  if (!v2)
  {
    return 1.0;
  }

  v3 = *(*v2 + 256);

  v3();
  return result;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::StartHardware(void)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  std::chrono::steady_clock::now();
  started = HALS_IOContext_Legacy_Impl::StartHardware_Helper(v4, a2, v5);
  std::chrono::steady_clock::now();
  if (*(a2 + 944))
  {
    v7 = v3[2];
    v8 = *((*(**(a2 + 88) + 336))(*(a2 + 88)) + 16);
    v9 = *(a2 + 944);
    v10 = v7[1];
    if (v10)
    {
      v11 = vcnt_s8(v10);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = *(a2 + 944);
        if (*&v10 <= v9)
        {
          v12 = v9 % v10.i32[0];
        }
      }

      else
      {
        v12 = (v10.i32[0] - 1) & v9;
      }

      v13 = *(*v7 + 8 * v12);
      if (v13)
      {
        for (i = *v13; i; i = *i)
        {
          v15 = i[1];
          if (v15 == v9)
          {
            if (*(i + 4) == v9)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v11.u32[0] > 1uLL)
            {
              if (v15 >= *&v10)
              {
                v15 %= *&v10;
              }
            }

            else
            {
              v15 &= *&v10 - 1;
            }

            if (v15 != v12)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_20:
  v16 = *(a2 + 88);
  if (v16 && (*(*v16 + 336))(v16))
  {
    v17 = (*(**(a2 + 88) + 336))(*(a2 + 88));
    v18 = *(v17 + 16);
    v27 = *(v17 + 16);
    std::vector<unsigned int>::push_back[abi:ne200100](*v3, &v27);
    v19 = v3[1];
    v20 = v19[1];
    if (v20)
    {
      v21 = vcnt_s8(v20);
      v21.i16[0] = vaddlv_u8(v21);
      if (v21.u32[0] > 1uLL)
      {
        v22 = v18;
        if (*&v20 <= v18)
        {
          v22 = v18 % v20.i32[0];
        }
      }

      else
      {
        v22 = (v20.i32[0] - 1) & v18;
      }

      v23 = *(*v19 + 8 * v22);
      if (v23)
      {
        for (j = *v23; j; j = *j)
        {
          v25 = j[1];
          if (v25 == v18)
          {
            if (*(j + 4) == v18)
            {
              return started;
            }
          }

          else
          {
            if (v21.u32[0] > 1uLL)
            {
              if (v25 >= *&v20)
              {
                v25 %= *&v20;
              }
            }

            else
            {
              v25 &= *&v20 - 1;
            }

            if (v25 != v22)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return started;
}

uint64_t HALS_IOContext_Legacy_Impl::get_devices_that_are_not_reference_stream_only(HALS_IOContext_Legacy_Impl *this, uint64_t a2, uint64_t a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v5[0] = HALS_IOContext_Legacy_Impl::CountActiveHardware_Helper;
  v5[1] = this;
  v4 = &unk_1F5983F68;
  v7[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOEngineInfo &,std::vector<unsigned int> &,std::vector<unsigned int> &),std::placeholders::__ph<1> const&,std::reference_wrapper<std::vector<unsigned int>>,std::reference_wrapper<std::vector<unsigned int>>>>;
  v7[1] = v5;
  v5[2] = this + 24;
  v6 = &off_1F5983F18;
  v8 = v7;
  v9[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v9[1] = &v8;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(a2, a3, v9, &v6, &v4);
}

uint64_t HALS_IOContext_Legacy_Impl::CountActiveHardware_Helper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  result = *(a1 + 88);
  if (result)
  {
    v7 = (*(*result + 336))(result);
    if (v7)
    {
      v10[0] = *(v7 + 16);
      if (v10[0])
      {
        v8 = (*(**(a1 + 88) + 416))(*(a1 + 88), 1);
        if ((*(**(a1 + 88) + 416))(*(a1 + 88), 0))
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a3, v10);
        }

        if (v8)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a2, v10);
        }
      }
    }

    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOContextDescription::ActiveInputsOnly>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4)
{
  if (result != a2)
  {
    v13[8] = v4;
    v13[9] = v5;
    v9 = result;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v10)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      result = (*(*a4 + 16))(a4, v13);
      if ((result & 1) == 0)
      {
        v12[0] = v9;
        v12[1] = v11;
        result = (*a3)((a3 + 1), v12);
        if (result)
        {
          break;
        }
      }

      v9 += 472;
      v10 = 1;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::SetupForIsolatedIO(void)::$_0>(unsigned int **a1, unsigned int *a2)
{
  v2 = *a2;
  if (!*(*a2 + 108) || ((v3 = *(v2 + 112), *(v2 + 120) != v3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v3 = (v2 + 456);
  }

  v5 = *v3;
  v6 = *(*v3 + 88);
  if (v6 && *(v5 + 831) == 1 && *(v2 + 380) == 1)
  {
    (*(*v6 + 784))(v6, a2[2], **a1, *(v2 + 376));
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Completed HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::TeardownForIsolatedIO(void)::$_0>(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (!*(*a2 + 108) || ((v3 = *(v2 + 112), *(v2 + 120) != v3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v3 = (v2 + 456);
  }

  v5 = *v3;
  v6 = *(v5 + 88);
  if (v6 && *(v5 + 831) == 1 && *(v2 + 380) == 1)
  {
    (*(*v6 + 792))(v6, a2[2], *(v2 + 376));
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(a2 + 88);
  if (v5 && (*(*v5 + 336))(v5))
  {
    v6 = *v3;
    v7 = *(v3 + 8);
    v8 = (*(**(a2 + 88) + 336))(*(a2 + 88));
    if (v6 != v7)
    {
      while (*v6 != *(v8 + 16))
      {
        if (++v6 == v7)
        {
          v6 = v7;
          break;
        }
      }
    }

    if (v6 == *(v3 + 8))
    {
      return 0;
    }
  }

  if ((v4 - 1) < 3)
  {
    if (*(a2 + 832) != 1)
    {
      return 0;
    }

    if (*(a2 + 844) == 1)
    {
      if (*(a2 + 845) == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 != 3)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((v4 - 4) >= 2)
  {
    if (v4 != 6 || (*(a2 + 831) & 1) != 0 || (*(a2 + 832) & 1) != 0)
    {
      return 0;
    }

LABEL_23:
    HALS_IOContext_Legacy_Impl::StopHardware_Helper(*(v3 + 24), a2);
    return 0;
  }

  if (*(a2 + 831) == 1 && (*(a2 + 832) & 1) == 0)
  {
    if (*(a2 + 844) == 1)
    {
      if (v4 != 4)
      {
        return 0;
      }
    }

    else if (v4 != 5)
    {
      return 0;
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UnregisterIOThread(void)::$_0>(unsigned int **a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  if ((*(*v2 + 336))(*(a2 + 88)))
  {
    v4 = *((*(*v2 + 336))(v2) + 44);
  }

  else
  {
    v4 = 0;
  }

  v6 = *v3;
  v7 = *(*v2 + 664);

  return v7(v2, v4, v6);
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_EndIO(HALS_IOContext_Legacy_Impl *this, HALS_IOContext_Legacy_Impl *a2, HALS_IOEngineInfo *a3)
{
  v4 = *(a2 + 11);
  if (v4)
  {
    v5 = *(*(this + 3) + 16);
    HALS_IOContextDescription::CreateDriverIOThreadStateChangeDictionary(&cf, this + 1536, 1);
    v4 = (*(*v4 + 736))(v4, v5, a2, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  *(a2 + 505) = 0;
  return v4;
}

void sub_1DE60E1DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v9 = *(a6 + 112), *(a6 + 120) != v9) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    v9 = (a6 + 456);
  }

  v11 = *v9;
  if (!*(*v9 + 88) || *(v11 + 832) != 1)
  {
    return 0;
  }

  v20 = v6;
  v21 = v7;
  v12 = *(*(**a1 + 24) + 16);
  v13 = *(a6 + 24);
  v14 = *(v11 + 752);
  v16 = *(a6 + 16);
  v17 = 0;
  v18 = v13;
  v19 = v14;
  return (*(*v11 + 96))(v11, v12, *(a6 + 12));
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to clear the syscall masks: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5983058;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5983000;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d An exception was thrown while trying to sleep - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to update realtime priority parameters with code: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO: Re-anchoring IO timeline. Forced re-anchor", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Legacy_Impl::ResetTimeline_Helper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOEngineInfo *a3)
{
  v4 = *(a2 + 88);
  if (v4)
  {
    (*(*v4 + 648))(v4, this, 8);
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Exitted PerformIO early - thread hasBeenStopped: %d and shouldExit: %d", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v193 = *MEMORY[0x1E69E9840];
  if ((HALB_IOThread::HasBeenStopped((a1 + 312)) & 1) == 0 && *(a2 + 249) != 1)
  {
    if (a2[62])
    {
      goto LABEL_95;
    }

    v19 = *(a1 + 24);
    v167 = *(v19 + 160);
    v20 = *(v19 + 16);
    v21 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 1552));
    v22 = *(a1 + 1560);
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v21 && v22)
    {
      if (!v23)
      {
        goto LABEL_20;
      }

      v24 = (*(*v21 + 224))(v21);
      *buf = 136316162;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1720;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      *&buf[24] = 2082;
      *&buf[26] = v22 + 112;
      *&buf[34] = 2082;
      *&buf[36] = v24;
      v25 = MEMORY[0x1E69E9C10];
      v26 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoopInit: %u %{public}s (%{public}s): starting";
      v27 = 44;
    }

    else
    {
      if (!v23)
      {
        goto LABEL_20;
      }

      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1724;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      v25 = MEMORY[0x1E69E9C10];
      v26 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoopInit: %u: starting";
      v27 = 24;
    }

    _os_log_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
LABEL_20:
    v28 = *(*(a1 + 1560) + 848);
    (*(**(a1 + 24) + 208))(*(a1 + 24));
    kdebug_trace();
    v29 = *(a1 + 16);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*(*(a1 + 24) + 72) + 44) & 1) == 0)
    {
      HALS_IOContext_Legacy_Impl::TakePowerAssertions(a1);
    }

    v169[0] = 0;
    v169[1] = 0;
    HALS_System::GetInstance(buf, 0, v169);
    HALS_System::SetIOContextIsRunning(*buf, v20, 1);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v168 = a4;
    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }

    HALS_ObjectMap::ReleaseObject(v21, v30);
    *(a1 + 1341) = 0;
    LODWORD(v170) = *(a1 + 40);
    *&v179 = &unk_1F5987718;
    *(&v179 + 1) = a1 + 1536;
    *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::SetupForIsolatedIO(void)::$_0>;
    *&buf[8] = &v170;
    VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOContextDescription::ActiveInputsOnly>(*(a1 + 1592), *(a1 + 1600), buf, &v179);
    if (!*(a1 + 1136))
    {
      kdebug_trace();
      v33 = *(*(a1 + 24) + 200);
      *v33 = mach_absolute_time();
      *(v33 + 8) = 1;
      std::chrono::steady_clock::now();
      memset(v176, 0, 32);
      HALS_IOContext_Legacy_Impl::AssessIOBufferSize(a1, v176);
      HALS_IOContextDescription::CalculateEngineSynchOffsets((a1 + 1536));
      v34 = *(a1 + 1560);
      *buf = &unk_1F5973788;
      *&buf[8] = v34;
      *&buf[16] = vrev64_s32(*(a1 + 2024));
      v177[0] = buf;
      *&v179 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::AllocateProcessors(void)::$_0>;
      *(&v179 + 1) = v177;
      v35 = VisitableVector<HALS_IOStreamInfo>::apply<>(*(a1 + 1592), *(a1 + 1600), &v179);
      if (!v35)
      {
        v174 = buf;
        *&v170 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::AllocateProcessors(void)::$_1>;
        *(&v170 + 1) = &v174;
        *&v179 = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
        *(&v179 + 1) = &v170;
        v35 = VisitableVector<HALS_IOStackDescription>::apply<>(*(a1 + 1616), *(a1 + 1624), &v179);
        if (!v35)
        {
          HALS_IOContext_Legacy_Impl::StartTapOutput(a1);
          v166 = *(*(*(a1 + 24) + 72) + 48);
          HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((a1 + 1536));
          v37 = v36;
          v165 = *(a1 + 2024);
          v38 = *(a1 + 1560);
          v39 = *(a1 + 1792);
          v39[2] = v39[1];
          v39[5] = v39[4];
          LODWORD(v170) = v36;
          *(&v170 + 1) = v38;
          v40 = *(a1 + 1776);
          *&v179 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::calculate_input_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>;
          *(&v179 + 1) = &v170;
          v35 = VisitableVector<HALS_IOStreamInfo>::apply<>(*v40, v40[1], &v179);
          if (!v35)
          {
            v41 = *(a1 + 1784);
            *&v179 = &unk_1F596E6B8;
            *(&v179 + 1) = v37;
            v180 = v38;
            v181 = &v179;
            v177[0] = &v179;
            *&v170 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
            *(&v170 + 1) = v177;
            v35 = VisitableVector<HALS_IOStackDescription>::apply<>(*v41, v41[1], &v170);
            std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](&v179);
            if (!v35)
            {
              *&v170 = *(a1 + 1792);
              v42 = *(a1 + 1776);
              *&v179 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::calculate_shared_input_buffer_size(void)::$_0>;
              *(&v179 + 1) = &v170;
              v35 = VisitableVector<HALS_IOStreamInfo>::apply<>(*v42, v42[1], &v179);
              if (!v35)
              {
                v43 = *(a1 + 1792);
                v44 = *(a1 + 1784);
                *&v179 = &unk_1F596E748;
                *(&v179 + 1) = v43;
                v181 = &v179;
                v177[0] = &v179;
                *&v170 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
                *(&v170 + 1) = v177;
                v35 = VisitableVector<HALS_IOStackDescription>::apply<>(*v44, v44[1], &v170);
                std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](&v179);
                if (!v35)
                {
                  HALS_BufferFactory::allocate_shared_buffer(*(a1 + 1792), v166);
                }
              }
            }
          }
        }
      }

      if (v176[0])
      {
        operator delete(v176[0]);
      }

      kdebug_trace();
      Interval::PostEnd(*(*(a1 + 24) + 200));
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1765;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: failed to start the hardware", buf, 0x12u);
      }

      *(a1 + 1096) = v35;
      *(a2 + 249) = 1;
      *(a1 + 1528) = HALS_IOPrewarmManager::Stop((a1 + 1512), *(a1 + 1100));
      HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
      goto LABEL_86;
    }

    v31 = *(*(a1 + 24) + 16);
    *buf = HALS_IOThread::CopyWorkgroupIntervalPort((a1 + 312));
    *&buf[4] = 1;
    *&buf[8] = 850045863;
    memset(&buf[16], 0, 64);
    LODWORD(v176[0]) = *(a1 + 1360);
    HIDWORD(v176[0]) = v31;
    v176[1] = buf;
    v172 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::RegisterIOThread(void)::$_0>;
    v173 = v176;
    v178 = &off_1F5983F18;
    v171[0] = &v172;
    v174 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    v175 = v171;
    v32 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(a1 + 1568), *(a1 + 1576), &v174, &v178);
    AMCP::Utility::Mach_Port::~Mach_Port(buf);
    if (v32)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1776;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: failed to register io thread", buf, 0x12u);
      }

      *(a1 + 1096) = v32;
      *(a2 + 249) = 1;
      *(a1 + 1528) = HALS_IOPrewarmManager::Stop((a1 + 1512), *(a1 + 1100));
      HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
      goto LABEL_86;
    }

    v45 = *(a1 + 1568);
    v46 = *(a1 + 1576);
    while (v45 != v46)
    {
      v47 = *(*v45 + 88);
      if (v47)
      {
        *(*v45 + 831) = (*(*v47 + 424))(v47, 1, *(a1 + 2028)) != 0;
      }

      v45 += 8;
    }

    kdebug_trace();
    LOBYTE(v178) = 0;
    v171[0] = &unk_1F5983F68;
    v174 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::_ResetOverloadTimeOnEngines(void)::$_0>;
    v175 = &v178;
    v176[0] = &off_1F5983F18;
    v172 = &v174;
    *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    *&buf[8] = &v172;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, v176, v171);
    v48 = *(*(a1 + 24) + 16);
    v172 = HALS_IOContext_Legacy_Impl::ResetTime_Helper;
    LODWORD(v173) = v48;
    v178 = &unk_1F5983FE8;
    v174 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
    v175 = &v172;
    v171[0] = &off_1F5983F18;
    v176[0] = &v174;
    *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    *&buf[8] = v176;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, v171, &v178);
    HALS_IOContext_Legacy_Impl::UpdateTime(a1);
    v49 = 0;
    v50 = v167 / 0x9C4;
    while ((HALB_IOThread::HasBeenStopped((a1 + 312)) & 1) == 0)
    {
      IsTimeRunning = HALS_IOContext_Legacy_Impl::IsTimeRunning(*(a1 + 1568), *(a1 + 1576), 0);
      v52 = v49 >= v50 ? 1 : IsTimeRunning;
      if (v52)
      {
        break;
      }

      HALB_Mutex::Unlock((a1 + 328));
      usleep(0x9C4u);
      HALB_Mutex::Lock((a1 + 328));
      if (*(a1 + 304) == 1)
      {
        *(a2 + 249) = 1;
        goto LABEL_86;
      }

      HALS_IOContext_Legacy_Impl::UpdateTime(a1);
      ++v49;
    }

    kdebug_trace();
    if (HALB_IOThread::HasBeenStopped((a1 + 312)))
    {
      v53 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v55 = *(v53 + 8);
      HasBeenStopped = HALB_IOThread::HasBeenStopped((a1 + 312));
      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_186;
      }

      v13 = HasBeenStopped == 0;
      v57 = 1821;
      if (!v13)
      {
        v57 = 0x10000071DLL;
      }

      v58 = v57 | (*(a2 + 249) << 40);
      v59 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v59 + 16) = 0;
      *(v59 + 20) = 0;
      *(v59 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v59 + 32) = v58;
      *v59 = &unk_1F5982A70;
      *(v59 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v55, v59);
      if (v54)
      {
LABEL_65:
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        goto LABEL_66;
      }

      goto LABEL_66;
    }

    if (*(a1 + 1560))
    {
      if (v49 >= v50)
      {
        HALS_IOContext_Legacy_Impl::IsTimeRunning(*(a1 + 1568), *(a1 + 1576), 1);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v73 = *(*(a1 + 24) + 16);
          *buf = 136316162;
          *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1840;
          *&buf[18] = 2048;
          *&buf[20] = v167;
          *&buf[28] = 1024;
          *&buf[30] = v73;
          *&buf[34] = 2080;
          *&buf[36] = a1 + 500;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: could not establish a timeline after waiting %lu microseconds for context %d %s\n", buf, 0x2Cu);
        }

        *(a1 + 1096) = 1937010544;
        *(a2 + 249) = 1;
        *(a1 + 1528) = HALS_IOPrewarmManager::Stop((a1 + 1512), *(a1 + 1100));
        HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
        goto LABEL_86;
      }

      v60 = *(a1 + 1136);
      if (v60)
      {
        v60[17] = 0u;
        v60[18] = 0u;
        v60[15] = 0u;
        v60[16] = 0u;
        v60[13] = 0u;
        v60[14] = 0u;
        v60[11] = 0u;
        v60[12] = 0u;
        v60[9] = 0u;
        v60[10] = 0u;
        v60[7] = 0u;
        v60[8] = 0u;
        v60[5] = 0u;
        v60[6] = 0u;
        v60[3] = 0u;
        v60[4] = 0u;
        v60[1] = 0u;
        v60[2] = 0u;
        *v60 = 0u;
        v61 = *(*(*(a1 + 24) + 72) + 40);
        v62 = *(*(a1 + 1560) + 368);
        v63 = v62 + 200;
        v64 = *(v62 + 200 + 40 * *(v62 + 192)) * 24000000.0 / 24000000.0;
        v65 = COERCE_DOUBLE(bswap64(*&v64));
        if (*(*(*(a1 + 24) + 72) + 40))
        {
          v64 = v65;
        }

        v66 = *(a1 + 1136);
        *v66 = v64;
        v67 = *(v63 + 40 * *(v62 + 192) + 8) * 24000000.0 / 24000000.0;
        v68 = COERCE_DOUBLE(bswap64(*&v67));
        if (v61)
        {
          v67 = v68;
        }

        *(v66 + 8) = v67;
        v69 = v63 + 40 * *(v62 + 192);
        if (v61)
        {
          v70 = bswap64(*(v69 + 16));
          v71 = bswap32(*a2);
          v72 = 50331648;
        }

        else
        {
          v70 = *(v69 + 16);
          v71 = *a2;
          v72 = 3;
        }

        *(v66 + 16) = v70;
        *(v66 + 24) = v71;
        *(v66 + 152) = v72;
        *(v66 + 216) = v72;
        *(v66 + 280) = v72;
        __dmb(0xBu);
        *(a1 + 1340) = 1;
        HALS_IOContext_Legacy_Impl::UpdateEngineMixing(a1);
        HALS_IOContext_Legacy_Impl::StartTapOutput(a1);
        HALB_IOThread::PostStateChange((a1 + 312), 1735354734);
        HALS_IOContext_Legacy_Impl::SendIsRunningNotifications(a1);
        if (HALB_IOThread::HasBeenStopped((a1 + 312)))
        {
          v112 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v113 = *(v112 + 8);
          LOBYTE(v174) = 0;
          v114 = HALB_IOThread::HasBeenStopped((a1 + 312));
          v115 = 0x10000075ELL;
          if (!v114)
          {
            v115 = 1886;
          }

          v116 = v115 | (*(a2 + 249) << 40);
          *buf = "HALS_IOContext_Legacy_Impl.cpp";
          *&buf[8] = v116;
          caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>(v113, &v174, buf);
          if (!v54)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        if (*(a1 + 1560))
        {
          if ((HALS_IOContext::WaitForClientToBeginTransport(*(a1 + 24)) & 1) == 0)
          {
            v121 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v54)
            {
              atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v122 = *(v121 + 8);
            LOBYTE(v174) = 16;
            v123 = HALB_IOThread::HasBeenStopped((a1 + 312));
            v124 = 0x10000076ELL;
            if (!v123)
            {
              v124 = 1902;
            }

            v125 = v124 | (*(a2 + 249) << 40);
            *buf = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[8] = v125;
            caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>(v122, &v174, buf);
            if (!v54)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          if (*(a1 + 1560))
          {
            HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
            v117 = *(a1 + 1560);
            v118 = *a2;
            a2[50] = _CalculateOverloadThresholdSampleAdjustment(*(v117 + 848), *a2, a2[54]);
            if (*(v117 + 88))
            {
              v119 = *(*(v117 + 368) + 112);
            }

            else
            {
              v119 = 544.217687;
            }

            *(a2 + 26) = v119 * v118;
            v126 = HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(a1, v118);
            if (v126)
            {
              v159 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v160 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v160)
              {
                atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v161 = *(v159 + 8);
              LOBYTE(v174) = 16;
              v162 = __error();
              v163 = strerror(*v162);
              *buf = "HALS_IOContext_Legacy_Impl.cpp";
              *&buf[8] = 1929;
              *&buf[12] = v126;
              *&buf[16] = v163;
              caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>(v161, &v174, buf);
              if (v160)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v160);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              *exception = off_1F5991DD8;
              exception[2] = 1852797029;
            }

            __dmb(0xBu);
            *(a1 + 1344) = 0;
            *(a1 + 1352) = 0;
            HALS_IOContext_Legacy_Impl::AnchorTime(a1);
            v127 = *(a1 + 24);
            v128 = *(*(v127 + 72) + 40);
            v129 = *(*(a1 + 1560) + 368);
            v130 = v129 + 200;
            v131 = *(v129 + 200 + 40 * *(v129 + 192)) * 24000000.0 / 24000000.0;
            v132 = COERCE_DOUBLE(bswap64(*&v131));
            if (*(*(v127 + 72) + 40))
            {
              v131 = v132;
            }

            v133 = *(a1 + 1136);
            *v133 = v131;
            v134 = *(v130 + 40 * *(v129 + 192) + 8) * 24000000.0 / 24000000.0;
            v135 = COERCE_DOUBLE(bswap64(*&v134));
            if (v128)
            {
              v134 = v135;
            }

            *(v133 + 8) = v134;
            v136 = v130 + 40 * *(v129 + 192);
            if (v128)
            {
              v137 = bswap64(*(v136 + 16));
              v138 = bswap64(*(v130 + 40 * *(v129 + 192) + 24));
              v139 = bswap64(*(v130 + 40 * *(v129 + 192) + 32));
              v140 = 50331648;
            }

            else
            {
              v137 = *(v136 + 16);
              v138 = *(v130 + 40 * *(v129 + 192) + 24);
              v139 = *(v130 + 40 * *(v129 + 192) + 32);
              v140 = 3;
            }

            *(v133 + 16) = v137;
            *(v133 + 32) = v138;
            *(v133 + 40) = v139;
            *(v133 + 88) = v140;
            v141 = bswap32(*a2);
            if (v128)
            {
              v142 = v141;
            }

            else
            {
              v142 = *a2;
            }

            *(v133 + 24) = v142;
            v143 = *(v127 + 88);
            if (v143)
            {
              (*(*v143 + 48))(v143, *(a1 + 1368));
            }

            HALS_IOContext_Legacy_Impl::GetCurrentTime(a1, (a2 + 34));
            *buf = HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_BeginIO;
            *&buf[8] = a1;
            *&buf[16] = *a2;
            v174 = &unk_1F5983F68;
            HALS_IOContext_Legacy_Impl::engine_apply<std::__bind<int (&)(HALS_IOContext_Legacy_Impl*,HALS_IOEngineInfo &,unsigned int),HALS_IOContext_Legacy_Impl*,std::placeholders::__ph<1> const&,unsigned int &>,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, &v174);
            v144 = *(a1 + 1344);
            v145 = *(a2 + 17);
            v146 = *(a2 + 18);
            v147 = *a2;
            kdebug_trace();
            HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(a1, a2);
            if (!HALS_IOContext::GetAudioCaptureMode(*(a1 + 24)))
            {
              v152 = HALS_IOThread::EnableRTSafeSyscallMasks((a1 + 312));
              if (v152)
              {
                v153 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v154 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v154)
                {
                  atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v155 = *(v153 + 8);
                LOBYTE(v174) = 16;
                v156 = __error();
                v157 = strerror(*v156);
                *buf = "HALS_IOContext_Legacy_Impl.cpp";
                *&buf[8] = 1974;
                *&buf[12] = v152;
                *&buf[16] = v157;
                caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>(v155, &v174, buf);
                if (v154)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v154);
                }
              }
            }

            v148 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v149 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v149)
            {
              atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v150 = *(v148 + 8);
            LOBYTE(v174) = 2;
            v151 = (*(a2 + 249) << 32) | 0x7BF;
            *buf = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[8] = v151;
            caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>(v150, &v174, buf);
            if (v149)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v149);
            }

            goto LABEL_87;
          }

          *(a1 + 1096) = 1852797029;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
LABEL_66:
            *(a2 + 249) = 1;
            goto LABEL_87;
          }

          *buf = 136315394;
          *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1911;
          v120 = MEMORY[0x1E69E9C10];
        }

        else
        {
          *(a1 + 1096) = 1852797029;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          *buf = 136315394;
          *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1895;
          v120 = MEMORY[0x1E69E9C10];
        }

        _os_log_impl(&dword_1DE1F9000, v120, OS_LOG_TYPE_ERROR, "%25s:%-5d  After we unlock the lock, we need to check that we still have a master device", buf, 0x12u);
        goto LABEL_66;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1854;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: Failure to allocate status block\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1829;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  After we unlock the lock, we need to check that we still have a master device", buf, 0x12u);
    }

    *(a1 + 1096) = 1852797029;
    *(a2 + 249) = 1;
    *(a1 + 1528) = HALS_IOPrewarmManager::Stop((a1 + 1512), *(a1 + 1100));
    HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
LABEL_86:
    a4 = v168;
LABEL_87:
    if (*(a2 + 249) == 1)
    {
      v74 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v75 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v76 = *(v74 + 8);
      v77 = HALB_IOThread::HasBeenStopped((a1 + 312));
      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_186;
      }

      v13 = v77 == 0;
      v78 = 2415;
      if (!v13)
      {
        v78 = 0x10000096FLL;
      }

      v79 = v78 | (*(a2 + 249) << 40);
      v80 = caulk::rt_safe_memory_resource::rt_allocate(result);
      v81 = v80;
      *(v80 + 8) = 0;
      *(v80 + 16) = 0;
      *(v80 + 20) = 16;
      *(v80 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v80 + 32) = v79;
      v82 = &unk_1F59831E0;
      goto LABEL_124;
    }

    *(a2 + 248) = 1;
LABEL_95:
    if ((*(a1 + 1424) & 0xFFFFFFFE) != 2)
    {
      *(a2 + 34) = *(a2 + 18);
      *(a2 + 38) = *(a2 + 22);
      *(a2 + 42) = *(a2 + 26);
      *(a2 + 46) = *(a2 + 30);
      if (*(a1 + 1344))
      {
        HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(a1, *(a2 + 10));
      }

      else
      {
        v83 = *(a1 + 1560);
        v84 = 44100.0;
        if (!v83 || !*(v83 + 88) || (v84 = *(v83 + 848), v84 > 0.0))
        {
          v85 = mach_absolute_time();
          LODWORD(v86) = *a2;
          v87 = v86 / v84 * 24000000.0;
          v88 = *(a2 + 10);
          v89 = v88 >= v87 ? v88 - v87 : 0;
          if (v89 > v85)
          {
            HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(a1, v89);
          }
        }

        if (HALB_IOThread::HasBeenStopped((a1 + 312)))
        {
          *(a2 + 249) = 1;
        }

        else
        {
          v90 = *(a2 + 13);
          v190 = *(a2 + 12);
          v191 = v90;
          v192[0] = *(a2 + 14);
          *(v192 + 10) = *(a2 + 234);
          v91 = *(a2 + 9);
          v186 = *(a2 + 8);
          v187 = v91;
          v92 = *(a2 + 11);
          v188 = *(a2 + 10);
          v189 = v92;
          v93 = *(a2 + 5);
          *&buf[72] = *(a2 + 4);
          v183 = v93;
          v94 = *(a2 + 7);
          v184 = *(a2 + 6);
          v185 = v94;
          v95 = *(a2 + 1);
          *&buf[8] = *a2;
          *&buf[24] = v95;
          v96 = *(a2 + 3);
          *&buf[40] = *(a2 + 2);
          *buf = a1;
          *&buf[56] = v96;
          v97 = *(a2 + 10);
          v172 = caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>;
          v173 = buf;
          v98 = mach_absolute_time();
          HALS_IOThread::WorkgroupStart((a1 + 312), v98, v97);
          caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>(&v173);
          HALS_IOThread::WorkgroupFinish((a1 + 312));
        }
      }

      v99 = *(a2 + 10);
      v100 = mach_absolute_time();
      v101 = __udivti3();
      if (v100 >= v99)
      {
        v102 = v101;
      }

      else
      {
        v102 = -v101;
      }

      *(a2 + 30) = v102;
      v174 = 0;
      v175 = 0;
      HALS_System::GetInstance(buf, 0, &v174);
      v103 = *(*buf + 1856);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      if (v103)
      {
        v104 = (*(a2 + 30) * 0x20C49BA5E353F7CFLL) >> 64;
        kdebug_trace();
      }
    }

    if (!*(a1 + 1560))
    {
      *(a1 + 1096) = 1852797029;
      v158 = __cxa_allocate_exception(0x10uLL);
      *v158 = off_1F5991DD8;
      v158[2] = 1852797029;
    }

    if (*(a2 + 249) != 1)
    {
      v109 = *(a1 + 1560);
      if (v109)
      {
        if (*(v109 + 88))
        {
          v110 = *(v109 + 368);
          if (v110)
          {
            HALS_IOClock::GetCurrentTime(v110, (a2 + 2));
          }
        }
      }

      v178 = a1;
      v174 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UpdateSoftwareReferenceStreamOnlyEngineState::$_0>;
      v175 = &v178;
      v169[0] = &off_1F5983F18;
      v171[0] = &v174;
      *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
      *&buf[8] = v171;
      VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(a1 + 1568), *(a1 + 1576), buf, v169);
      ++*(a1 + 1344);
      v111 = *a2;
      *(a1 + 1352) += v111;
      HALS_IOContext_Legacy_Impl::IncrementOutputFrameCounterForTaps(a1, v111);
      memset(buf, 0, 64);
      *&buf[56] = 3;
      HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(a1, *a2, buf, -1.0);
      HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(a1, buf);
      *a3 = mach_absolute_time();
      *a4 = *&buf[8];
      v17 = *(a2 + 249) ^ 1;
      goto LABEL_11;
    }

    v105 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v75 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v75)
    {
      atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = *(v105 + 8);
    v106 = HALB_IOThread::HasBeenStopped((a1 + 312));
    result = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_186;
    }

    v13 = v106 == 0;
    v107 = 2426;
    if (!v13)
    {
      v107 = 0x10000097ALL;
    }

    v108 = v107 | (*(a2 + 249) << 40);
    v80 = caulk::rt_safe_memory_resource::rt_allocate(result);
    v81 = v80;
    *(v80 + 8) = 0;
    *(v80 + 16) = 0;
    *(v80 + 20) = 16;
    *(v80 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v80 + 32) = v108;
    v82 = &unk_1F5983238;
LABEL_124:
    *v80 = v82;
    caulk::concurrent::messenger::enqueue(v76, v81);
    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75);
    }

    v17 = 0;
    goto LABEL_11;
  }

  v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(v8 + 8);
  v11 = HALB_IOThread::HasBeenStopped((a1 + 312));
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v13 = v11 == 0;
    v14 = 2404;
    if (!v13)
    {
      v14 = 0x100000964;
    }

    v15 = v14 | (*(a2 + 249) << 40);
    v16 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v16 + 16) = 0;
    *(v16 + 20) = 0;
    *(v16 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v16 + 32) = v15;
    *v16 = &unk_1F5983188;
    *(v16 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v10, v16);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v17 = 0;
    *(a2 + 249) = 1;
LABEL_11:
    v18 = *MEMORY[0x1E69E9840];
    return (v17 & 1);
  }

LABEL_186:
  __break(1u);
  return result;
}

void sub_1DE610918(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v2 + 56);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F59832E8;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5983290;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d And error was thrown when getting timestamp - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UpdateSoftwareReferenceStreamOnlyEngineState(unsigned int)::$_0>(uint64_t **a1, uint64_t a2)
{
  if (*(a2 + 829) == 1)
  {
    v36 = v5;
    v37 = v4;
    v38 = v2;
    v39 = v3;
    if ((*(a2 + 828) & 1) == 0)
    {
      v7 = **a1;
      if (((*(*a2 + 344))(a2) & 1) == 0)
      {
        v8 = atomic_load((v7 + 1504));
        if (v8 == 2)
        {
          atomic_store(0, (v7 + 1504));
          *(a2 + 505) = 0;
        }
      }

      v9 = atomic_load((v7 + 1504));
      if (!v9 && (*(*a2 + 344))(a2))
      {
        v10 = *(a2 + 368);
        v11 = *(a2 + 848);
        v12 = *(a2 + 856);
        v13 = *(a2 + 860);
        v14 = *(a2 + 864);
        v15 = (*(**(a2 + 88) + 392))(*(a2 + 88));
        HALS_IOClock::Reset(v10, v11, v12, v13, v14, v15);
        memset(&v35, 0, 24);
        v16 = *(*(v7 + 24) + 16);
        (*(**(a2 + 88) + 632))();
        v17 = *(a2 + 368);
        *&v34.mSampleTime = *&v35.mSampleTime;
        v34.mRateScalar = v35.mRateScalar;
        HALS_IOClock::Update(v17, &v34);
        *(a2 + 704) = 0u;
        *(a2 + 720) = 0u;
        *(a2 + 672) = 0u;
        *(a2 + 688) = 0u;
        *(a2 + 640) = 0u;
        *(a2 + 656) = 0u;
        *(a2 + 608) = 0u;
        *(a2 + 624) = 0u;
        *(a2 + 576) = 0u;
        *(a2 + 592) = 0u;
        *(a2 + 544) = 0u;
        *(a2 + 560) = 0u;
        *(a2 + 512) = 0u;
        *(a2 + 528) = 0u;
        atomic_store(1u, (v7 + 1504));
      }

      v18 = atomic_load((v7 + 1504));
      if (v18 == 1 && (*(*a2 + 328))(a2))
      {
        v19 = *(v7 + 1560);
        v20 = *(v19 + 456);
        *&v35.mSampleTime = *(v19 + 440);
        *&v35.mRateScalar = v20;
        v21 = *(v19 + 488);
        *&v35.mSMPTETime.mSubframes = *(v19 + 472);
        *&v35.mSMPTETime.mHours = v21;
        v35.mSampleTime = v35.mSampleTime + *(v19 + 744);
        v35.mFlags = 1;
        memset(&v34, 0, sizeof(v34));
        v34.mFlags = 2;
        HALS_IOClock::TranslateTime(*(v19 + 368), &v35, &v34);
        v33.mSampleTime = 0.0;
        memset(&v33.mRateScalar, 0, 48);
        v33.mHostTime = v34.mHostTime;
        v33.mFlags = 1;
        v34.mFlags = 2;
        HALS_IOClock::TranslateTime(*(a2 + 368), &v34, &v33);
        v22 = *&v33.mRateScalar;
        *(a2 + 440) = *&v33.mSampleTime;
        *(a2 + 456) = v22;
        v23 = *&v33.mSMPTETime.mHours;
        *(a2 + 472) = *&v33.mSMPTETime.mSubframes;
        *(a2 + 488) = v23;
        *(a2 + 505) = 1;
        HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_ResetEngineInfo(v7, a2, *(v7 + 1360));
        atomic_store(2u, (v7 + 1504));
      }

      if (((*(*a2 + 344))(a2) & 1) == 0)
      {
        v24 = (v7 + 1504);
        if (atomic_load((v7 + 1504)))
        {
          v26 = *(a2 + 368);
          v27 = *(a2 + 848);
          v28 = *(a2 + 856);
          v29 = *(a2 + 860);
          v30 = *(a2 + 864);
          v31 = (*(**(a2 + 88) + 392))(*(a2 + 88));
          HALS_IOClock::Reset(v26, v27, v28, v29, v30, v31);
          atomic_store(0, v24);
          *(a2 + 505) = 0;
        }
      }
    }
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Sleep failed - thread hasBeenStopped: %d and shouldExit: %d", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Initialize failed - thread hasBeenStopped: %d and shouldExit: %d", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 37);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Exitted GetInterval early - thread hasBeenStopped: %d and shouldExit: %d", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}