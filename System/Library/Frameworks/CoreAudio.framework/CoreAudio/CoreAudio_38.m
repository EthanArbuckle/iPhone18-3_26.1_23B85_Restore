void sub_1DE4D37EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void sub_1DE4D3A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void sub_1DE4D3FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v18);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v18);
  }

  while (v18 != &a17);
  a17 = &a13;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a17);
  v20 = -24;
  do
  {
    applesauce::CF::StringRef::~StringRef(v17--);
    v20 += 8;
  }

  while (v20);
  _Unwind_Resume(a1);
}

void sub_1DE4D45F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v18);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v18);
  }

  while (v18 != &a17);
  a17 = &a13;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a17);
  v20 = -24;
  do
  {
    applesauce::CF::StringRef::~StringRef(v17--);
    v20 += 8;
  }

  while (v20);
  _Unwind_Resume(a1);
}

void sub_1DE4D4978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v17);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v17);
  }

  while (v17 != &a17);
  a10 = &a13;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1DE4D4C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v17);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v17);
  }

  while (v17 != &a17);
  a10 = &a13;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void AMCP::System_Context::~System_Context(std::__shared_weak_count **this)
{
  v1 = this;
  v58 = *MEMORY[0x1E69E9840];
  v2 = this[1];
  if (v2)
  {
    if (!v2->__shared_owners_)
    {
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v4 + 16);
      switch(v6)
      {
        case 3:
          v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v15 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "System_Context.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 212;
            v19 = v18;
            v20 = OS_LOG_TYPE_INFO;
LABEL_31:
            _os_log_impl(&dword_1DE1F9000, v19, v20, "%32s:%-5d \n-=-=-=-=-=-=-=-=\nBegin destroying System_Context\n-=-=-=-=-=-=-=-=", buf, 0x12u);
          }

          break;
        case 2:
          v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v11 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "System_Context.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 212;
            _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d \n-=-=-=-=-=-=-=-=\nBegin destroying System_Context\n-=-=-=-=-=-=-=-=", buf, 0x12u);
          }

          break;
        case 1:
          v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v7 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "System_Context.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 212;
            v19 = v10;
            v20 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_31;
          }

          break;
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v21 = **v1;
      std::mutex::lock((v21 + 80));
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        v22 = AMCP::Log::AMCP_Scope_Registry::initialize(v22);
      }

      v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v24 + 16);
      switch(v26)
      {
        case 3:
          v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v35 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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

          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "System_Core.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 94;
            v39 = v38;
            v40 = OS_LOG_TYPE_INFO;
LABEL_62:
            _os_log_impl(&dword_1DE1F9000, v39, v40, "%32s:%-5d Stopping System_Core", buf, 0x12u);
          }

          break;
        case 2:
          v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v31 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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

          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "System_Core.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 94;
            _os_log_debug_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_DEBUG, "%32s:%-5d Stopping System_Core", buf, 0x12u);
          }

          break;
        case 1:
          v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v27 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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
            *buf = 136315394;
            *&buf[4] = "System_Core.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 94;
            v39 = v30;
            v40 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_62;
          }

          break;
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v41 = *(v21 + 32);
      AMCP::Graph::Graph::get_nodes(buf, *(v41 + 2896));
      v42 = *buf;
      v43 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v44 = v41 + 2696;
        do
        {
          (*(*v44 + 16))(&v53, v44);
          v45 = (*(*v53 + 16))(v53);
          v46 = *(*v42 + 176);
          if (v46)
          {
            v47 = *(v46 + 8);
          }

          else
          {
            v47 = 0;
          }

          AMCP::Core::Broker::fetch_core(&v51, v45, v47);
          if (v54)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          }

          v53 = 0x676C6F6270617573;
          LODWORD(v54) = 0;
          AMCP::Core::Core::call_operation_function<void,AMCP::Pause_Behavior>(v51, &v53, 1);
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }

          v42 += 16;
        }

        while (v42 != v43);
      }

      v51 = buf;
      std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v51);
      AMCP::Core::Conductor::flush_work_queues(*(v21 + 32));
      v48 = *(v21 + 32);
      v56[0] = &unk_1F5968288;
      v56[1] = v21;
      v56[3] = v56;
      __lk.__m_ = (v48 + 1040);
      __lk.__owns_ = 1;
      std::mutex::lock((v48 + 1040));
      operator new();
    }

    v49 = this[1];
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

void sub_1DE4D5674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::System_Context::System_Context_State::~System_Context_State(AMCP::System_Context::System_Context_State *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t HALS_DSPHostPerClientConfigSerializer::add_dictionary(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  v4 = **(a1 + 8);
  v5 = *a3;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v9)
    {
      if (v8 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      key = CFStringCreateWithBytes(0, v9, v11, 0x8000100u, 0);
      if (!key)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v5 = *a3;
    }

    else
    {
      key = 0;
    }

    v12 = PropertyListDeepImmutableCopy(v5);
    cf = v12;
    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 != CFDictionaryGetTypeID())
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v17, "Could not construct");
        __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v14 = cf;
    }

    else
    {
      v14 = 0;
    }

    CFDictionaryAddValue(**(a1 + 8), key, v14);
    if (cf)
    {
      CFRelease(cf);
    }

    if (key)
    {
      CFRelease(key);
    }
  }

  return v7;
}

void sub_1DE4D58AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

BOOL HALS_DSPHostPerClientConfigSerializer::add_uint32(uint64_t a1, uint64_t a2, int a3)
{
  v3 = **(a1 + 8);
  if (v3)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      key = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
      if (!key)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      key = 0;
    }

    valuePtr = a3;
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    cf = v10;
    if (!v10)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFDictionaryAddValue(**(a1 + 8), key, v10);
    CFRelease(cf);
    if (key)
    {
      CFRelease(key);
    }
  }

  return v3 != 0;
}

void sub_1DE4D5A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void HALS_DSPHostPerClientConfigDeserializer::get_dictionary(uint64_t a1@<X0>, CFStringRef a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (a2)
  {
    info = v3->info;
    if ((data_high & 0x80u) == 0)
    {
      v8 = data_high;
    }

    else
    {
      v8 = info;
    }

    a2 = CFStringCreateWithBytes(0, a2, v8, 0x8000100u, 0);
    v17 = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v17 = 0;
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10)
  {
    v12 = applesauce::CF::details::at_key<applesauce::CF::StringRef &>(*v10, a2);
    if (!v12)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not find item");
      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v13 = v12;
    CFRetain(v12);
    v14 = CFGetTypeID(v13);
    if (v14 != CFDictionaryGetTypeID())
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v16, "Could not construct");
      __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *a3 = v13;
    *(a3 + 8) = 1;
    a2 = v17;
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (!v11)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

void sub_1DE4D5C90(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4D5BFCLL);
}

uint64_t HALS_DSPHostPerClientConfigDeserializer::get_uint32(uint64_t a1, CFStringRef a2)
{
  v3 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (a2)
  {
    info = v3->info;
    if ((data_high & 0x80u) == 0)
    {
      v7 = data_high;
    }

    else
    {
      v7 = info;
    }

    a2 = CFStringCreateWithBytes(0, a2, v7, 0x8000100u, 0);
    cf = a2;
    if (!a2)
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

  v9 = *(a1 + 8);
  v10 = *v9;
  if (!*v9)
  {
    v13 = 0;
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v11 = applesauce::CF::details::at_key<applesauce::CF::StringRef &>(*v9, a2);
  if (!v11)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not find item");
    __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v12 = applesauce::CF::convert_to<unsigned int,0>(v11);
  v13 = v12;
  v2 = v12 >> 8;
  a2 = cf;
  if (cf)
  {
LABEL_15:
    CFRelease(a2);
  }

LABEL_16:
  if (v10)
  {
    v14 = 0x100000000;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  return v14 | v13 | (v2 << 8);
}

void AMCP::Utility::Kernel_Error_Category::message(__int16 a1@<W1>, std::string *a2@<X8>)
{
  std::to_string(&v5, a1 & 0x3FFF);
  v4 = std::string::insert(&v5, 0, "kernel error code: ", 0x13uLL);
  *a2 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_1DE4D5F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Utility::Kernel_Error_Category::~Kernel_Error_Category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Utility::Kernel_Error_Category::get(AMCP::Utility::Kernel_Error_Category *this)
{
  {
    AMCP::Utility::Kernel_Error_Category::get(void)::s_category = &unk_1F5974588;
  }
}

uint64_t HALB_MachPort::CreatePort(HALB_MachPort *this)
{
  v1 = this;
  v25 = *MEMORY[0x1E69E9840];
  name = 0;
  v2 = MEMORY[0x1E69E9A60];
  v3 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (v3)
  {
    v10 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "HALB_MachPort.cpp";
      v21 = 1024;
      v22 = 56;
      v23 = 1024;
      v24 = v10;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_MachPort::CreatePort: failed to allocate the port, Error: 0x%X", buf, 0x18u);
    }

LABEL_22:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v10;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

  port_info_outCnt = 1;
  attributes = mach_port_get_attributes(*v2, name, 1, &port_info_out, &port_info_outCnt);
  if (attributes)
  {
    v10 = attributes;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "HALB_MachPort.cpp";
      v21 = 1024;
      v22 = 65;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALB_MachPort::CreatePort: failed to get the port limts";
LABEL_20:
      _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x12u);
    }

LABEL_21:
    mach_port_mod_refs(*v2, name, 1u, -1);
    goto LABEL_22;
  }

  port_info_out = v1;
  v5 = MEMORY[0x1E12C1EA0](*v2, name, 1, &port_info_out, 1);
  if (v5)
  {
    v10 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "HALB_MachPort.cpp";
      v21 = 1024;
      v22 = 74;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALB_MachPort::CreatePort: failed to set the port limts";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_5:
  v6 = MEMORY[0x1E12C1EA0](*v2, name, 6, 0, 0);
  if (v6)
  {
    v10 = v6;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "HALB_MachPort.cpp";
      v21 = 1024;
      v22 = 85;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d  HALB_MachPort::CreatePort: failed to set attribute MACH_PORT_DENAP_RECEIVER";
LABEL_14:
      _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
    }

LABEL_15:
    mach_port_deallocate(*v2, name);
    goto LABEL_22;
  }

  inserted = mach_port_insert_right(*v2, name, name, 0x14u);
  if (inserted)
  {
    v10 = inserted;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "HALB_MachPort.cpp";
      v21 = 1024;
      v22 = 93;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d  HALB_MachPort::CreatePort: failed to create the send right";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  result = name;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void HALB_MachPort::DestroyPort(AMCP::Log::AMCP_Scope_Registry *name, int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!name)
  {
    goto LABEL_19;
  }

  v5 = name;
  if (a2 & 1) != 0 || (a3)
  {
    goto LABEL_10;
  }

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(name);
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

  if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
LABEL_10:
    if (a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v17 = 136315394;
    v18 = "HALB_MachPort.cpp";
    v19 = 1024;
    v20 = 182;
    _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_MachPort::DestroyPort: not going to destroy anything this way", &v17, 0x12u);
    if (a2)
    {
LABEL_11:
      v10 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
      if (v10)
      {
        v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!*MEMORY[0x1E69E3C08])
        {
          __break(1u);
        }

        v13 = *(v11 + 8);
        v14 = (v10 << 32) | 0xBF;
        v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v15 + 16) = 0;
        *(v15 + 20) = 16;
        *(v15 + 24) = "HALB_MachPort.cpp";
        *(v15 + 32) = v14;
        *v15 = &unk_1F59745E8;
        *(v15 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v13, v15);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }
    }
  }

  if (a3)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v5, 1u, -1);
  }

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_MachPort::DestroyPort(unsigned int,BOOL,BOOL)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_MachPort::DestroyPort: deallocating the port failed, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALB_MachPort::DestroyPort(unsigned int,BOOL,BOOL)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void non-virtual thunk toHALS_PlugInControl::~HALS_PlugInControl(HALS_PlugInControl *this)
{
  HALS_PlugInControl::~HALS_PlugInControl((this - 72));
}

{
  v1 = (this - 72);
  HALS_PlugInObject::~HALS_PlugInObject(this);

  HALS_Control::~HALS_Control(v1);
}

void HALS_PlugInControl::~HALS_PlugInControl(HALS_PlugInControl *this)
{
  HALS_PlugInObject::~HALS_PlugInObject((this + 72));
  HALS_Control::~HALS_Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInObject::~HALS_PlugInObject((this + 72));

  HALS_Control::~HALS_Control(this);
}

BOOL HALS_PlugInControl::GetHardwareReferenceStreamControlValue(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 240);
  }

  else
  {
    v3 = 0;
  }

  v11 = 0;
  v10 = *"lvcbbolg";
  v8 = 0;
  v9 = 4;
  v4 = *(a1 + 80);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 568))(v5, *(a1 + 92), v3, &v10, 0, 0, 4, &v9, &v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v8 != 0;
}

void sub_1DE4D6868(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInControl::SetHardwareReferenceStreamControlValue(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v9 = *"lvcbbolg";
  v8 = a3;
  v4 = *(a1 + 80);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    v7 = *(a2 + 240);
  }

  else
  {
    v7 = 0;
  }

  (*(*v5 + 576))(v5, *(a1 + 92), v7, &v9, 0, 0, 4, &v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE4D693C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInControl::SetPropertyData(HALS_PlugInControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, unsigned int a6, const void *a7, HALS_Client *a8)
{
  v71 = *MEMORY[0x1E69E9840];
  v61 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 14));
  if (!v61)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v68 = "HALS_PlugInControl.cpp";
      v69 = 1024;
      v70 = 314;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v54 = 560947818;
LABEL_99:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v54;
  }

  v59 = a7;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v14))
  {
    v15 = atomic_load(v61 + 40);
    v16 = a8 ? *(a8 + 60) : getpid();
    if (v15 != -1 && v15 != v16)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v68 = "HALS_PlugInControl.cpp";
        v69 = 1024;
        v70 = 315;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::_SetPropertyData: the given process does not own hog mode", buf, 0x12u);
      }

      v54 = 560492391;
      goto LABEL_99;
    }
  }

  v18 = *(this + 5);
  if (v18 == 1986817381 || v18 == 1836414053)
  {
    std::string::basic_string[abi:ne200100]<0>(v65, "HALS_PlugInControl::SetPropertyData");
    v20 = a5;
    v21 = *&a3->mSelector;
    mElement = a3->mElement;
    v24 = *(this + 12);
    v23 = *(this + 13);
    v26 = *(this + 14);
    v25 = *(this + 15);
    v27 = "no control type";
    if (v25 == 1)
    {
      v27 = "software control";
    }

    if (v25)
    {
      v28 = v27;
    }

    else
    {
      v28 = "external driver";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v28);
    v58 = v23;
    a5 = v20;
    LogVolumeChangeForServerSideControl(v65, a2, v21, mElement, a4, v20, v26, v24, v58, __p);
    if (v64 < 0)
    {
      operator delete(__p[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    v29 = *(this + 4);
    mSelector = a3->mSelector;
    mScope = a3->mScope;
    v32 = a3->mElement;
    kdebug_trace();
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = a3->mSelector;
  if (v34 > 1818457189)
  {
    if (v34 > 1935962741)
    {
      if (v34 == 1936745334)
      {
        v48 = *(this + 10);
        v36 = *(v48 + 416);
        v37 = *(v48 + 424);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(this + 23);
        v39 = a3;
        if (a8)
        {
          v40 = *(a8 + 60);
        }

        else
        {
          v40 = 0;
        }

        goto LABEL_88;
      }

      if (v34 == 1935962742)
      {
        v43 = *(this + 10);
        v36 = *(v43 + 416);
        v37 = *(v43 + 424);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(this + 23);
        v39 = a3;
        if (a8)
        {
          v40 = *(a8 + 60);
        }

        else
        {
          v40 = 0;
        }

        goto LABEL_88;
      }
    }

    else
    {
      if (v34 == 1818457190)
      {
        v46 = *(this + 10);
        v36 = *(v46 + 416);
        v37 = *(v46 + 424);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(this + 23);
        v39 = a3;
        if (a8)
        {
          v40 = *(a8 + 60);
        }

        else
        {
          v40 = 0;
        }

        goto LABEL_88;
      }

      if (v34 == 1935893353)
      {
        v41 = *(this + 10);
        v36 = *(v41 + 416);
        v37 = *(v41 + 424);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(this + 23);
        v39 = a3;
        if (a8)
        {
          v40 = *(a8 + 60);
        }

        else
        {
          v40 = 0;
        }

        goto LABEL_88;
      }
    }
  }

  else if (v34 > 1818453109)
  {
    if (v34 == 1818453110)
    {
      v47 = *(this + 10);
      v36 = *(v47 + 416);
      v37 = *(v47 + 424);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = *(this + 23);
      v39 = a3;
      if (a8)
      {
        v40 = *(a8 + 60);
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_88;
    }

    if (v34 == 1818456950)
    {
      v42 = *(this + 10);
      v36 = *(v42 + 416);
      v37 = *(v42 + 424);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = *(this + 23);
      v39 = a3;
      if (a8)
      {
        v40 = *(a8 + 60);
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_88;
    }
  }

  else
  {
    if (v34 == 1650685548)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v68 = "HALS_PlugInControl.cpp";
          v69 = 1024;
          v70 = 346;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::SetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", buf, 0x12u);
        }

        v57 = __cxa_allocate_exception(0x10uLL);
        *v57 = off_1F5991DD8;
        v57[2] = 561211770;
      }

      if (*(this + 5) == 1702259059)
      {
        v44 = *a5;
        HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a8);
        goto LABEL_90;
      }

      v50 = *(this + 10);
      v36 = *(v50 + 416);
      v37 = *(v50 + 424);
      v39 = a3;
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = *(this + 23);
      if (a8)
      {
        v40 = *(a8 + 60);
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_88;
    }

    if (v34 == 1651272546)
    {
      v35 = *(this + 10);
      v36 = *(v35 + 416);
      v37 = *(v35 + 424);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = *(this + 23);
      v39 = a3;
      if (a8)
      {
        v40 = *(a8 + 60);
      }

      else
      {
        v40 = 0;
      }

LABEL_88:
      (*(*v36 + 576))(v36, v38, v40, v39, a6, v59, a4, a5);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      goto LABEL_90;
    }
  }

  if (HALS_Control::HasProperty(this, a2, a3))
  {
    HALS_Control::SetPropertyData(this, a2, a3, a4, a5, a6, v59, a8);
    goto LABEL_90;
  }

  if ((*(*(this + 9) + 24))(this + 72, v34))
  {
    v49 = *(this + 10);
    v36 = *(v49 + 416);
    v37 = *(v49 + 424);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = *(this + 23);
    v39 = a3;
    if (a8)
    {
      v40 = *(a8 + 60);
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_88;
  }

LABEL_90:
  if (v33)
  {
    v51 = *(this + 4);
    v52 = a3->mSelector;
    kdebug_trace();
  }

  HALS_ObjectMap::ReleaseObject(v61, v45);
  v53 = *MEMORY[0x1E69E9840];
}

void sub_1DE4D7290(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, HALS_ObjectMap *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  HALS_ObjectMap::ReleaseObject(a14, a2);
  _Unwind_Resume(a1);
}

void HALS_PlugInControl::GetPropertyData(HALS_PlugInControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, uint64_t *a6, uint64_t a7, _DWORD *a8, HALS_Client *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (mSelector <= 1818457189)
  {
    if (mSelector > 1818453105)
    {
      if (mSelector <= 1818453109)
      {
        if (mSelector == 1818453106)
        {
          v57 = *(this + 10);
          v19 = *(v57 + 416);
          v20 = *(v57 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(this + 23);
          if (a9)
          {
            v22 = *(a9 + 60);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_153;
        }

        if (mSelector != 1818453107)
        {
          goto LABEL_115;
        }

        if (a4 >= 4 && a7 >= 4)
        {
          *a6 = *a8;
        }

        v39 = *(this + 10);
        v40 = *(v39 + 416);
        v41 = *(v39 + 424);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = *(this + 23);
        if (a9)
        {
          v43 = *(a9 + 60);
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        if (mSelector == 1818453110)
        {
          v50 = *(this + 10);
          v19 = *(v50 + 416);
          v20 = *(v50 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(this + 23);
          if (a9)
          {
            v22 = *(a9 + 60);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_153;
        }

        if (mSelector != 1818456932)
        {
          if (mSelector == 1818456950)
          {
            v31 = *(this + 10);
            v19 = *(v31 + 416);
            v20 = *(v31 + 424);
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v21 = *(this + 23);
            if (a9)
            {
              v22 = *(a9 + 60);
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_153;
          }

          goto LABEL_115;
        }

        if (a4 >= 4 && a7 >= 4)
        {
          *a6 = *a8;
        }

        v55 = *(this + 10);
        v40 = *(v55 + 416);
        v41 = *(v55 + 424);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = *(this + 23);
        if (a9)
        {
          v43 = *(a9 + 60);
        }

        else
        {
          v43 = 0;
        }
      }

      (*(*v40 + 568))(v40, v42, v43, a3, 0, 0, a4, a5, a6);
      if (v41)
      {
        v63 = *MEMORY[0x1E69E9840];
        v64 = v41;
LABEL_158:

        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        return;
      }

LABEL_161:
      v66 = *MEMORY[0x1E69E9840];
      return;
    }

    if (mSelector <= 1651272547)
    {
      if (mSelector != 1650685548)
      {
        if (mSelector == 1651272546)
        {
          v38 = *(this + 10);
          v19 = *(v38 + 416);
          v20 = *(v38 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(this + 23);
          if (a9)
          {
            v22 = *(a9 + 60);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_153;
        }

        goto LABEL_115;
      }

      if (!a4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInControl.cpp";
          v70 = 1024;
          v71 = 251;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::GetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      if (*(this + 5) != 1702259059)
      {
        v62 = *(this + 10);
        v19 = *(v62 + 416);
        v20 = *(v62 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_153;
      }

      *a6 = HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a9);
      v29 = 4;
    }

    else
    {
      if (mSelector == 1651272548)
      {
        v49 = *(this + 10);
        v19 = *(v49 + 416);
        v20 = *(v49 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_153;
      }

      if (mSelector == 1668049771)
      {
        v54 = *(this + 10);
        v19 = *(v54 + 416);
        v20 = *(v54 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_153;
      }

      if (mSelector != 1668641652)
      {
        goto LABEL_115;
      }

      v23 = a4 / 0xC;
      if (*(this + 26) < a4 / 0xC)
      {
        v23 = *(this + 26);
      }

      if (v23)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          if (v25 < *(this + 26))
          {
            v26 = a6 + v24;
            v27 = (*(this + 12) + v24);
            v28 = *v27;
            *(v26 + 2) = *(v27 + 2);
            *v26 = v28;
          }

          ++v25;
          v24 += 12;
        }

        while (12 * v23 != v24);
      }

      v29 = 12 * v23;
    }

    goto LABEL_125;
  }

  if (mSelector <= 1935893352)
  {
    if (mSelector <= 1851878763)
    {
      if (mSelector == 1818457190)
      {
        v53 = *(this + 10);
        v19 = *(v53 + 416);
        v20 = *(v53 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_153;
      }

      if (mSelector != 1819173229)
      {
        goto LABEL_115;
      }
    }

    else if (mSelector != 1851878764)
    {
      if (mSelector != 1852400499)
      {
        if (mSelector == 1935892841)
        {
          v30 = *(this + 10);
          v19 = *(v30 + 416);
          v20 = *(v30 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(this + 23);
          if (a9)
          {
            v22 = *(a9 + 60);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_153;
        }

        goto LABEL_115;
      }

      goto LABEL_69;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInControl.cpp";
        v70 = 1024;
        v71 = 187;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
      }

      v67 = __cxa_allocate_exception(0x10uLL);
      *v67 = off_1F5991DD8;
      v67[2] = 561211770;
    }

    v33 = *(this + 10);
    v34 = *(v33 + 416);
    v35 = *(v33 + 424);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = *(this + 23);
    if (a9)
    {
      v37 = *(a9 + 60);
    }

    strcpy(buf, "manlbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*v34 + 568))(v34);
    *a6 = 0;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    v29 = 8;
LABEL_125:
    *a5 = v29;
    goto LABEL_161;
  }

  if (mSelector > 1935962741)
  {
    switch(mSelector)
    {
      case 0x73647276:
        v52 = *(this + 10);
        v19 = *(v52 + 416);
        v20 = *(v52 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_153;
      case 0x73706363:
        v56 = *(this + 10);
        v19 = *(v56 + 416);
        v20 = *(v56 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_153;
      case 0x73706376:
        v32 = *(this + 10);
        v19 = *(v32 + 416);
        v20 = *(v32 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_153;
    }

    goto LABEL_115;
  }

  switch(mSelector)
  {
    case 0x73636369:
      v51 = *(this + 10);
      v19 = *(v51 + 416);
      v20 = *(v51 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(this + 23);
      if (a9)
      {
        v22 = *(a9 + 60);
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_153;
    case 0x7363696E:
LABEL_69:
      v44 = *(this + 10);
      v45 = *(v44 + 416);
      v46 = *(v44 + 424);
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = *(this + 23);
      if (a9)
      {
        v48 = *(a9 + 60);
      }

      else
      {
        v48 = 0;
      }

      strcpy(buf, "nicsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*v45 + 568))(v45, v47, v48, buf, a7, a8, a4, a5, a6);
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      goto LABEL_161;
    case 0x73647272:
      v18 = *(this + 10);
      v19 = *(v18 + 416);
      v20 = *(v18 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(this + 23);
      if (a9)
      {
        v22 = *(a9 + 60);
      }

      else
      {
        v22 = 0;
      }

LABEL_153:
      (*(*v19 + 568))(v19, v21, v22, a3, a7, a8, a4, a5, a6);
LABEL_156:
      if (v20)
      {
        v65 = *MEMORY[0x1E69E9840];
        v64 = v20;
        goto LABEL_158;
      }

      goto LABEL_161;
  }

LABEL_115:
  if (!HALS_Control::HasProperty(this, a2, a3))
  {
    if (!(*(*(this + 9) + 24))(this + 72, mSelector))
    {
      goto LABEL_161;
    }

    v59 = *(this + 10);
    v60 = *(v59 + 416);
    v20 = *(v59 + 424);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a9)
    {
      v61 = *(a9 + 60);
    }

    else
    {
      v61 = 0;
    }

    (*(*v60 + 568))(v60, *(this + 23), v61, a3, a7, a8, a4, a5, a6);
    goto LABEL_156;
  }

  v58 = *MEMORY[0x1E69E9840];

  HALS_Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE4D81E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInControl::GetPropertyDataSize(HALS_PlugInControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  v13 = 8;
  if (mSelector > 1851878763)
  {
    switch(mSelector)
    {
      case 0x6E616D6C:
        return v13;
      case 0x73636169:
        v21 = *(this + 10);
        v15 = *(v21 + 416);
        v16 = *(v21 + 424);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(this + 23);
        if (a6)
        {
          v18 = *(a6 + 60);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_34;
      case 0x73636369:
        v14 = *(this + 10);
        v15 = *(v14 + 416);
        v16 = *(v14 + 424);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(this + 23);
        if (a6)
        {
          v18 = *(a6 + 60);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_34;
    }
  }

  else
  {
    switch(mSelector)
    {
      case 0x626C6B62:
        v19 = *(this + 10);
        v15 = *(v19 + 416);
        v16 = *(v19 + 424);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(this + 23);
        if (a6)
        {
          v18 = *(a6 + 60);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_34;
      case 0x63757374:
        return (12 * *(this + 26));
      case 0x6C6E616D:
        return v13;
    }
  }

  if (!HALS_Control::HasProperty(this, a2, a3))
  {
    if ((*(*(this + 9) + 24))(this + 72, mSelector))
    {
      v22 = *(this + 10);
      v15 = *(v22 + 416);
      v16 = *(v22 + 424);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 23);
      if (a6)
      {
        v18 = *(a6 + 60);
      }

      else
      {
        v18 = 0;
      }

LABEL_34:
      v13 = (*(*v15 + 560))(v15, v17, v18, a3, a4, a5);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      return v13;
    }

    return 0;
  }

  return HALS_Control::GetPropertyDataSize(this, a2, a3);
}

void sub_1DE4D858C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInControl::IsPropertySettable(HALS_PlugInControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (a4)
  {
    v7 = *(a4 + 60);
  }

  else
  {
    v7 = 0;
  }

  mSelector = a3->mSelector;
  if (mSelector <= 1818456949)
  {
    if (mSelector != 1650685548)
    {
      if (mSelector == 1668641652)
      {
        return 0;
      }

      if (mSelector != 1818453110)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if (mSelector > 1935962741)
    {
      v9 = mSelector == 1936745334;
      v10 = 1935962742;
    }

    else
    {
      v9 = mSelector == 1818456950;
      v10 = 1935893353;
    }

    if (!v9 && mSelector != v10)
    {
LABEL_10:
      if (!HALS_Control::HasProperty(this, a2, a3))
      {
        if ((*(*(this + 9) + 24))(this + 72, mSelector))
        {
          v11 = *(this + 10);
          v12 = *(v11 + 416);
          v13 = *(v11 + 424);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

LABEL_29:
          v22 = (*(*v12 + 552))(v12, *(this + 23), v7, a3);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          return v22;
        }

        return 0;
      }

      goto LABEL_34;
    }
  }

  if (!HALS_Control::HasProperty(this, a2, a3))
  {
    return 0;
  }

  v15 = *(this + 23);
  if (v15)
  {
    v16 = *(this + 10);
    v17 = *(v16 + 416);
    v18 = *(v16 + 424);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(this + 23);
    }

    v19 = (*(*v17 + 544))(v17, v15, v7, a3);
    v20 = v19;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if ((v20 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (!v19)
    {
      goto LABEL_34;
    }

    v21 = *(this + 10);
    v12 = *(v21 + 416);
    v13 = *(v21 + 424);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_29;
  }

LABEL_34:

  return HALS_Control::IsPropertySettable(this, a2, a3);
}

void sub_1DE4D8854(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_PlugInControl::HasProperty(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = *a3;
  if (v5 == 1668641652)
  {
    return *(a1 + 104) != 0;
  }

  if (v5 == 1851878764 || v5 == 1819173229)
  {
    v8 = *(a1 + 80);
    v9 = *(v8 + 416);
    v10 = *(v8 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 92);
    if (a4)
    {
      v12 = *(a4 + 240);
    }

    else
    {
      v12 = 0;
    }

    v22 = 0x676C6F626C6E616DLL;
    v23 = 0;
    v15 = (*(*v9 + 544))(v9, v11, v12, &v22);
    if (v10)
    {
      v16 = v10;
LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    HasProperty = HALS_Control::HasProperty(a1, a2, a3);
    if (HasProperty)
    {
      return 1;
    }

    if (!(*(*(a1 + 72) + 24))(a1 + 72, v5))
    {
      return 0;
    }

    v18 = *(a1 + 80);
    v19 = *(v18 + 416);
    v20 = *(v18 + 424);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v21 = *(a4 + 240);
    }

    else
    {
      v21 = 0;
    }

    v15 = (*(*v19 + 544))(v19, *(a1 + 92), v21, a3);
    if (v20)
    {
      v16 = v20;
      goto LABEL_17;
    }
  }

  return v15;
}

void sub_1DE4D8A28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInControl::Activate(HALS_PlugInControl *this)
{
  HALS_PlugInControl::RefreshCache(this);
  if (!*(this + 15))
  {
    (*(*(this + 9) + 32))();
  }

  HALS_Object::Activate(this, v2);
}

uint64_t HALS_PlugInControl::RefreshCache(HALS_PlugInControl *this)
{
  if (*(this + 15) == 1)
  {
    Class = 1702259059;
    BaseClass = 1650685548;
    v4 = 1869968496;
  }

  else
  {
    v5 = *(this + 10);
    v6 = *(v5 + 416);
    v7 = *(v5 + 424);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Class = HALS_UCPlugInBase::Object_GetClass(v6, *(this + 23));
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = *(this + 10);
    v9 = *(v8 + 416);
    v10 = *(v8 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    BaseClass = HALS_UCPlugInBase::Object_GetBaseClass(v9, *(this + 23));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v11 = *(this + 10);
    v12 = *(v11 + 416);
    v13 = *(v11 + 424);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(this + 23);
    v31 = 0x676C6F6263736370;
    v32 = 0;
    v33 = 0;
    (*(*v12 + 568))(v12);
    v4 = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v15 = *(this + 10);
    v16 = *(v15 + 416);
    v17 = *(v15 + 424);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(this + 23);
    v31 = 0x676C6F6263656C6DLL;
    v32 = 0;
    v33 = 0;
    (*(*v16 + 568))(v16);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZN18HALS_PlugInControl12RefreshCacheEv_block_invoke;
  v22[3] = &unk_1E86761B8;
  v22[4] = &v27;
  v22[5] = this;
  v23 = Class;
  v24 = BaseClass;
  v25 = v4;
  v26 = 0;
  v19 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v19, v22);
  v20 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);
  return v20;
}

void sub_1DE4D8D98(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4D8CD0);
}

void sub_1DE4D8DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN18HALS_PlugInControl12RefreshCacheEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  if (v1[5] != v2)
  {
    v1[5] = v2;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v3 = *(result + 52);
  if (v1[6] != v3)
  {
    v1[6] = v3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v4 = *(result + 56);
  if (v1[12] != v4)
  {
    v1[12] = v4;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v5 = *(result + 60);
  if (v1[13] != v5)
  {
    v1[13] = v5;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t AMCP::Log::AMCP_Scope_Registry::initialize(AMCP::Log::AMCP_Scope_Registry *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v10[0] = &unk_1F59747B8;
  v11 = v10;
  if (atomic_load_explicit(&StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_static_container_class_created, memory_order_acquire) != -1)
  {
    v9 = &v7;
    v8 = &v9;
    std::__call_once(&StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_static_container_class_created, &v8, std::__call_once_proxy[abi:ne200100]<std::tuple<StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::init_static_container_class(void)::{lambda(void)#1} &&>>);
  }

  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    v2 = atomic_load(StaticContainerBase::s_statics_initializable);
    if (v2)
    {
      v3 = StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_static_container_init_mutex;
      std::mutex::lock(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_static_container_init_mutex);
      v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v4 & 1) == 0)
      {
        if (!v11)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v11 + 48))(v11);
        atomic_store(1u, StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      }

      std::mutex::unlock(v3);
    }
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4D936C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::mutex::unlock(v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Log::AMCP_Scope_Registry::initialize(void)::$_0,std::allocator<AMCP::Log::AMCP_Scope_Registry::initialize(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3Log19AMCP_Scope_Registry10initializeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE4D9624(_Unwind_Exception *a1)
{
  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Log::Scope>::__on_zero_shared(uint64_t a1)
{
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 32), 0);
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
  }
}

void std::__shared_ptr_emplace<AMCP::Log::Scope>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5974878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Log::AMCP_Scope_Registry>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<AMCP::Log::AMCP_Scope_Registry>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5974828;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE4D9878(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void *AMCP::CF::create_url_from_path_relative_to_base(AMCP::CF *this, const applesauce::CF::URLRef *a2, const applesauce::CF::StringRef *a3, BOOL a4, CFURLPathStyle a5)
{
  result = MEMORY[0x1E12C0650](0, a3, 0, 1, a2);
  *this = result;
  if (result)
  {
    v7 = CFGetTypeID(result);
    result = CFURLGetTypeID();
    if (v7 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1DE4D992C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<applesauce::CF::URLRef,applesauce::CF::URLRef&,applesauce::CF::URLRef*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

uint64_t ShortTermLinearInterpolationResampler::SetRate(uint64_t this, double a2)
{
  if (a2 < 0.0 || a2 > 32.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  *(this + 40) = a2;
  *(this + 24) = vcvtd_n_s64_f64(a2, 0x20uLL);
  return this;
}

uint64_t ShortTermLinearInterpolationResampler::PreFlight(uint64_t this, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = *a3;
  if (*this == 1)
  {
    v10 = *a2;
    if (v9 < *a2)
    {
      v10 = *a3;
    }

    *a3 = v10;
    *a2 = v10;
    return this;
  }

  if (v9 > 0x400000)
  {
    CAAssertRtn();
LABEL_26:
    CAAssertRtn();
    goto LABEL_27;
  }

  if (v9)
  {
    v12 = *(this + 16);
    v11 = *(this + 24);
    v13 = v12 + 0x80000000;
    v14 = v12 + 0x80000000 + v11 * v9;
    v15 = HIDWORD(v14);
    v16 = *a2;
    if (v16 < HIDWORD(v14))
    {
      if (v16 <= 0x400000)
      {
        v17 = ~v12 + (v16 << 32) + v11;
        if (v17 < 0)
        {
          LODWORD(v19) = 0;
          *a3 = 0;
          goto LABEL_22;
        }

        v18 = v17 / v11;
        if (v9 >= v18)
        {
          *a3 = v18;
          if (v18)
          {
            v19 = (v13 + v11 * v18) >> 32;
          }

          else
          {
            LODWORD(v19) = 0;
          }

LABEL_22:
          if (v19 < *a2)
          {
            *a2 = v19;
          }

          return this;
        }

LABEL_28:
        v22 = CAVerboseAbort();
        return ShortTermLinearInterpolationResampler::PushConvertFloat(v22, v23, v24, v25, v26, v27, v28, v29, a9);
      }

      goto LABEL_26;
    }

    *a2 = HIDWORD(v14);
    if (v14 > 0x400000FFFFFFFFLL)
    {
LABEL_27:
      CAAssertRtn();
      goto LABEL_28;
    }
  }

  else
  {
    v15 = 0;
    *a2 = 0;
    v12 = *(this + 16);
    v11 = *(this + 24);
  }

  v20 = ~v12 + (v15 << 32) + v11;
  if (v20 < 0)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = v20 / v11;
  }

  if (v21 < *a3)
  {
    *a3 = v21;
  }

  return this;
}

uint64_t ShortTermLinearInterpolationResampler::PushConvertFloat(ShortTermLinearInterpolationResampler *this, float *__src, float *a3, float *__dst, float *a5, unsigned int *a6, unsigned int *a7, uint64_t __n, unsigned int a9)
{
  result = 4294967246;
  if (!__src)
  {
    return result;
  }

  if (!__dst)
  {
    return result;
  }

  v12 = __n;
  if (a3)
  {
    if (!a5)
    {
      return result;
    }
  }

  if (*this == 1)
  {
    v18 = *a7;
    *a6 = *a7;
  }

  else
  {
    ShortTermLinearInterpolationResampler::PreFlight(this, a6, a7, __dst, a5, a6, a7, __n, v33);
    v18 = *a7;
    if (*a7 != *a6)
    {
      v22 = ((*a6 - 1) * 4294967300.0 / (v18 - 1));
      if (a3)
      {
        if (v18)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v25 = vcvts_n_f32_u64(v23, 0x20uLL);
            v26 = HIDWORD(v23) * v12 + v12;
            __dst[v24] = __src[HIDWORD(v23) * v12] + (v25 * (__src[v26] - __src[HIDWORD(v23) * v12]));
            a5[v24] = a3[HIDWORD(v23) * v12] + (v25 * (a3[v26] - a3[HIDWORD(v23) * v12]));
            v23 += v22;
            v24 += a9;
            --v18;
          }

          while (v18);
        }
      }

      else if (v18)
      {
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = __src[HIDWORD(v30) * v12];
          __dst[v29] = v31 + (vcvts_n_f32_u64(v30, 0x20uLL) * (__src[HIDWORD(v30) * v12 + v12] - v31));
          v30 += v22;
          v29 += a9;
          --v18;
        }

        while (v18);
      }

      goto LABEL_29;
    }
  }

  if (v12 == 1 && a9 == 1)
  {
    v19 = 4 * v18;
    memcpy(__dst, __src, v19);
    if (a3)
    {
      memcpy(a5, a3, v19);
    }
  }

  else if (a3)
  {
    if (v18)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        __dst[v21] = __src[v20];
        a5[v21] = a3[v20];
        v20 += v12;
        v21 += a9;
        --v18;
      }

      while (v18);
    }
  }

  else if (v18)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      __dst[v28] = __src[v27];
      v27 += v12;
      v28 += a9;
      --v18;
    }

    while (v18);
  }

LABEL_29:
  if (*this)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(this + 2) + *(this + 3) * *a7 + (-*a6 << 32);
  }

  result = 0;
  *(this + 2) = v32;
  return result;
}

void AMCP::Core::System_Core_Keeper::~System_Core_Keeper(AMCP::Core::System_Core_Keeper *this)
{
  *this = &unk_1F59748E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59748E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(void *a1, void *a2, uint64_t *a3, void *a4)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a2, a4))
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a2, a4);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2 + 5, a4);
    v9 = v8[5];
    os_unfair_lock_lock((v9 + 64));
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_27;
    }

    v11 = *(v9 + 40);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = *(v9 + 32);
        v10 = *a3;
        if (v13)
        {
          if (v13 != v10)
          {
            v14 = *(v9 + 56);
            *(v9 + 48) = 0;
            *(v9 + 56) = 0;
            if (v14)
            {
              std::__shared_weak_count::__release_weak(v14);
            }

            if (*(v9 + 88))
            {
              v16 = *a3;
              v15 = a3[1];
              if (v15)
              {
                atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
              }

              v17 = *(v9 + 56);
              *(v9 + 48) = v16;
              *(v9 + 56) = v15;
              if (!v17)
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (*(v9 + 104) == 1)
              {
                *(v9 + 104) = 0;
              }

              v22 = *a3;
              v21 = a3[1];
              if (v21)
              {
                atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
              }

              v17 = *(v9 + 40);
              *(v9 + 32) = v22;
              *(v9 + 40) = v21;
              if (!v17)
              {
                goto LABEL_26;
              }
            }

            std::__shared_weak_count::__release_weak(v17);
          }

LABEL_26:
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_27:
          os_unfair_lock_unlock((v9 + 64));
          v20 = v8[6];
          *a1 = v8[5];
          a1[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          }

          return;
        }
      }

      else
      {
        v10 = *a3;
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = a3[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    v19 = *(v9 + 40);
    *(v9 + 32) = v10;
    *(v9 + 40) = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    if (*(v9 + 104) == 1)
    {
      *(v9 + 104) = 0;
    }

    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (*a3)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1DE4DA350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (*(&a11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a11 + 1));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::shared_ptr<AMCP::Graph::Timebase>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

AMCP::IO_Core::Device_Timebase **std::unique_ptr<AMCP::IO_Core::Device_Timebase>::~unique_ptr[abi:ne200100](AMCP::IO_Core::Device_Timebase **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AMCP::IO_Core::Device_Timebase::~Device_Timebase(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase *,std::shared_ptr<AMCP::Graph::Timebase>::__shared_ptr_default_delete<AMCP::Graph::Timebase,AMCP::IO_Core::Device_Timebase>,std::allocator<AMCP::IO_Core::Device_Timebase>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP5Graph8TimebaseEE27__shared_ptr_default_deleteIS3_NS1_7IO_Core15Device_TimebaseEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

AMCP::IO_Core::Device_Timebase *std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase *,std::shared_ptr<AMCP::Graph::Timebase>::__shared_ptr_default_delete<AMCP::Graph::Timebase,AMCP::IO_Core::Device_Timebase>,std::allocator<AMCP::IO_Core::Device_Timebase>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AMCP::IO_Core::Device_Timebase::~Device_Timebase(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase *,std::shared_ptr<AMCP::Graph::Timebase>::__shared_ptr_default_delete<AMCP::Graph::Timebase,AMCP::IO_Core::Device_Timebase>,std::allocator<AMCP::IO_Core::Device_Timebase>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
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

void AMCP::IOAudio1::Stream::~Stream(AMCP::IOAudio1::Stream *this)
{
  AMCP::IOAudio1::Stream::~Stream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5974958;
  AMCP::Core::Broker::destroy_core(*(*(*(*(this + 1) + 16) + 32) + 16), *(this + 4));
  *(this + 4) = 0;

  AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(this);
}

double AMCP::IOAudio1::make_sample_rate_from_dictionary(AMCP::IOAudio1 *this, const applesauce::CF::DictionaryRef *a2, const __CFString *a3)
{
  if (!this)
  {
    result = 0.0;
    if (!a2)
    {
      return result;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_26:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(this);
  if (a2)
  {
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, this, a2);
    if (v16 == 1)
    {
      v5 = cf;
      if (cf)
      {
        CFRetain(cf);
        CFRelease(v5);
      }
    }

    else
    {
      v5 = 0;
    }

    CFRelease(this);
    if (!v5)
    {
      return 0.0;
    }
  }

  else
  {
    v5 = this;
  }

  LODWORD(cf) = 0;
  v14 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v14)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&cf, v5, @"IOAudioSampleRateWholeNumber", &v14);
  v8 = cf;
  if (!cf)
  {
    goto LABEL_25;
  }

  v9 = applesauce::CF::convert_to<unsigned int,0>(cf);
  CFRelease(v8);
  if (v14)
  {
    CFRelease(v14);
  }

  LODWORD(cf) = 0;
  v14 = CFNumberCreate(0, kCFNumberIntType, &cf);
  if (!v14)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&cf, v5, @"IOAudioSampleRateFraction", &v14);
  v10 = cf;
  if (!cf)
  {
LABEL_25:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_26;
  }

  v11 = applesauce::CF::convert_to<unsigned int,0>(cf);
  CFRelease(v10);
  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v5);
  return v11 / 4294967300.0 + v9;
}

void AMCP::IOAudio1::get_stream_format(AMCP::IOAudio1 *this, AMCP::IOAudio1 **a2, CFDictionaryRef theDict)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    goto LABEL_17;
  }

  v5 = applesauce::CF::details::at_key<__CFString const*>(theDict, @"IOAudioStreamFormat");
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
LABEL_17:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = applesauce::CF::DictionaryRef::from_get(&v24, v5);
  if (!v24)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      v26 = "IOAudio1_Stream.cpp";
      v27 = 1024;
      v28 = 275;
      v29 = 2080;
      v30 = "(raw_current_format.is_valid()) == false";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to find the current format for a stream", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "failed to find the current format for a stream");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v31 = "CA::StreamDescription AMCP::IOAudio1::get_stream_format(const CF::Dictionary &, const CF::Dictionary &)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio1/IOAudio1_Stream.cpp";
    v33 = 275;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  AMCP::IOAudio1::make_format_from_dictionary(this, &v24);
  AMCP::IOAudio1::make_sample_rate_from_dictionary(v24, @"IOAudioSampleRate", v7);
  *this = AMCP::IOAudio1::make_sample_rate_from_dictionary(*a2, @"IOAudioSampleRate", v8);
  if (v24)
  {
    CFRelease(v24);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void AMCP::IOAudio1::make_format_from_dictionary(AMCP::IOAudio1 *this, const __CFDictionary **a2)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_96;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamSampleFormat", &cf);
  v4 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v5 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  *(this + 2) = v5;
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamFormatFlags", &cf);
  v6 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  *(this + 3) = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v33 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v33, "Could not construct");
    __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamBytesPerPacket", &cf);
  v7 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  *(this + 4) = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Could not construct");
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamFramesPerPacket", &cf);
  v8 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v43 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  *(this + 5) = v43;
  CFRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v35, "Could not construct");
    __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamNumChannels", &cf);
  v9 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v10 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  *(this + 7) = v10;
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v36, "Could not construct");
    __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamBitDepth", &cf);
  v11 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v12 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  *(this + 8) = v12;
  CFRelease(v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 1936289396;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "Could not construct");
    __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamNumericRepresentation", &cf);
  v13 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v14 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  v42 = v14 == 1718382452;
  v15 = v14 == 1936289396;
  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = v12;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v38, "Could not construct");
    __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamBitWidth", &cf);
  v16 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v17 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v16);
  if (cf)
  {
    CFRelease(cf);
  }

  v18 = v17 == v12;
  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
    __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamAlignment", &cf);
  v19 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v20 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v19);
  if (cf)
  {
    CFRelease(cf);
  }

  v21 = v20 == 1;
  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "Could not construct");
    __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamByteOrder", &cf);
  v22 = valuePtr;
  if (!valuePtr)
  {
    goto LABEL_95;
  }

  v23 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v22);
  if (cf)
  {
    CFRelease(cf);
  }

  v24 = v23 == 0;
  if (!*a2)
  {
    goto LABEL_95;
  }

  LODWORD(valuePtr) = 1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, "Could not construct");
    __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *a2, @"IOAudioStreamIsMixable", &cf);
  v25 = valuePtr;
  if (!valuePtr)
  {
LABEL_95:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_96:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v26 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v25);
  if (cf)
  {
    CFRelease(cf);
  }

  v27 = 2 * v24;
  if (v5 == 1819304813)
  {
    v28 = (4 * v15) | v42 | (8 * v18) | (16 * v21) | ((v26 == 0) << 6) | v27;
    if (!v28)
    {
      v28 = 0x80000000;
    }

    v29 = v10 * (v17 >> 3);
    *(this + 3) = v28;
    *(this + 4) = v29;
    *(this + 5) = 1;
    *(this + 6) = v29;
  }

  else if (v5 == 1667326771)
  {
    *(this + 3) = v27 | 0x4C;
    *(this + 4) = 4 * v43;
    *(this + 3) = 0x200000000;
    *(this + 8) = 16;
  }
}

BOOL AMCP::IOAudio1::get_stream_direction(CFDictionaryRef theDict, const applesauce::CF::DictionaryRef *a2)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_9;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v6, theDict, @"IOAudioStreamDirection");
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

  v3 = applesauce::CF::convert_to<unsigned int,0>(v6) == 1;
  CFRelease(v2);
  return v3;
}

uint64_t AMCP::IOAudio1::get_stream_starting_channel(CFDictionaryRef theDict, const applesauce::CF::DictionaryRef *a2)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_9;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v6, theDict, @"IOAudioStreamStartingChannelNumber");
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

void AMCP::IOAudio1::Stream::create_from_service_list(uint64_t a1, uint64_t a2, io_registry_entry_t *a3, io_registry_entry_t *a4)
{
  v20 = 0;
  v4 = 0uLL;
  v19 = 0u;
  v18 = 0;
  v17 = 0u;
  if (a3 == a4)
  {
    v12 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  else
  {
    v6 = a3;
    v15 = a1;
    do
    {
      if (!*v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::iokit::get_properties(&v16, *v6);
      if (!v16)
      {
LABEL_23:
        v14 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v14, "Could not construct");
        __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, v16, @"IOAudioStreamAvailable");
      if (v24 == 1)
      {
        if (!cf)
        {
          goto LABEL_23;
        }

        v7 = applesauce::CF::convert_to<BOOL,0>(cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (!v16)
        {
          goto LABEL_23;
        }

        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v21, v16, @"IOAudioStreamAvailable");
        if ((v22 & 1) == 0)
        {
          goto LABEL_15;
        }

        v8 = v21;
        if (!v21)
        {
          goto LABEL_23;
        }

        v9 = applesauce::CF::convert_to<BOOL,0>(v21);
        CFRelease(v8);
        if (v9)
        {
LABEL_15:
          operator new();
        }
      }

      if (v16)
      {
        CFRelease(v16);
      }

      ++v6;
    }

    while (v6 != a4);
    v4 = v19;
    v10 = v20;
    v11 = v17;
    v12 = v18;
    a1 = v15;
  }

  *a1 = v4;
  *(a1 + 16) = v10;
  v20 = 0;
  v19 = 0uLL;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  v18 = 0;
  v17 = 0uLL;
  cf = &v17;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&cf);
  *&v17 = &v19;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::emplace<std::unique_ptr<AMCP::IOAudio1::Stream>>(void *result, char *a2, uint64_t *a3)
{
  v4 = result;
  v5 = result[1];
  v6 = result[2];
  if (v5 >= v6)
  {
    v11 = *result;
    v12 = (&v5[-*result] >> 3) + 1;
    if (v12 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v6 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    v34 = v4;
    if (v15)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
    }

    v17 = (8 * v16);
    v31 = 0;
    v32 = 8 * v16;
    v33 = (8 * v16);
    if (!v16)
    {
      if (v13 < 1)
      {
        if (v11 == a2)
        {
          v23 = 1;
        }

        else
        {
          v23 = v13 >> 2;
        }

        v35 = v4;
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v23);
      }

      v17 = (v17 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v32 = v17;
    }

    v24 = *a3;
    *a3 = 0;
    *v17 = v24;
    *&v33 = v17 + 1;
    memcpy(v17 + 1, a2, v4[1] - a2);
    v25 = *v4;
    v26 = v32;
    *&v33 = v33 + v4[1] - a2;
    v4[1] = a2;
    v27 = a2 - v25;
    v28 = (v26 - (a2 - v25));
    memcpy(v28, v25, v27);
    v29 = *v4;
    *v4 = v28;
    v30 = v4[2];
    *(v4 + 1) = v33;
    *&v33 = v29;
    *(&v33 + 1) = v30;
    v31 = v29;
    v32 = v29;
    return std::__split_buffer<std::unique_ptr<AMCP::IOAudio1::Stream>>::~__split_buffer(&v31);
  }

  else
  {
    v7 = *a3;
    *a3 = 0;
    if (a2 == v5)
    {
      *v5 = v7;
      result[1] = v5 + 8;
    }

    else
    {
      v8 = v5 - 8;
      if (v5 < 8)
      {
        v10 = v5;
      }

      else
      {
        v9 = *v8;
        *v8 = 0;
        *v5 = v9;
        v10 = v5 + 8;
      }

      result[1] = v10;
      if (v5 != a2 + 8)
      {
        v18 = a2 - v5 + 8;
        v19 = v5 - 16;
        do
        {
          v20 = *v19;
          *v19 = 0;
          v21 = *v8;
          *v8 = v20;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          v8 -= 8;
          v19 -= 8;
          v18 += 8;
        }

        while (v18);
      }

      result = *a2;
      *a2 = v7;
      if (result)
      {
        v22 = *(*result + 8);

        return v22();
      }
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<AMCP::IOAudio1::Stream>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void AMCP::IOAudio1::Stream::build_core(AMCP::IOAudio1::Stream *this)
{
  *(this + 4) = AMCP::Core::Broker::reserve_id(*(*(*(*(this + 1) + 16) + 32) + 16));
  *__p = 0u;
  *v8 = 0u;
  v9 = 1065353216;
  v2 = *(this + 5);
  if (v2)
  {
    applesauce::iokit::get_properties(&cf, v2);
    v4 = 0x676C6F6269646E74;
    LODWORD(v5) = 0;
    LODWORD(v10) = *(this + 4);
    AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE4DC6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v6 - 48));
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(int a1, int a2, CFTypeRef cf)
{
  v3 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE4DC95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *AMCP::IOAudio1::Device::get_engine_registry_entries(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void AMCP::IOAudio1::update_stream_core(uint64_t a1, const applesauce::CF::DictionaryRef *a2, uint64_t a3, CFDictionaryRef *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  stream_direction = AMCP::IOAudio1::get_stream_direction(*a4, a2);
  v6.__vftable = 0x676C6F6273646972;
  LODWORD(v6.__imp_.__imp_) = 0;
  LODWORD(valuePtr) = stream_direction;
  AMCP::Core::Operation_Utilities::make_typed_property<AMCP::Direction,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1}>();
}

void sub_1DE4DD700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  __cxa_free_exception(v36);
  applesauce::CF::NumberRef::~NumberRef(&a29);
  applesauce::CF::NumberRef::~NumberRef(&a9);
  applesauce::CF::NumberRef::~NumberRef(&a35);
  applesauce::CF::NumberRef::~NumberRef((v37 - 160));
  _Unwind_Resume(a1);
}

void sub_1DE4DDAA4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = *MEMORY[0x1E69E9840];
  memset(v4, 0, 24);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(v4, a3, a4, (a4 - a3) >> 6);
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE4DDC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(CA::StreamDescription const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
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

void sub_1DE4DDF74(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1::~$_1(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*a1)
  {
    IOObjectRelease(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIN2CA17StreamDescriptionEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597F178;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597F178;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597F178;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(CA::StreamDescription const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>())
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
      std::__function::__value_func<void ()(CA::StreamDescription const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(CA::StreamDescription const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(CA::StreamDescription const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(CA::StreamDescription const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L18update_stream_coreERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefESC_E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1::operator()(uint64_t a1, uint64_t a2)
{
  v182[2] = *MEMORY[0x1E69E9840];
  is_an_available_format = AMCP::Utility::Stream_Format::format_is_an_available_format(a2, *(a1 + 8), *(a1 + 16));
  if (!is_an_available_format)
  {
    v76 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v76 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_an_available_format);
    }

    v78 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v77 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v77)
    {
      atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      v79 = *v78;
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    else
    {
      v79 = *v78;
    }

    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IOAudio1_Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 378;
      *&buf[18] = 2080;
      *&buf[20] = "(format_is_valid) == false";
      _os_log_error_impl(&dword_1DE1F9000, v79, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v156);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v113, "failed to set stream format");
    std::runtime_error::runtime_error(&v158, &v113);
    memset(v160, 0, sizeof(v160));
    v161 = -1;
    v158.__vftable = &unk_1F5992170;
    v159 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v158);
    v163 = "auto AMCP::IOAudio1::update_stream_core(Core::Operation_Set &, const IOKit::Service &, const CF::Dictionary &, const CF::Dictionary &)::(anonymous class)::operator()(const CA::StreamDescription &) const";
    v164 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio1/IOAudio1_Stream.cpp";
    LODWORD(v165) = 378;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v111);
  }

  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v110 = CFStringCreateWithBytes(0, "IOAudioStreamFormat", 19, 0x8000100u, 0);
  if (!v110)
  {
    v81 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v81, "Could not construct");
    __cxa_throw(v81, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = CFStringCreateWithBytes(0, "IOAudioSampleRate", 17, 0x8000100u, 0);
  v6 = v5;
  v148 = v5;
  if (!v5)
  {
    v82 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v82, "Could not construct");
    __cxa_throw(v82, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v5);
  v149 = v6;
  v7 = *a2;
  v8 = CFStringCreateWithBytes(0, "IOAudioSampleRateWholeNumber", 28, 0x8000100u, 0);
  v9 = v8;
  v156 = v8;
  if (!v8)
  {
    v83 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v83, "Could not construct");
    __cxa_throw(v83, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v8);
  v113.__vftable = v9;
  LODWORD(valuePtr) = vcvtmd_u64_f64(v7);
  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v11 = v10;
  v154 = v10;
  if (!v10)
  {
    v84 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v84, "Could not construct");
    __cxa_throw(v84, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v10);
  v113.__vftable = 0;
  v158.__vftable = v9;
  v158.__imp_.__imp_ = v11;
  v155 = 0;
  v12 = CFStringCreateWithBytes(0, "IOAudioSampleRateFraction", 25, 0x8000100u, 0);
  v13 = v12;
  v152 = v12;
  if (!v12)
  {
    v85 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v85, "Could not construct");
    __cxa_throw(v85, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v12);
  valuePtr = v13;
  LODWORD(v147[0]) = ((v7 - floor(v7)) * 4294967300.0);
  v14 = CFNumberCreate(0, kCFNumberIntType, v147);
  v15 = v14;
  cf = v14;
  if (!v14)
  {
    v86 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v86, "Could not construct");
    __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v14);
  valuePtr = 0;
  v159 = v13;
  v160[0] = v15;
  v151 = 0;
  v112[0] = &v158;
  v112[1] = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v112);
  v17 = 0;
  v147[1] = CFDictionaryRef;
  do
  {
    v18 = v160[v17];
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = *(&v158 + v17 * 8 + 16);
    if (v19)
    {
      CFRelease(v19);
    }

    v17 -= 2;
  }

  while (v17 != -4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (v156)
  {
    CFRelease(v156);
  }

  CFRetain(CFDictionaryRef);
  v149 = 0;
  *buf = v6;
  *&buf[8] = CFDictionaryRef;
  v147[2] = 0;
  v20 = CFStringCreateWithBytes(0, "IOAudioStreamNumChannels", 24, 0x8000100u, 0);
  v21 = v20;
  v112[0] = v20;
  if (!v20)
  {
    v87 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v87, "Could not construct");
    __cxa_throw(v87, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v20);
  v158.__vftable = v21;
  LODWORD(v155) = *(a2 + 28);
  v22 = CFNumberCreate(0, kCFNumberIntType, &v155);
  v23 = v22;
  v156 = v22;
  if (!v22)
  {
    v88 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v88, "Could not construct");
    __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v22);
  v158.__vftable = 0;
  *&buf[16] = v21;
  *&buf[24] = v23;
  v113.__vftable = 0;
  v24 = CFStringCreateWithBytes(0, "IOAudioStreamSampleFormat", 25, 0x8000100u, 0);
  v25 = v24;
  v154 = v24;
  if (!v24)
  {
    v89 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v89, "Could not construct");
    __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v24);
  v155 = v25;
  LODWORD(v151) = *(a2 + 8);
  v26 = CFNumberCreate(0, kCFNumberIntType, &v151);
  v27 = v26;
  v152 = v26;
  if (!v26)
  {
    v90 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v90, "Could not construct");
    __cxa_throw(v90, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v26);
  v155 = 0;
  v163 = v25;
  v164 = v27;
  valuePtr = 0;
  v28 = CFStringCreateWithBytes(0, "IOAudioStreamNumericRepresentation", 34, 0x8000100u, 0);
  v29 = v28;
  cf = v28;
  if (!v28)
  {
    v91 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v91, "Could not construct");
    __cxa_throw(v91, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v28);
  v30 = 1936289396;
  v151 = v29;
  v31 = *(a2 + 8);
  if (v31 != 1667326771)
  {
    if (v31 == 1819304813)
    {
      v32 = *(a2 + 12);
      if (v32)
      {
        v30 = 1718382452;
      }

      else if ((v32 & 4) != 0)
      {
        v30 = 1936289396;
      }

      else
      {
        v30 = 1969843828;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  LODWORD(v145) = v30;
  v33 = CFNumberCreate(0, kCFNumberIntType, &v145);
  v34 = v33;
  v146 = v33;
  if (!v33)
  {
    v92 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v92, "Could not construct");
    __cxa_throw(v92, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v33);
  v151 = 0;
  v165 = v29;
  v166 = v34;
  v147[0] = 0;
  v35 = CFStringCreateWithBytes(0, "IOAudioStreamFormatFlags", 24, 0x8000100u, 0);
  v36 = v35;
  v144 = v35;
  if (!v35)
  {
    v93 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v93, "Could not construct");
    __cxa_throw(v93, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v35);
  v37 = 0;
  v145 = v36;
  v38 = *(a2 + 8);
  if (v38 != 1667326771 && v38 != 1819304813)
  {
    v37 = *(a2 + 12);
  }

  LODWORD(v141) = v37;
  v39 = CFNumberCreate(0, kCFNumberIntType, &v141);
  v40 = v39;
  v142 = v39;
  if (!v39)
  {
    v94 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v94, "Could not construct");
    __cxa_throw(v94, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v39);
  v145 = 0;
  v167 = v36;
  v168 = v40;
  v143 = 0;
  v41 = CFStringCreateWithBytes(0, "IOAudioStreamFramesPerPacket", 28, 0x8000100u, 0);
  v42 = v41;
  v140 = v41;
  if (!v41)
  {
    v95 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v95, "Could not construct");
    __cxa_throw(v95, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v41);
  v141 = v42;
  LODWORD(v137) = *(a2 + 20);
  v43 = CFNumberCreate(0, kCFNumberIntType, &v137);
  v44 = v43;
  v138 = v43;
  if (!v43)
  {
    v96 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v96, "Could not construct");
    __cxa_throw(v96, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v43);
  v141 = 0;
  v169 = v42;
  v170 = v44;
  v139 = 0;
  v45 = CFStringCreateWithBytes(0, "IOAudioStreamBytesPerPacket", 27, 0x8000100u, 0);
  v46 = v45;
  v136 = v45;
  if (!v45)
  {
    v97 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v97, "Could not construct");
    __cxa_throw(v97, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v45);
  v137 = v46;
  LODWORD(v133) = *(a2 + 16);
  v47 = CFNumberCreate(0, kCFNumberIntType, &v133);
  v48 = v47;
  v134 = v47;
  if (!v47)
  {
    v98 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v98, "Could not construct");
    __cxa_throw(v98, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v47);
  v137 = 0;
  v171 = v46;
  v172 = v48;
  v135 = 0;
  v49 = CFStringCreateWithBytes(0, "IOAudioStreamBitDepth", 21, 0x8000100u, 0);
  v50 = v49;
  v132 = v49;
  if (!v49)
  {
    v99 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v99, "Could not construct");
    __cxa_throw(v99, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v49);
  v133 = v50;
  LODWORD(v129) = *(a2 + 32);
  v51 = CFNumberCreate(0, kCFNumberIntType, &v129);
  v52 = v51;
  v130 = v51;
  if (!v51)
  {
    v100 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v100, "Could not construct");
    __cxa_throw(v100, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v51);
  v133 = 0;
  v173 = v50;
  v174 = v52;
  v131 = 0;
  v53 = CFStringCreateWithBytes(0, "IOAudioStreamBitWidth", 21, 0x8000100u, 0);
  v54 = v53;
  v128 = v53;
  if (!v53)
  {
    v101 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v101, "Could not construct");
    __cxa_throw(v101, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v53);
  v129 = v54;
  v55 = *(a2 + 8);
  if ((v55 - 778924081) < 3)
  {
    goto LABEL_52;
  }

  if (v55 == 1667326771)
  {
    v56 = 16;
  }

  else
  {
    if (v55 == 1633889587)
    {
LABEL_52:
      v56 = 0;
      goto LABEL_53;
    }

    v56 = (8 * *(a2 + 24)) / *(a2 + 28);
  }

LABEL_53:
  LODWORD(v125) = v56;
  v57 = CFNumberCreate(0, kCFNumberIntType, &v125);
  v58 = v57;
  v126 = v57;
  if (!v57)
  {
    v102 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v102, "Could not construct");
    __cxa_throw(v102, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v57);
  v129 = 0;
  v175 = v54;
  v176 = v58;
  v127 = 0;
  v59 = CFStringCreateWithBytes(0, "IOAudioStreamAlignment", 22, 0x8000100u, 0);
  v60 = v59;
  v124 = v59;
  if (!v59)
  {
    v103 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v103, "Could not construct");
    __cxa_throw(v103, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v59);
  v125 = v60;
  LODWORD(v121) = (*(a2 + 12) >> 4) & 1;
  v61 = CFNumberCreate(0, kCFNumberIntType, &v121);
  v62 = v61;
  v122 = v61;
  if (!v61)
  {
    v104 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v104, "Could not construct");
    __cxa_throw(v104, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v61);
  v125 = 0;
  v177 = v60;
  v178 = v62;
  v123 = 0;
  v63 = CFStringCreateWithBytes(0, "IOAudioStreamByteOrder", 22, 0x8000100u, 0);
  v64 = v63;
  v120 = v63;
  if (!v63)
  {
    v105 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v105, "Could not construct");
    __cxa_throw(v105, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v63);
  v121 = v64;
  LODWORD(v117) = ((*(a2 + 12) >> 1) & 1) == 0;
  v65 = CFNumberCreate(0, kCFNumberIntType, &v117);
  v66 = v65;
  v118 = v65;
  if (!v65)
  {
    v106 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v106, "Could not construct");
    __cxa_throw(v106, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v65);
  v121 = 0;
  v179 = v64;
  v180 = v66;
  v119 = 0;
  v67 = CFStringCreateWithBytes(0, "IOAudioStreamIsMixable", 22, 0x8000100u, 0);
  v68 = v67;
  v116 = v67;
  if (!v67)
  {
    v107 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v107, "Could not construct");
    __cxa_throw(v107, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v67);
  v117 = v68;
  v157 = ((*(a2 + 12) >> 6) & 1) == 0;
  v69 = CFNumberCreate(0, kCFNumberIntType, &v157);
  v70 = v69;
  v114 = v69;
  if (!v69)
  {
    v108 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v108, "Could not construct");
    __cxa_throw(v108, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v69);
  v117 = 0;
  v181 = v68;
  v182[0] = v70;
  v115 = 0;
  v111[0] = buf;
  v111[1] = 12;
  v71 = applesauce::CF::details::make_CFDictionaryRef(v111);
  for (i = 0; i != -24; i -= 2)
  {
    v73 = v182[i];
    if (v73)
    {
      CFRelease(v73);
    }

    v74 = v182[i - 1];
    if (v74)
    {
      CFRelease(v74);
    }
  }

  if (v114)
  {
    CFRelease(v114);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v118)
  {
    CFRelease(v118);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (v128)
  {
    CFRelease(v128);
  }

  if (v130)
  {
    CFRelease(v130);
  }

  if (v132)
  {
    CFRelease(v132);
  }

  if (v134)
  {
    CFRelease(v134);
  }

  if (v136)
  {
    CFRelease(v136);
  }

  if (v138)
  {
    CFRelease(v138);
  }

  if (v140)
  {
    CFRelease(v140);
  }

  if (v142)
  {
    CFRelease(v142);
  }

  if (v144)
  {
    CFRelease(v144);
  }

  if (v146)
  {
    CFRelease(v146);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (v156)
  {
    CFRelease(v156);
  }

  if (v112[0])
  {
    CFRelease(v112[0]);
  }

  CFRelease(CFDictionaryRef);
  if (v148)
  {
    CFRelease(v148);
  }

  CFRetain(v71);
  v109 = v71;
  applesauce::iokit::io_object_proxy::set_properties(*a1, v110, &v109);
  if (v71)
  {
    CFRelease(v71);
  }

  CFRelease(v71);
  if (v110)
  {
    CFRelease(v110);
  }

  v75 = *MEMORY[0x1E69E9840];
}

void sub_1DE4DF724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, const void *a21, uint64_t a22, const void *a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, const void *a29, const void *a30, const void *a31, const void *a32, const void *a33, const void *a34, const void *a35, const void *a36, const void *a37, const void *a38, const void *a39, const void *a40, const void *a41, const void *a42, const void *a43, const void *a44, const void *a45, const void *a46, const void *a47, const void *a48, const void *a49, const void *a50, const void *a51, const void *a52, const void *a53, const void *a54, const void *a55, const void *a56, const void *a57, const void *a58, const void *a59, const void *a60, const void *a61, const void *a62, const void *a63)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a21);
  applesauce::CF::TypeRef::~TypeRef(&a24);
  applesauce::CF::StringRef::~StringRef(&a23);
  applesauce::CF::TypeRef::~TypeRef(&a26);
  applesauce::CF::NumberRef::~NumberRef(&a25);
  applesauce::CF::TypeRef::~TypeRef(&a28);
  applesauce::CF::StringRef::~StringRef(&a27);
  applesauce::CF::TypeRef::~TypeRef(&a30);
  applesauce::CF::NumberRef::~NumberRef(&a29);
  applesauce::CF::TypeRef::~TypeRef(&a32);
  applesauce::CF::StringRef::~StringRef(&a31);
  applesauce::CF::TypeRef::~TypeRef(&a34);
  applesauce::CF::NumberRef::~NumberRef(&a33);
  applesauce::CF::TypeRef::~TypeRef(&a36);
  applesauce::CF::StringRef::~StringRef(&a35);
  applesauce::CF::TypeRef::~TypeRef(&a38);
  applesauce::CF::NumberRef::~NumberRef(&a37);
  applesauce::CF::TypeRef::~TypeRef(&a40);
  applesauce::CF::StringRef::~StringRef(&a39);
  applesauce::CF::TypeRef::~TypeRef(&a42);
  applesauce::CF::NumberRef::~NumberRef(&a41);
  applesauce::CF::TypeRef::~TypeRef(&a44);
  applesauce::CF::StringRef::~StringRef(&a43);
  applesauce::CF::TypeRef::~TypeRef(&a46);
  applesauce::CF::NumberRef::~NumberRef(&a45);
  applesauce::CF::TypeRef::~TypeRef(&a48);
  applesauce::CF::StringRef::~StringRef(&a47);
  applesauce::CF::TypeRef::~TypeRef(&a50);
  applesauce::CF::NumberRef::~NumberRef(&a49);
  applesauce::CF::TypeRef::~TypeRef(&a52);
  applesauce::CF::StringRef::~StringRef(&a51);
  applesauce::CF::TypeRef::~TypeRef(&a54);
  applesauce::CF::NumberRef::~NumberRef(&a53);
  applesauce::CF::TypeRef::~TypeRef(&a60);
  applesauce::CF::StringRef::~StringRef(&a59);
  applesauce::CF::TypeRef::~TypeRef(&a62);
  applesauce::CF::NumberRef::~NumberRef(&a61);
  applesauce::CF::TypeRef::~TypeRef(&a64);
  applesauce::CF::StringRef::~StringRef(&a63);
  applesauce::CF::TypeRef::~TypeRef(&a20.__vftable);
  applesauce::CF::NumberRef::~NumberRef(&a65);
  applesauce::CF::TypeRef::~TypeRef(&a67);
  applesauce::CF::StringRef::~StringRef(&a16);
  applesauce::CF::TypeRef::~TypeRef(&a56);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a55);
  applesauce::CF::TypeRef::~TypeRef(&a58);
  applesauce::CF::StringRef::~StringRef(&a57);
  while (v67 != &STACK[0x210])
  {
    v67 = (v67 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v67);
  }

  applesauce::CF::StringRef::~StringRef(&a12);
  _Unwind_Resume(a1);
}

BOOL AMCP::Utility::Stream_Format::format_is_an_available_format(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = *(a1 + 32);
    while (1)
    {
      v8 = *a2;
      v9 = *(a2 + 8);
      if (v9 != *a2)
      {
        v10 = (v9 - *a2) >> 4;
        do
        {
          v11 = v10 >> 1;
          v12 = &v8[2 * (v10 >> 1)];
          v13 = v12[1];
          v14 = v12 + 2;
          v10 += ~(v10 >> 1);
          if (v13 < v3)
          {
            v8 = v14;
          }

          else
          {
            v10 = v11;
          }
        }

        while (v10);
        if (v8 != v9)
        {
          v15 = *v8;
          v16 = ~vaddvq_s32(vandq_s8(vceqq_s32(v4, *(a2 + 32)), xmmword_1DE758110)) & 0xF;
          v17 = v15 <= v3 && v16 == 0;
          v18 = !v17 || v5 != *(a2 + 48);
          v19 = v18 || v6 != *(a2 + 52);
          if (!v19 && v7 == *(a2 + 56))
          {
            break;
          }
        }
      }

      a2 += 64;
      if (a2 == a3)
      {
        a2 = a3;
        return a2 != a3;
      }
    }
  }

  return a2 != a3;
}

void applesauce::iokit::io_object_proxy::set_properties(io_registry_entry_t a1, const __CFString *a2, const void **a3)
{
  if (a2)
  {
    CFRetain(a2);
  }

  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  if (a1)
  {
    v7 = IORegistryEntrySetCFProperty(a1, a2, v6);
    if (v7)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v9 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v7, v9, "Error on get_properties");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

void sub_1DE4E01AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::destroy_deallocate(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  result = *(a1 + 8);
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    v5 = IOObjectRetain(v4);
    if (v5)
    {
      v7 = v5;
      exception = __cxa_allocate_exception(0x20uLL);
      v9 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v7, v9, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 6);
  return a1;
}

void std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5974A10;
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5974A10;
  v4 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L18update_stream_coreERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefESC_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0>,CA::StreamDescription ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 40);
  return result;
}

__n128 std::__function::__func<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef const&)::$_0>,CA::StreamDescription ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5974990;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyINSt3__16vectorINS3_5tupleIJN2CA14ValueRangeListENS6_17StreamDescriptionEEEENS3_9allocatorIS9_EEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a2, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 6);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 1;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v2);

  operator delete(a1);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F597EEC8;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 6);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F597EEC8;
  v1 = (a1 + 8);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> const&)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F597EEC8;
  v3 = (a1 + 8);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1}>,AMCP::Direction ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyINS_9DirectionEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Direction const&)::{lambda(void)#1}>,AMCP::Direction ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F598C988;
  *(a2 + 8) = *(result + 8);
  return result;
}

const void **AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}::~Address(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(uint64_t a1)
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

void sub_1DE4E0B4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN10applesauce2CF6URLRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<applesauce::CF::URLRef>(&cf, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::URLRef>::construct<applesauce::CF::URLRef&>(a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59889D8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59889D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59889D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<applesauce::CF::URLRef ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<applesauce::CF::URLRef ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::URLRef ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>())
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
      std::__function::__value_func<applesauce::CF::URLRef ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<applesauce::CF::URLRef ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::URLRef ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<applesauce::CF::URLRef ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN10applesauce2CF6URLRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::operator()@<X0>(CFTypeRef result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  *a2 = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::__clone(CFTypeRef result, void *a2)
{
  *a2 = &unk_1F5988948;
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  a2[1] = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5988948;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,applesauce::CF::URLRef const&)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5988948;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<Extrinsic_Driver_Portal>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void std::__shared_ptr_emplace<Extrinsic_Driver_Portal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5974A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Implementation::generate_type_marker(AMCP::Implementation *this, const std::type_info *a2)
{
  if (atomic_load_explicit(&AMCP::Implementation::generate_type_marker(std::type_info const&)::s_once_flag, memory_order_acquire) != -1)
  {
    v55[0] = &__p;
    v51 = v55;
    std::__call_once(&AMCP::Implementation::generate_type_marker(std::type_info const&)::s_once_flag, &v51, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Implementation::generate_type_marker(std::type_info const&)::$_0 &&>>);
  }

  v3 = AMCP::Implementation::generate_type_marker(std::type_info const&)::s_type_map;
  std::mutex::lock(AMCP::Implementation::generate_type_marker(std::type_info const&)::s_type_map);
  v4 = *(this + 1);
  v5 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, (v4 & 0x7FFFFFFFFFFFFFFFLL), v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  v7 = *(v3 + 64);
  if (AMCP::Utility::Sorted_Vector<std::tuple<std::string,unsigned long>,AMCP::Utility::Extract_Key_Get_N<std::tuple<std::string,unsigned long>,0ul>,std::less<std::string>,std::allocator<std::tuple<std::string,unsigned long>>>::find(v7, *(v3 + 72), &__dst))
  {
    v9 = *(v8 + 24);
    goto LABEL_58;
  }

  v9 = *(v3 + 96) + 1;
  *(v3 + 96) = v9;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    v7 = *(v3 + 64);
  }

  else
  {
    __p = __dst;
  }

  v49 = v9;
  v10 = *(v3 + 72);
  v11 = AMCP::Utility::Sorted_Vector<std::tuple<std::string,unsigned long>,AMCP::Utility::Extract_Key_Get_N<std::tuple<std::string,unsigned long>,0ul>,std::less<std::string>,std::allocator<std::tuple<std::string,unsigned long>>>::find(v7, v10, &__p);
  v13 = v12;
  if (v11)
  {
    std::string::operator=(v12, &__p);
    v14 = v49;
LABEL_32:
    v13[1].__r_.__value_.__r.__words[0] = v14;
    goto LABEL_56;
  }

  v15 = *(v3 + 80);
  if (v10 >= v15)
  {
    v30 = ((v10 - v7) >> 5) + 1;
    if (v30 >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v31 = v15 - v7;
    if (v31 >> 4 > v30)
    {
      v30 = v31 >> 4;
    }

    if (v31 >= 0x7FFFFFFFFFFFFFE0)
    {
      v32 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v30;
    }

    v54 = v3 + 64;
    if (v32)
    {
      std::allocator<std::tuple<std::string,unsigned long>>::allocate_at_least[abi:ne200100](v32);
    }

    v34 = v12 - v7;
    v35 = (v12 - v7) >> 5;
    v36 = (32 * v35);
    v51 = 0;
    v52 = 32 * v35;
    v53 = (32 * v35);
    if (!v35)
    {
      if (v34 < 1)
      {
        v37 = v34 >> 4;
        if (v12 == v7)
        {
          v38 = 1;
        }

        else
        {
          v38 = v37;
        }

        v55[4] = v3 + 64;
        std::allocator<std::tuple<std::string,unsigned long>>::allocate_at_least[abi:ne200100](v38);
      }

      v36 = (v36 - (((v34 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0));
      v52 = v36;
      *&v53 = v36;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v36, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = *&__p.__r_.__value_.__l.__data_;
      v36->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
      *&v36->__r_.__value_.__l.__data_ = v39;
    }

    v36[1].__r_.__value_.__r.__words[0] = v49;
    v40 = v53 + 32;
    memcpy((v53 + 32), v13, *(v3 + 72) - v13);
    v41 = *(v3 + 64);
    *&v53 = v40 + *(v3 + 72) - v13;
    *(v3 + 72) = v13;
    v42 = v13 - v41;
    v43 = (v52 - (v13 - v41));
    memcpy(v43, v41, v42);
    v44 = *(v3 + 64);
    *(v3 + 64) = v43;
    v45 = *(v3 + 80);
    v46 = v53;
    v52 = v44;
    *&v53 = v44;
    *(v3 + 72) = v46;
    *(&v53 + 1) = v45;
    v51 = v44;
    std::__split_buffer<std::pair<std::string const,HALS_IOEngineInfo const*>>::~__split_buffer(&v51);
    goto LABEL_56;
  }

  if (v12 != v10)
  {
    v16 = &v10[-2].__r_.__value_.__r.__words[2];
    v17 = v10;
    if (v10 >= 0x20)
    {
      v18 = *v16;
      v10->__r_.__value_.__r.__words[2] = v10[-1].__r_.__value_.__l.__size_;
      *&v10->__r_.__value_.__l.__data_ = v18;
      v10[-1].__r_.__value_.__r.__words[0] = 0;
      v10[-1].__r_.__value_.__l.__size_ = 0;
      *v16 = 0;
      v10[1].__r_.__value_.__r.__words[0] = v10[-1].__r_.__value_.__r.__words[2];
      v17 = (v10 + 32);
    }

    *(v3 + 72) = v17;
    if (v10 != &v12[1].__r_.__value_.__r.__words[1])
    {
      v19 = 0;
      v20 = v12 - v10 + 32;
      do
      {
        v21 = v10 + v19;
        v22 = (&v10[-1] + v19 - 8);
        if (v10->__r_.__value_.__s.__data_[v19 - 9] < 0)
        {
          operator delete(*v22);
        }

        v23 = *(v21 - 4);
        v10->__r_.__value_.__r.__words[v19 / 8 - 2] = *(v21 - 6);
        *v22 = v23;
        *(v21 - 41) = 0;
        *(v21 - 64) = 0;
        *(v21 - 1) = *(v21 - 5);
        v19 -= 32;
      }

      while (v20 != v19);
      v17 = *(v3 + 72);
    }

    v24 = v13 <= &__p;
    v25 = v17 > &__p;
    v27 = v24 && v25;
    v26 = !v24 || !v25;
    v28 = 32;
    if (v26)
    {
      v28 = 0;
    }

    std::string::operator=(v13, (&__p + v28));
    v29 = 3;
    if (v27)
    {
      v29 = 7;
    }

    v14 = __p.__r_.__value_.__r.__words[v29];
    goto LABEL_32;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v10, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = *&__p.__r_.__value_.__l.__data_;
    v10->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
    *&v10->__r_.__value_.__l.__data_ = v33;
  }

  v10[1].__r_.__value_.__r.__words[0] = v49;
  *(v3 + 72) = v10 + 32;
LABEL_56:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_58:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v3);
  return v9;
}

BOOL AMCP::Utility::Sorted_Vector<std::tuple<std::string,unsigned long>,AMCP::Utility::Extract_Key_Get_N<std::tuple<std::string,unsigned long>,0ul>,std::less<std::string>,std::allocator<std::tuple<std::string,unsigned long>>>::find(void *a1, void *a2, void *a3)
{
  if (a2 == a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
    v6 = (a2 - a1) >> 5;
    do
    {
      v7 = &v5[4 * (v6 >> 1)];
      v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, a3);
      if (v8 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v8 < 0)
      {
        v5 = v7 + 4;
      }
    }

    while (v6);
  }

  return v5 != a2 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a3) & 0x80) == 0 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v5) & 0x80) == 0;
}

void std::allocator<std::tuple<std::string,unsigned long>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AMCP::Null::Object::do_set_property(AMCP::Null::Object *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(this + 22) != a2)
  {
    goto LABEL_14;
  }

  v6 = *(this + 8);
  if (!v6)
  {
    v7 = 0;
LABEL_8:
    v9 = (this + 40);
    goto LABEL_9;
  }

  v6 = std::__shared_weak_count::lock(v6);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *(this + 7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = (v8 + 88);
LABEL_9:
  v10 = *v9;
  v11 = *a3;
  AMCP::local_get_property_traits_list(v6);
  if (!std::__hash_table<std::__hash_value_type<unsigned int,AMCP::Live_Property_Traits>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AMCP::Live_Property_Traits>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AMCP::Live_Property_Traits>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AMCP::Live_Property_Traits>>>::find<unsigned int>(v11))
  {
    operator new();
  }

  if (*a3 == 1819173229)
  {
    operator new();
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE4E1E64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Object15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5[6]);
      v16[1] = MutableCopy;
      AMCP::Thing::convert_to<applesauce::CF::StringRef>(v16, a1 + 56);
      v7 = v16[0];
      if (!v16[0])
      {
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_19;
      }

      v12 = 0x676C6F626C6E616DLL;
      v13 = 0;
      AMCP::Address::to_string(&bytes, &v12, 0x676C6F626C6E616DLL);
      size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_bytes = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v15 = 0;
          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(MutableCopy, 0, v7);
LABEL_13:
          if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(bytes.__r_.__value_.__l.__data_);
          }

          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
          (*(*v5 + 3))(v5, &bytes);
          if (bytes.__r_.__value_.__r.__words[0])
          {
            CFRelease(bytes.__r_.__value_.__l.__data_);
          }

          CFRelease(v7);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_19;
        }

        size = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        p_bytes = &bytes;
      }

      v10 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
      v15 = v10;
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(MutableCopy, v10, v7);
      CFRelease(v10);
      goto LABEL_13;
    }
  }
}

void sub_1DE4E2098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18, const void *a19)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a18);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    v2(0, __p + 7, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975488;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 56) = 0u;
  *(a2 + 48) = v5;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v6 = *(result + 88);
  if (v6)
  {
    return v6(1, result + 56);
  }

  return result;
}

void sub_1DE4E2290(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4E237C(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975488;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975488;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Object15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5[6]);
      AMCP::Address::to_string(&bytes, (a1 + 40), v7);
      size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_bytes = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v10 = 0;
          v11 = 0;
          cf = 0;
          goto LABEL_12;
        }

        size = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        p_bytes = &bytes;
      }

      v10 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
      cf = v10;
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      v11 = bytes.__r_.__value_.__r.__words[0];
LABEL_12:
      operator delete(v11);
LABEL_13:
      AMCP::make_description_from_thing(&bytes, (a1 + 56));
      v12 = bytes.__r_.__value_.__r.__words[0];
      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, v10, bytes.__r_.__value_.__l.__data_);
      if (v12)
      {
        CFRelease(v12);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
      (*(*v5 + 3))(v5, &bytes);
      if (bytes.__r_.__value_.__r.__words[0])
      {
        CFRelease(bytes.__r_.__value_.__l.__data_);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_21;
    }
  }
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    v2(0, __p + 7, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975408;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 56) = 0u;
  *(a2 + 48) = v5;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v6 = *(result + 88);
  if (v6)
  {
    return v6(1, result + 56);
  }

  return result;
}

void sub_1DE4E2890(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4E297C(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975408;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Object::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975408;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void AMCP::Null::Object::populate_core(AMCP::Null::Object *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = 0x676C6F6269646E74;
  v4 = 0;
  LODWORD(bytes) = *(this + 22);
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
}

void sub_1DE4E5398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void *applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(uint64_t a1, CFDictionaryRef theDict, const void *a3)
{
  result = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (result)
  {
    v5 = result;
    result = CFRetain(result);
    *a1 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 8) = v6;
  return result;
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>();
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

void sub_1DE4E58BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 32);
  if (v3)
  {
    v3(1, a3, v4, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE4E5AA8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 32);
  if (v3)
  {
    v3(1, a3, v4, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE4E5E2C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE4E5F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Object13populate_coreEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
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
      v28 = 438;
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
    v31 = "auto AMCP::Null::Object::populate_core(Address::Element)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 438;
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
      v28 = 440;
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
    v31 = "auto AMCP::Null::Object::populate_core(Address::Element)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 440;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE4E6450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
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

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5975388;
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

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975388;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_1>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975388;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Object13populate_coreEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
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

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975308;
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

void std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975308;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Object::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Object::populate_core(unsigned int)::$_0>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975308;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIN10applesauce2CF6URLRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<applesauce::CF::URLRef>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE4E6AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975288;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975288;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::URLRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::URLRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975288;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIN10applesauce2CF6URLRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
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

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975208;
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

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975208;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::URLRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975208;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIN10applesauce2CF9StringRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
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

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975188;
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

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975188;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::StringRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975188;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_setterIN10applesauce2CF9StringRefEEEvRNS0_9OperationEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef const&>(v4, a2);
  result = AMCP::Core::Operation::call_function<void,AMCP::Thing const&>((a1 + 8), v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975108;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975108;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975108;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1819173229EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
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

void sub_1DE4E79F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
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

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5975088;
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

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIN10applesauce2CF9StringRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<applesauce::CF::StringRef>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE4E7D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975008;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975008;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::StringRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975008;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1819173229EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
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

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5974F88;
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

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5974F88;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1819173229u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5974F88;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Null::Object::handle_set_property(AMCP::Null::Object *this, uint64_t a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  v8 = *(this + 8);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(this + 7);
      if (v10)
      {
        v11 = (*(*v10 + 40))(v10, a2, a3, a4);
        if (v11)
        {
          v12 = v11;
          v13 = HIBYTE(v11);
LABEL_8:
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          return v12 | (v13 << 8);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = (*(*this + 56))(this, a2, a3, a4);
  v12 = v14;
  v13 = HIBYTE(v14);
  if (v9)
  {
    goto LABEL_8;
  }

  return v12 | (v13 << 8);
}

void AMCP::Null::Object::destroy_cores(AMCP::Null::Object *this)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  v3 = *(this + 13);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    (*(*v4 + 32))(v4);
  }

  if (*(this + 22))
  {
    is_base_of = AMCP::is_base_of(0x61636C6B, *(this + 21));
    if (!is_base_of)
    {
LABEL_48:
      AMCP::Core::Broker::destroy_core(*(*(this + 1) + 16), *(this + 22));
      *(this + 22) = 0;
      goto LABEL_49;
    }

    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      is_base_of = AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(v7 + 16);
    switch(v9)
    {
      case 3:
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_46;
        }

        v24 = *(this + 22);
        AMCP::make_string_for_class_id(*(this + 20), __p);
        if (v32 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        *buf = 136315906;
        v34 = "Null_Object.cpp";
        v35 = 1024;
        v36 = 325;
        v37 = 1024;
        v38 = v24;
        v39 = 2080;
        v40 = v25;
        v26 = v21;
        v27 = OS_LOG_TYPE_INFO;
        break;
      case 2:
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_46;
        }

        v22 = *(this + 22);
        AMCP::make_string_for_class_id(*(this + 20), __p);
        if (v32 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *buf = 136315906;
        v34 = "Null_Object.cpp";
        v35 = 1024;
        v36 = 325;
        v37 = 1024;
        v38 = v22;
        v39 = 2080;
        v40 = v23;
        _os_log_debug_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_DEBUG, "%32s:%-5d Destroying Core %u for %s", buf, 0x22u);
        goto LABEL_44;
      case 1:
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        v28 = *(this + 22);
        AMCP::make_string_for_class_id(*(this + 20), __p);
        if (v32 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        *buf = 136315906;
        v34 = "Null_Object.cpp";
        v35 = 1024;
        v36 = 325;
        v37 = 1024;
        v38 = v28;
        v39 = 2080;
        v40 = v29;
        v26 = v13;
        v27 = OS_LOG_TYPE_DEFAULT;
        break;
      default:
        goto LABEL_46;
    }

    _os_log_impl(&dword_1DE1F9000, v26, v27, "%32s:%-5d Destroying Core %u for %s", buf, 0x22u);
LABEL_44:
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_46:
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    goto LABEL_48;
  }

LABEL_49:
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1DE4E86A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Null::Object::update_cores(AMCP::Null::Object *this, const __CFDictionary **a2)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_157;
  }

  *&v89 = 0x676C6F62636C6173;
  DWORD2(v89) = 0;
  AMCP::Address::to_string(bytes, &v89, 0x676C6F62636C6173);
  v4 = bytes[23];
  if ((bytes[23] & 0x8000000000000000) != 0)
  {
    v5 = *bytes;
    if (!*bytes)
    {
      v6 = 0;
      v86 = 0;
      goto LABEL_7;
    }

    v4 = *&bytes[8];
  }

  else
  {
    v5 = bytes;
  }

  v6 = CFStringCreateWithBytes(0, v5, v4, 0x8000100u, 0);
  v86 = v6;
  if (!v6)
  {
    v75 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v75, "Could not construct");
    __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_7:
  LODWORD(valuePtr[0]) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf)
  {
    v74 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v74, "Could not construct");
    __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, *a2, v6, &cf);
  v7 = valuePtr[0];
  if (!valuePtr[0])
  {
    goto LABEL_156;
  }

  v8 = applesauce::CF::convert_to<unsigned int,0>(valuePtr[0]);
  CFRelease(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if ((bytes[23] & 0x80000000) != 0)
  {
    operator delete(*bytes);
  }

  stock_class_id = AMCP::Null::get_stock_class_id(a2, v8);
  if (*(this + 20) != v8)
  {
    v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v65 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
    }

    v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      v68 = *v67;
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    else
    {
      v68 = *v67;
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *bytes = 136315650;
      *&bytes[4] = "Null_Object.cpp";
      *&bytes[12] = 1024;
      *&bytes[14] = 279;
      *&bytes[18] = 2080;
      *&bytes[20] = "m_core_class_id == new_core_class_id";
      v72 = "%32s:%-5d Assertion Failed: %s new description can't change the class";
LABEL_152:
      _os_log_error_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, v72, bytes, 0x1Cu);
    }

LABEL_153:
    abort();
  }

  if (*(this + 21) != stock_class_id)
  {
    v69 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v69 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
    }

    v71 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v70 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
      v68 = *v71;
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    else
    {
      v68 = *v71;
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *bytes = 136315650;
      *&bytes[4] = "Null_Object.cpp";
      *&bytes[12] = 1024;
      *&bytes[14] = 280;
      *&bytes[18] = 2080;
      *&bytes[20] = "m_core_stock_class_id == new_core_stock_class_id";
      v72 = "%32s:%-5d Assertion Failed: %s new description can't change the stock class";
      goto LABEL_152;
    }

    goto LABEL_153;
  }

  v11 = (this + 48);
  if (!*(this + 6))
  {
LABEL_156:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_157:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *&v89 = 0x676C6F626374726CLL;
  DWORD2(v89) = 0;
  AMCP::Address::to_string(bytes, &v89, v10);
  v12 = bytes[23];
  if ((bytes[23] & 0x8000000000000000) != 0)
  {
    v13 = *bytes;
    if (!*bytes)
    {
      valuePtr[0] = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *v11, 0);
      goto LABEL_24;
    }

    v12 = *&bytes[8];
  }

  else
  {
    v13 = bytes;
  }

  v14 = CFStringCreateWithBytes(0, v13, v12, 0x8000100u, 0);
  valuePtr[0] = v14;
  if (!v14)
  {
    v76 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v76, "Could not construct");
    __cxa_throw(v76, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *v11, v14);
  CFRelease(v14);
LABEL_24:
  if ((bytes[23] & 0x80000000) != 0)
  {
    operator delete(*bytes);
  }

  if (!*a2)
  {
    goto LABEL_156;
  }

  *&v89 = 0x676C6F626374726CLL;
  DWORD2(v89) = 0;
  AMCP::Address::to_string(bytes, &v89, v15);
  v16 = bytes[23];
  if ((bytes[23] & 0x8000000000000000) != 0)
  {
    v17 = *bytes;
    if (!*bytes)
    {
      valuePtr[0] = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v82, *a2, 0);
      goto LABEL_33;
    }

    v16 = *&bytes[8];
  }

  else
  {
    v17 = bytes;
  }

  v18 = CFStringCreateWithBytes(0, v17, v16, 0x8000100u, 0);
  valuePtr[0] = v18;
  if (!v18)
  {
    v77 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v77, "Could not construct");
    __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v82, *a2, v18);
  CFRelease(v18);
LABEL_33:
  if ((bytes[23] & 0x80000000) != 0)
  {
    operator delete(*bytes);
  }

  v19 = *v11;
  v20 = *a2;
  *v11 = *a2;
  if (v20)
  {
    CFRetain(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v21 = *(this + 22);
  if (!v21)
  {
    (*(*this + 16))(this);
    goto LABEL_131;
  }

  AMCP::Core::Broker::fetch_core(&v80, *(*(this + 1) + 16), v21);
  v22 = v80;
  if (v80)
  {
    v23 = AMCP::Null::calculate_max_element(this + 6, *(this + 21));
    (*(*this + 48))(bytes, this, v23);
    *&v89 = v22 + 48;
    BYTE8(v89) = 1;
    caulk::concurrent::shared_spin_lock::lock((v22 + 48));
    v24 = *&bytes[16];
    if (*&bytes[16])
    {
      do
      {
        std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>((v22 + 8), (v24[4] + 40), v24 + 4);
        v24 = *v24;
      }

      while (v24);
    }

    caulk::concurrent::shared_spin_lock::unlock((v22 + 48));
    *&v89 = 0x676C6F626F776E72;
    DWORD2(v89) = 0;
    *(v22 + 4) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v22, &v89, &AMCP::k_object_id_unknown);
    if (v85 == 1)
    {
      v25 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v79 = v25;
      v95 = v25;
    }

    else
    {
      v26 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
      v95 = v26;
      if (v26)
      {
        v79 = v26;
        v27 = CFGetTypeID(v26);
        if (v27 != CFArrayGetTypeID())
        {
          v28 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v28, "Could not construct");
          __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        v79 = 0;
      }
    }

    if (v83 == 1)
    {
      v29 = v82;
      if (v82)
      {
        CFRetain(v82);
      }

      v94 = v29;
    }

    else
    {
      v30 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
      v29 = v30;
      v94 = v30;
      if (v30)
      {
        v31 = CFGetTypeID(v30);
        if (v31 != CFArrayGetTypeID())
        {
          v78 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v78, "Could not construct");
          __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }
    }

    AMCP::Null::diff_control_lists(&theArray, &v95, &v94);
    AMCP::Null::diff_control_lists(&v92, &v95, &theArray);
    AMCP::Null::diff_control_lists(&v91, &v94, &v95);
    v32 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v34 = Count;
      v35 = theArray;
      if (theArray)
      {
        v36 = CFArrayGetCount(theArray);
        if (!v34)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v36 = 0;
        if (!Count)
        {
          goto LABEL_83;
        }
      }

      v37 = 0;
      do
      {
        if (v32 == v35 && v37 == v36)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v89, v32, v37);
        control_by_description = AMCP::Null::find_control_by_description(this + 12, &v89);
        if (*(this + 13) != control_by_description)
        {
          v39 = control_by_description;
          v40 = control_by_description + 2;
          (*(**control_by_description + 32))(*control_by_description);
          v41 = *(this + 13);
          if (v40 != v41)
          {
            do
            {
              v42 = *(v39 + 1);
              v39[2] = 0;
              v39[3] = 0;
              v43 = v39[1];
              *v39 = v42;
              if (v43)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v43);
              }

              v44 = v39 + 2;
              v45 = v39 + 4;
              v39 += 2;
            }

            while (v45 != v41);
            v41 = *(this + 13);
            v39 = v44;
          }

          while (v41 != v39)
          {
            v46 = *(v41 - 1);
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            v41 -= 2;
          }

          *(this + 13) = v39;
        }

        if (v89)
        {
          CFRelease(v89);
        }

        ++v37;
      }

      while (v37 != v34);
    }

LABEL_83:
    v47 = v92;
    if (!v92)
    {
      goto LABEL_96;
    }

    v48 = CFArrayGetCount(v92);
    v49 = v48;
    v50 = v92;
    if (v92)
    {
      v51 = CFArrayGetCount(v92);
      if (!v49)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v51 = 0;
      if (!v48)
      {
        goto LABEL_96;
      }
    }

    v52 = 0;
    do
    {
      if (v47 == v50 && v51 == v52)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v89, v47, v52);
      v53 = AMCP::Null::find_control_by_description(this + 12, &v89);
      if (*(this + 13) != v53)
      {
        (*(**v53 + 24))(*v53, &v89);
      }

      if (v89)
      {
        CFRelease(v89);
      }

      ++v52;
    }

    while (v49 != v52);
LABEL_96:
    v54 = v91;
    if (!v91)
    {
LABEL_119:
      if (v92)
      {
        CFRelease(v92);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (v79)
      {
        CFRelease(v79);
      }

      std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*&bytes[16]);
      v63 = *bytes;
      *bytes = 0;
      if (v63)
      {
        operator delete(v63);
      }

      goto LABEL_129;
    }

    v55 = CFArrayGetCount(v91);
    v56 = v55;
    v57 = v91;
    if (v91)
    {
      v58 = CFArrayGetCount(v91);
      if (!v56)
      {
LABEL_117:
        if (v91)
        {
          CFRelease(v91);
        }

        goto LABEL_119;
      }
    }

    else
    {
      v58 = 0;
      if (!v55)
      {
        goto LABEL_117;
      }
    }

    v59 = 0;
    do
    {
      if (v54 == v57 && v58 == v59)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v90, v54, v59);
      v60 = *(this + 2);
      valuePtr[0] = *(this + 1);
      valuePtr[1] = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(v60 + 1, 1uLL, memory_order_relaxed);
      }

      v61 = *(this + 10);
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v86, *(this + 3), *(this + 4));
      AMCP::Null::make_object(&v89, valuePtr, v61, &v86, &v90, 0);
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
      }

      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      v62 = v89;
      if (v89)
      {
        std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](this + 12, &v89);
        (*(*v62 + 16))(v62);
      }

      if (*(&v89 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v89 + 1));
      }

      if (v90)
      {
        CFRelease(v90);
      }

      ++v59;
    }

    while (v56 != v59);
    goto LABEL_117;
  }

LABEL_129:
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

LABEL_131:
  if (v83 == 1 && v82)
  {
    CFRelease(v82);
  }

  if (v85 == 1 && cf)
  {
    CFRelease(cf);
  }

  v64 = *MEMORY[0x1E69E9840];
}

void sub_1DE4E9248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __cxa_free_exception(v30);
    applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a27);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const applesauce::CF::DictionaryRef *AMCP::Null::get_stock_class_id(const __CFDictionary **this, const applesauce::CF::DictionaryRef *a2)
{
  v2 = a2;
  AMCP::get_class_traits(&bytes, a2);
  v4 = bytes.__r_.__value_.__s.__data_[8];
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (bytes.__r_.__value_.__r.__words[2])
  {
    v19 = bytes.__r_.__value_.__r.__words[2];
    operator delete(bytes.__r_.__value_.__r.__words[2]);
  }

  if ((v4 & 1) == 0)
  {
    if (!*this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      goto LABEL_25;
    }

    v14 = 0x676C6F6262636C73;
    v15 = 0;
    AMCP::Address::to_string(&bytes, &v14, 0x676C6F6262636C73);
    size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_bytes = bytes.__r_.__value_.__r.__words[0];
      if (!bytes.__r_.__value_.__r.__words[0])
      {
        v7 = 0;
        v16 = 0;
LABEL_12:
        LODWORD(valuePtr) = 0;
        cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!cf)
        {
          v11 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v11, "Could not construct");
          __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, *this, v7, &cf);
        v8 = valuePtr;
        if (valuePtr)
        {
          v2 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
          CFRelease(v8);
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

          return v2;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_25:
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      size = bytes.__r_.__value_.__l.__size_;
    }

    else
    {
      p_bytes = &bytes;
    }

    v7 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
    v16 = v7;
    if (!v7)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_12;
  }

  return v2;
}

void sub_1DE4E95F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t AMCP::Null::calculate_max_element(const __CFDictionary **this, const applesauce::CF::DictionaryRef *a2)
{
  if (AMCP::is_base_of(0x61646576, a2))
  {
    max_number_channels_for_scope = AMCP::Null::get_max_number_channels_for_scope(0x696E7074, this, v4, v5);
    v9 = AMCP::Null::get_max_number_channels_for_scope(0x6F757470, this, v7, v8);
    if (max_number_channels_for_scope <= v9)
    {
      max_number_channels_for_scope = v9;
    }

    LODWORD(result) = AMCP::Null::get_max_element_for_controls(this, v10);
    if (max_number_channels_for_scope <= result)
    {
      return result;
    }

    else
    {
      return max_number_channels_for_scope;
    }
  }

  else
  {

    return AMCP::Null::get_max_element_for_controls(this, v3);
  }
}

void AMCP::Null::diff_control_lists(AMCP::Null *this, CFArrayRef *a2, CFArrayRef *a3)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v7 = *a2;
  if (!*a2)
  {
LABEL_40:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = 0;
  while (v8 < CFArrayGetCount(v7))
  {
    if (!*a2)
    {
      goto LABEL_40;
    }

    applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v25, *a2, v8);
    if (v26 != 1)
    {
      goto LABEL_35;
    }

    control_marker = AMCP::Null::make_control_marker(&v25, v9);
    v12 = control_marker;
    v13 = v11;
    if (HIDWORD(control_marker) && control_marker && v11 != -1)
    {
LABEL_31:
      v21 = v25;
      if (!v25)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v14 = 0;
      while (1)
      {
        if (!*a3)
        {
          goto LABEL_40;
        }

        if (v14 >= CFArrayGetCount(*a3))
        {
          break;
        }

        if (!*a3)
        {
          goto LABEL_40;
        }

        applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&cf, *a3, v14);
        if (v24 == 1)
        {
          v16 = AMCP::Null::make_control_marker(&cf, v15);
          v18 = (!HIDWORD(v16) || !v16 || v17 == -1) && v12 == v16 && v13 == v17 && (v16 ^ v12) >> 32 == 0;
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          v18 = 0;
        }

        ++v14;
        if (v18)
        {
          goto LABEL_31;
        }
      }

      v21 = v25;
      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, v25);
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    CFRelease(v21);
LABEL_35:
    ++v8;
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_40;
    }
  }

  mcp_applesauce::CF::Array_Builder::copy_array(this, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t AMCP::Null::find_control_by_description(uint64_t *a1, const __CFDictionary **this)
{
  control_marker = AMCP::Null::make_control_marker(this, this);
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = control_marker;
    v7 = v4;
    v5 = *a1;
    while (AMCP::Null::make_control_marker((*v5 + 48), v4) != v6 || v4 != v7)
    {
      v5 += 16;
      if (v5 == a1[1])
      {
        return a1[1];
      }
    }
  }

  return v5;
}

uint64_t AMCP::Null::make_object(void *a1, int a2, int a3, int a4, const __CFDictionary **a5, unsigned int a6)
{
  stock_class_id = a6;
  v24 = a3;
  if (a6)
  {
    goto LABEL_17;
  }

  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v19 = 0x676C6F62636C6173;
  v20 = 0;
  AMCP::Address::to_string(&numBytes, &v19, 0x676C6F62636C6173);
  size = SHIBYTE(numBytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    p_numBytes = &numBytes;
    goto LABEL_7;
  }

  p_numBytes = numBytes.__r_.__value_.__r.__words[0];
  if (numBytes.__r_.__value_.__r.__words[0])
  {
    size = numBytes.__r_.__value_.__l.__size_;
LABEL_7:
    v22 = CFStringCreateWithBytes(0, p_numBytes, size, 0x8000100u, 0);
    if (!v22)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v17, "Could not construct");
      __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_8;
  }

  v22 = 0;
LABEL_8:
  valuePtr = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
    __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v23, *a5, v22, &cf);
  v11 = v23;
  if (!v23)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "Could not construct");
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v12 = applesauce::CF::convert_to<unsigned int,0>(v23);
  CFRelease(v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(numBytes.__r_.__value_.__l.__data_);
  }

  stock_class_id = AMCP::Null::get_stock_class_id(a5, v12);
LABEL_17:
  if (AMCP::is_base_of(0x7370616E, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x736C6374, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x746F676C, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x6C65766C, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x736C6472, stock_class_id))
  {
    operator new();
  }

  if (AMCP::is_base_of(0x61646576, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Device,std::allocator<AMCP::Null::Device>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>();
  }

  if (AMCP::is_base_of(0x6163746C, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Control,std::allocator<AMCP::Null::Control>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>();
  }

  if (AMCP::is_base_of(0x61737472, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Stream,std::allocator<AMCP::Null::Stream>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>();
  }

  if (AMCP::is_base_of(0x61636C6B, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Clock,std::allocator<AMCP::Null::Clock>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>();
  }

  if (AMCP::is_base_of(0x61626F78, stock_class_id))
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Box,std::allocator<AMCP::Null::Box>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>();
  }

  result = AMCP::is_base_of(0x616F626A, stock_class_id);
  if (result)
  {
    std::allocate_shared[abi:ne200100]<AMCP::Null::Object,std::allocator<AMCP::Null::Object>,std::shared_ptr<AMCP::Core::System_Core> &,unsigned int &,std::shared_ptr<AMCP::Null::Object> &,applesauce::CF::DictionaryRef const&,0>();
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sub_1DE4EA250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (!v25)
    {
LABEL_3:
      if (!v27)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (!v27)
  {
LABEL_4:
    if (!v25)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (!v25)
  {
LABEL_6:
    std::__shared_weak_count::~__shared_weak_count(v26);
    operator delete(v29);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  goto LABEL_6;
}

void sub_1DE4EA524(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (!v2)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v3)
  {
LABEL_4:
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (!v2)
  {
LABEL_6:
    std::__shared_weak_count::~__shared_weak_count(v1);
    operator delete(v5);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  goto LABEL_6;
}

void sub_1DE4EA6E8(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1DE4EA8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    if (!v14)
    {
LABEL_5:
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (!v13)
  {
LABEL_7:
    std::__shared_weak_count::~__shared_weak_count(v12);
    operator delete(v16);
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  goto LABEL_7;
}

void sub_1DE4EAA90(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1DE4EAC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    if (!v14)
    {
LABEL_5:
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (!v13)
  {
LABEL_7:
    std::__shared_weak_count::~__shared_weak_count(v12);
    operator delete(v16);
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  goto LABEL_7;
}

void sub_1DE4EAE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Null::Object::Object(uint64_t a1, __int128 *a2, int a3, void *a4, CFTypeRef *a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a1 + 8) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5974AE0;
  *(a1 + 40) = a3;
  v9 = *a5;
  if (*a5)
  {
    CFRetain(*a5);
  }

  *(a1 + 48) = v9;
  *(a1 + 56) = *a4;
  v10 = a4[1];
  *(a1 + 64) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v37.__vftable = 0x676C6F62636C6173;
  LODWORD(v37.__imp_.__imp_) = 0;
  AMCP::Address::to_string(buf, &v37, 0x676C6F62636C6173);
  v11 = SBYTE3(v46);
  if ((SBYTE3(v46) & 0x8000000000000000) != 0)
  {
    v12 = *buf;
    if (!*buf)
    {
      v34[0] = 0;
      goto LABEL_11;
    }

    v11 = *&buf[8];
  }

  else
  {
    v12 = buf;
  }

  v34[0] = CFStringCreateWithBytes(0, v12, v11, 0x8000100u, 0);
  if (!v34[0])
  {
    v33 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v33, "Could not construct");
    __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_11:
  valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf.__vftable)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v35, *a5, v34[0], &cf);
  v13 = v35;
  if (!v35)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v14 = applesauce::CF::convert_to<unsigned int,0>(v35);
  CFRelease(v13);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  if (v34[0])
  {
    CFRelease(v34[0]);
  }

  if (SBYTE3(v46) < 0)
  {
    operator delete(*buf);
  }

  *(a1 + 80) = v14;
  stock_class_id = AMCP::Null::get_stock_class_id(a5, v14);
  *(a1 + 96) = 0;
  *(a1 + 84) = stock_class_id;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (!*(a1 + 48))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
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
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 240;
      v45 = 2080;
      v46 = "m_description.is_valid() == false";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all Null objects have a non-empty description", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&valuePtr);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&cf, "all Null objects have a non-empty description");
    std::runtime_error::runtime_error(&v37, &cf);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v47 = "AMCP::Null::Object::Object(Core::System_Core_Ptr, Object_ID, Object_Ptr, const CF::Dictionary &)";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v49 = 240;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v34);
  }

  if (!*(a1 + 80))
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
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
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 241;
      v45 = 2080;
      v46 = "m_core_class_id == k_class_id_unknown";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all Null objects have a class", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&valuePtr);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&cf, "all Null objects have a class");
    std::runtime_error::runtime_error(&v37, &cf);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v47 = "AMCP::Null::Object::Object(Core::System_Core_Ptr, Object_ID, Object_Ptr, const CF::Dictionary &)";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v49 = 241;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v34);
  }

  if (!stock_class_id)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(stock_class_id);
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
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 242;
      v45 = 2080;
      v46 = "m_core_stock_class_id == k_class_id_unknown";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all Null objects have a stock class", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&valuePtr);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&cf, "all Null objects have a stock class");
    std::runtime_error::runtime_error(&v37, &cf);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v47 = "AMCP::Null::Object::Object(Core::System_Core_Ptr, Object_ID, Object_Ptr, const CF::Dictionary &)";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v49 = 242;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v34);
  }

  v16 = *MEMORY[0x1E69E9840];
  return a1;
}