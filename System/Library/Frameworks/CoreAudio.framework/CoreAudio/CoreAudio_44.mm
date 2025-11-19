void sub_1DE55EF94(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Box::Box(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 16);
  *buf = &unk_1F5979D70;
  *&buf[8] = a3;
  *&v19[4] = buf;
  AMCP::Core::Broker::fetch_first_core_if (v16, v5, buf);
  *a1 = &unk_1F5964268;
  v6 = v16[0];
  if (v16[0])
  {
    v7 = *v16[0];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  v8 = v16[1];
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
  *a1 = &unk_1F5979D38;
  v9 = AMCP::Object::constructed_correct_class(a1, 0x61626F78);
  if ((v9 & 1) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *&buf[4] = "Box.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 42;
      v18 = 2080;
      *v19 = "constructed_correct_class(k_class_id_box)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE55F1C0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3BoxC1ERNS_14System_ContextEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61626F78, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1651861860u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void AMCP::Core::Core::get_simple_required_property<1651861860u>(void *a1, AMCP::Core::Core *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  strcpy(buf, "diubbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, a2, buf);
  if ((v13 & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v11 = 4;
      strcpy(__p, "buid");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v15 = 1024;
      v16 = 391;
      v17 = 2080;
      v18 = "optional_value.operator BOOL() == true";
      v19 = 2080;
      v20 = __p;
      v21 = 1024;
      v22 = 1735159650;
      v23 = 1024;
      v24 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = v4;
    CFRelease(v4);
  }

  else
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1DE55F44C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5979D70;
  a2[1] = v2;
  return result;
}

void AMCP::Box::get_box_uid(AMCP::Box *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1651861860u>(a2, v7);
    }

    else
    {
      *a2 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
  }
}

unint64_t AMCP::Box::get_transport_type(AMCP::Box *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1953653102u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

uint64_t AMCP::Box::has_audio(AMCP::Box *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "uahbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
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
          v15 = 4;
          strcpy(__p, "bhau");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE55F7E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::has_video(AMCP::Box *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "ivhbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
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
          v15 = 4;
          strcpy(__p, "bhvi");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE55F9AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::has_midi(AMCP::Box *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "imhbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
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
          v15 = 4;
          strcpy(__p, "bhmi");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE55FB70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::is_protected(AMCP::Box *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "orpbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
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
          v15 = 4;
          strcpy(__p, "bpro");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE55FD34(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::acquired(AMCP::Box *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "noxbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
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
          v15 = 4;
          strcpy(__p, "bxon");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE55FEF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::set_acquired(AMCP::Box *this, char a2)
{
  v16 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_17;
      }

      v14 = 0x676C6F6262786F6ELL;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
        goto LABEL_17;
      }

      AMCP::Core::Core::find_operation(&v19, v7, &v14);
      v8 = v19;
      if (v19)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v16);
LABEL_8:
          v10 = 0;
          goto LABEL_14;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          memset(v17, 0, sizeof(v17));
          LOBYTE(v17[0]) = a2;
          v18 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
          AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v17);
          if (v18)
          {
            v18(0, v17, 0, 0);
          }

          goto LABEL_8;
        }
      }

      v10 = 1;
LABEL_14:
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if ((v10 & 1) == 0)
      {
        v11 = 1;
        goto LABEL_18;
      }

LABEL_17:
      v11 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v11;
    }
  }

  return 0;
}

void sub_1DE56004C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE56001CLL);
}

unint64_t AMCP::Box::get_acquisition_error(AMCP::Box *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "foxbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, buf);
      if (!HIDWORD(v6))
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
          v15 = 4;
          strcpy(__p, "bxof");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1DE56023C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Box::get_device_list(AMCP::Box *this@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#vdbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v18, v7, buf);
      if ((v20 & 1) == 0)
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
          v17 = 4;
          strcpy(__p, "bdv#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v22 = 1024;
          v23 = 391;
          v24 = 2080;
          v25 = "optional_value.operator BOOL() == true";
          v26 = 2080;
          v27 = __p;
          v28 = 1024;
          v29 = 1735159650;
          v30 = 1024;
          v31 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v18;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v18, v19, (v19 - v18) >> 2);
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    v11 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v10 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE56046C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Box::get_clock_list(AMCP::Box *this@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#lcbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v18, v7, buf);
      if ((v20 & 1) == 0)
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
          v17 = 4;
          strcpy(__p, "bcl#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v22 = 1024;
          v23 = 391;
          v24 = 2080;
          v25 = "optional_value.operator BOOL() == true";
          v26 = 2080;
          v27 = __p;
          v28 = 1024;
          v29 = 1735159650;
          v30 = 1024;
          v31 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v18;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v18, v19, (v19 - v18) >> 2);
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    v11 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v10 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE56069C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *AMCP::Graph::Graph::delete_node_proc(void *a1, void *a2)
{
  v3 = a1 + 2;
  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 2, a2);
  if (result)
  {
    v5 = a1[3];
    v6 = result[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*v3 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != result);
    if (v9 == a1 + 4)
    {
      goto LABEL_19;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
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

    if (v10 != v6)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v11 = *(*result + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_20:
        *(*v3 + 8 * v6) = 0;
      }
    }

    v12 = *result;
    if (*result)
    {
      v13 = *(v12 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }
      }

      else
      {
        v13 &= *&v5 - 1;
      }

      if (v13 != v6)
      {
        *(*v3 + 8 * v13) = v9;
        v12 = *result;
      }
    }

    *v9 = v12;
    *result = 0;
    --a1[5];
    v14[0] = result;
    v14[1] = v3;
    v15 = 1;
    memset(v16, 0, sizeof(v16));
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](v14);
  }

  return result;
}

BOOL AMCP::Graph::Graph::get_node_proc@<W0>(int8x8_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a1 + 2;
  if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(&a1[2], a2))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4AMCP5Graph9Node_ProcENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v7 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v8 = v7;
  v9 = a1[3];
  if (!*&v9)
  {
    goto LABEL_20;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*v6 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_20;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v14 + 2, a2);
  if (!result)
  {
    goto LABEL_19;
  }

  *a3 = v14[5];
  v17 = v14[6];
  a3[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DE560D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Graph::~Graph(uint64_t **this)
{
  AMCP::Graph::Graph::~Graph(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5979DF0;
  AMCP::Graph::Graph::get_nodes(v8, this[24]);
  v2 = v8[0];
  v3 = v8[1];
  while (v2 != v3)
  {
    v4 = *v2;
    if (*(*v2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      __p = *(v4 + 24);
    }

    AMCP::Graph::Graph::delete_node(this, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 += 16;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v5 = this[38];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[36];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(this[33]);
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table((this + 27));
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table((this + 22));
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table((this + 17));
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::~__hash_table((this + 12));
  std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table((this + 7));
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::~__hash_table((this + 2));
}

size_t *AMCP::Graph::Graph::get_nodes(size_t *result, uint64_t *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (!*(v2[5] + 16))
      {
        result = std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](v3, (v2 + 5));
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_1DE560F5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *AMCP::Graph::Graph::delete_node(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a1 + 22;
  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, a2);
  if (!result)
  {
    goto LABEL_78;
  }

  v6 = result;
  v7 = *(result[5] + 176);
  if (v7)
  {
    v8 = *(v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[28];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v8;
    if (v9 <= v8)
    {
      v11 = v8 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & v8;
  }

  v12 = *(a1[27] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      *&buf[4] = "Graph.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 156;
      *&buf[18] = 2080;
      *&buf[20] = "not (found != m_nodes_by_object_id.end())";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing object ID for node in graph index", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Missing object ID for node in graph index", &v40);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5991430;
    v43 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v42);
    v50 = "BOOL AMCP::Graph::Graph::delete_node(const Graph_Node_UID &)";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    v52 = 156;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= v9)
      {
        v14 %= v9;
      }
    }

    else
    {
      v14 &= v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (*(v13 + 4) != v8)
  {
    goto LABEL_20;
  }

  AMCP::Graph::Graph::disconnect_any_wires_connected_to_node(a1, a2);
  v19 = a1[28];
  v20 = v13[1];
  v21 = vcnt_s8(v19);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    if (v20 >= *&v19)
    {
      v20 %= *&v19;
    }
  }

  else
  {
    v20 &= *&v19 - 1;
  }

  v22 = a1[27];
  v23 = *(v22 + 8 * v20);
  do
  {
    v24 = v23;
    v23 = *v23;
  }

  while (v23 != v13);
  if (v24 == a1 + 29)
  {
    goto LABEL_42;
  }

  v25 = v24[1];
  if (v21.u32[0] > 1uLL)
  {
    if (v25 >= *&v19)
    {
      v25 %= *&v19;
    }
  }

  else
  {
    v25 &= *&v19 - 1;
  }

  if (v25 != v20)
  {
LABEL_42:
    if (!*v13)
    {
      goto LABEL_43;
    }

    v26 = *(*v13 + 1);
    if (v21.u32[0] > 1uLL)
    {
      if (v26 >= *&v19)
      {
        v26 %= *&v19;
      }
    }

    else
    {
      v26 &= *&v19 - 1;
    }

    if (v26 != v20)
    {
LABEL_43:
      *(v22 + 8 * v20) = 0;
    }
  }

  v27 = *v13;
  if (*v13)
  {
    v28 = v27[1];
    if (v21.u32[0] > 1uLL)
    {
      if (v28 >= *&v19)
      {
        v28 %= *&v19;
      }
    }

    else
    {
      v28 &= *&v19 - 1;
    }

    if (v28 != v20)
    {
      *(a1[27] + 8 * v28) = v24;
      v27 = *v13;
    }
  }

  *v24 = v27;
  *v13 = 0;
  --a1[30];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](1, v13);
  v29 = a1[23];
  v30 = v6[1];
  v31 = vcnt_s8(v29);
  v31.i16[0] = vaddlv_u8(v31);
  if (v31.u32[0] > 1uLL)
  {
    if (v30 >= *&v29)
    {
      v30 %= *&v29;
    }
  }

  else
  {
    v30 &= *&v29 - 1;
  }

  v32 = *(*v4 + 8 * v30);
  do
  {
    v33 = v32;
    v32 = *v32;
  }

  while (v32 != v6);
  if (v33 == a1 + 24)
  {
    goto LABEL_68;
  }

  v34 = v33[1];
  if (v31.u32[0] > 1uLL)
  {
    if (v34 >= *&v29)
    {
      v34 %= *&v29;
    }
  }

  else
  {
    v34 &= *&v29 - 1;
  }

  if (v34 != v30)
  {
LABEL_68:
    if (!*v6)
    {
      goto LABEL_69;
    }

    v35 = *(*v6 + 8);
    if (v31.u32[0] > 1uLL)
    {
      if (v35 >= *&v29)
      {
        v35 %= *&v29;
      }
    }

    else
    {
      v35 &= *&v29 - 1;
    }

    if (v35 != v30)
    {
LABEL_69:
      *(*v4 + 8 * v30) = 0;
    }
  }

  v36 = *v6;
  if (*v6)
  {
    v37 = *(v36 + 8);
    if (v31.u32[0] > 1uLL)
    {
      if (v37 >= *&v29)
      {
        v37 %= *&v29;
      }
    }

    else
    {
      v37 &= *&v29 - 1;
    }

    if (v37 != v30)
    {
      *(*v4 + 8 * v37) = v33;
      v36 = *v6;
    }
  }

  *v33 = v36;
  *v6 = 0;
  --a1[25];
  *buf = v6;
  *&buf[8] = v4;
  buf[16] = 1;
  *&buf[17] = 0;
  *&buf[20] = 0;
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
  result = (*(*a1 + 24))(a1, a2);
LABEL_78:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE561570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 144);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 145));
  _Unwind_Resume(a1);
}

void AMCP::Graph::Graph::disconnect_any_wires_connected_to_node(void *a1, void *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, a2);
  if (v3)
  {
    v4 = v3;
    v5 = v3[5];
    if (*(v5 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *(v5 + 24), *(v5 + 32));
      v5 = v4[5];
    }

    else
    {
      v29 = *(v5 + 24);
    }

    AMCP::Graph::Wire_Index::get_wires_for_node(&v27, a1 + 7, &v29, 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 88) - *(v5 + 80)) >> 4), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 64) - *(v5 + 56)) >> 4));
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v26[0] = 0;
    v26[1] = 0;
    v25 = v26;
    for (i = v28; i; i = *i)
    {
      if (i[39] < 0)
      {
        std::string::__init_copy_ctor_external(&v22, *(i + 2), *(i + 3));
      }

      else
      {
        v22 = *(i + 16);
      }

      v23 = *(i + 5);
      v24 = *(i + 12);
      if (i[79] < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *(i + 7), *(i + 8));
      }

      else
      {
        v19 = *(i + 56);
      }

      v20 = *(i + 10);
      v21 = *(i + 22);
      v29 = v22;
      memset(&v22, 0, sizeof(v22));
      v30 = v23;
      v31 = v24;
      v32 = *&v19.__r_.__value_.__l.__data_;
      v7 = v19.__r_.__value_.__r.__words[2];
      memset(&v19, 0, sizeof(v19));
      v35 = *(i + 22);
      v8 = *(i + 10);
      v33 = v7;
      v34 = v8;
      v9 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a1 + 12, &v29);
      if (v9)
      {
        if (*(v9 + 504) == 1)
        {
          AMCP::Graph::Wire_Index::get_tgid_for_wire(__p, (a1 + 7), &v29);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v25, __p);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    for (j = a1[14]; j; j = *j)
    {
      if (*(j + 504) == 1)
      {
        AMCP::Graph::Graph_Wire::Connection::Connection(&v29, (j + 36));
        v11 = v41;
        v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v25, &v36);
        if (v11)
        {
          v42 = v11;
          operator delete(v11);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v26 != v12 && *(j + 504))
        {
          v13 = j[60];
          if (v13)
          {
            j[61] = v13;
            operator delete(v13);
          }

          v14 = j[57];
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          v15 = j[49];
          if (v15)
          {
            j[50] = v15;
            operator delete(v15);
          }

          if (*(j + 391) < 0)
          {
            operator delete(j[46]);
          }

          if (*(j + 351) < 0)
          {
            operator delete(j[41]);
          }

          if (*(j + 311) < 0)
          {
            operator delete(j[36]);
          }

          *(j + 504) = 0;
        }
      }
    }

    std::__tree<std::string>::destroy(v26[0]);
    std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(v28);
    v16 = v27;
    v27 = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }
}

void sub_1DE561950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void AMCP::Graph::Wire_Index::~Wire_Index(AMCP::Graph::Wire_Index *this)
{
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(this);
}

void std::__shared_ptr_emplace<AMCP::Graph::Meta_Timebase_Factory>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<double,std::string> const,std::shared_ptr<AMCP::Graph::Timebase>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Meta_Timebase_Factory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979E38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Graph::Node>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v5 = (a1 + 104);
  v6 = -48;
  do
  {
    v8 = v5;
    std::vector<AMCP::Graph::Terminal>::__destroy_vector::operator()[abi:ne200100](&v8);
    v5 -= 3;
    v6 += 24;
  }

  while (v6);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v7 = *(a1 + 32);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Node>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979E88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Graph::Graph::connect_nodes(void *a1, uint64_t *a2, uint64_t *a3, const std::string::value_type *a4, void *a5)
{
  v114 = a4;
  v185 = *MEMORY[0x1E69E9840];
  v6 = *(*a2 + 56);
  v5 = *(*a2 + 64);
  v7 = *a3;
  if (*(*a3 + 48) != 1 && *(v7 + 16) == 1)
  {
    *__p = &unk_1F5979ED8;
    *&__p[8] = a4;
    *&__p[24] = __p;
    AMCP::Graph::Node::for_each_connection(v7, a1 + 7, __p);
    std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::~__value_func[abi:ne200100](__p);
  }

  if (v5 != v6)
  {
    v8 = 0;
    v112 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v6) >> 4);
    while (1)
    {
      v9 = a2;
      nth_terminal = AMCP::Graph::Node::get_nth_terminal(*a2, v8, 0);
      v10 = *a2;
      if (*(*a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v149, v10[1].__r_.__value_.__l.__data_, v10[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v149 = v10[1];
      }

      *__p = *&v149.__r_.__value_.__l.__data_;
      v11 = v149.__r_.__value_.__r.__words[2];
      memset(&v149, 0, sizeof(v149));
      *&__p[16] = v11;
      *&__p[24] = v8;
      *&__p[32] = 0;
      AMCP::Graph::Wire_Index::get_wires_for_terminal(&v150, a1 + 7, __p);
      v113 = v8;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v13 = v150;
      v120 = v151;
      if (v150 != v151)
      {
        break;
      }

LABEL_270:
      if (v13)
      {
        operator delete(v13);
      }

      v8 = v113 + 1;
      if (v113 + 1 == v112)
      {
        goto LABEL_273;
      }
    }

    while (1)
    {
      v14 = *v13;
      if (*(*v13 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v146, *(v14 + 40), *(v14 + 48));
      }

      else
      {
        v146 = *(v14 + 40);
      }

      v16 = (v14 + 64);
      v15 = *(v14 + 64);
      v148 = *(v14 + 72);
      v147 = v15;
      if (v148 != 1)
      {
        v91 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v91 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v12);
        }

        v93 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v92 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          v94 = *v93;
          std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        }

        else
        {
          v94 = *v93;
        }

        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "Graph.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 248;
          *&__p[18] = 2080;
          *&__p[20] = "not (destination.m_wire_direction == Direction::input)";
          _os_log_error_impl(&dword_1DE1F9000, v94, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Wire should connect to input terminal on destination node.", __p, 0x1Cu);
        }

        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Wire should connect to input terminal on destination node.", &v157);
        std::logic_error::logic_error(&v153, &v157);
        v153.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(buf, &v153);
        *&buf[32] = 0;
        *&buf[24] = 0;
        *&v164 = 0;
        DWORD2(v164) = -1;
        *buf = &unk_1F5991430;
        *&buf[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, buf);
        *&__p[32] = "void AMCP::Graph::Graph::connect_nodes(const std::shared_ptr<Node> &, const std::shared_ptr<Node> &, Thread_Group_ID, Graph::Resource_Counts &)";
        *&v169 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
        DWORD2(v169) = 248;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v145);
      }

      if (*(*v9 + 48) != 1 && *(v14 + 408) == 1)
      {
        AMCP::Graph::Graph_Wire::Connection::Connection(__p, (v14 + 192));
        v157 = v172;
        *&v158 = v173;
        v172 = 0;
        *&v173 = 0;
        if (*&v181[3])
        {
          *&v181[5] = *&v181[3];
          operator delete(*&v181[3]);
        }

        if (v179)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v179);
        }

        if (*(&v173 + 1))
        {
          *&v174 = *(&v173 + 1);
          operator delete(*(&v173 + 1));
        }

        if (SBYTE7(v173) < 0)
        {
          operator delete(v172.__vftable);
        }

        if (SBYTE7(v170) < 0)
        {
          operator delete(v169);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, &v146);
        if (!v12)
        {
LABEL_334:
          v105 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v105 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v12);
          }

          v107 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v106 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v106)
          {
            atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
            v108 = *v107;
            std::__shared_weak_count::__release_shared[abi:ne200100](v106);
          }

          else
          {
            v108 = *v107;
          }

          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            v109 = &v157;
            if (SBYTE7(v158) < 0)
            {
              v109 = v157.__vftable;
            }

            v110 = v114;
            if (v114[23] < 0)
            {
              v110 = *v114;
            }

            *__p = 136316162;
            *&__p[4] = "Graph.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 255;
            *&__p[18] = 2080;
            *&__p[20] = "not (node != m_nodes_by_uid.end() && (node->second->node_has_fixed_thread_group() || old_group == group))";
            *&__p[28] = 2080;
            *&__p[30] = v109;
            *&__p[38] = 2080;
            *&v169 = v110;
            _os_log_error_impl(&dword_1DE1F9000, v108, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Groups do not match: %s, %s", __p, 0x30u);
          }

          __cxa_allocate_exception(0x40uLL);
          v111 = &v157;
          if (SBYTE7(v158) < 0)
          {
            v111 = v157.__vftable;
          }

          if (v114[23] < 0)
          {
            v114 = *v114;
          }

          caulk::make_string("Groups do not match: %s, %s", &v145, v111, v114);
          std::logic_error::logic_error(&v155, &v145);
          v155.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
          std::logic_error::logic_error(buf, &v155);
          *&buf[32] = 0;
          *&buf[24] = 0;
          *&v164 = 0;
          DWORD2(v164) = -1;
          *buf = &unk_1F5991430;
          *&buf[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, buf);
          *&__p[32] = "void AMCP::Graph::Graph::connect_nodes(const std::shared_ptr<Node> &, const std::shared_ptr<Node> &, Thread_Group_ID, Graph::Resource_Counts &)";
          *&v169 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
          DWORD2(v169) = 255;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v153);
        }

        v17 = *(v12 + 5);
        if (*(v17 + 48) == 1)
        {
          v18 = BYTE7(v158);
        }

        else
        {
          v18 = BYTE7(v158);
          if (*(v17 + 16) == 1)
          {
            if ((SBYTE7(v158) & 0x80u) == 0)
            {
              imp = BYTE7(v158);
            }

            else
            {
              imp = v157.__imp_.__imp_;
            }

            v57 = *(v114 + 23);
            v58 = v57;
            if ((v57 & 0x80u) != 0)
            {
              v57 = *(v114 + 1);
            }

            if (imp != v57)
            {
              goto LABEL_334;
            }

            v59 = (SBYTE7(v158) & 0x80u) == 0 ? &v157 : v157.__vftable;
            v60 = v58 >= 0 ? v114 : *v114;
            v12 = memcmp(v59, v60, imp);
            if (v12)
            {
              goto LABEL_334;
            }
          }
        }

        if (v18 < 0)
        {
          operator delete(v157.__vftable);
        }

        if ((*(&v146.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_186;
        }

        goto LABEL_55;
      }

      v19 = *a3;
      if (*(*a3 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *(v19 + 24), *(v19 + 32));
      }

      else
      {
        *__p = *(v19 + 24);
        *&__p[16] = *(v19 + 40);
      }

      v20 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v146.__r_.__value_.__l.__size_;
      }

      v22 = __p[23];
      v23 = __p[23];
      if (__p[23] < 0)
      {
        v22 = *&__p[8];
      }

      if (size == v22)
      {
        if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v146;
        }

        else
        {
          v24 = v146.__r_.__value_.__r.__words[0];
        }

        if (__p[23] >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = *__p;
        }

        v12 = memcmp(v24, v25, size);
        v26 = v12 == 0;
        if ((v23 & 0x80000000) == 0)
        {
LABEL_49:
          if (v26)
          {
            goto LABEL_50;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v26 = 0;
        if ((__p[23] & 0x80000000) == 0)
        {
          goto LABEL_49;
        }
      }

      operator delete(*__p);
      if (v26)
      {
LABEL_50:
        v27 = v20;
        AMCP::Graph::Node::get_nth_terminal(*a3, v147, 1u);
        v28 = *(*a2 + 16) == 2;
        if (v114[23] < 0)
        {
          std::string::__init_copy_ctor_external(&v144, *v114, *(v114 + 1));
        }

        else
        {
          v144 = *v114;
        }

        v117 = *(nth_terminal + 100);
        v118 = v28;
        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v141, *v14, *(v14 + 8));
        }

        else
        {
          v141 = *v14;
        }

        v29 = (v14 + 24);
        v142 = *(v14 + 24);
        v143 = *(v14 + 32);
        if (*(v14 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v138, *(v14 + 40), *(v14 + 48));
        }

        else
        {
          v138 = *(v14 + 40);
        }

        v139 = *v16;
        v140 = *(v14 + 72);
        *buf = v141;
        memset(&v141, 0, sizeof(v141));
        *&buf[24] = v142;
        *&buf[32] = v143;
        v164 = *&v138.__r_.__value_.__l.__data_;
        v30 = *v16;
        v167 = *(v14 + 72);
        v31 = v138.__r_.__value_.__r.__words[2];
        memset(&v138, 0, sizeof(v138));
        v165 = v31;
        v166 = v30;
        v32 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a1 + 17, buf);
        if (v32)
        {
          v33 = v32[13];
          v116 = v32[12];
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v116 = 0;
          v33 = 0;
        }

        if (*(v14 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v182, *(v14 + 40), *(v14 + 48));
        }

        else
        {
          *&v182.mSampleRate = *(v14 + 40);
          *&v182.mBytesPerPacket = *(v14 + 56);
        }

        *&v182.mBytesPerFrame = *v16;
        v182.mBitsPerChannel = *(v14 + 72);
        terminal = get_terminal(a3, &v182);
        if (SHIBYTE(v182.mFramesPerPacket) < 0)
        {
          operator delete(*&v182.mSampleRate);
        }

        v35 = *(terminal + 16);
        *&v145.mSampleRate = *terminal;
        *&v145.mBytesPerPacket = v35;
        *&v145.mBitsPerChannel = *(terminal + 32);
        memset(__p, 0, 36);
        v169 = 0u;
        v170 = 0u;
        mBitsPerChannel = 0;
        v172 = 0;
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        v176 = 0;
        v177 = 64;
        v178 = 0;
        v179 = 0;
        v180 = 1;
        memset(v181, 0, 36);
        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v182, *v14, *(v14 + 8));
          *&v182.mBytesPerFrame = *v29;
          v182.mBitsPerChannel = *(v14 + 32);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          *&v182.mSampleRate = *v14;
          *&v182.mBytesPerPacket = *(v14 + 16);
          *&v182.mBytesPerFrame = *v29;
          v182.mBitsPerChannel = *(v14 + 32);
        }

        *__p = *&v182.mSampleRate;
        *&__p[16] = *&v182.mBytesPerPacket;
        *&__p[24] = *&v182.mBytesPerFrame;
        *&__p[32] = v182.mBitsPerChannel;
        if (*(v14 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v182, *(v14 + 40), *(v14 + 48));
        }

        else
        {
          *&v182.mSampleRate = *(v14 + 40);
          *&v182.mBytesPerPacket = *(v14 + 56);
        }

        *&v182.mBytesPerFrame = *v16;
        v182.mBitsPerChannel = *(v14 + 72);
        if (SBYTE7(v170) < 0)
        {
          operator delete(v169);
        }

        v169 = *&v182.mSampleRate;
        v170 = *&v182.mBytesPerPacket;
        mBitsPerChannel = v182.mBitsPerChannel;
        if (SBYTE7(v173) < 0)
        {
          operator delete(v172.__vftable);
        }

        v172 = *&v144.__r_.__value_.__l.__data_;
        *&v173 = *(&v144.__r_.__value_.__l + 2);
        *(&v144.__r_.__value_.__s + 23) = 0;
        v144.__r_.__value_.__s.__data_[0] = 0;
        if ((&v173 + 8) != (v14 + 80))
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v173 + 1, *(v14 + 80), *(v14 + 88), (*(v14 + 88) - *(v14 + 80)) >> 2);
        }

        if (&v181[3] != (v14 + 104))
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v181[3], *(v14 + 104), *(v14 + 112), (*(v14 + 112) - *(v14 + 104)) >> 2);
        }

        v36 = *a3;
        HIDWORD(v177) = *(*a3 + 48);
        v180 = *(terminal + 88);
        v181[1] = *(terminal + 92);
        v181[2] = *(v36 + 160);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v37 = v179;
        v178 = v116;
        v179 = v33;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        v181[0] = v118;
        if (v117 != 1 && *(terminal + 100) != 1)
        {
          v95 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v95 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v37);
          }

          v97 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v96 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v96)
          {
            atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
            v98 = *v97;
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          else
          {
            v98 = *v97;
          }

          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            v99 = *v16;
            v100 = *a3;
            if (*(*a3 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v157, *(v100 + 24), *(v100 + 32));
            }

            else
            {
              v157 = *(v100 + 24);
              *&v158 = *(v100 + 40);
            }

            v101 = &v157;
            if (SBYTE7(v158) < 0)
            {
              v101 = v157.__vftable;
            }

            LODWORD(v182.mSampleRate) = 136316162;
            *(&v182.mSampleRate + 4) = "Graph_Wire.cpp";
            LOWORD(v182.mFormatFlags) = 1024;
            *(&v182.mFormatFlags + 2) = 90;
            HIWORD(v182.mBytesPerPacket) = 2080;
            *&v182.mFramesPerPacket = "not (connection_works)";
            LOWORD(v182.mChannelsPerFrame) = 2048;
            *(&v182.mChannelsPerFrame + 2) = v99;
            HIWORD(v182.mReserved) = 2080;
            v183 = v101;
            _os_log_error_impl(&dword_1DE1F9000, v98, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to connect two terminals with owned buffers: terminal %zu of node '%s'", &v182, 0x30u);
            if (SBYTE7(v158) < 0)
            {
              operator delete(v157.__vftable);
            }
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v162);
          __cxa_allocate_exception(0x40uLL);
          v102 = *v16;
          v103 = *a3;
          if (*(*a3 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v154, v103[1].__r_.__value_.__l.__data_, v103[1].__r_.__value_.__l.__size_);
          }

          else
          {
            v154 = v103[1];
          }

          v104 = &v154;
          if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v104 = v154.__r_.__value_.__r.__words[0];
          }

          caulk::make_string("Attempt to connect two terminals with owned buffers: terminal %zu of node '%s'", &v155, v102, v104);
          std::logic_error::logic_error(&v156, &v155);
          v156.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v157, &v156);
          v159 = 0;
          *(&v158 + 1) = 0;
          v160 = 0;
          v161 = -1;
          v157.__vftable = &unk_1F5991430;
          *&v158 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v182, &v157);
          *&v182.mBitsPerChannel = "Graph_Wire::Connection AMCP::Graph::Graph_Wire::create_connection(const std::shared_ptr<Node> &, Thread_Group_ID, CA::StreamDescription &, Terminal_Buffer_Ownership, Connection::Terminal_Read_Policy, const std::shared_ptr<Wire_Volume_Connection> &) const";
          v183 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
          v184 = 90;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v152);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (SHIBYTE(v165) < 0)
        {
          operator delete(v164);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v38 = *(nth_terminal + 16);
        v157 = *nth_terminal;
        v158 = v38;
        v159 = *(nth_terminal + 32);
        v175 = 0uLL;
        v39 = v157.__vftable;
        mSampleRate = v145.mSampleRate;
        if (*&v157.__vftable != v145.mSampleRate || LODWORD(v157.__imp_.__imp_) != v145.mFormatID || v158 != *&v145.mBytesPerPacket || (mChannelsPerFrame = HIDWORD(v158), HIDWORD(v158) != v145.mChannelsPerFrame) || v159 != v145.mBitsPerChannel || (v37 = CA::Implementation::EquivalentFormatFlags(&v157, &v145, 0), v42 = 0, v43 = mChannelsPerFrame, (v37 & 1) == 0))
        {
          *buf = v157;
          *&buf[16] = v158;
          *&buf[32] = v159;
          v182 = v145;
          v44 = v157.__imp_.__imp_;
          if (*&v157.__vftable == v145.mSampleRate && LODWORD(v157.__imp_.__imp_) == v145.mFormatID && *&buf[16] == *&v182.mBytesPerPacket && *&buf[28] == *&v182.mChannelsPerFrame)
          {
            v37 = CA::Implementation::EquivalentFormatFlags(buf, &v182, 0);
            if (v37)
            {
              goto LABEL_123;
            }
          }

          else if (LODWORD(v157.__imp_.__imp_) != v145.mFormatID)
          {
            goto LABEL_123;
          }

          if (*&buf[16] == *&v182.mBytesPerPacket && *&buf[28] == *&v182.mChannelsPerFrame)
          {
            if (v44 == 1819304813)
            {
              v45 = *&buf[12] & 0x7FFFFFFF;
              if ((*&buf[12] & 0x7FFFFFFF) == 0)
              {
                v45 = *&buf[12];
              }

              v46 = *&buf[24];
              if (*&buf[24])
              {
                if ((buf[12] & 0x20) != 0)
                {
                  v47 = 1;
                }

                else
                {
                  v47 = *&buf[28];
                }

                v37 = 0x80000000;
                if (v47)
                {
                  v46 = 8 * (*&buf[24] / v47);
                  v48 = v46 == *&buf[32];
                }

                else
                {
                  v46 = 0;
                  v48 = *&buf[32] == 0;
                }

                v62 = v48;
              }

              else
              {
                v62 = *&buf[32] == 0;
                v37 = 0x80000000;
              }

              v63 = v45 & 0xFFFFFFBF;
              if (v62)
              {
                v63 |= 8u;
              }

              if ((buf[32] & 7) == 0 && v46 == *&buf[32])
              {
                v63 &= 0xFFFFFFAF;
              }

              if (v63)
              {
                v63 &= 0xFFFFFFBB;
              }

              if ((v63 & 8) != 0 && *&buf[32] <= 8u)
              {
                v63 &= 2u;
              }

              if (*&buf[28] == 1)
              {
                v63 &= ~0x20u;
              }

              if (!v63)
              {
                v63 = 0x80000000;
              }

              mBytesPerFrame = v182.mBytesPerFrame;
              mFormatFlags = v182.mFormatFlags & 0x7FFFFFFF;
              if ((v182.mFormatFlags & 0x7FFFFFFF) == 0)
              {
                mFormatFlags = v182.mFormatFlags;
              }

              if (v182.mBytesPerFrame)
              {
                if ((v182.mFormatFlags & 0x20) != 0)
                {
                  v68 = 1;
                }

                else
                {
                  v68 = *&buf[28];
                }

                if (v68)
                {
                  mBytesPerFrame = 8 * (v182.mBytesPerFrame / v68);
                  v69 = mBytesPerFrame == *&buf[32];
                  goto LABEL_243;
                }

                mBytesPerFrame = 0;
              }

              v69 = *&buf[32] == 0;
LABEL_243:
              v70 = v69;
              v71 = mFormatFlags & 0xFFFFFFBF;
              if (v70)
              {
                v71 |= 8u;
              }

              v72 = (buf[32] & 7) == 0 && mBytesPerFrame == *&buf[32];
              v73 = v71 & 0xFFFFFFAF;
              if (!v72)
              {
                v73 = v71;
              }

              if (v73)
              {
                v73 &= 0xFFFFFFBB;
              }

              v74 = (v73 & 8) == 0 || *&buf[32] > 8u;
              v75 = v73 & 2;
              if (v74)
              {
                v75 = v73;
              }

              if (*&buf[28] == 1)
              {
                v76 = v75 & 0xFFFFFFDF;
              }

              else
              {
                v76 = v75;
              }

              if (!v76)
              {
                v76 = 0x80000000;
              }

              v61 = v63 == v76;
            }

            else
            {
              v61 = *&buf[12] == v182.mFormatFlags;
            }

            v77 = v61;
            v42 = v77 ^ 1;
          }

          else
          {
LABEL_123:
            v42 = 1;
          }

          v43 = HIDWORD(v158);
          mChannelsPerFrame = v145.mChannelsPerFrame;
        }

        v49 = *(v14 + 80);
        v50 = *(v14 + 88);
        v51 = *(v14 + 104);
        v52 = *(v14 + 112);
        if (*&v39 != mSampleRate)
        {
          if (*(v14 + 132) == 1)
          {
            goto LABEL_274;
          }

          LODWORD(v175) = 1;
        }

        if (v42)
        {
          if (!*(v14 + 136))
          {
            goto LABEL_274;
          }

          DWORD2(v175) = 1;
        }

        if (v43 != mChannelsPerFrame || v49 != v50)
        {
          if (mChannelsPerFrame < v50 - v49)
          {
LABEL_274:
            v79 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v79 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v37);
            }

            v81 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v80 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v80)
            {
              atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
              v82 = *v81;
              std::__shared_weak_count::__release_shared[abi:ne200100](v80);
            }

            else
            {
              v82 = *v81;
            }

            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              v83 = *a2;
              if (*(*a2 + 47) < 0)
              {
                std::string::__init_copy_ctor_external(&v182, *(v83 + 24), *(v83 + 32));
              }

              else
              {
                *&v182.mSampleRate = *(v83 + 24);
                *&v182.mBytesPerPacket = *(v83 + 40);
              }

              if ((v182.mFramesPerPacket & 0x80000000) == 0)
              {
                v84 = COERCE_DOUBLE(&v182);
              }

              else
              {
                v84 = v182.mSampleRate;
              }

              v85 = *a3;
              if (*(*a3 + 47) < 0)
              {
                std::string::__init_copy_ctor_external(&v157, *(v85 + 24), *(v85 + 32));
              }

              else
              {
                v157 = *(v85 + 24);
                *&v158 = *(v85 + 40);
              }

              v86 = &v157;
              if (SBYTE7(v158) < 0)
              {
                v86 = v157.__vftable;
              }

              *buf = 136316162;
              *&buf[4] = "Graph.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 268;
              *&buf[18] = 2080;
              *&buf[20] = "not (did_connect)";
              *&buf[28] = 2080;
              *&buf[30] = v84;
              *&buf[38] = 2080;
              *&v164 = v86;
              _os_log_error_impl(&dword_1DE1F9000, v82, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Connection failed: %s-->%s", buf, 0x30u);
              if (SBYTE7(v158) < 0)
              {
                operator delete(v157.__vftable);
              }

              if (SHIBYTE(v182.mFramesPerPacket) < 0)
              {
                operator delete(*&v182.mSampleRate);
              }
            }

            __cxa_allocate_exception(0x40uLL);
            v87 = *a2;
            if (*(*a2 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v155, v87[1].__r_.__value_.__l.__data_, v87[1].__r_.__value_.__l.__size_);
            }

            else
            {
              v155 = v87[1];
            }

            if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &v155;
            }

            else
            {
              v88 = v155.__r_.__value_.__r.__words[0];
            }

            v89 = *a3;
            if (*(*a3 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v154, v89[1].__r_.__value_.__l.__data_, v89[1].__r_.__value_.__l.__size_);
            }

            else
            {
              v154 = v89[1];
            }

            v90 = &v154;
            if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v90 = v154.__r_.__value_.__r.__words[0];
            }

            caulk::make_string("Connection failed: %s-->%s", &v153, v88, v90);
            std::logic_error::logic_error(&v156, &v153);
            v156.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v182, &v156);
            *&v182.mBytesPerFrame = 0;
            *&v182.mBitsPerChannel = 0;
            v183 = 0;
            v184 = -1;
            *&v182.mSampleRate = &unk_1F5991430;
            *&v182.mBytesPerPacket = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v182);
            *&buf[32] = "void AMCP::Graph::Graph::connect_nodes(const std::shared_ptr<Node> &, const std::shared_ptr<Node> &, Thread_Group_ID, Graph::Resource_Counts &)";
            *&v164 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
            DWORD2(v164) = 268;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v152);
          }

          while (v49 != v50)
          {
            if (*v49 == -1)
            {
              v53 = 3;
            }

            else
            {
              v53 = *v49 >= mChannelsPerFrame;
            }

            if (v53 != 3 && v53 != 0)
            {
              goto LABEL_274;
            }

            ++v49;
          }
        }

        if (v51 != v52 && &v181[3] != (v14 + 104))
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v181[3], v51, v52, (v52 - v51) >> 2);
        }

        if (*(v14 + 408) == 1)
        {
          AMCP::Graph::Graph_Wire::Connection::operator=(v14 + 192, __p);
        }

        else
        {
          AMCP::Graph::Graph_Wire::Connection::Connection((v14 + 192), __p);
          *(v14 + 408) = 1;
        }

        AMCP::Graph::Graph_Wire::Connection::Connection(&v124, __p);
        v9 = a2;
        if (v131)
        {
          ++*a5;
        }

        if (v133)
        {
          ++a5[2];
        }

        if (v129 != v130)
        {
          ++a5[3];
        }

        if (v132)
        {
          ++a5[4];
        }

        if (v134)
        {
          ++a5[5];
        }

        v55 = v136;
        if (v136 != v137)
        {
          ++a5[6];
        }

        if (v55)
        {
          v137 = v55;
          operator delete(v55);
        }

        if (v135)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v135);
        }

        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        if (v128 < 0)
        {
          operator delete(v127);
        }

        if (v126 < 0)
        {
          operator delete(v125);
        }

        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (*&v181[3])
        {
          *&v181[5] = *&v181[3];
          operator delete(*&v181[3]);
        }

        if (v179)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v179);
        }

        v12 = *(&v173 + 1);
        if (*(&v173 + 1))
        {
          *&v174 = *(&v173 + 1);
          operator delete(*(&v173 + 1));
        }

        if (SBYTE7(v173) < 0)
        {
          operator delete(v172.__vftable);
        }

        if (SBYTE7(v170) < 0)
        {
          operator delete(v169);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((v27 & 0x80) == 0)
          {
            goto LABEL_186;
          }
        }

        else if ((v27 & 0x80) == 0)
        {
          goto LABEL_186;
        }

LABEL_55:
        operator delete(v146.__r_.__value_.__l.__data_);
        goto LABEL_186;
      }

LABEL_54:
      v9 = a2;
      if (v20 < 0)
      {
        goto LABEL_55;
      }

LABEL_186:
      v13 += 8;
      if (v13 == v120)
      {
        v13 = v150;
        goto LABEL_270;
      }
    }
  }

LABEL_273:
  v78 = *MEMORY[0x1E69E9840];
}

void sub_1DE563544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  v74 = STACK[0x440];
  if (STACK[0x440])
  {
    STACK[0x448] = v74;
    operator delete(v74);
  }

  if (STACK[0x428])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x428]);
  }

  v75 = STACK[0x3E8];
  if (STACK[0x3E8])
  {
    STACK[0x3F0] = v75;
    operator delete(v75);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&STACK[0x330]);
  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (STACK[0x248])
  {
    operator delete(STACK[0x248]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph5Graph13connect_nodesERKNSt3__110shared_ptrINS0_4NodeEEES7_NS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERNS1_15Resource_CountsEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

AMCP::Log::AMCP_Scope_Registry *std::__function::__func<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *result, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(result + 1);
  v4 = *(a3 + 103);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 88);
  }

  v6 = *(v3 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = v3[1];
  }

  if (v4 != v6 || ((v10 = *(a3 + 80), v8 = (a3 + 80), v9 = v10, v5 >= 0) ? (v11 = v8) : (v11 = v9), v7 >= 0 ? (v12 = v3) : (v12 = *v3), result = memcmp(v11, v12, v4), result))
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v28 = "Graph.cpp";
      v29 = 1024;
      v30 = 236;
      v31 = 2080;
      v32 = "connection.m_thread_group != group";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    std::logic_error::logic_error(&v19, "");
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "auto AMCP::Graph::Graph::connect_nodes(const std::shared_ptr<Node> &, const std::shared_ptr<Node> &, Thread_Group_ID, Graph::Resource_Counts &)::(anonymous class)::operator()(Direction, const Graph_Wire::Connection &) const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    v35 = 236;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE563CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v23 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a22);
  MEMORY[0x1E12C0F00](&a20);
  if (a11)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v23 - 113));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5979ED8;
  a2[1] = v2;
  return result;
}

uint64_t *std::vector<AMCP::Wire_Identifier>::push_back[abi:ne200100](uint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x333333333333333)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x199999999999999)
    {
      v13 = 0x333333333333333;
    }

    else
    {
      v13 = v11;
    }

    v26 = v2;
    if (v13)
    {
      std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](v13);
    }

    v14 = 80 * v10;
    *(&v25 + 1) = 0;
    v15 = *a2;
    *(v14 + 16) = *(a2 + 2);
    *v14 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v16 = *(a2 + 3);
    *(v14 + 32) = *(a2 + 8);
    *(v14 + 24) = v16;
    v17 = *(a2 + 40);
    *(v14 + 56) = *(a2 + 7);
    *(v14 + 40) = v17;
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 5) = 0;
    v18 = *(a2 + 8);
    *(v14 + 72) = *(a2 + 18);
    *(v14 + 64) = v18;
    *&v25 = 80 * v10 + 80;
    v19 = v2[1];
    v20 = 80 * v10 + *v2 - v19;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(*v2, v19, v20);
    v21 = *v2;
    *v2 = v20;
    v22 = v2[2];
    v23 = v25;
    *(v2 + 1) = v25;
    *&v25 = v21;
    *(&v25 + 1) = v22;
    v24[0] = v21;
    v24[1] = v21;
    result = std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(v24);
    v9 = v23;
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 3);
    *(v3 + 32) = *(a2 + 8);
    *(v3 + 24) = v6;
    v7 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 7);
    *(v3 + 40) = v7;
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 5) = 0;
    v8 = *(a2 + 8);
    *(v3 + 72) = *(a2 + 18);
    *(v3 + 64) = v8;
    v9 = v3 + 80;
  }

  v2[1] = v9;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<AMCP::Wire_Identifier>>,0>((v2 + 2));
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

std::string *std::vector<AMCP::Wire_Identifier>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AMCP::Wire_Identifier*>,std::__wrap_iter<AMCP::Wire_Identifier*>>(std::string *result, std::string *a2, std::string *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v8 = result;
    size = result->__r_.__value_.__l.__size_;
    v9 = result->__r_.__value_.__r.__words[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - size) >> 4)) >= a5)
    {
      v15 = size - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((size - a2) >> 4)) >= a5)
      {
        v17 = 5 * a5;
        std::vector<AMCP::Wire_Identifier>::__move_range(result, a2, result->__r_.__value_.__l.__size_, a2 + 80 * a5);
        v16 = (a3 + 16 * v17);
      }

      else
      {
        result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(a3 + v15, a4, size);
        v8[1] = result;
        if (v15 < 1)
        {
          return result;
        }

        std::vector<AMCP::Wire_Identifier>::__move_range(v8, a2, size, a2 + 80 * a5);
        v16 = (a3 + v15);
      }

      return std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Identifier *,AMCP::Wire_Identifier *,AMCP::Wire_Identifier *>(a3, v16, a2);
    }

    else
    {
      v11 = result->__r_.__value_.__r.__words[0];
      v12 = a5 - 0x3333333333333333 * ((size - result->__r_.__value_.__r.__words[0]) >> 4);
      if (v12 > 0x333333333333333)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x199999999999999)
      {
        v14 = 0x333333333333333;
      }

      else
      {
        v14 = v12;
      }

      v40 = v8;
      if (v14)
      {
        std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](v14);
      }

      v18 = 0;
      v19 = 16 * ((a2 - v11) >> 4);
      v36 = 0;
      v37 = v19;
      v38 = v19;
      v39 = 0;
      v20 = v19 + 80 * a5;
      v21 = 80 * a5;
      do
      {
        v22 = v19 + v18;
        v23 = a3 + v18;
        if (SHIBYTE(a3->__r_.__value_.__r.__words[v18 / 8 + 2]) < 0)
        {
          std::string::__init_copy_ctor_external((v19 + v18), *v23, *(v23 + 1));
        }

        else
        {
          v24 = *v23;
          *(v22 + 16) = *(v23 + 2);
          *v22 = v24;
        }

        v25 = v19 + v18;
        v26 = a3 + v18;
        v27 = *(&a3[1].__r_.__value_.__l.__data_ + v18);
        *(v25 + 32) = a3[1].__r_.__value_.__r.__words[v18 / 8 + 1];
        *(v25 + 24) = v27;
        if (a3[2].__r_.__value_.__s.__data_[v18 + 15] < 0)
        {
          std::string::__init_copy_ctor_external((v25 + 40), *(v26 + 5), *(v26 + 6));
        }

        else
        {
          v28 = *(v26 + 40);
          *(v25 + 56) = *(v26 + 7);
          *(v25 + 40) = v28;
        }

        v29 = v19 + v18;
        v30 = a3[2].__r_.__value_.__r.__words[v18 / 8 + 2];
        *(v29 + 72) = *(&a3[3].__r_.__value_.__l.__data_ + v18);
        *(v29 + 64) = v30;
        v18 += 80;
      }

      while (v21 != v18);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(a2, v8[1], v20);
      v31 = *v8;
      v32 = v20 + v8[1] - a2;
      v8[1] = a2;
      v33 = v37 + v31 - a2;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(v31, a2, v33);
      v34 = *v8;
      *v8 = v33;
      v8[1] = v32;
      v35 = v8[2];
      v8[2] = v39;
      v38 = v34;
      v39 = v35;
      v36 = v34;
      v37 = v34;
      return std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(&v36);
    }
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
      }

      v10 = a3 + v6;
      v11 = a1 + v6;
      v12 = *(a1 + v6 + 24);
      *(v10 + 32) = *(a1 + v6 + 32);
      *(v10 + 24) = v12;
      if (*(a1 + v6 + 63) < 0)
      {
        std::string::__init_copy_ctor_external((v10 + 40), *(v11 + 40), *(v11 + 48));
      }

      else
      {
        v13 = *(v11 + 40);
        *(v10 + 56) = *(v11 + 56);
        *(v10 + 40) = v13;
      }

      v14 = a3 + v6;
      v15 = *(a1 + v6 + 64);
      *(v14 + 72) = *(a1 + v6 + 72);
      *(v14 + 64) = v15;
      v6 += 80;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1DE564398(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 80;
    std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<AMCP::Wire_Identifier>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = (a2 + v4 - a4);
    v7 = *(a1 + 8);
    do
    {
      v8 = *v6;
      *(v7 + 16) = *(v6 + 2);
      *v7 = v8;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v9 = *(v6 + 3);
      *(v7 + 32) = *(v6 + 8);
      *(v7 + 24) = v9;
      result = *(v6 + 40);
      *(v7 + 56) = *(v6 + 7);
      *(v7 + 40) = result;
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 5) = 0;
      v11 = *(v6 + 8);
      *(v7 + 72) = *(v6 + 18);
      *(v7 + 64) = v11;
      v6 += 5;
      v7 += 80;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v12 = 0;
    v13 = a4 - v4;
    do
    {
      v14 = v4 + v12;
      v15 = (v4 + v12 - 80);
      if (*(v4 + v12 - 57) < 0)
      {
        operator delete(*v15);
      }

      v16 = (v5 + v12 - 80);
      v17 = *v16;
      *(v4 + v12 - 64) = *(v5 + v12 - 64);
      *v15 = v17;
      *(v5 + v12 - 57) = 0;
      *v16 = 0;
      LODWORD(v16) = *(v5 + v12 - 48);
      *(v14 - 56) = *(v5 + v12 - 56);
      *(v14 - 48) = v16;
      v18 = (v14 - 40);
      if (*(v14 - 17) < 0)
      {
        operator delete(*v18);
      }

      v19 = v5 + v12;
      result = *(v5 + v12 - 40);
      *(v14 - 24) = *(v5 + v12 - 24);
      *v18 = result;
      *(v19 - 17) = 0;
      *(v19 - 40) = 0;
      v20 = v4 + v12;
      v21 = *(v5 + v12 - 16);
      *(v20 - 8) = *(v5 + v12 - 8);
      *(v20 - 16) = v21;
      v12 -= 80;
    }

    while (v13 != v12);
  }

  return result;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Identifier *,AMCP::Wire_Identifier *,AMCP::Wire_Identifier *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    v6 = v4[1].__r_.__value_.__r.__words[1];
    this[1].__r_.__value_.__r.__words[0] = v4[1].__r_.__value_.__r.__words[0];
    LODWORD(this[1].__r_.__value_.__r.__words[1]) = v6;
    std::string::operator=((this + 40), (v4 + 40));
    data = v4[3].__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__r.__words[2] = v4[2].__r_.__value_.__r.__words[2];
    LODWORD(this[3].__r_.__value_.__l.__data_) = data;
    this = (this + 80);
    v4 = (v4 + 80);
  }

  while (v4 != v5);
  return v5;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<AMCP::Wire_Identifier>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<AMCP::Wire_Identifier>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void AMCP::Graph::Graph::get_thread_group_id_from_upstream(uint64_t a1, void *a2, uint64_t a3, size_t *a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v8 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 12, a3);
  if (v8 && *(v8 + 504) == 1)
  {
    v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v38 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      v41 = *v40;
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    else
    {
      v41 = *v40;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *v79 = 136315650;
      *&v79[4] = "Graph.cpp";
      *&v79[12] = 1024;
      *&v79[14] = 409;
      *&v79[18] = 2080;
      *&v79[20] = "not (not m_wire_index.is_connected(current_wire))";
      _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v79, 0x1Cu);
    }

    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &__p);
    std::logic_error::logic_error(&v70, &__p);
    v70.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(v73, &v70);
    *&v75[10] = 0;
    v76 = 0;
    v77 = 0;
    v78 = -1;
    *v73 = &unk_1F5991430;
    *&v75[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v79, v73);
    v80 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_upstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &) const";
    *&v81 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    DWORD2(v81) = 409;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v51);
  }

  v9 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2 + 22, a3);
  if (!v9)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_90;
  }

  v11 = *(v9 + 5);
  v10 = *(v9 + 6);
  *&v72 = v11;
  *(&v72 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  v13 = a4[1];
  if (*a4 != v13)
  {
    while (*v12 != v11)
    {
      v12 += 2;
      if (v12 == v13)
      {
        goto LABEL_11;
      }
    }
  }

  if (v12 != v13)
  {
    v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v42 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      v45 = *v44;
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    else
    {
      v45 = *v44;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *v79 = 136315650;
      *&v79[4] = "Graph.cpp";
      *&v79[12] = 1024;
      *&v79[14] = 417;
      *&v79[18] = 2080;
      *&v79[20] = "not (std::find(path.begin(), path.end(), source_node) == path.end())";
      _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Graph contains a cycle.", v79, 0x1Cu);
    }

    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Graph contains a cycle.", &__p);
    std::logic_error::logic_error(&v70, &__p);
    v70.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(v73, &v70);
    *&v75[10] = 0;
    v76 = 0;
    v77 = 0;
    v78 = -1;
    *v73 = &unk_1F5991430;
    *&v75[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v79, v73);
    v80 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_upstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &) const";
    *&v81 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    DWORD2(v81) = 417;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v51);
  }

LABEL_11:
  std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a4, &v72);
  if (*(v11 + 48) == 1)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_88;
  }

  if (*(v11 + 16) != 1)
  {
    if (*(v11 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v79, *(v11 + 24), *(v11 + 32));
    }

    else
    {
      *v79 = *(v11 + 24);
      *&v79[16] = *(v11 + 40);
    }

    *a1 = *v79;
    *(a1 + 16) = *&v79[16];
    *(a1 + 24) = 1;
    goto LABEL_88;
  }

  if (*(v11 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v79, *(v11 + 24), *(v11 + 32));
  }

  else
  {
    *v79 = *(v11 + 24);
    *&v79[16] = *(v11 + 40);
  }

  AMCP::Graph::Wire_Index::get_wires_for_node(&__p, a2 + 7, v79, 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 88) - *(v11 + 80)) >> 4), 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 64) - *(v11 + 56)) >> 4));
  if ((v79[23] & 0x80000000) != 0)
  {
    operator delete(*v79);
  }

  memset(&v70, 0, sizeof(v70));
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v14 = __p.__r_.__value_.__r.__words[2];
  if (!__p.__r_.__value_.__r.__words[2])
  {
    goto LABEL_82;
  }

  v15 = 0;
  do
  {
    if (*(v14 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, v14[2], v14[3]);
    }

    else
    {
      v64 = *(v14 + 2);
    }

    v65 = v14[5];
    v66 = *(v14 + 12);
    v16 = v14 + 7;
    if (*(v14 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v61, v14[7], v14[8]);
    }

    else
    {
      *&v61.__r_.__value_.__l.__data_ = *v16;
      v61.__r_.__value_.__r.__words[2] = v14[9];
    }

    v62 = v14[10];
    v63 = *(v14 + 22);
    *v79 = v64;
    memset(&v64, 0, sizeof(v64));
    *&v79[24] = v65;
    LODWORD(v80) = v66;
    v81 = *&v61.__r_.__value_.__l.__data_;
    v17 = v61.__r_.__value_.__r.__words[2];
    memset(&v61, 0, sizeof(v61));
    v84 = *(v14 + 22);
    v18 = v14[10];
    v82 = v17;
    v83 = v18;
    v19 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 12, v79);
    if (v19 && *(v19 + 504) == 1)
    {
      AMCP::Graph::Wire_Index::get_tgid_for_wire(&__str, (a2 + 7), v79);
      if (v15)
      {
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __str.__r_.__value_.__l.__size_;
        }

        if (size != v22 || ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v24 = &v70) : (v24 = v70.__r_.__value_.__r.__words[0]), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), v20 = memcmp(v24, p_str, size), v20))
        {
          v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v46 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v20);
          }

          v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            v49 = *v48;
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          else
          {
            v49 = *v48;
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *v73 = 136315650;
            *&v73[4] = "Graph.cpp";
            v74 = 1024;
            *v75 = 449;
            *&v75[4] = 2080;
            *&v75[6] = "not (group == temp)";
            _os_log_error_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Node with Single_Thread policy should not have connected wires with different TIDs.", v73, 0x1Cu);
          }

          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Node with Single_Thread policy should not have connected wires with different TIDs.", &v52);
          std::logic_error::logic_error(&v53, &v52);
          v53.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v54, &v53);
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = -1;
          v54.__vftable = &unk_1F5991430;
          v55 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v73, &v54);
          v76 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_upstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &) const";
          v77 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
          v78 = 449;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v50);
        }

        if ((v23 & 0x80) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        std::string::operator=(&v70, &__str);
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_65:
          v15 = 1;
          goto LABEL_66;
        }
      }

      operator delete(__str.__r_.__value_.__l.__data_);
      goto LABEL_65;
    }

    if (v15)
    {
      goto LABEL_65;
    }

    v26 = *(v14 + 79);
    if (v26 >= 0)
    {
      v27 = *(v14 + 79);
    }

    else
    {
      v27 = v14[8];
    }

    v28 = *(a3 + 23);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(a3 + 8);
    }

    if (v27 == v28 && (v26 >= 0 ? (v30 = v14 + 7) : (v30 = *v16), (v31 = *a3, v29 >= 0) ? (v32 = a3) : (v32 = *a3), !memcmp(v30, v32, v27)))
    {
      v33 = v68;
      if (v68 >= v69)
      {
        v34 = std::vector<AMCP::Wire_Identifier>::__emplace_back_slow_path<AMCP::Wire_Identifier const&>(&v67, v79);
      }

      else
      {
        std::__construct_at[abi:ne200100]<AMCP::Wire_Identifier,AMCP::Wire_Identifier const&,AMCP::Wire_Identifier*>(v68, v79);
        v34 = (v33 + 80);
      }

      v15 = 0;
      v68 = v34;
    }

    else
    {
      v15 = 0;
    }

LABEL_66:
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81);
    }

    if ((v79[23] & 0x80000000) != 0)
    {
      operator delete(*v79);
    }

    v14 = *v14;
  }

  while (v14);
  if (v15)
  {
    *a1 = v70;
    memset(&v70, 0, sizeof(v70));
    v35 = 1;
    goto LABEL_83;
  }

  if (v67 != v68)
  {
    AMCP::Graph::Graph::get_thread_group_id_from_upstream(a1, a2, v67, a4);
    goto LABEL_84;
  }

LABEL_82:
  v35 = 0;
  *a1 = 0;
LABEL_83:
  *(a1 + 24) = v35;
LABEL_84:
  *v79 = &v67;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](v79);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(__p.__r_.__value_.__r.__words[2]);
  v36 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (v36)
  {
    operator delete(v36);
  }

LABEL_88:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_90:
  v37 = *MEMORY[0x1E69E9840];
}

void sub_1DE565174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *(v61 - 192) = &a46;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100]((v61 - 192));
  if (a54 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::~__hash_table(&a55);
  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  _Unwind_Resume(a1);
}

std::string *std::__construct_at[abi:ne200100]<AMCP::Wire_Identifier,AMCP::Wire_Identifier const&,AMCP::Wire_Identifier*>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
  this[1].__r_.__value_.__r.__words[0] = v5;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
    *&this[1].__r_.__value_.__r.__words[2] = v6;
  }

  v7 = *(a2 + 8);
  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 18);
  this[2].__r_.__value_.__r.__words[2] = v7;
  return this;
}

void sub_1DE565438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Graph::get_thread_group_id_from_downstream(std::string *a1, void *a2, uint64_t a3, size_t *a4, uint64_t a5)
{
  v91 = *MEMORY[0x1E69E9840];
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 12, a3);
  if (v10 && *(v10 + 504) == 1)
  {
    v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v48 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v50 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      v51 = *v50;
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    else
    {
      v51 = *v50;
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *v85 = 136315650;
      *&v85[4] = "Graph.cpp";
      *&v85[12] = 1024;
      *&v85[14] = 477;
      *&v85[18] = 2080;
      *&v85[20] = "not (not m_wire_index.is_connected(current_wire))";
      _os_log_error_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v85, 0x1Cu);
    }

    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v72);
    std::logic_error::logic_error(&v76, &v72);
    v76.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v77, &v76);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = -1;
    v77.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v77.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v85, &v77);
    v86 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_downstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &, const std::set<Wire_Identifier> &) const";
    *&v87 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    DWORD2(v87) = 477;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v75);
  }

  v11 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2 + 22, (a3 + 40));
  if (!v11)
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_122;
  }

  v12 = *(v11 + 5);
  v13 = *(v11 + 6);
  v76.__vftable = v12;
  v76.__imp_.__imp_ = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a4;
  v15 = a4[1];
  if (*a4 != v15)
  {
    while (*v14 != v12)
    {
      v14 += 2;
      if (v14 == v15)
      {
        goto LABEL_11;
      }
    }
  }

  if (v14 != v15)
  {
    v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v52 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      v55 = *v54;
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    else
    {
      v55 = *v54;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *v85 = 136315650;
      *&v85[4] = "Graph.cpp";
      *&v85[12] = 1024;
      *&v85[14] = 485;
      *&v85[18] = 2080;
      *&v85[20] = "not (std::find(path_to_context.begin(), path_to_context.end(), dest_node) == path_to_context.end())";
      _os_log_error_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Graph contains a cycle.", v85, 0x1Cu);
    }

    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Graph contains a cycle.", &v72);
    std::logic_error::logic_error(&v74, &v72);
    v74.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v77, &v74);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = -1;
    v77.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v77.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v85, &v77);
    v86 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_downstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &, const std::set<Wire_Identifier> &) const";
    *&v87 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    DWORD2(v87) = 485;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v75);
  }

LABEL_11:
  std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a4, &v76);
  v16 = *(v12 + 16);
  if (v16)
  {
    if (*(v12 + 48) != 1 && v16 == 1)
    {
      if (*(v12 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v85, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        *v85 = *(v12 + 24);
        *&v85[16] = *(v12 + 40);
      }

      AMCP::Graph::Wire_Index::get_wires_for_node(&v72, a2 + 7, v85, 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 88) - *(v12 + 80)) >> 4), 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 64) - *(v12 + 56)) >> 4));
      if ((v85[23] & 0x80000000) != 0)
      {
        operator delete(*v85);
      }

      if (v73)
      {
        v58 = a4;
        v59 = v13;
        v60 = a1;
        v17 = v72.__r_.__value_.__r.__words[2];
        if (v72.__r_.__value_.__r.__words[2])
        {
          while (1)
          {
            if (*(v17 + 39) < 0)
            {
              std::string::__init_copy_ctor_external(&v77, v17[2], v17[3]);
            }

            else
            {
              v77 = *(v17 + 2);
            }

            v78 = v17[5];
            LODWORD(v79) = *(v17 + 12);
            if (*(v17 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v82, v17[7], v17[8]);
            }

            else
            {
              v82 = *(v17 + 7);
            }

            v83 = v17[10];
            v84 = *(v17 + 22);
            *v85 = v77;
            memset(&v77, 0, sizeof(v77));
            *&v85[24] = v78;
            LODWORD(v86) = v79;
            v87 = *&v82.__r_.__value_.__l.__data_;
            v18 = v82.__r_.__value_.__r.__words[2];
            memset(&v82, 0, sizeof(v82));
            v90 = *(v17 + 22);
            v19 = v17[10];
            v88 = v18;
            v89 = v19;
            v20 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 12, v85);
            if (v20)
            {
              v21 = *(v20 + 504);
            }

            else
            {
              v21 = 0;
            }

            if (SHIBYTE(v88) < 0)
            {
              operator delete(v87);
            }

            if ((v85[23] & 0x80000000) != 0)
            {
              operator delete(*v85);
            }

            if (v21)
            {
              break;
            }

            v17 = *v17;
            if (!v17)
            {
              v22 = v72.__r_.__value_.__r.__words[2];
              goto LABEL_45;
            }
          }

          if (*(v17 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v69, v17[2], v17[3]);
          }

          else
          {
            v69 = *(v17 + 2);
          }

          v70 = v17[5];
          v71 = *(v17 + 12);
          if (*(v17 + 79) < 0)
          {
            std::string::__init_copy_ctor_external(&v68, v17[7], v17[8]);
          }

          else
          {
            v68 = *(v17 + 7);
          }

          *v85 = *&v69.__r_.__value_.__l.__data_;
          v34 = v69.__r_.__value_.__r.__words[2];
          memset(&v69, 0, sizeof(v69));
          *&v85[16] = v34;
          *&v85[24] = v70;
          LODWORD(v86) = v71;
          v87 = *&v68.__r_.__value_.__l.__data_;
          v35 = v68.__r_.__value_.__r.__words[2];
          memset(&v68, 0, sizeof(v68));
          v36 = v17[10];
          v90 = *(v17 + 22);
          v88 = v35;
          v89 = v36;
          AMCP::Graph::Wire_Index::get_tgid_for_wire(&v77, (a2 + 7), v85);
          *v60 = v77;
          v60[1].__r_.__value_.__s.__data_[0] = 1;
          if ((SHIBYTE(v88) & 0x80000000) == 0)
          {
            goto LABEL_115;
          }

          goto LABEL_114;
        }

        v22 = 0;
LABEL_45:
        v66 = a5;
        p_p = &__p;
        if (*(v12 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v12 + 24), *(v12 + 32));
        }

        else
        {
          __p = *(v12 + 24);
        }

        if (v22)
        {
          v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          v56 = a5;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          do
          {
            v25 = *(v22 + 39);
            v26 = v25;
            v27 = v22[3];
            if ((v25 & 0x80u) != 0)
            {
              v25 = v22[3];
            }

            if (v25 == size)
            {
              v28 = v22[2];
              v29 = v26 >= 0 ? v22 + 2 : v22[2];
              if (!memcmp(v29, p_p, size))
              {
                if (v26 < 0)
                {
                  std::string::__init_copy_ctor_external(&v77, v28, v27);
                }

                else
                {
                  v77 = *(v22 + 2);
                }

                v78 = v22[5];
                LODWORD(v79) = *(v22 + 12);
                if (*(v22 + 79) < 0)
                {
                  std::string::__init_copy_ctor_external(&v82, v22[7], v22[8]);
                }

                else
                {
                  v82 = *(v22 + 7);
                }

                v83 = v22[10];
                v84 = *(v22 + 22);
                *v85 = v77;
                memset(&v77, 0, sizeof(v77));
                *&v85[24] = v78;
                LODWORD(v86) = v79;
                v87 = *&v82.__r_.__value_.__l.__data_;
                v30 = v82.__r_.__value_.__r.__words[2];
                memset(&v82, 0, sizeof(v82));
                v90 = *(v22 + 22);
                v31 = v22[10];
                v88 = v30;
                v89 = v31;
                v32 = std::__tree<AMCP::Wire_Identifier>::find<AMCP::Wire_Identifier>(v66, v85);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87);
                }

                if ((v85[23] & 0x80000000) != 0)
                {
                  operator delete(*v85);
                }

                if (v66 + 8 != v32)
                {
                  break;
                }
              }
            }

            v22 = *v22;
          }

          while (v22);
          a5 = v56;
          v33 = v57;
        }

        else
        {
          v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (v33 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v22)
        {
          goto LABEL_107;
        }

        v22 = v72.__r_.__value_.__r.__words[2];
        if (*(v12 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v65, *(v12 + 24), *(v12 + 32));
        }

        else
        {
          v65 = *(v12 + 24);
        }

        v37 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
        if (v22)
        {
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v38 = v65.__r_.__value_.__l.__size_;
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &v65;
          }

          else
          {
            v39 = v65.__r_.__value_.__r.__words[0];
          }

          do
          {
            v40 = *(v22 + 39);
            v41 = v40;
            if ((v40 & 0x80u) != 0)
            {
              v40 = v22[3];
            }

            if (v40 == v38)
            {
              v42 = v41 >= 0 ? v22 + 2 : v22[2];
              if (!memcmp(v42, v39, v38))
              {
                break;
              }
            }

            v22 = *v22;
          }

          while (v22);
        }

        if (v37 < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (v22)
        {
LABEL_107:
          if (*(v22 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v62, v22[2], v22[3]);
          }

          else
          {
            v62 = *(v22 + 2);
          }

          v63 = v22[5];
          v64 = *(v22 + 12);
          if (*(v22 + 79) < 0)
          {
            std::string::__init_copy_ctor_external(&v61, v22[7], v22[8]);
          }

          else
          {
            v61 = *(v22 + 7);
          }

          *v85 = *&v62.__r_.__value_.__l.__data_;
          v43 = v62.__r_.__value_.__r.__words[2];
          memset(&v62, 0, sizeof(v62));
          *&v85[16] = v43;
          *&v85[24] = v63;
          LODWORD(v86) = v64;
          v87 = *&v61.__r_.__value_.__l.__data_;
          v44 = v61.__r_.__value_.__r.__words[2];
          memset(&v61, 0, sizeof(v61));
          v45 = v22[10];
          v90 = *(v22 + 22);
          v88 = v44;
          v89 = v45;
          AMCP::Graph::Graph::get_thread_group_id_from_downstream(v60, a2, v85, v58, a5);
          v13 = v59;
          if ((SHIBYTE(v88) & 0x80000000) == 0)
          {
LABEL_115:
            if ((v85[23] & 0x80000000) != 0)
            {
              operator delete(*v85);
            }

            goto LABEL_118;
          }

LABEL_114:
          operator delete(v87);
          goto LABEL_115;
        }

        v60->__r_.__value_.__s.__data_[0] = 0;
        v60[1].__r_.__value_.__s.__data_[0] = 0;
        v13 = v59;
      }

      else
      {
        a1->__r_.__value_.__s.__data_[0] = 0;
        a1[1].__r_.__value_.__s.__data_[0] = 0;
      }

LABEL_118:
      std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(v72.__r_.__value_.__r.__words[2]);
      v46 = v72.__r_.__value_.__r.__words[0];
      v72.__r_.__value_.__r.__words[0] = 0;
      if (v46)
      {
        operator delete(v46);
      }

      goto LABEL_120;
    }

    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (*(v12 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v85, *(v12 + 24), *(v12 + 32));
    }

    else
    {
      *v85 = *(v12 + 24);
      *&v85[16] = *(v12 + 40);
    }

    *&a1->__r_.__value_.__l.__data_ = *v85;
    a1->__r_.__value_.__r.__words[2] = *&v85[16];
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

LABEL_120:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_122:
  v47 = *MEMORY[0x1E69E9840];
}

void sub_1DE566034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::~__hash_table(&a48);
  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<AMCP::Wire_Identifier>::find<AMCP::Wire_Identifier>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v3 + 32, v3 + 72, a2, a2 + 40);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v2 == v5 || (std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a2, a2 + 40, v5 + 32, v5 + 72) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 24;
  v17 = a1;
  v18 = a1 + 24;
  v9 = a1 + 32;
  v19 = a1 + 32;
  v10 = a3 + 24;
  v11 = a3 + 32;
  v14 = a3;
  v15 = a3 + 24;
  v16 = a3 + 32;
  if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v17, &v14) & 0x80) == 0)
  {
    v17 = a3;
    v18 = v10;
    v19 = v11;
    v14 = a1;
    v15 = v8;
    v16 = v9;
    v12 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v17, &v14);
    if ((v12 & 0x80) != 0)
    {
      return (v12 >> 7) & 1;
    }

    v17 = a2;
    v18 = a2 + 24;
    v19 = a2 + 32;
    v14 = a4;
    v15 = a4 + 24;
    v16 = a4 + 32;
    if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v17, &v14) & 0x80) == 0)
    {
      v17 = a4;
      v18 = a4 + 24;
      v19 = a4 + 32;
      v14 = a2;
      v15 = a2 + 24;
      v16 = a2 + 32;
      v12 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v17, &v14);
      return (v12 >> 7) & 1;
    }
  }

  return 255;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(uint64_t a1, uint64_t a2)
{
  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, *a2);
  if (!result)
  {
    v5 = **(a1 + 8);
    v6 = **(a2 + 8);
    result = v5 < v6 ? 0xFFFFFFFFLL : 1;
    if (v5 == v6)
    {
      v7 = **(a1 + 16);
      v8 = **(a2 + 16);
      if (v7 < v8)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      if (v7 == v8)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}

void AMCP::Graph::Graph::connect_downstream_nodes(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*(*a3 + 48) != 1 && *(v5 + 16) == 1)
  {
    if (*(v5 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v49, *(v5 + 24), *(v5 + 32));
      v5 = *a3;
    }

    else
    {
      v49 = *(v5 + 24);
    }

    AMCP::Graph::Wire_Index::get_wires_for_node(&v56, a1 + 7, &v49, 0, 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 64) - *(v5 + 56)) >> 4));
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    v11 = v57;
    if (v57)
    {
      do
      {
        if (v11[39] < 0)
        {
          std::string::__init_copy_ctor_external(&v46, *(v11 + 2), *(v11 + 3));
        }

        else
        {
          v46 = *(v11 + 16);
        }

        v47 = *(v11 + 5);
        v48 = *(v11 + 12);
        if (v11[79] < 0)
        {
          std::string::__init_copy_ctor_external(&v43, *(v11 + 7), *(v11 + 8));
        }

        else
        {
          v43 = *(v11 + 56);
        }

        v44 = *(v11 + 10);
        v45 = *(v11 + 22);
        v49 = v46;
        memset(&v46, 0, sizeof(v46));
        v50 = v47;
        v51 = v48;
        v52 = *&v43.__r_.__value_.__l.__data_;
        v12 = v43.__r_.__value_.__r.__words[2];
        memset(&v43, 0, sizeof(v43));
        v55 = *(v11 + 22);
        v13 = *(v11 + 10);
        v53 = v12;
        v54 = v13;
        v14 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a1 + 12, &v49);
        if (v14 && *(v14 + 504) == 1)
        {
          AMCP::Graph::Wire_Index::get_tgid_for_wire(__p, (a1 + 7), &v49);
          v16 = v42;
          if ((v42 & 0x80u) == 0)
          {
            v17 = v42;
          }

          else
          {
            v17 = __p[1];
          }

          v18 = *(a2 + 23);
          v19 = v18;
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(a2 + 8);
          }

          if (v17 != v18 || ((v42 & 0x80u) == 0 ? (v20 = __p) : (v20 = __p[0]), v19 >= 0 ? (v21 = a2) : (v21 = *a2), v15 = memcmp(v20, v21, v17), v15))
          {
            if (*(*a3 + 48) != 1)
            {
              v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v27 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v15);
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
                *buf = 136315650;
                v59 = "Graph.cpp";
                v60 = 1024;
                v61 = 552;
                v62 = 2080;
                v63 = "not (tgid == group || current_node->get_thread_policy() == Node_Thread_Policy::Node_Is_Shared_Across_Threads)";
                _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Conflicting TGIDs", buf, 0x1Cu);
              }

              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("Conflicting TGIDs", &v33);
              std::logic_error::logic_error(&v34, &v33);
              v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v35, &v34);
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = -1;
              v35.__vftable = &unk_1F5991430;
              v36 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
              v64 = "void AMCP::Graph::Graph::connect_downstream_nodes(const Thread_Group_ID &, const std::shared_ptr<Node> &, const std::set<Wire_Identifier> &, Resource_Counts &)";
              v65 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
              v66 = 552;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
            }
          }

          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v22 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, v11 + 7);
          if (v22)
          {
            v23 = v22;
            if (a4 + 8 != std::__tree<AMCP::Wire_Identifier>::find<AMCP::Wire_Identifier>(a4, &v49))
            {
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 8));
              }

              else
              {
                v31 = *a2;
              }

              AMCP::Graph::Graph::connect_nodes(a1, a3, v23 + 5, &v31, a5);
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v31.__r_.__value_.__l.__data_);
              }

              AMCP::Graph::Graph::connect_downstream_nodes(a1, a2, v23 + 5, a4, a5);
            }
          }
        }

        if (SHIBYTE(v53) < 0)
        {
          operator delete(v52);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        v11 = *v11;
      }

      while (v11);
      v24 = v57;
    }

    else
    {
      v24 = 0;
    }

    std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(v24);
    v25 = v56;
    v56 = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Graph::Graph::calculate_tgid_and_connect(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  result = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>((a1 + 96), a2);
  if (!result || (*(result + 504) & 1) == 0)
  {
    v5 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>((a1 + 176), a2);
    result = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>((a1 + 176), a2 + 5);
    if (!v5)
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
        LODWORD(v21[0]) = 136315650;
        *(v21 + 4) = "Graph.cpp";
        WORD2(v21[1]) = 1024;
        *(&v21[1] + 6) = 607;
        WORD1(v21[2]) = 2080;
        *(&v21[2] + 4) = "not (has_src)";
        _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Origins must have source nodes", v21, 0x1Cu);
      }

      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Origins must have source nodes", &__p);
      std::logic_error::logic_error(&v14, &__p);
      v14.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v16, &v14);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = -1;
      v16.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v16.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v21, &v16);
      v21[4] = "void AMCP::Graph::Graph::calculate_tgid_and_connect(Wire_Identifier, const std::set<Wire_Identifier> &, Resource_Counts &)";
      v21[5] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
      v22 = 607;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
    }

    if (result && (0x6DB6DB6DB6DB6DB7 * ((*(v5[5] + 64) - *(v5[5] + 56)) >> 4)) > a2[3] && (0x6DB6DB6DB6DB6DB7 * ((*(*(result + 5) + 88) - *(*(result + 5) + 80)) >> 4)) > a2[8])
    {
      v6 = *(result + 6);
      v21[0] = *(result + 5);
      v21[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v14.__vftable = 0;
      v14.__imp_.__imp_ = 0;
      v15 = 0;
      std::vector<std::shared_ptr<AMCP::Graph::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<AMCP::Graph::Node> const*,std::shared_ptr<AMCP::Graph::Node> const*>();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5674D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void *a42, void *a43, int a44, __int16 a45, char a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v56 - 160);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a49);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v55)
  {
    __cxa_free_exception(v54);
  }

  if (a32 == 1 && a31 < 0)
  {
    operator delete(a26);
  }

  *(v56 - 160) = &a34;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v56 - 160));
  if (a48 == 1 && a47 < 0)
  {
    operator delete(a42);
  }

  *(v56 - 160) = &a39;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v56 - 160));
  _Unwind_Resume(a1);
}

void AMCP::Graph::Graph::connect_path<std::__wrap_iter<std::shared_ptr<AMCP::Graph::Node> *>>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  if (a3 + 2 != a4)
  {
    v11 = a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      AMCP::Graph::Graph::connect_nodes(a1, v11, v11 + 2, &__p, a6);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      a3 = v11 + 2;
      v12 = v11 + 4;
      v11 += 2;
    }

    while (v12 != a4);
  }

  AMCP::Graph::Graph::connect_downstream_nodes(a1, a2, a3, a5, a6);
}

void sub_1DE567870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Graph::connect_path<std::reverse_iterator<std::__wrap_iter<std::shared_ptr<AMCP::Graph::Node> *>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = a4;
  if (a4 - 16 != a6)
  {
    v14 = a4;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      v10 = v14 - 16;
      AMCP::Graph::Graph::connect_nodes(a1, (v14 - 16), (v14 - 32), &__p, a8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v14 -= 16;
    }

    while (v10 - 16 != a6);
  }

  AMCP::Graph::Graph::connect_downstream_nodes(a1, a2, (v10 - 16), a7, a8);
}

void sub_1DE56796C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<AMCP::Graph::Node>>,std::shared_ptr<AMCP::Graph::Node>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

void *std::__tree<AMCP::Wire_Identifier>::__emplace_unique_key_args<AMCP::Wire_Identifier,AMCP::Wire_Identifier>(uint64_t a1, uint64_t a2)
{
  result = std::__tree<AMCP::Wire_Identifier>::__find_equal<AMCP::Wire_Identifier>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void std::__tree<AMCP::Wire_Identifier>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<AMCP::Wire_Identifier>::destroy(*a1);
    std::__tree<AMCP::Wire_Identifier>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>((a1 + 4));

    operator delete(a1);
  }
}

void *std::__tree<AMCP::Wire_Identifier>::__find_equal<AMCP::Wire_Identifier>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a3, a3 + 40, (v4 + 4), (v4 + 9)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>((v7 + 4), (v7 + 9), a3, a3 + 40) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<AMCP::Wire_Identifier,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<AMCP::Wire_Identifier,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::deque<std::shared_ptr<AMCP::Graph::Node>>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 32 * (v5 - v6) - 1;
  }

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x100)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v14);
    }

    result[4] = v9 - 256;
    v16 = *v6;
    result[1] = v6 + 8;
    result = std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(result, &v16);
    v6 = v3[1];
    v8 = v3[5];
    v10 = v8 + v3[4];
  }

  v15 = *a2;
  *(*&v6[(v10 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v10) = *a2;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    v8 = v3[5];
  }

  v3[5] = v8 + 1;
  return result;
}

void sub_1DE5680F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void AMCP::Graph::Graph::find_nodes_connected_to_context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  v3[3] = v4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a3, *(a3 + 8));
  }

  else
  {
    v5 = *a3;
  }

  v3[0] = v3;
  v3[1] = v3;
  v3[2] = 0;
  std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
}

void sub_1DE569088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a11);
  std::__tree<AMCP::Wire_Identifier>::destroy(a71);
  _Unwind_Resume(a1);
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void *std::__list_imp<std::string>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    v3[1] = v2;
    *v2 = v3;
    v1[2] = 0;
    while (result != v1)
    {
      v4 = result[1];
      std::__list_imp<std::string>::__delete_node[abi:ne200100](result);
      result = v4;
    }
  }

  return result;
}

void AMCP::Graph::Graph::update_context(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>((a1 + 176), a2);
  if (v3)
  {
    v4 = *(v3 + 5);
    v5 = *(v3 + 6);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    if (!*(v4 + 16))
    {
      AMCP::Graph::Graph::find_nodes_connected_to_context(&v20, a1, a2);
    }

    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      if (*(a2 + 23) >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      v28 = 136315906;
      v29 = "Graph.cpp";
      v30 = 1024;
      v31 = 1013;
      v32 = 2080;
      v33 = "not (root->get_node_type() == AMCP::Node_Type::IOContext)";
      v34 = 2080;
      *v35 = v16;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Root node must be an IOContextNode: %s", &v28, 0x26u);
    }

    __cxa_allocate_exception(0x40uLL);
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    caulk::make_string("Root node must be an IOContextNode: %s", &v20, v17);
    std::logic_error::logic_error(&v21, &v20);
    v21.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    LODWORD(v27) = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v28, &v22);
    *&v35[2] = "void AMCP::Graph::Graph::update_context(const Graph_Node_UID &, const std::function<Timebase_Ref (const Graph_Node_UID &)> &, std::vector<std::string> &, Resource_Counts &)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    v37 = 1013;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v28 = 136315906;
    v29 = "Graph.cpp";
    v30 = 1024;
    v31 = 1011;
    v32 = 2080;
    v33 = "not (m_nodes_by_uid.find(root_node) != m_nodes_by_uid.end())";
    v34 = 2080;
    *v35 = v14;
    _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Root node not found in graph: %s", &v28, 0x26u);
  }

  __cxa_allocate_exception(0x40uLL);
  if (*(a2 + 23) >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  caulk::make_string("Root node not found in graph: %s", &v20, v15);
  std::logic_error::logic_error(&v21, &v20);
  v21.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
  std::logic_error::logic_error(&v22, &v21);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  LODWORD(v27) = -1;
  v22.__vftable = &unk_1F5991430;
  v23 = &unk_1F5991458;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v28, &v22);
  *&v35[2] = "void AMCP::Graph::Graph::update_context(const Graph_Node_UID &, const std::function<Timebase_Ref (const Graph_Node_UID &)> &, std::vector<std::string> &, Resource_Counts &)";
  v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
  v37 = 1011;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
}

void sub_1DE56C364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a68);
  if (STACK[0x238])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x238]);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  AMCP::Graph::calculate_clocks(std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::unordered_set<std::string>,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0::~$_0(v70 - 256);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a33);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(&a39);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a44);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::calculate_clocks(std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::unordered_set<std::string>,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 16);
  return a1;
}

void *std::vector<std::shared_ptr<AMCP::Graph::Node>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void AMCP::Graph::topological_sort(__int128 *a1, uint64_t a2, void *a3, void *a4, size_t *a5, void *a6)
{
  v11 = *a1;
  if (*(*a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v11[1];
  }

  v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a6, &v30);
  v13 = v12;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if (v13)
    {
      return;
    }
  }

  else if (v12)
  {
    return;
  }

  v14 = *a1;
  v15 = *(*a1 + 24 * a2 + 64) - *(*a1 + 24 * a2 + 56);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = 0;
  v26 = 0x6DB6DB6DB6DB6DB7 * (v15 >> 4);
  do
  {
    v17 = *a1;
    if (*(*a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, v17[1].__r_.__value_.__l.__data_, v17[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = v17[1];
    }

    *&v30.__r_.__value_.__l.__data_ = *&v29.__r_.__value_.__l.__data_;
    v18 = v29.__r_.__value_.__r.__words[2];
    memset(&v29, 0, sizeof(v29));
    v30.__r_.__value_.__r.__words[2] = v18;
    v31 = v16;
    v32 = a2;
    AMCP::Graph::Wire_Index::get_wires_for_terminal(&v33, a4, &v30);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v19 = v33;
    v20 = v34;
    v21 = v33;
    if (v33 != v34)
    {
      while (1)
      {
        v22 = *v21;
        if (*(*v21 + 408) == 1)
        {
          break;
        }

LABEL_32:
        v21 += 8;
        if (v21 == v20)
        {
          goto LABEL_33;
        }
      }

      if (a2 == 1)
      {
        if (*(v22 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *v22, *(v22 + 8));
          goto LABEL_25;
        }

        *&v30.__r_.__value_.__l.__data_ = *v22;
        v23 = *(v22 + 16);
      }

      else
      {
        if (*(v22 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *(v22 + 40), *(v22 + 48));
          goto LABEL_25;
        }

        *&v30.__r_.__value_.__l.__data_ = *(v22 + 40);
        v23 = *(v22 + 56);
      }

      v30.__r_.__value_.__r.__words[2] = v23;
LABEL_25:
      __p = v30;
      v24 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, &__p);
      if (v24)
      {
        v25 = v24[6];
        v30.__r_.__value_.__r.__words[0] = v24[5];
        v30.__r_.__value_.__l.__size_ = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::Graph::topological_sort(&v30, a2, a3, a4, a5, a6);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_32;
    }

LABEL_33:
    if (v19)
    {
      operator delete(v19);
    }

    ++v16;
  }

  while (v16 != v26);
  v14 = *a1;
LABEL_37:
  if (SHIBYTE(v14[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v14[1].__r_.__value_.__l.__data_, v14[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v14[1];
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a6, &v30);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a5, a1);
}

void sub_1DE56CDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest>::__on_zero_shared(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  is_thread_configured_for_realtime = AMCP::Utility::is_thread_configured_for_realtime(v2, v3);
  if (is_thread_configured_for_realtime)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
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
      *&buf[4] = "Manifest.cpp";
      v27 = 1024;
      v28 = 135;
      v29 = 2080;
      v30 = "not (not AMCP::Utility::is_thread_configured_for_realtime(pthread_self()))";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v17);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v31 = "AMCP::Graph::Manifest::~Manifest()";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    v33 = 135;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  if (*(a1 + 24))
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
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
      *&buf[4] = "Manifest.cpp";
      v27 = 1024;
      v28 = 138;
      v29 = 2080;
      v30 = "not (m_processing_state == Processing_State::Idle)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to delete an active manifiest", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to delete an active manifiest", &v17);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v31 = "AMCP::Graph::Manifest::~Manifest()";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    v33 = 138;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::~__hash_table(a1 + 56);
  *buf = a1 + 32;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE56D298(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979F68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        v9 = v2[5];
        *(v6 + 12) = *(v2 + 12);
        v6[5] = v9;
        if (v6 != v2)
        {
          v11 = v2[7];
          v10 = v2[8];
          v12 = v10 - v11;
          v13 = v6[7];
          if (v6[9] - v13 < (v10 - v11))
          {
            v14 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 4);
            std::vector<AMCP::Wire_Identifier>::__vdeallocate(v6 + 7);
            if (v14 <= 0x333333333333333)
            {
              v15 = 0x999999999999999ALL * ((v6[9] - v6[7]) >> 4);
              if (v15 <= v14)
              {
                v15 = v14;
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v6[9] - v6[7]) >> 4) >= 0x199999999999999)
              {
                v16 = 0x333333333333333;
              }

              else
              {
                v16 = v15;
              }

              std::vector<AMCP::Wire_Identifier>::__vallocate[abi:ne200100]((v6 + 7), v16);
            }

            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v17 = v6[8] - v13;
          if (v17 >= v12)
          {
            std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Identifier *,AMCP::Wire_Identifier *,AMCP::Wire_Identifier *>(v2[7], v2[8], v13);
            v20 = v19;
            for (j = v6[8]; j != v20; std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(j))
            {
              j -= 80;
            }

            v6[8] = v20;
          }

          else
          {
            v18 = std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Identifier *,AMCP::Wire_Identifier *,AMCP::Wire_Identifier *>(v2[7], (v11 + v17), v13);
            v6[8] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(v18, v10, v6[8]);
          }
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_1DE56D5E0()
{
  if (*(v0 + 39) < 0)
  {
    operator delete(*(v0 + 16));
  }

  JUMPOUT(0x1DE56D5FCLL);
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,void *> *>>(void *a1, void **a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        v9 = v2[5];
        *(v6 + 12) = *(v2 + 12);
        v6[5] = v9;
        std::string::operator=((v6 + 7), (v2 + 7));
        v10 = v2[10];
        *(v6 + 22) = *(v2 + 22);
        v6[10] = v10;
        std::string::operator=(v6 + 4, v2 + 4);
        v11 = v2[15];
        *(v6 + 32) = *(v2 + 32);
        v6[15] = v11;
        std::string::operator=((v6 + 17), (v2 + 17));
        v12 = v2[20];
        *(v6 + 42) = *(v2 + 42);
        v6[20] = v12;
        if (v6 == v2)
        {
          v15 = *(v2 + 14);
          v16 = *(v2 + 15);
          *(v6 + 256) = *(v2 + 256);
          *(v6 + 14) = v15;
          *(v6 + 15) = v16;
        }

        else
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6 + 22, v2[22], v2[23], (v2[23] - v2[22]) >> 2);
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6 + 25, v2[25], v2[26], (v2[26] - v2[25]) >> 2);
          v13 = *(v2 + 14);
          v14 = *(v2 + 15);
          *(v6 + 256) = *(v2 + 256);
          *(v6 + 14) = v13;
          *(v6 + 15) = v14;
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v6 + 11, v2[33], v2[34], 0xAAAAAAAAAAAAAAABLL * ((v2[34] - v2[33]) >> 3));
        }

        if (*(v6 + 504) == *(v2 + 504))
        {
          if (*(v6 + 504))
          {
            AMCP::Graph::Graph_Wire::Connection::operator=((v6 + 36), (v2 + 36));
          }
        }

        else
        {
          if (*(v6 + 504))
          {
            v17 = v6[60];
            if (v17)
            {
              v6[61] = v17;
              operator delete(v17);
            }

            v18 = v6[57];
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            v19 = v6[49];
            if (v19)
            {
              v6[50] = v19;
              operator delete(v19);
            }

            if (*(v6 + 391) < 0)
            {
              operator delete(v6[46]);
            }

            if (*(v6 + 351) < 0)
            {
              operator delete(v6[41]);
            }

            if (*(v6 + 311) < 0)
            {
              operator delete(v6[36]);
            }

            v20 = 0;
          }

          else
          {
            AMCP::Graph::Graph_Wire::Connection::Connection(v6 + 12, (v2 + 36));
            v20 = 1;
          }

          *(v6 + 504) = v20;
        }

        v21 = v2[64];
        v22 = v2[65];
        if (v22)
        {
          atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
        }

        v6[64] = v21;
        v23 = v6[65];
        v6[65] = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        v24 = v2[66];
        v25 = v2[67];
        if (v25)
        {
          atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
        }

        v6[66] = v24;
        v26 = v6[67];
        v6[67] = v25;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_1DE56DAA8(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  AMCP::Wire_Identifier::~Wire_Identifier((v1 + 16));
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 16), (v2 + 2));
        v9 = v2[5];
        *(v6 + 12) = *(v2 + 12);
        *(v6 + 5) = v9;
        std::string::operator=((v6 + 56), (v2 + 7));
        v10 = v2[10];
        *(v6 + 22) = *(v2 + 22);
        *(v6 + 10) = v10;
        v12 = v2[12];
        v11 = v2[13];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = *(v6 + 13);
        *(v6 + 12) = v12;
        *(v6 + 13) = v11;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_1DE56DD68(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v10[0] = v6 + 2;
        v10[1] = v6 + 5;
        std::pair<std::string &,std::shared_ptr<AMCP::Graph::Node> &>::operator=[abi:ne200100]<std::string const,std::shared_ptr<AMCP::Graph::Node>,0>(v10, (v2 + 2));
        v8 = *v6;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_1DE56DEF4(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__deallocate_node(v1);
  __cxa_rethrow();
}

void sub_1DE56DF0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        *(v6 + 4) = *(v2 + 4);
        std::string::operator=(v6 + 1, v2 + 1);
        v8 = *v6;
        v9 = *(v6 + 4);
        v6[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_prepare(a1, v9, v6 + 4);
        std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_perform(a1, v6, inserted);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

uint64_t **std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v14[0] = (v8 + 4);
          v14[1] = (v8 + 7);
          std::pair<std::string &,std::shared_ptr<AMCP::Graph::Node> &>::operator=[abi:ne200100]<std::string const,std::shared_ptr<AMCP::Graph::Node>,0>(v14, (v9 + 4));
          v10 = v17;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, v14, v17 + 4);
          std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(v5, v14[0], leaf_high, v10);
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          v8 = v17;
          if (v17)
          {
            v13 = a2 == a3;
          }

          else
          {
            v13 = 1;
          }

          v9 = a2;
        }

        while (!v13);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

void sub_1DE56E2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Graph_State_Data::~Graph_State_Data(AMCP::Graph::Graph_State_Data *this)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(*(this + 29));
  std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(*(this + 26));
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(this);
}

uint64_t std::pair<std::string &,std::shared_ptr<AMCP::Graph::Node> &>::operator=[abi:ne200100]<std::string const,std::shared_ptr<AMCP::Graph::Node>,0>(uint64_t a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[1];
  *v4 = data;
  v4[1] = size;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v35 = a2 + 2;
  v36 = std::hash<AMCP::Wire_Identifier>::operator()((a2 + 2));
  a2[1] = v36;
  v4 = *(a1 + 8);
  v5 = (*(a1 + 24) + 1);
  v6 = *(a1 + 32);
  v34 = a2;
  if (!v4 || (v6 * v4) < v5)
  {
    v7 = 1;
    if (v4 >= 3)
    {
      v7 = (v4 & (v4 - 1)) != 0;
    }

    v8 = v7 | (2 * v4);
    v9 = vcvtps_u32_f32(v5 / v6);
    if (v8 <= v9)
    {
      prime = v9;
    }

    else
    {
      prime = v8;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v4 = *(a1 + 8);
    }

    if (prime > v4)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v4)
    {
      v11 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v4 < 3 || (v12 = vcnt_s8(v4), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
      {
        v11 = std::__next_prime(v11);
      }

      else
      {
        v13 = 1 << -__clz(v11 - 1);
        if (v11 >= 2)
        {
          v11 = v13;
        }
      }

      if (prime <= v11)
      {
        prime = v11;
      }

      if (prime >= v4)
      {
        v4 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v14 = *a1;
        *a1 = 0;
        if (v14)
        {
          operator delete(v14);
        }

        v4 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v15 = vcnt_s8(v4);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v36;
    if (v4 <= v36)
    {
      v17 = v36 % v4;
    }
  }

  else
  {
    v17 = (v4 - 1) & v36;
  }

  v30 = *a1;
  v18 = *(*a1 + 8 * v17);
  if (v18)
  {
    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      v21 = a2;
      v22 = a2 + 5;
      v23 = a2 + 6;
      v32 = v21 + 10;
      v33 = v21 + 7;
      v31 = v21 + 11;
      do
      {
        v24 = v19;
        v25 = v19[1];
        if (v16 > 1)
        {
          v26 = v25;
          if (v25 >= v4)
          {
            v26 = v25 % v4;
          }
        }

        else
        {
          v26 = v25 & (v4 - 1);
        }

        if (v26 != v17)
        {
          break;
        }

        if (v25 == v36)
        {
          v40 = (v24 + 2);
          v41 = v24 + 5;
          v42 = v24 + 6;
          v37 = v35;
          v38 = v22;
          v39 = v23;
          v27 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v40, &v37);
          if (v27)
          {
            v40 = (v24 + 7);
            v41 = v24 + 10;
            v42 = v24 + 11;
            v37 = v33;
            v38 = v32;
            v39 = v31;
            v27 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v40, &v37);
          }
        }

        else
        {
          v27 = 0;
        }

        if ((v20 & (v27 != (v20 & 1))) != 0)
        {
          break;
        }

        v20 |= v27 != (v20 & 1);
        v19 = *v24;
        v18 = v24;
      }

      while (*v24);
    }
  }

  v28 = v34[1];
  if (v16 > 1)
  {
    if (v28 >= v4)
    {
      v28 %= v4;
    }
  }

  else
  {
    v28 &= v4 - 1;
  }

  if (!v18)
  {
    *v34 = *(a1 + 16);
    *(a1 + 16) = v34;
    v30[v28] = a1 + 16;
    if (!*v34)
    {
      goto LABEL_66;
    }

    v29 = *(*v34 + 8);
    if (v16 > 1)
    {
      if (v29 >= v4)
      {
        v29 %= v4;
      }
    }

    else
    {
      v29 &= v4 - 1;
    }

LABEL_65:
    *(*a1 + 8 * v29) = v34;
    goto LABEL_66;
  }

  *v34 = *v18;
  *v18 = v34;
  if (*v34)
  {
    v29 = *(*v34 + 8);
    if (v16 > 1)
    {
      if (v29 >= v4)
      {
        v29 %= v4;
      }
    }

    else
    {
      v29 &= v4 - 1;
    }

    if (v29 != v28)
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  ++*(a1 + 24);
}

void std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v31 = a2 + 2;
  v32 = std::hash<AMCP::Terminal_Identifier>::operator()((a2 + 2));
  a2[1] = v32;
  v4 = *(a1 + 8);
  v5 = (*(a1 + 24) + 1);
  v6 = *(a1 + 32);
  v30 = a2;
  if (!v4 || (v6 * v4) < v5)
  {
    v7 = 1;
    if (v4 >= 3)
    {
      v7 = (v4 & (v4 - 1)) != 0;
    }

    v8 = v7 | (2 * v4);
    v9 = vcvtps_u32_f32(v5 / v6);
    if (v8 <= v9)
    {
      prime = v9;
    }

    else
    {
      prime = v8;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v4 = *(a1 + 8);
    }

    if (prime > v4)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v4)
    {
      v11 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v4 < 3 || (v12 = vcnt_s8(v4), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
      {
        v11 = std::__next_prime(v11);
      }

      else
      {
        v13 = 1 << -__clz(v11 - 1);
        if (v11 >= 2)
        {
          v11 = v13;
        }
      }

      if (prime <= v11)
      {
        prime = v11;
      }

      if (prime >= v4)
      {
        v4 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v14 = *a1;
        *a1 = 0;
        if (v14)
        {
          operator delete(v14);
        }

        v4 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v15 = vcnt_s8(v4);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v32;
    if (v4 <= v32)
    {
      v17 = v32 % v4;
    }
  }

  else
  {
    v17 = (v4 - 1) & v32;
  }

  v18 = *(*a1 + 8 * v17);
  v29 = *a1;
  if (v18)
  {
    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      v21 = a2 + 5;
      v22 = a2 + 6;
      do
      {
        v23 = v19;
        v24 = v19[1];
        if (v16 > 1)
        {
          v25 = v24;
          if (v24 >= v4)
          {
            v25 = v24 % v4;
          }
        }

        else
        {
          v25 = v24 & (v4 - 1);
        }

        if (v25 != v17)
        {
          break;
        }

        if (v24 == v32)
        {
          v34[0] = (v23 + 2);
          v34[1] = (v23 + 5);
          v34[2] = (v23 + 6);
          v33[0] = v31;
          v33[1] = v21;
          v33[2] = v22;
          v26 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v34, v33);
        }

        else
        {
          v26 = 0;
        }

        if ((v20 & (v26 != (v20 & 1))) != 0)
        {
          break;
        }

        v20 |= v26 != (v20 & 1);
        v19 = *v23;
        v18 = v23;
      }

      while (*v23);
    }
  }

  v27 = v30[1];
  if (v16 > 1)
  {
    if (v27 >= v4)
    {
      v27 %= v4;
    }
  }

  else
  {
    v27 &= v4 - 1;
  }

  if (!v18)
  {
    *v30 = *(a1 + 16);
    *(a1 + 16) = v30;
    v29[v27] = a1 + 16;
    if (!*v30)
    {
      goto LABEL_65;
    }

    v28 = *(*v30 + 8);
    if (v16 > 1)
    {
      if (v28 >= v4)
      {
        v28 %= v4;
      }
    }

    else
    {
      v28 &= v4 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v28) = v30;
    goto LABEL_65;
  }

  *v30 = *v18;
  *v18 = v30;
  if (*v30)
  {
    v28 = *(*v30 + 8);
    if (v16 > 1)
    {
      if (v28 >= v4)
      {
        v28 %= v4;
      }
    }

    else
    {
      v28 &= v4 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

uint64_t std::vector<AMCP::Wire_Identifier>::__init_with_size[abi:ne200100]<AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AMCP::Wire_Identifier>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE56EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<AMCP::Wire_Identifier>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t **AMCP::Graph::Graph::restore_graph_state_from_snapshot(uint64_t a1, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
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
      v25 = "Graph.cpp";
      v26 = 1024;
      v27 = 1221;
      v28 = 2080;
      v29 = "not (state)";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v15);
    std::logic_error::logic_error(&v16, &v15);
    v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    v30 = "void AMCP::Graph::Graph::restore_graph_state_from_snapshot(const Graph_State &)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    v32 = 1221;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v5 = (a1 + 56);
  if (v5 != v2)
  {
    *(a1 + 88) = *(v2 + 32);
    std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *> *>>(v5, *(v2 + 16));
    *(a1 + 128) = *(v2 + 72);
    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,void *> *>>((a1 + 96), *(v2 + 56));
    *(a1 + 168) = *(v2 + 112);
    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,void *> *>>((a1 + 136), *(v2 + 96));
    v2 = *a2;
  }

  if (a1 + 176 != v2 + 120)
  {
    *(a1 + 208) = *(v2 + 152);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *> *>>((a1 + 176), *(v2 + 136));
    v2 = *a2;
  }

  if (a1 + 216 != v2 + 160)
  {
    *(a1 + 248) = *(v2 + 192);
    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *> *>>((a1 + 216), *(v2 + 176));
    v2 = *a2;
  }

  result = (a1 + 256);
  if (a1 + 256 == v2 + 224)
  {
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *(v2 + 224);
    v8 = *MEMORY[0x1E69E9840];

    return std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *> *,long>>(result, v7, (v2 + 232));
  }

  return result;
}

void sub_1DE56F2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

BOOL HALS_PDPUCPlugIn::ObjectIsPropertySettable(HALS_PDPUCPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v4 = (this)(a2, a3, &v19);
  if (v4)
  {
    v5.i32[0] = a3->mSelector;
    v8 = vrev64_s16(*&vmovl_u8(v5));
    v9 = vuzp1_s8(v8, v8);
    v17 = v9.i32[0];
    v18 = 0;
    v9.i32[0] = a3->mScope;
    v10 = vrev64_s16(*&vmovl_u8(v9));
    v15 = vuzp1_s8(v10, v10).u32[0];
    v16 = 0;
    v14[0] = HIBYTE(v4);
    v14[1] = BYTE2(v4);
    v14[2] = BYTE1(v4);
    v13 = v4;
    v14[3] = v4;
    v14[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v21 = "HALS_PDPUCPlugIn.cpp";
      v22 = 1024;
      v23 = 137;
      v24 = 2080;
      v25 = &v17;
      v26 = 2080;
      v27 = &v15;
      v28 = 2048;
      v29 = mElement;
      v30 = 1024;
      v31 = v13;
      v32 = 2080;
      v33 = v14;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PDPUCPlugIn::ObjectIsPropertySettable: got an error from the plug-in for property [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v13;
  }

  result = v19 != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(HALS_PDPUCPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v6 = (this)(a2, a3, a4, a5, &v21);
  if (v6)
  {
    v7.i32[0] = a3->mSelector;
    v10 = vrev64_s16(*&vmovl_u8(v7));
    v11 = vuzp1_s8(v10, v10);
    v19 = v11.i32[0];
    v20 = 0;
    v11.i32[0] = a3->mScope;
    v12 = vrev64_s16(*&vmovl_u8(v11));
    v17 = vuzp1_s8(v12, v12).u32[0];
    v18 = 0;
    v16[0] = HIBYTE(v6);
    v16[1] = BYTE2(v6);
    v16[2] = BYTE1(v6);
    v15 = v6;
    v16[3] = v6;
    v16[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v23 = "HALS_PDPUCPlugIn.cpp";
      v24 = 1024;
      v25 = 145;
      v26 = 2080;
      v27 = &v19;
      v28 = 2080;
      v29 = &v17;
      v30 = 2048;
      v31 = mElement;
      v32 = 1024;
      v33 = v15;
      v34 = 2080;
      v35 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PDPUCPlugIn::ObjectGetPropertyDataSize: got an error from the plug-in for property [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v15;
  }

  result = v21;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_PDPUCPlugIn::ObjectGetPropertyData(HALS_PDPUCPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, unsigned int *a6, void *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  result = (this)(a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9.i32[0] = a3->mSelector;
    v11 = vrev64_s16(*&vmovl_u8(v9));
    v12 = vuzp1_s8(v11, v11);
    v20 = v12.i32[0];
    v21 = 0;
    v12.i32[0] = a3->mScope;
    v13 = vrev64_s16(*&vmovl_u8(v12));
    v18 = vuzp1_s8(v13, v13).u32[0];
    v19 = 0;
    v17[0] = BYTE3(result);
    v17[1] = BYTE2(result);
    v17[2] = BYTE1(result);
    v16 = result;
    v17[3] = result;
    v17[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v23 = "HALS_PDPUCPlugIn.cpp";
      v24 = 1024;
      v25 = 152;
      v26 = 2080;
      v27 = &v20;
      v28 = 2080;
      v29 = &v18;
      v30 = 2048;
      v31 = mElement;
      v32 = 1024;
      v33 = v16;
      v34 = 2080;
      v35 = v17;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PDPUCPlugIn::ObjectGetPropertyData: got an error from the plug-in for property [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v16;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_PDPUCPlugIn::ObjectSetPropertyData(HALS_PDPUCPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  result = (this)(a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9.i32[0] = a3->mSelector;
    v11 = vrev64_s16(*&vmovl_u8(v9));
    v12 = vuzp1_s8(v11, v11);
    v20 = v12.i32[0];
    v21 = 0;
    v12.i32[0] = a3->mScope;
    v13 = vrev64_s16(*&vmovl_u8(v12));
    v18 = vuzp1_s8(v13, v13).u32[0];
    v19 = 0;
    v17[0] = BYTE3(result);
    v17[1] = BYTE2(result);
    v17[2] = BYTE1(result);
    v16 = result;
    v17[3] = result;
    v17[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v23 = "HALS_PDPUCPlugIn.cpp";
      v24 = 1024;
      v25 = 158;
      v26 = 2080;
      v27 = &v20;
      v28 = 2080;
      v29 = &v18;
      v30 = 2048;
      v31 = mElement;
      v32 = 1024;
      v33 = v16;
      v34 = 2080;
      v35 = v17;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PDPUCPlugIn::ObjectSetPropertyData: got an error from the plug-in for property [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v16;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_terminal(std::string **a1, const void **a2)
{
  v3 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (SHIBYTE((*a1)[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v47, v4[1].__r_.__value_.__l.__data_, v4[1].__r_.__value_.__l.__size_);
  }

  else
  {
    *v47 = *&v4[1].__r_.__value_.__l.__data_;
    *&v47[16] = *(&v4[1].__r_.__value_.__l + 2);
  }

  v5 = v47[23];
  if (v47[23] >= 0)
  {
    v6 = v47[23];
  }

  else
  {
    v6 = *&v47[8];
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = a2[1];
  }

  if (v6 != v7)
  {
    v11 = 0;
    if ((v47[23] & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v47[23] >= 0)
  {
    v9 = v47;
  }

  else
  {
    v9 = *v47;
  }

  if (v8 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  a1 = memcmp(v9, v10, v6);
  v11 = a1 == 0;
  if (v5 < 0)
  {
LABEL_19:
    operator delete(*v47);
  }

LABEL_20:
  if (!v11)
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
      v25 = *v3;
      if (SHIBYTE((*v3)[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, v25[1].__r_.__value_.__l.__data_, v25[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v41 = v25[1];
      }

      v26 = &v41;
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v41.__r_.__value_.__r.__words[0];
      }

      if (*(a2 + 23) >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      *v47 = 136316162;
      *&v47[4] = "GraphCommon.cpp";
      *&v47[12] = 1024;
      *&v47[14] = 24;
      *&v47[18] = 2080;
      *&v47[20] = "not (node->get_uid() == key.m_node)";
      v48 = 2080;
      *v49 = v26;
      *&v49[8] = 2080;
      v50 = v27;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid connection: '%s' and '%s'", v47, 0x30u);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    v28 = *v3;
    if (SHIBYTE((*v3)[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, v28[1].__r_.__value_.__l.__data_, v28[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = v28[1];
    }

    v34 = &v38;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v38.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    caulk::make_string("Invalid connection: '%s' and '%s'", &v39, v34, v35);
    std::logic_error::logic_error(&v40, &v39);
    v40.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v41, &v40);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v41.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v41.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v47, &v41);
    *&v49[2] = "Terminal &get_terminal(const std::shared_ptr<Node> &, const Terminal_Identifier &)";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphCommon.cpp";
    v51 = 24;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v12 = *v3;
  v13 = *(a2 + 8);
  v14 = a2[3];
  if (v14 >= 0x6DB6DB6DB6DB6DB7 * (((*v3)[v13 + 2].__r_.__value_.__r.__words[2] - (*v3)[v13 + 2].__r_.__value_.__l.__size_) >> 4))
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      v29 = a2[3];
      v30 = *v3;
      if (SHIBYTE((*v3)[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, v30[1].__r_.__value_.__l.__data_, v30[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v41 = v30[1];
      }

      v31 = &v41;
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v41.__r_.__value_.__r.__words[0];
      }

      *v47 = 136316162;
      *&v47[4] = "GraphCommon.cpp";
      *&v47[12] = 1024;
      *&v47[14] = 27;
      *&v47[18] = 2080;
      *&v47[20] = "not (key.m_terminal_index < size)";
      v48 = 2048;
      *v49 = v29;
      *&v49[8] = 2080;
      v50 = v31;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid terminal index: terminal %zu of node '%s'", v47, 0x30u);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    v32 = a2[3];
    v33 = *v3;
    if (SHIBYTE((*v3)[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, v33[1].__r_.__value_.__l.__data_, v33[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = v33[1];
    }

    v36 = &v38;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v38.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Invalid terminal index: terminal %zu of node '%s'", &v39, v32, v36);
    std::logic_error::logic_error(&v40, &v39);
    v40.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v41, &v40);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v41.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v41.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v47, &v41);
    *&v49[2] = "Terminal &get_terminal(const std::shared_ptr<Node> &, const Terminal_Identifier &)";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphCommon.cpp";
    v51 = 27;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v15 = *MEMORY[0x1E69E9840];

  return AMCP::Graph::Node::get_nth_terminal(v12, v14, v13);
}

void sub_1DE570160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v35 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a33);
  MEMORY[0x1E12C0F00](&a31);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v35 - 129));
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

uint64_t get_terminal_for_key(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, a1);
  if (!v3)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      AMCP::Terminal_Identifier_to_string(&__p, a1);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v36 = "GraphCommon.cpp";
      v37 = 1024;
      v38 = 37;
      v39 = 2080;
      v40 = "not (found != nodes.end())";
      v41 = 2080;
      *v42 = v21;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing node for connection in when building manifest: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v26, a1);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v26;
    }

    else
    {
      v22 = v26.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Missing node for connection in when building manifest: %s", &v27, v22);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v28);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v42[2] = "Terminal &get_terminal_for_key(const Terminal_Identifier &, const AMCP::Graph::Node_Map &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphCommon.cpp";
    v44 = 37;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  v4 = v3;
  v5 = v3[5];
  v6 = v4[6];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  v8 = 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 3 * v7 + 8) - *(v5 + 3 * v7 + 7)) >> 4);
  v9 = *(a1 + 24);
  if (v9 > v8)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      AMCP::Terminal_Identifier_to_string(&__p, a1);
      v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136316162;
      v36 = "GraphCommon.cpp";
      v37 = 1024;
      v38 = 41;
      v39 = 2080;
      v40 = "not (key.m_terminal_index <= num_other_terminals)";
      v41 = 2080;
      *v42 = v23;
      *&v42[8] = 2048;
      v43 = v8;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing terminal for connection in when building manifest - index: %s  terminals: %zu", buf, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v26, a1);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v26;
    }

    else
    {
      v24 = v26.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("Missing terminal for connection in when building manifest - index: %s  terminals: %zu", &v27, v24, v8);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v28);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v42[2] = "Terminal &get_terminal_for_key(const Terminal_Identifier &, const AMCP::Graph::Node_Map &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphCommon.cpp";
    v44 = 41;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  nth_terminal = AMCP::Graph::Node::get_nth_terminal(v5, v9, v7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return nth_terminal;
}

void sub_1DE5707EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, char a33)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOPrewarmManager::Start(void *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = *a1;
    v3 = a1;
  }

  else
  {
    if (a2)
    {
      goto LABEL_7;
    }

    v3 = a1 + 1;
    v2 = a1[1];
  }

  if (v2 != -1)
  {
    *v3 = v2 + 1;
  }

LABEL_7:
  if (a1[1])
  {
    return 2;
  }

  else
  {
    return *a1 != 0;
  }
}

void HALS_IOPrewarmManager::GetState(HALS_IOPrewarmManager *this, unint64_t *a2)
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

void sub_1DE570B84(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DeviceManager::ObjectPropertiesChanged()
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "HALS_DeviceManager.cpp";
    v3 = 1024;
    v4 = 1102;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DeviceManager::ObjectsPropertiesChanged: unimplemented", &v1, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1970171760;
}

void HALS_DeviceManager::ObjectsPublishedAndDied()
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "HALS_DeviceManager.cpp";
    v3 = 1024;
    v4 = 1095;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DeviceManager::ObjectsPublishedAndDied: unimplemented", &v1, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1970171760;
}

void HALS_DeviceManager::CreateObject()
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "HALS_DeviceManager.cpp";
    v3 = 1024;
    v4 = 1088;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DeviceManager::CreateObject: unimplemented", &v1, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1970171760;
}

void HALS_DeviceManager::ClientDied(HALS_DeviceManager *this, HALS_Client *a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v33, 1, 0);
  v3 = v33;
  v31 = v34;
  if (v33 != v34)
  {
    v30 = MEMORY[0x1E69E9820];
    v4 = a2;
    do
    {
      v5 = *v3;
      v37 = 0;
      v38 = &v37;
      v39 = 0x2000000000;
      v40 = 0;
      v36[0] = v30;
      v36[1] = 0x40000000;
      v36[2] = ___ZN11HALS_Device10ClientDiedEP11HALS_Client_block_invoke;
      v36[3] = &unk_1E8678B38;
      v36[4] = &v37;
      v36[5] = v5;
      v36[6] = v4;
      v6 = (*(*v5 + 64))(v5);
      HALB_CommandGate::ExecuteCommand(v6, v36);
      if (*(v38 + 24) == 1)
      {
        if (a2)
        {
          v7 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        v8 = v5[4];
        *&v41.mSelector = 0x676C6F6263646573;
        v41.mElement = 0;
        HALS_Object::PropertiesChanged(v5, v8, v7, 1, &v41);
      }

      if (a2)
      {
        v9 = *(a2 + 4);
      }

      else
      {
        v9 = 0;
      }

      v10 = 0;
      v11 = 1;
      do
      {
        v12 = v11;
        NumberStreams = HALS_IODevice::GetNumberStreams(v5, v10 & 1);
        if (NumberStreams)
        {
          for (i = 0; i != NumberStreams; ++i)
          {
            v15 = HALS_IODevice::CopyStreamByIndex(v5, v10 & 1, i);
            v17 = v15;
            if (v15)
            {
              v18 = *(v15 + 64);
              std::mutex::lock((v18 + 24));
              v19 = *(v18 + 96);
              if (v19)
              {
                v20 = v18 + 96;
                v21 = *(v18 + 96);
                do
                {
                  v22 = *(v21 + 32);
                  v23 = v22 >= v9;
                  v24 = v22 < v9;
                  if (v23)
                  {
                    v20 = v21;
                  }

                  v21 = *(v21 + 8 * v24);
                }

                while (v21);
                if (v20 != v18 + 96 && *(v20 + 32) <= v9)
                {
                  v25 = *(v20 + 8);
                  v26 = v20;
                  if (v25)
                  {
                    do
                    {
                      v27 = v25;
                      v25 = *v25;
                    }

                    while (v25);
                  }

                  else
                  {
                    do
                    {
                      v27 = v26[2];
                      v28 = *v27 == v26;
                      v26 = v27;
                    }

                    while (!v28);
                  }

                  if (*(v18 + 88) == v20)
                  {
                    *(v18 + 88) = v27;
                  }

                  --*(v18 + 104);
                  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v19, v20);
                  v29 = *(v20 + 104);
                  if (v29)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
                  }

                  operator delete(v20);
                }
              }

              std::mutex::unlock((v18 + 24));
            }

            HALS_ObjectMap::ReleaseObject(v17, v16);
          }
        }

        v11 = 0;
        v10 = 1;
      }

      while ((v12 & 1) != 0);
      _Block_object_dispose(&v37, 8);
      ++v3;
      v4 = a2;
    }

    while (v3 != v31);
  }

  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v33, v2);
}

void sub_1DE571118(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

void HALS_DeviceManager::CopyDeviceList(HALS_DeviceManager *this, HALS_DeviceManager::BasicDeviceList *a2, char a3, HALS_Client *a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__11571;
  v19 = __Block_byref_object_dispose__11572;
  memset(v20, 0, sizeof(v20));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZNK18HALS_DeviceManager14CopyDeviceListERNS_15BasicDeviceListEbP11HALS_Client_block_invoke;
  v14[3] = &unk_1E8676C78;
  v14[4] = &v15;
  v14[5] = this;
  v7 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v7, v14);
  v9 = v16[5];
  v10 = v16[6];
  while (v9 != v10)
  {
    if (a3)
    {
      IsHidden = 0;
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      IsHidden = HALS_Device::IsHidden(*v9);
      if (a4)
      {
LABEL_5:
        v12 = (*(**v9 + 496))(*v9, a4);
        goto LABEL_8;
      }
    }

    v12 = 1;
LABEL_8:
    if (!IsHidden && (v12 & 1) != 0)
    {
      HALS_ObjectMap::RetainObject(*v9, v8);
      std::vector<HALS_Device *>::push_back[abi:ne200100](a2, v9);
    }

    ++v9;
  }

  _Block_object_dispose(&v15, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v20, v13);
}

void sub_1DE5712DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v7 + 40), v9);
  _Unwind_Resume(a1);
}

void HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

__n128 __Block_byref_object_copy__11571(void *a1, uint64_t a2)
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

void sub_1DE5713E0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_DeviceManager::HandleOwnedObjectGroupPropertiesChanged(HALS_DeviceManager *this, HALS_ObjectMap *a2, unsigned int a3, unsigned int a4, const unsigned int *a5, const unsigned int *a6, unsigned int a7, const AudioObjectPropertyAddress *a8, BOOL a9)
{
  v13 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  v15 = v13;
  if (v13)
  {
    v16 = *(v13 + 5);
    if (v16 <= 1701078389)
    {
      v17 = v16 == 1633773415;
      v18 = 1633969526;
    }

    else
    {
      v17 = v16 == 1701078390 || v16 == 1701733488;
      v18 = 1919182198;
    }

    if (!v17 && v16 != v18)
    {
      v20 = *(v13 + 6);
      if (v16 == v20)
      {
        goto LABEL_14;
      }

      if (v20 <= 1701078389)
      {
        if (v20 != 1633773415)
        {
          v21 = 1633969526;
LABEL_22:
          if (v20 != v21)
          {
            goto LABEL_14;
          }
        }
      }

      else if (v20 != 1701078390 && v20 != 1919182198)
      {
        v21 = 1701733488;
        goto LABEL_22;
      }
    }

    HALS_DeviceManager::HandleOwnedObjectPropertiesChanged(this, v13, a3, a7, a8);
  }

LABEL_14:
  HALS_ObjectMap::ReleaseObject(v15, v14);
}

void HALS_DeviceManager::HandleOwnedObjectPropertiesChanged(HALS_DeviceManager *this, const HALS_Object *a2, unsigned int a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v6 = *(a2 + 5);
  if (v6 <= 1701078389)
  {
    v7 = v6 == 1633773415;
    v8 = 1633969526;
  }

  else
  {
    v7 = v6 == 1701078390 || v6 == 1701733488;
    v8 = 1919182198;
  }

  if (!v7 && v6 != v8)
  {
    v14 = *(a2 + 6);
    if (v6 == v14)
    {
      return;
    }

    if (v14 <= 1701078389)
    {
      if (v14 != 1633773415)
      {
        v15 = 1633969526;
LABEL_37:
        if (v14 != v15)
        {
          return;
        }
      }
    }

    else if (v14 != 1701078390 && v14 != 1919182198)
    {
      v15 = 1701733488;
      goto LABEL_37;
    }
  }

  i = a5;
  if (a4)
  {
    v11 = 12 * a4;
    for (i = a5; i->mSelector != 1751412337 && i->mSelector != 1751737454; ++i)
    {
      v11 -= 12;
      if (!v11)
      {
        return;
      }
    }
  }

  if (i != &a5[a4])
  {
    if (i->mSelector != 1751412337)
    {
      std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](1uLL);
    }

    if (HALS_Device::IsHidden(a2))
    {
      HALS_Device::ClearDeviceArrivalTime(a2);
    }

    else
    {
      HALS_Device::UpdateDeviceArrivalTime(a2);
    }

    v16[0] = 0;
    v16[1] = 0;
    HALS_System::GetInstance(&v17, 0, v16);
    HALS_System::CheckForDefaultDeviceChanges(v17);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }
}

void sub_1DE5717C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DeviceManager::GetPropertyData(HALS_DeviceManager *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, _DWORD *a6, unsigned int a7, const __CFString **a8, HALS_Client *a9)
{
  v9 = a6;
  v118 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    if (mSelector > 1969841249)
    {
      switch(mSelector)
      {
        case 1969841250:
          if (a7 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 928;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: the qualifier is the wrong size for kAudioPlugInPropertyTranslateUIDToBox", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 1852797029;
          }

          if (!a8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 929;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: no qualifier data for kAudioPlugInPropertyTranslateUIDToBox", buf, 0x12u);
            }

            v94 = __cxa_allocate_exception(0x10uLL);
            *v94 = off_1F5991DD8;
            v94[2] = 1852797029;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 934;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: bad property data size for kAudioPlugInPropertyTranslateUIDToBox", buf, 0x12u);
            }

            v98 = __cxa_allocate_exception(0x10uLL);
            *v98 = off_1F5991DD8;
            v98[2] = 561211770;
          }

          v16 = HALS_DeviceManager::CopyBoxByUID(this, *a8, a9);
          if (v16)
          {
            v18 = *(v16 + 4);
          }

          else
          {
            v18 = 0;
          }

          break;
        case 1969841251:
          if (a7 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 970;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: the qualifier is the wrong size for kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
            }

            v92 = __cxa_allocate_exception(0x10uLL);
            *v92 = off_1F5991DD8;
            v92[2] = 1852797029;
          }

          if (!a8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 971;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: no qualifier data for kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
            }

            v96 = __cxa_allocate_exception(0x10uLL);
            *v96 = off_1F5991DD8;
            v96[2] = 1852797029;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 976;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: bad property data size for kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
            }

            v100 = __cxa_allocate_exception(0x10uLL);
            *v100 = off_1F5991DD8;
            v100[2] = 561211770;
          }

          v16 = HALS_DeviceManager::CopyClockDeviceByUID(this, *a8, a3);
          if (v16)
          {
            v18 = *(v16 + 4);
          }

          else
          {
            v18 = 0;
          }

          break;
        case 1969841252:
          if (a7 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 886;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: the qualifier is the wrong size for kAudioHardwarePropertyTranslateUIDToDevice", buf, 0x12u);
            }

            v89 = __cxa_allocate_exception(0x10uLL);
            *v89 = off_1F5991DD8;
            v89[2] = 1852797029;
          }

          if (!a8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 887;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: no qualifier data for kAudioHardwarePropertyTranslateUIDToDevice", buf, 0x12u);
            }

            v93 = __cxa_allocate_exception(0x10uLL);
            *v93 = off_1F5991DD8;
            v93[2] = 1852797029;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 892;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateUIDToDevice", buf, 0x12u);
            }

            v97 = __cxa_allocate_exception(0x10uLL);
            *v97 = off_1F5991DD8;
            v97[2] = 561211770;
          }

          v16 = HALS_DeviceManager::CopyDeviceByUID(this, *a8, a9);
          if (v16)
          {
            v18 = *(v16 + 4);
          }

          else
          {
            v18 = 0;
          }

          break;
        default:
          goto LABEL_78;
      }

      *v9 = v18;
      *a5 = 4;
      HALS_ObjectMap::ReleaseObject(v16, v17);
LABEL_112:
      v67 = *MEMORY[0x1E69E9840];
      return;
    }

    if (mSelector != 1870098020)
    {
      v14 = 1885956452;
      goto LABEL_26;
    }

    memset(buf, 0, sizeof(buf));
    HALS_DeviceManager::CopyBoxList(this, buf, a9);
    v114 = 0;
    v115 = 0;
    v116 = 0;
    HALS_DeviceManager::CopyDeviceList(this, &v114, 0, a9);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    HALS_DeviceManager::CopyClockDeviceList(this, &v111);
    v110 = a4 >> 2;
    v104 = a5;
    if (a7 < 4 || !a8)
    {
      v56 = *&buf[8];
      if (*buf == *&buf[8])
      {
        LODWORD(v35) = 0;
      }

      else
      {
        v35 = 0;
        if (v110 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = a4 >> 2;
        }

        v58 = (v57 - 1);
        v59 = *buf + 8;
        do
        {
          v60 = v35;
          v9[v35++] = *(*(v59 - 8) + 16);
          if (v58 == v60)
          {
            break;
          }

          v61 = v59 == v56;
          v59 += 8;
        }

        while (!v61);
      }

      v62 = v115;
      if (v114 != v115)
      {
        v35 = v35;
        v63 = v114 + 1;
        do
        {
          v9[v35++] = *(*(v63 - 1) + 4);
          if (v35 >= v110)
          {
            break;
          }

          v61 = v63++ == v62;
        }

        while (!v61);
      }

      v64 = v112;
      if (v111 != v112)
      {
        v35 = v35;
        v65 = v111 + 1;
        do
        {
          v9[v35++] = *(*(v65 - 1) + 4);
          if (v35 >= v110)
          {
            break;
          }

          v61 = v65++ == v64;
        }

        while (!v61);
      }

      *a5 = 4 * v35;
LABEL_110:
      *v104 = 4 * v35;
      HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v111, v33);
      HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v114, v66);
LABEL_111:
      HALS_DeviceManager::BasicBoxList::~BasicBoxList(buf, v27);
      goto LABEL_112;
    }

    v108 = a7 >> 2;
    v34 = *buf;
    v105 = *&buf[8];
    if (*buf == *&buf[8])
    {
      LODWORD(v35) = 0;
      goto LABEL_114;
    }

    LODWORD(v35) = 0;
    do
    {
      v36 = *v34;
      v37 = *(*v34 + 20);
      v38 = *(*v34 + 24);
      v40 = v108;
      v39 = a8;
      while (1)
      {
        v42 = *v39++;
        v41 = v42;
        IsSubClass = HALB_Info::IsSubClass(v37, v42);
        if (v37 != v38 && !IsSubClass)
        {
          if (HALB_Info::IsSubClass(v38, v41))
          {
            break;
          }

          goto LABEL_47;
        }

        if (IsSubClass || v37 != v38)
        {
          break;
        }

LABEL_47:
        if (!--v40)
        {
          goto LABEL_50;
        }
      }

      v9[v35] = *(v36 + 16);
      LODWORD(v35) = v35 + 1;
LABEL_50:
      if (v35 >= v110)
      {
        break;
      }

      ++v34;
    }

    while (v34 != v105);
LABEL_114:
    v69 = v114;
    v68 = v115;
    v106 = v115;
LABEL_115:
    if (v69 != v68)
    {
      v70 = *v69;
      v71 = *(*v69 + 5);
      v72 = *(*v69 + 6);
      v74 = v108;
      v73 = a8;
      while (1)
      {
        v76 = *v73++;
        v75 = v76;
        v77 = HALB_Info::IsSubClass(v71, v76);
        if (v71 == v72 || v77)
        {
          if (v77 || v71 != v72)
          {
LABEL_124:
            v9[v35] = *(v70 + 4);
            LODWORD(v35) = v35 + 1;
LABEL_125:
            if (v35 >= v110)
            {
              break;
            }

            ++v69;
            v68 = v106;
            goto LABEL_115;
          }
        }

        else if (HALB_Info::IsSubClass(v72, v75))
        {
          goto LABEL_124;
        }

        if (!--v74)
        {
          goto LABEL_125;
        }
      }
    }

    v79 = v111;
    v78 = v112;
    v107 = v112;
LABEL_128:
    if (v79 == v78)
    {
      goto LABEL_110;
    }

    v80 = *v79;
    v81 = *(*v79 + 5);
    v82 = *(*v79 + 6);
    v84 = v108;
    v83 = a8;
    while (1)
    {
      v86 = *v83++;
      v85 = v86;
      v87 = HALB_Info::IsSubClass(v81, v86);
      if (v81 == v82 || v87)
      {
        if (v87 || v81 != v82)
        {
LABEL_137:
          v9[v35] = *(v80 + 4);
          LODWORD(v35) = v35 + 1;
LABEL_138:
          if (v35 >= v110)
          {
            goto LABEL_110;
          }

          ++v79;
          v78 = v107;
          goto LABEL_128;
        }
      }

      else if (HALB_Info::IsSubClass(v82, v85))
      {
        goto LABEL_137;
      }

      if (!--v84)
      {
        goto LABEL_138;
      }
    }
  }

  if (mSelector <= 1684370978)
  {
    if (mSelector != 1651472419)
    {
      if (mSelector == 1668049699)
      {
        memset(buf, 0, sizeof(buf));
        HALS_DeviceManager::CopyClockDeviceList(this, buf);
        v20 = *buf;
        v21 = (*&buf[8] - *buf) >> 3;
        v22 = a4 >> 2;
        if (v21 < v22)
        {
          v22 = (*&buf[8] - *buf) >> 3;
        }

        if (v22)
        {
          v23 = v22;
          do
          {
            if (!v21)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v24 = *v20++;
            *v9++ = *(v24 + 16);
            --v21;
            --v23;
          }

          while (v23);
        }

        *a5 = 4 * v22;
        HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(buf, v19);
        goto LABEL_112;
      }

      goto LABEL_78;
    }

    memset(buf, 0, sizeof(buf));
    HALS_DeviceManager::CopyBoxList(this, buf, a9);
    v28 = *buf;
    v29 = (*&buf[8] - *buf) >> 3;
    v30 = a4 >> 2;
    if (v29 < v30)
    {
      v30 = (*&buf[8] - *buf) >> 3;
    }

    if (v30)
    {
      v31 = v30;
      do
      {
        if (!v29)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v32 = *v28++;
        *v9++ = *(v32 + 16);
        --v29;
        --v31;
      }

      while (v31);
    }

    *a5 = 4 * v30;
    goto LABEL_111;
  }

  if (mSelector == 1684370979)
  {
    memset(buf, 0, sizeof(buf));
    HALS_DeviceManager::CopyDeviceList(this, buf, 0, a9);
    v45 = *buf;
    v46 = (*&buf[8] - *buf) >> 3;
    v47 = a4 >> 2;
    if (v46 < v47)
    {
      v47 = (*&buf[8] - *buf) >> 3;
    }

    if (v47)
    {
      v48 = v47;
      do
      {
        if (!v46)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v49 = *v45++;
        *v9++ = *(v49 + 16);
        --v46;
        --v48;
      }

      while (v48);
    }

    *a5 = 4 * v47;
    HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(buf, v44);
    goto LABEL_112;
  }

  if (mSelector == 1685416292)
  {
    if (a4 <= 0x1F)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 851;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: wrong data size for kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
      }

      v91 = __cxa_allocate_exception(0x10uLL);
      *v91 = off_1F5991DD8;
      v91[2] = 561211770;
    }

    if (!a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 852;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: translation data is NULL", buf, 0x12u);
      }

      v95 = __cxa_allocate_exception(0x10uLL);
      *v95 = off_1F5991DD8;
      v95[2] = 1852797029;
    }

    if (a6[2] != 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 858;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: wrong data size for input to kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
      }

      v99 = __cxa_allocate_exception(0x10uLL);
      *v99 = off_1F5991DD8;
      v99[2] = 561211770;
    }

    if (!*a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 859;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: input to kAudioHardwarePropertyDeviceForUID is NULL", buf, 0x12u);
      }

      v101 = __cxa_allocate_exception(0x10uLL);
      *v101 = off_1F5991DD8;
      v101[2] = 1852797029;
    }

    if (a6[6] != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 863;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: wrong data size for output to kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
      }

      v102 = __cxa_allocate_exception(0x10uLL);
      *v102 = off_1F5991DD8;
      v102[2] = 561211770;
    }

    v51 = *(a6 + 2);
    if (!v51)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 864;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: output to kAudioHardwarePropertyDeviceForUID is NULL", buf, 0x12u);
      }

      v103 = __cxa_allocate_exception(0x10uLL);
      *v103 = off_1F5991DD8;
      v103[2] = 1852797029;
    }

    v52 = HALS_DeviceManager::CopyDeviceByUID(this, **a6, a9);
    if (v52)
    {
      v54 = *(v52 + 4);
    }

    else
    {
      v54 = 0;
    }

    *v51 = v54;
    *a5 = a4;
    HALS_ObjectMap::ReleaseObject(v52, v53);
    goto LABEL_112;
  }

  v14 = 1819173229;
LABEL_26:
  if (mSelector == v14)
  {
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 828;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetPropertyData: bad property data size for kAudioPlugInPropertyBundleID", buf, 0x12u);
      }

      v88 = __cxa_allocate_exception(0x10uLL);
      *v88 = off_1F5991DD8;
      v88[2] = 561211770;
    }

    v25 = *(this + 6);
    if (v25)
    {
      CFRetain(v25);
      v26 = *(this + 6);
    }

    else
    {
      v26 = 0;
    }

    *v9 = v26;
    *a5 = 8;
    goto LABEL_112;
  }

LABEL_78:
  v55 = *MEMORY[0x1E69E9840];

  HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}