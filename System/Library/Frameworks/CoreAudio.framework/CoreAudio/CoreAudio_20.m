void sub_1DE3709FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_unfair_lock_t lock, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, char a63)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE370BEC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE370D3CLL);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370C00(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a2)
  {
    *(v47 - 208) = &a47;
    std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](v47 - 208);
    JUMPOUT(0x1DE370CF0);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370C10(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60)
{
  if (a2)
  {
    a60 = (v60 - 208);
    std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&a60);
    JUMPOUT(0x1DE370C2CLL);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370C44(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, os_unfair_lock_s *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, const void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, std::runtime_error a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    *(v69 - 136) = v66;
    v72 = *(v69 - 128);
    if (v72)
    {
      *(v69 - 120) = v72;
      operator delete(v72);
    }

    if (__p)
    {
      a34 = __p;
      operator delete(__p);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v69 - 208);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a65);
    std::runtime_error::~runtime_error(&a43);
    if (a42 < 0)
    {
      operator delete(a37);
    }

    if (v65)
    {
      __cxa_free_exception(v68);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a47);
    if (a31)
    {
      std::default_delete<HALIO::HALIO_Graph_Builder>::operator()[abi:ne200100](a31);
    }

    AMCP::Graph_Description::~Graph_Description(&a58);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a30);
    os_unfair_lock_unlock(a12);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a23);
    if (a27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a27);
    }

    if (a25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a25);
    }

    v73 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v67 + 32) + 8) + 24) = v73[2];
    }

    else
    {
      *(*(*(v67 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE370328);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370CE4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE370CF0);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370CF8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE370D04);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void Buffer_Size_Notifier::~Buffer_Size_Notifier(Buffer_Size_Notifier *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      if (*(v2 + 48))
      {
        simple_mcp = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718839674u>(*(this + 2));
        v7 = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718843939u>(*(this + 2));
        v16 = 0;
        v17 = 0;
        v18 = 0;
        if (simple_mcp != *this && *this)
        {
          v14 = 0x676C6F626673697ALL;
          v15 = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v16, &v14);
        }

        v8 = *(this + 1);
        v10 = v8 == v7 && *(this + 2) == HIDWORD(v7);
        if (v8 && !v10)
        {
          v14 = 0x676C6F6266737A23;
          v15 = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v16, &v14);
        }

        v11 = v16;
        if (v16 != v17)
        {
          v12 = *(*(this + 2) + 40);
          v13 = v12[20];
          if (!v13)
          {
            v13 = v12[4];
          }

          HALS_Object::PropertiesChanged(v12, v13, 0, -1431655765 * ((v17 - v16) >> 2), v16);
        }

        if (v11)
        {
          operator delete(v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

Buffer_Size_Notifier *std::unique_ptr<Buffer_Size_Notifier>::reset[abi:ne200100](Buffer_Size_Notifier **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    Buffer_Size_Notifier::~Buffer_Size_Notifier(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

unint64_t HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718839674u>(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = a1[6];
      if (v2)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1718839674u>(v2);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        result = simple_required;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v16 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315906;
    v18 = "HALS_IOContext_MCP_Impl.cpp";
    v19 = 1024;
    v20 = 107;
    v21 = 1024;
    v22 = v11;
    v23 = 2080;
    v24 = v12;
    _os_log_debug_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  simple_required = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3710F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unint64_t HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718843939u>(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = a1[6];
      if (v2)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1718843939u>(v2);
        v5 = simple_required & 0xFFFFFFFF00000000;
        v6 = simple_required;
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        result = v6 | v5;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
    v13 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
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

  v5 = 0;
  v6 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE371318(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Core::Core::get_simple_required_property<1718843939u>(AMCP::Core::Core *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  strcpy(buf, "#zsfbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<std::tuple<unsigned int,unsigned int>,std::enable_if<true,void>>(a1, buf);
  if ((v2 & 1) == 0)
  {
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 4;
      strcpy(__p, "fsz#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v11 = 1024;
      v12 = 391;
      v13 = 2080;
      v14 = "optional_value.operator BOOL() == true";
      v15 = 2080;
      v16 = __p;
      v17 = 1024;
      v18 = 1735159650;
      v19 = 1024;
      v20 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3714B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Core::Core::get_simple_required_property<1718839674u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "zisfbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 4;
      strcpy(__p, "fsiz");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE371638(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void __destroy_helper_block_e8_48c36_ZTSN10applesauce2CF13DictionaryRefE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    CFRelease(v1);
  }
}

void *__copy_helper_block_e8_48c36_ZTSN10applesauce2CF13DictionaryRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 48);
  if (v3)
  {
    result = CFRetain(*(a2 + 48));
  }

  v2[6] = v3;
  return result;
}

void ___ZN23HALS_IOContext_MCP_Impl14SetCompositionEPK14__CFDictionary_block_invoke_2(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  HALS_IOContext_Manager::destroy_context_core_for_hal_object_id(*(v4 + 1744), *(a1 + 32));
  v2 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE371714(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<std::function<void ()(unsigned int)>>(void *a1, unsigned int *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a1[7];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v7 = v4;
    if (v4)
    {
      v8 = a1[6];
      if (v8)
      {
        std::__function::__value_func<void ()>::__value_func[abi:ne200100](v28, a3);
        AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v8, a2, v28);
        std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v28);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_14;
      }
    }
  }

  else
  {
    v7 = 0;
  }

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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v19 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    *buf = 136315906;
    v21 = "HALS_IOContext_MCP_Impl.cpp";
    v22 = 1024;
    v23 = 95;
    v24 = 1024;
    v25 = v14;
    v26 = 2080;
    v27 = v15;
    _os_log_debug_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE37195C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContext_MCP_Impl::set_simple_mcp_value<1718839674u>(void *a1, _DWORD *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1[7];
  if (v3)
  {
    v3 = std::__shared_weak_count::lock(v3);
    v5 = v3;
    if (v3)
    {
      v3 = a1[6];
      if (v3)
      {
        AMCP::Core::Core::set_simple_property_value<1718839674u>(v3, a2);
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v16 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315906;
    v18 = "HALS_IOContext_MCP_Impl.cpp";
    v19 = 1024;
    v20 = 121;
    v21 = 1024;
    v22 = v11;
    v23 = 2080;
    v24 = v12;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE371B8C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<AMCP::Power_State>(void *a1, unsigned int *a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1[7];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v7 = v4;
    if (v4)
    {
      v4 = a1[6];
      if (v4)
      {
        AMCP::Core::Core::call_operation_function<void,AMCP::Power_State>(v4, a2, a3);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_14;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v8 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
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
    v22 = 95;
    v23 = 1024;
    v24 = v13;
    v25 = 2080;
    v26 = v14;
    _os_log_debug_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE371DA4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = v7 << 6;
    if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
    {
      __dst = 0;
      v19 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v7 << 7;
      if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v8 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__dst, v11);
      v12 = *a1;
      v13 = *(a1 + 8);
      *&v19 = v13 + v5;
      v14 = __dst;
      if (v13 < 1)
      {
        LODWORD(v17) = 0;
        v16 = __dst;
      }

      else
      {
        v15 = v13 >> 6;
        if (v13 >= 0x40)
        {
          memmove(__dst, v12, 8 * v15);
        }

        v16 = &v14[8 * v15];
        v17 = v13 & 0x3F;
        if (v17)
        {
          *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17) | *(v12 + v15) & (0xFFFFFFFFFFFFFFFFLL >> -v17);
        }

        v12 = *a1;
      }

      *a1 = v14;
      *(a1 + 8) = v19;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      v16 = (*a1 + 8 * (v4 >> 6));
      v17 = *(a1 + 8) & 0x3FLL;
      *(a1 + 8) = a2;
    }

    if (a3)
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&__dst, v5);
    }

    else
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&__dst, v5);
    }
  }
}

void sub_1DE371F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t AMCP::Core::Core::set_simple_property_value<1885627511u>(int8x8_t *a1, _BYTE *a2)
{
  v12 = 0x676C6F6270646477;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      memset(v8, 0, sizeof(v8));
      LOBYTE(v8[0]) = *a2;
      v9 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,BOOL const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE3721F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3721D8);
}

uint64_t AMCP::Core::Core::set_simple_property_value<1885630071u>(int8x8_t *a1, _BYTE *a2)
{
  v12 = 0x676C6F6270646E77;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      memset(v8, 0, sizeof(v8));
      LOBYTE(v8[0]) = *a2;
      v9 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,BOOL const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE372334(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE37231CLL);
}

void AMCP::Core::Core::call_operation_function<void,AMCP::Power_State>(AMCP::Address *a1, unsigned int *a2, int a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *&buf[4] = "Core.h";
      v42 = 1024;
      v43 = 198;
      v44 = 2080;
      v45 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v29, a1, a2);
  v7 = v29;
  if (!v29)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v42 = 1024;
      v43 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v32);
    std::runtime_error::runtime_error(&v33, &v32);
    std::runtime_error::runtime_error(&v34, &v33);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5992170;
    v35 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
    v46 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Power_State>]";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v48 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Power_State)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v42 = 1024;
      v43 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v32);
    std::runtime_error::runtime_error(&v33, &v32);
    std::runtime_error::runtime_error(&v34, &v33);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5992170;
    v35 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
    v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Power_State>]";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v48 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Power_State)>>(), (v9 = (*(v10 + 7))(4, v10 + 24, 0, buf)) == 0))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v42 = 1024;
      v43 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v32);
    std::runtime_error::runtime_error(&v33, &v32);
    std::runtime_error::runtime_error(&v34, &v33);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5992170;
    v35 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
    v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Power_State>]";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v48 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  *buf = a3;
  v11 = *(v9 + 3);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v11, buf);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE372ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Core::set_simple_property_value<1718839674u>(int8x8_t *a1, _DWORD *a2)
{
  v12 = 0x676C6F626673697ALL;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      memset(v8, 0, sizeof(v8));
      LODWORD(v8[0]) = *a2;
      v9 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,unsigned int const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE372CB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE372C9CLL);
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23HALS_IOContext_MCP_Impl24attach_ioproc_to_contextEN4AMCP11Power_StateEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 28) - 1;
        *(v5 + 28) = v6;
        if (!v6)
        {
          v7 = *(v5 + 40);
          v8 = *(v7 + 80);
          if (!v8)
          {
            v8 = *(v7 + 16);
          }

          v20 = v5;
          v21 = v8;
          v13 = caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::end_processing(void)::$_0>;
          v14[0] = &v20;
          caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::end_processing(void)::$_0>(v14);
          v9 = *(*(v5 + 40) + 88);
          if (v9)
          {
            (*(*v9 + 120))(v9);
            v9 = (*(**(*(v5 + 40) + 88) + 128))(*(*(v5 + 40) + 88));
          }

          HALS_IOContext::UpdateInputStreamUsageStatus(v9);
          v10 = *(*(v5 + 40) + 16);
          v11 = *(v5 + 472);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZN23HALS_IOContext_MCP_Impl14end_processingEv_block_invoke;
          block[3] = &__block_descriptor_tmp_24_3470;
          v19 = v10;
          AMCP::Utility::Dispatch_Queue::async(v11, block);
          std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v16, *(v5 + 8), *(v5 + 16));
          v12 = *(v5 + 472);
          v13 = MEMORY[0x1E69E9820];
          v14[0] = 1174405120;
          v14[1] = ___ZN23HALS_IOContext_MCP_Impl14end_processingEv_block_invoke_2;
          v14[2] = &__block_descriptor_tmp_27_3471;
          v14[3] = v16;
          v15 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Utility::Dispatch_Queue::async(v12, &v13);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::end_processing(void)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 40);
  v3 = *(v1 + 8);
  *&v4.mSelector = 0x676C6F62676F696ELL;
  v4.mElement = 0;
  HALS_Object::PropertiesChanged_Sync(v2, v3, 0, 1, &v4);
}

void ___ZN23HALS_IOContext_MCP_Impl14end_processingEv_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  HALS_System::SetIOContextIsRunning(v4, *(a1 + 32), 0);
  v2 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE373008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c51_ZTSNSt3__110shared_ptrI23HALS_IOContext_MCP_ImplEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_32c51_ZTSNSt3__110shared_ptrI23HALS_IOContext_MCP_ImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t HALS_IOContext_MCP_Impl::send_is_running_somewhere_else(HALS_IOContext_MCP_Impl *this)
{
  v22 = *MEMORY[0x1E69E9840];
  strcpy(buf, "frbtbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Graph::Timebase_Set>(v15, this, buf);
  if (!v16)
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
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
      v20 = 1024;
      v21 = 1401;
      _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl::send_is_running_somewhere_else - no timebases found", buf, 0x12u);
    }
  }

  v7 = *(this + 59);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___ZN23HALS_IOContext_MCP_Impl30send_is_running_somewhere_elseEv_block_invoke;
  v10[3] = &__block_descriptor_tmp_19_3473;
  std::unordered_set<std::shared_ptr<AMCP::Graph::Timebase>>::unordered_set(v11, v15);
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(&__p, v17, v18, (v18 - v17) >> 2);
  AMCP::Utility::Dispatch_Queue::async(v7, v10);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v11);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  result = std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v15);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE373224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  AMCP::Graph::Timebase_Set::~Timebase_Set(va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Graph::Timebase_Set>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 56);
  if (v4 && (v7 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v8 = v7;
    v9 = *(a2 + 48);
    if (v9)
    {
      if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
      {
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

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v34 = "Core.h";
          v35 = 1024;
          v36 = 198;
          v37 = 2080;
          v38 = "!in_address.has_wildcards()";
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
        }

        abort();
      }

      operation = AMCP::Core::Core::find_operation(&v31, v9, a3);
      if (!v31)
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v34 = "Core.h";
          v35 = 1024;
          v36 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v22);
        std::runtime_error::runtime_error(&v23, &v22);
        std::runtime_error::runtime_error(&v24, &v23);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = -1;
        v24.__vftable = &unk_1F5992170;
        v25 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v24);
        v39 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = AMCP::Graph::Timebase_Set, Argument_Types = <>]";
        v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v41 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v21);
      }

      AMCP::Core::Operation::call_function<AMCP::Graph::Timebase_Set>(a1, v31);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 1065353216;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
    }

    v20 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1065353216;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v11 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE373700(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE373708);
  }

  __clang_call_terminate(a1);
}

void ___ZN23HALS_IOContext_MCP_Impl30send_is_running_somewhere_elseEv_block_invoke(uint64_t a1)
{
  std::unordered_set<std::shared_ptr<AMCP::Graph::Timebase>>::unordered_set(v2, a1 + 32);
  memset(v3, 0, sizeof(v3));
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(v3, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  v5[0] = 0;
  v5[1] = 0;
  HALS_System::GetInstance(&__p, 0, v5);
  HALS_IOContext_Manager::find_contexts_and_devices_with_timebases(&v6, *(__p + 218));
}

void sub_1DE373874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  AMCP::Graph::Timebase_Set::~Timebase_Set(&a10);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_32c31_ZTSN4AMCP5Graph12Timebase_SetE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(a1 + 32);
}

uint64_t __copy_helper_block_e8_32c31_ZTSN4AMCP5Graph12Timebase_SetE(void *a1, uint64_t a2)
{
  std::unordered_set<std::shared_ptr<AMCP::Graph::Timebase>>::unordered_set((a1 + 4), a2 + 32);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  return std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>((a1 + 9), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
}

uint64_t std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5969408;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5969408;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5969408;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23HALS_IOContext_MCP_Impl24attach_ioproc_to_contextEN4AMCP11Power_StateEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::operator()(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 28);
    *(v5 + 28) = v6 + 1;
    if (!v6)
    {
      v7 = *(*(v5 + 40) + 16);
      IOStatus = HALB_IOBufferManager_Server::GetIOStatus(*(v5 + 240));
      if (!IOStatus)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1445;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1970171760;
      }

      IOStatus[17] = 0u;
      IOStatus[18] = 0u;
      IOStatus[15] = 0u;
      IOStatus[16] = 0u;
      IOStatus[13] = 0u;
      IOStatus[14] = 0u;
      IOStatus[11] = 0u;
      IOStatus[12] = 0u;
      IOStatus[9] = 0u;
      IOStatus[10] = 0u;
      IOStatus[7] = 0u;
      IOStatus[8] = 0u;
      IOStatus[5] = 0u;
      IOStatus[6] = 0u;
      IOStatus[3] = 0u;
      IOStatus[4] = 0u;
      IOStatus[1] = 0u;
      IOStatus[2] = 0u;
      *IOStatus = 0u;
      HALS_IOContext_MCP_Impl::update_status_time_info(v5);
      OSMemoryBarrier();
      v9 = *(v5 + 40);
      v10 = *(v9 + 80);
      if (!v10)
      {
        v10 = *(v9 + 16);
      }

      block = v5;
      LODWORD(v27) = v10;
      *buf = caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::begin_processing(void)::$_0>;
      *&buf[8] = &block;
      caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::begin_processing(void)::$_0>(&buf[8]);
      v11 = HALS_IOContext::WaitForClientToBeginTransport(*(v5 + 40));
      v12 = v11;
      v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v13 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

      v18 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (v18)
      {
        v21 = "NO";
        *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
        *buf = 136315650;
        if (v12)
        {
          v21 = "YES";
        }

        *&buf[12] = 1024;
        *&buf[14] = 1466;
        *&buf[18] = 2080;
        *&buf[20] = v21;
        _os_log_debug_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEBUG, "%32s:%-5d finished WaitForClientToBeginTransport: did start: %s", buf, 0x1Cu);
        if (v12)
        {
          goto LABEL_16;
        }
      }

      else if (v12)
      {
LABEL_16:
        HALS_IOContext::UpdateInputStreamUsageStatus(v18);
        v19 = *(v5 + 472);
        block = MEMORY[0x1E69E9820];
        v27 = 0x40000000;
        v28 = ___ZN23HALS_IOContext_MCP_Impl16begin_processingEv_block_invoke;
        v29 = &__block_descriptor_tmp_22_3479;
        v30 = v7;
        AMCP::Utility::Dispatch_Queue::async(v19, &block);
        std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v24, *(v5 + 8), *(v5 + 16));
        v20 = *(v5 + 472);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 1174405120;
        *&buf[16] = ___ZN23HALS_IOContext_MCP_Impl16begin_processingEv_block_invoke_2;
        *&buf[24] = &__block_descriptor_tmp_23_3480;
        v32 = v24;
        v33 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::Utility::Dispatch_Queue::async(v20, buf);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        goto LABEL_26;
      }

      HALS_IOContext_MCP_Impl::stop(v5);
    }
  }

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void HALS_IOContext_MCP_Impl::update_status_time_info(HALS_IOContext_MCP_Impl *this)
{
  v40 = *MEMORY[0x1E69E9840];
  IOStatus = HALB_IOBufferManager_Server::GetIOStatus(*(this + 30));
  if (!IOStatus)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "HALS_IOContext_MCP_Impl.cpp";
      v34 = 1024;
      v35 = 1543;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  v3 = IOStatus;
  v4 = *(this + 7);
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v5 = v4;
    if (v4 && *(this + 6))
    {
      v6 = *(this + 32);
      if (!v6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "HALS_IOContext_MCP_Impl.cpp";
          v34 = 1024;
          v35 = 1564;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  master timebase not found!", buf, 0x12u);
        }

        v26 = __cxa_allocate_exception(0x10uLL);
        *v26 = off_1F5991DD8;
        v26[2] = 1970171760;
      }

      v7 = COERCE_DOUBLE((*(*v6 + 136))(v6));
      if (v8)
      {
        (*(**(this + 32) + 56))(*(this + 32), v7);
        (*(**(this + 32) + 160))(*(this + 32));
      }

      v27 = (*(**(this + 32) + 72))(*(this + 32));
      v9 = (*(**(this + 32) + 160))(*(this + 32));
      v10.f64[0] = v27;
      v10.f64[1] = 1.0 / v27;
      v11 = vmulq_f64(v10, vdupq_n_s64(0x4176E36000000000uLL));
LABEL_17:
      v28 = v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      v11 = v28;
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
    v22 = *(*(this + 5) + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, this);
    if (!cf)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Could not construct");
      __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v31 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    *buf = 136315906;
    v33 = "HALS_IOContext_MCP_Impl.cpp";
    v34 = 1024;
    v35 = 1577;
    v36 = 1024;
    v37 = v22;
    v38 = 2080;
    v39 = v23;
    _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v11 = 0uLL;
  v9 = 0;
  if (v5)
  {
    goto LABEL_17;
  }

LABEL_18:
  v16 = *(*(*(this + 5) + 72) + 40);
  v17 = vdivq_f64(v11, vdupq_n_s64(0x4176E36000000000uLL));
  v18 = vdup_n_s32(v16);
  v19.i64[0] = v18.u32[0];
  v19.i64[1] = v18.u32[1];
  *v3 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL)), vrev64q_s8(v17), v17);
  if (v16)
  {
    v9 = bswap64(v9);
    v20 = bswap32(*(this + 62));
  }

  else
  {
    v20 = *(this + 62);
  }

  v3[1].i64[0] = v9;
  v3[1].i32[2] = v20;
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE374488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::begin_processing(void)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 40);
  v3 = *(v1 + 8);
  *&v4.mSelector = 0x676C6F62676F696ELL;
  v4.mElement = 0;
  HALS_Object::PropertiesChanged_Sync(v2, v3, 0, 1, &v4);
}

uint64_t HALS_IOContext_MCP_Impl::stop(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = this;
    *(this + 32) = v1 - 1;
    v3 = *(*(this + 40) + 88);
    if (v3)
    {
      (*(*v3 + 120))(v3);
      (*(**(*(v2 + 40) + 88) + 128))(*(*(v2 + 40) + 88));
    }

    v4 = 0x676C6F6273746F70;
    v5 = 0;
    return HALS_IOContext_MCP_Impl::call_mcp_operation_function<BOOL>(v2, &v4);
  }

  return this;
}

void ___ZN23HALS_IOContext_MCP_Impl16begin_processingEv_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  HALS_System::SetIOContextIsRunning(v4, *(a1 + 32), 1);
  v2 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE374664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext_MCP_Impl::call_mcp_operation_function<BOOL>(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = AMCP::Core::Core::call_operation_function<BOOL>(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

uint64_t AMCP::Core::Core::call_operation_function<BOOL>(AMCP::Address *a1, unsigned int *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Core.h";
      v29 = 1024;
      v30 = 198;
      v31 = 2080;
      v32 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  AMCP::Core::Core::find_operation(&v25, a1, a2);
  if (!v25)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      v28 = "Core.h";
      v29 = 1024;
      v30 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v16);
    std::runtime_error::runtime_error(&v17, &v16);
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v33 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = BOOL, Argument_Types = <>]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v35 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v4 = AMCP::Core::Operation::call_function<BOOL>(v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE374A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5969388;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5969388;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5969388;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int)>>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
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
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 198;
      v46 = 2080;
      v47 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v30, a1, a2);
  v7 = v30;
  if (!v30)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void >>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v50 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::__function::__value_func<void ()>::__value_func[abi:ne200100](v42, a3);
  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()>)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void >>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()>)>>(), v9 = (*(v10 + 7))(4, v10 + 24, 0, buf), (v11 = v9) == 0))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void >>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::__function::__value_func<void ()>::__value_func[abi:ne200100](buf, v42);
  v12 = *(v11 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, buf);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](buf);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v42);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE3754AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 161));
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v27 - 160);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[281];
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23HALS_IOContext_MCP_Impl24attach_ioproc_to_contextEN4AMCP11Power_StateEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1>,void ()(unsigned int)>::operator()(uint64_t a1)
{
  v1 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 8));
  v3 = v1;
  if (v1)
  {
    HALS_IOContext::SignalOverloadToClient(v1);
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1>,void ()(unsigned int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5969308;
  *(a2 + 8) = *(result + 8);
  return result;
}

void AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
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
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 198;
      v46 = 2080;
      v47 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v30, a1, a2);
  v7 = v30;
  if (!v30)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v50 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v42, a3);
  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>(), v9 = (*(v10 + 7))(4, v10 + 24, 0, buf), (v11 = v9) == 0))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](buf, v42);
  v12 = *(v11 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, buf);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](buf);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v42);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE375FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 161));
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v27 - 160);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[279];
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23HALS_IOContext_MCP_Impl24attach_ioproc_to_contextEN4AMCP11Power_StateEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  if (v8 && (v10 = *a4, v11 = *a5, v43 = *a7, v44 = *a6, (v12 = std::__shared_weak_count::lock(v8)) != 0))
  {
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14)
    {
      ++*(v14 + 24);
      IOStatus = HALB_IOBufferManager_Server::GetIOStatus(*(v14 + 240));
      if (!IOStatus)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v46 = "HALS_IOContext_MCP_Impl.cpp";
          v47 = 1024;
          v48 = 1588;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1970171760;
      }

      if (*(*(*(v14 + 40) + 72) + 40))
      {
        v16 = bswap64(*(a3 + 8));
        *(v14 + 272) = bswap64(*a3);
        *(v14 + 280) = v16;
        *(v14 + 288) = bswap64(*(a3 + 16));
        *(v14 + 328) = bswap32(*(a3 + 56));
        v17 = (v14 + 336);
        v18 = bswap64(*(a3 + 72));
        v42 = (v14 + 344);
        *(v14 + 336) = bswap64(*(a3 + 64));
        *(v14 + 344) = v18;
        *(v14 + 352) = bswap64(*(a3 + 16));
        *(v14 + 392) = bswap32(*(a3 + 56));
        v19 = (v14 + 400);
        v20 = bswap64(*(a3 + 136));
        v21 = (v14 + 408);
        *(v14 + 400) = bswap64(*(a3 + 128));
        *(v14 + 408) = v20;
        v22 = bswap64(*(a3 + 16));
        v23 = bswap32(*(a3 + 56));
      }

      else
      {
        *(v14 + 272) = *a3;
        *(v14 + 280) = *(a3 + 8);
        *(v14 + 288) = *(a3 + 16);
        *(v14 + 328) = *(a3 + 56);
        v17 = (v14 + 336);
        *(v14 + 336) = *(a3 + 64);
        v42 = (v14 + 344);
        *(v14 + 344) = *(a3 + 72);
        *(v14 + 352) = *(a3 + 16);
        *(v14 + 392) = *(a3 + 56);
        v19 = (v14 + 400);
        *(v14 + 400) = *(a3 + 128);
        v21 = (v14 + 408);
        *(v14 + 408) = *(a3 + 136);
        v22 = *(a3 + 16);
        v23 = *(a3 + 56);
      }

      *(v14 + 416) = v22;
      *(v14 + 456) = v23;
      v25 = *(v14 + 272);
      v26 = *(v14 + 288);
      v27 = *(v14 + 320);
      IOStatus[8] = *(v14 + 304);
      IOStatus[9] = v27;
      IOStatus[6] = v25;
      IOStatus[7] = v26;
      v28 = *v17;
      v29 = v17[1];
      v30 = v17[3];
      IOStatus[12] = v17[2];
      IOStatus[13] = v30;
      IOStatus[10] = v28;
      IOStatus[11] = v29;
      v31 = *v19;
      v32 = v19[1];
      v33 = v19[3];
      IOStatus[16] = v19[2];
      IOStatus[17] = v33;
      IOStatus[14] = v31;
      IOStatus[15] = v32;
      HALS_IOContext_MCP_Impl::update_status_time_info(v14);
      OSMemoryBarrier();
      v35 = *(v14 + 192);
      v34 = *(v14 + 200);
      if (-991146299 * ((*(v14 + 224) - *(v14 + 216)) >> 3))
      {
        HALS_IOContext_MCP_Impl::copy_buffers(v14, 1u, v10, v11);
      }

      v36 = *v17;
      v37 = *v42;
      v38 = *v19;
      v39 = *v21;
      kdebug_trace();
      HALS_IOContext::CallClientIOProc(*(v14 + 40), *(v14 + 24), *(v14 + 248), 0, 0);
      kdebug_trace();
      if (-991146299 * ((v34 - v35) >> 3))
      {
        HALS_IOContext_MCP_Impl::copy_buffers(v14, 0, v44, v43);
      }
    }

    v40 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v24 = *MEMORY[0x1E69E9840];
  }
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOContext_MCP_Impl::copy_buffers(AMCP::Log::AMCP_Scope_Registry *result, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v7 = result;
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 72);
  if (v8 && *v8 != 1)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v26 = *v30;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1677;
      *&buf[18] = 2080;
      *&buf[20] = "in_streams[0].m_buffer_list == nullptr or in_streams[0].m_buffer_list->mNumberBuffers == 1";
      v27 = "%32s:%-5d Assertion Failed: %s The ABL from the MCP is supposed to have 1 buffer";
LABEL_25:
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x1Cu);
    }

LABEL_26:
    abort();
  }

  if (a3)
  {
    v9 = 0;
    v31 = result + 24 * a2;
    v10 = 1;
    do
    {
      v11 = a4 + 80 * v9;
      v14 = *(v11 + 72);
      v13 = (v11 + 72);
      v12 = v14;
      if (v14)
      {
        if (*v12 != 1)
        {
          v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v23 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
            *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1683;
            *&buf[18] = 2080;
            *&buf[20] = "in_streams[i].m_buffer_list->mNumberBuffers == 1";
            v27 = "%32s:%-5d Assertion Failed: %s The input ABL from the MCP is supposed to have 1 buffer";
            goto LABEL_25;
          }

          goto LABEL_26;
        }

        v32 = 0;
        IOBuffer = HALB_IOBufferManager_Server::GetIOBuffer(*(v7 + 30), a2 == 1, v10 - 1, &v32);
        v16 = IOBuffer;
        v17 = *v13;
        v18 = *(*v13 + 12);
        if (v18 >= v32)
        {
          v19 = v32;
        }

        else
        {
          v19 = v18;
        }

        if (a2 == 1)
        {
          result = memcpy(IOBuffer, *(v17 + 16), v19);
          if (*(*(*(v7 + 5) + 72) + 40) == 1)
          {
            v20 = *(v7 + 27) + 104 * v9;
            *buf = *v20;
            *&buf[16] = *(v20 + 16);
            v34 = *(v20 + 32);
            result = endian_swap_samples(buf, v16, v19);
          }
        }

        else
        {
          if (*(*(*(v7 + 5) + 72) + 40) == 1)
          {
            v21 = *(v31 + 24) + 104 * v9;
            *buf = *v21;
            *&buf[16] = *(v21 + 16);
            v34 = *(v21 + 32);
            endian_swap_samples(buf, IOBuffer, v19);
            v17 = *v13;
          }

          result = memcpy(*(v17 + 16), v16, v19);
        }
      }

      v9 = v10++;
    }

    while (v9 < a3);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *endian_swap_samples(_DWORD *result, byte *a2, int a3)
{
  if (result[2] == 1819304813)
  {
    v3 = result[7];
    v4 = result[6] / v3;
    v5 = v3 * a3;
    if (v4 == 4)
    {
      if (v5)
      {
        do
        {
          *a2 = bswap32(*a2);
          a2 += 4;
          --v5;
        }

        while (v5);
      }
    }

    else if (v4 == 2 && v5 != 0)
    {
      do
      {
        *a2 = bswap32(*a2) >> 16;
        a2 += 2;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5969288;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__func(void *a1)
{
  *a1 = &unk_1F5969288;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__func(void *a1)
{
  *a1 = &unk_1F5969288;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t HALS_IOContext_MCP_Impl::GetStreamUsage(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 24 * a4 + 200) - *(a1 + 24 * a4 + 192)) >> 3);
  result = 330382100 * ((*(a1 + 24 * a4 + 200) - *(a1 + 24 * a4 + 192)) >> 3) + 4;
  if (result > a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_IOContext_MCP_Impl.cpp";
      v16 = 1024;
      v17 = 968;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_MCP_Impl::GetStreamUsage: bad property data size for kAudioIOContextProperty_StreamUsage", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  *a2 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 88;
    if (a4)
    {
      v8 = 64;
    }

    v9 = (a1 + v8);
    v10 = v9[1];
    do
    {
      if (v10 <= v7)
      {
        LODWORD(v11) = 1;
      }

      else
      {
        v11 = (*(*v9 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1;
      }

      a2[++v7] = v11;
    }

    while (v5 != v7);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOContext_MCP_Impl::SetStreamUsage(HALS_IOContext_MCP_Impl *a1, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_IOContext_MCP_Impl.cpp";
      v16 = 1024;
      v17 = 560;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioIOContextProperty_StreamUsage", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v4 = (a3 + 0x3FFFFFFFCLL) >> 2;
  if (*a2 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = *a2;
  }

  if (-991146299 * ((*(a1 + 3 * a4 + 25) - *(a1 + 3 * a4 + 24)) >> 3) < v4)
  {
    v4 = -991146299 * ((*(a1 + 3 * a4 + 25) - *(a1 + 3 * a4 + 24)) >> 3);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 64;
    if (!a4)
    {
      v6 = 88;
    }

    v7 = *(a1 + v6);
    do
    {
      v8 = v5 >> 6;
      v9 = 1 << v5;
      if (a2[v5 + 1])
      {
        v10 = *(v7 + 8 * v8) | v9;
      }

      else
      {
        v10 = *(v7 + 8 * v8) & ~v9;
      }

      *(v7 + 8 * v8) = v10;
      ++v5;
    }

    while (v4 != v5);
  }

  HALS_IOContext_MCP_Impl::UpdateContext(a1);
  result = 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE376E40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE376D60);
  }

  _Unwind_Resume(a1);
}

uint64_t **HALS_IOContext_MCP_Impl::GetMasterDevice(HALS_IOContext_MCP_Impl *this)
{
  (*(**(this + 32) + 24))(__p);
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  hal_object_id_for_device_uid = HALS_IOContext_Manager::get_hal_object_id_for_device_uid(*(v4 + 1744), __p);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return hal_object_id_for_device_uid;
}

void sub_1DE376F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float HALS_IOContext_MCP_Impl::get_simple_mcp_property<1852012899u>(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = a1[6];
      if (v2)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1852012899u>(v2);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v16 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315906;
    v18 = "HALS_IOContext_MCP_Impl.cpp";
    v19 = 1024;
    v20 = 107;
    v21 = 1024;
    v22 = v11;
    v23 = 2080;
    v24 = v12;
    _os_log_debug_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  simple_required = 0.0;
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return simple_required;
}

void sub_1DE377138(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

float AMCP::Core::Core::get_simple_required_property<1852012899u>(AMCP::Core::Core *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  strcpy(buf, "cycnbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v1 = AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(v1))
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v1);
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
      v9 = 4;
      strcpy(__p, "ncyc");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v11 = 1024;
      v12 = 391;
      v13 = 2080;
      v14 = "optional_value.operator BOOL() == true";
      v15 = 2080;
      v16 = __p;
      v17 = 1024;
      v18 = 1735159650;
      v19 = 1024;
      v20 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return *&v1;
}

void sub_1DE3772E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_IOContext_MCP_Impl::SetIOCycleUsage(HALS_IOContext_MCP_Impl *this, float a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = a2;
  simple_mcp = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1852012899u>(this);
  v5 = *(this + 7);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    v6 = v5;
    if (v5)
    {
      v7 = *(this + 6);
      if (v7)
      {
        cf = 0x676C6F626E637963;
        v26 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &cf))
        {
          AMCP::Core::Core::find_operation(&__p, v7, &cf);
          v8 = __p;
          if (__p)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v21);
            }

            else
            {
              v19 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
              if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v19))
              {
                memset(buf, 0, 32);
                *buf = a2;
                *&buf[32] = AMCP::Implementation::In_Place_Storage<float>::dispatch;
                AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, buf);
                if (*&buf[32])
                {
                  (*&buf[32])(0, buf, 0, 0);
                }
              }
            }
          }

          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }
        }

LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_19;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v10 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
    v17 = *(*(this + 5) + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, this);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(&__p, cf);
    if (v24 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 121;
    *&buf[18] = 1024;
    *&buf[20] = v17;
    *&buf[24] = 2080;
    *&buf[26] = p_p;
    _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v6)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (HALS_IOContext_MCP_Impl::get_simple_mcp_property<1852012899u>(this) != simple_mcp)
  {
    v14 = *(this + 5);
    v15 = v14[20];
    if (!v15)
    {
      v15 = v14[4];
    }

    strcpy(buf, "cycnbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(v14, v15, 0, 1, buf);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE3775E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unint64_t HALS_IOContext_MCP_Impl::SetBufferFrameSize(HALS_IOContext_MCP_Impl *this, int a2, char a3)
{
  v5 = a2;
  if ((a3 & 1) == 0)
  {
    operator new();
  }

  HALS_IOContext_MCP_Impl::set_simple_mcp_value<1718839674u>(this, &v5);
  return HALS_IOContext_MCP_Impl::GetIOBufferFrameSize(this);
}

unint64_t HALS_IOContext_MCP_Impl::GetIOBufferFrameSize(HALS_IOContext_MCP_Impl *this)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return *(this + 62);
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return *(this + 62);
  }

  v4 = v3;
  if (*(this + 6))
  {
    simple_mcp = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718839674u>(this);
    *(this + 62) = simple_mcp;
  }

  else
  {
    simple_mcp = *(this + 62);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_mcp;
}

double HALS_IOContext_MCP_Impl::GetBufferFrameSizeRange(HALS_IOContext_MCP_Impl *this, AudioValueRange *a2)
{
  simple_mcp = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718843939u>(this);
  result = simple_mcp;
  a2->mMinimum = simple_mcp;
  a2->mMaximum = HIDWORD(simple_mcp);
  return result;
}

void HALS_IOContext_MCP_Impl::SleepingIsAllowedChanged(HALS_IOContext_MCP_Impl *this, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v2 = *(*(this + 5) + 72);
  if (*(v2 + 44) != a2)
  {
    *(v2 + 44) = a2;
    v4 = *(this + 7);
    if (v4)
    {
      v4 = std::__shared_weak_count::lock(v4);
      v5 = v4;
      if (v4)
      {
        v4 = *(this + 6);
        if (v4)
        {
          AMCP::Core::Core::set_simple_property_value<1936484705u>(v4, &v14);
LABEL_14:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_15;
        }
      }
    }

    else
    {
      v5 = 0;
    }

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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(*(this + 5) + 16);
      HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, this);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(__p, cf);
      if (v17 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136315906;
      v19 = "HALS_IOContext_MCP_Impl.cpp";
      v20 = 1024;
      v21 = 121;
      v22 = 1024;
      v23 = v11;
      v24 = 2080;
      v25 = v12;
      _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (v5)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE3779D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::Core::Core::set_simple_property_value<1936484705u>(int8x8_t *a1, _BYTE *a2)
{
  v12 = 0x676C6F62736C6961;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      memset(v8, 0, sizeof(v8));
      LOBYTE(v8[0]) = *a2;
      v9 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,BOOL const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE377B10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE377AF8);
}

void HALS_IOContext_MCP_Impl::PowerChanged(void *a1, int a2)
{
  v2 = 0x676C6F6269707073;
  v3 = 0;
  HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<AMCP::Power_State>(a1, &v2, a2);
}

uint64_t HALS_IOContext_MCP_Impl::Server_Internal_StopIOProcID(HALS_IOContext_MCP_Impl *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(this + 5);
    if (*(v3 + 120) && *(v3 + 144) != a2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8[0] = 136315394;
        *&v8[1] = "HALS_IOContext_MCP_Impl.cpp";
        v9 = 1024;
        v10 = 745;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::StopIOProcID: failed to stop because the IOProcID wasn't nullptr or wasn't registered", v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    HALS_IOContext_MCP_Impl::stop(this);
  }

  else
  {
    strcpy(v8, "wppsbolg");
    BYTE1(v8[2]) = 0;
    HIWORD(v8[2]) = 0;
    HALS_IOContext_MCP_Impl::call_mcp_operation_function<BOOL>(this, v8);
  }

  strcpy(v8, "tsrtbolg");
  BYTE1(v8[2]) = 0;
  HIWORD(v8[2]) = 0;
  result = HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(this, v8);
  if (result != 2)
  {
    v5 = *(*(this + 5) + 120);
    if (v5)
    {
      if (*(v5 + 32) == 1)
      {
        *(v5 + 32) = 0;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(uint64_t a1, unsigned int *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    if (v7)
    {
      if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
          v32 = "Core.h";
          v33 = 1024;
          v34 = 198;
          v35 = 2080;
          v36 = "!in_address.has_wildcards()";
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
        }

        abort();
      }

      AMCP::Core::Core::find_operation(&v29, v7, a2);
      if (!v29)
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
          *buf = 136315394;
          v32 = "Core.h";
          v33 = 1024;
          v34 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v20);
        std::runtime_error::runtime_error(&v21, &v20);
        std::runtime_error::runtime_error(&v22, &v21);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = -1;
        v22.__vftable = &unk_1F5992170;
        v23 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
        v37 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = AMCP::Transport_State, Argument_Types = <>]";
        v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v39 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v19);
      }

      v8 = AMCP::Core::Operation::call_function<AMCP::Transport_State>(v29);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE37815C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE378164);
  }

  __clang_call_terminate(a1);
}

void HALS_IOContext_MCP_Impl::Server_Internal_StartIOProcID(HALS_IOContext_MCP_Impl *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, unsigned int a4)
{
  v4 = (a4 >> 3) & 1;
  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = *(*(this + 5) + 120);
    if (v5 && (*(v5 + 32) & 1) == 0)
    {
      *(v5 + 32) = 1;
    }

    if (v4)
    {
      mHostTime = a3->mHostTime;
    }

    HALS_IOContext_MCP_Impl::start(&v7, this);
    HALB_MachPort::DestroyPort(name, 1, 0);
  }

  else
  {
    *(this + 6) = 0;
    v7 = 0x676C6F6273747077;
    name = 0;
    HALS_IOContext_MCP_Impl::call_mcp_operation_function<BOOL>(this, &v7);
  }
}

uint64_t HALS_IOContext_MCP_Impl::start(uint64_t a1, HALS_IOContext_MCP_Impl *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  strcpy(buf, "frbtbolg");
  buf[9] = 0;
  v13 = 0;
  HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Graph::Timebase_Set>(v8, a2, buf);
  if (v8[3])
  {
    v10[0] = 0;
    v10[1] = 0;
    HALS_System::GetInstance(&v11, 0, v10);
    HALS_IOContext_Manager::find_contexts_and_devices_with_timebases(buf, v11.__vftable[72].what);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v8);
  v4 = *(*(a2 + 5) + 88);
  if (v4)
  {
    v5 = (*(*v4 + 96))(v4);
  }

  else
  {
    v5 = 0;
  }

  result = HALS_IOContext_MCP_Impl::CopyWorkIntervalPort(a2);
  *a1 = 0;
  *(a1 + 4) = v5;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3790A4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE3790B0);
  }

  JUMPOUT(0x1DE3791F4);
}

void sub_1DE3790C0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE3790CCLL);
  }

  JUMPOUT(0x1DE3791F4);
}

void sub_1DE3790F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  AMCP::Graph::Timebase_Set::~Timebase_Set(&a14);
  JUMPOUT(0x1DE3791F4);
}

void sub_1DE379104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Graph::Timebase_Set::~Timebase_Set(va);
  JUMPOUT(0x1DE3791F4);
}

void sub_1DE379110(uint64_t a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(v3 - 176);
  JUMPOUT(0x1DE379140);
}

void sub_1DE379124(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE3791F4);
}

void sub_1DE379154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, char a44)
{
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v46 - 176);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a44);
  MEMORY[0x1E12C0F00](&a42);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (v45)
  {
    __cxa_free_exception(v44);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a12);
  AMCP::Node_Description::~Node_Description(&a14);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_MCP_Impl::CopyWorkIntervalPort(HALS_IOContext_MCP_Impl *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2 && *(this + 6))
    {
      HALS_IOContext_MCP_Impl::get_simple_mcp_property<2003267184u>(&v11, this);
      v4 = caulk::mach::os_workgroup_managed::copy_mach_port(&v11);
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v11);
LABEL_14:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      result = v4;
      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "HALS_IOContext_MCP_Impl.cpp";
    v13 = 1024;
    v14 = 1070;
    _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d HALS_IOContext_MCP_Impl::CopyWorkIntervalPort - Workgroup Context pointer is invalid.", &v11, 0x12u);
  }

  v4 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE37934C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Node_Description::~Node_Description(void **this)
{
  for (i = 12; i != 6; i -= 3)
  {
    v3 = &this[i];
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t AMCP::Core::Core::call_operation_function<BOOL,unsigned long long>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 198;
      v46 = 2080;
      v47 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v31, a1, a2);
  v7 = v31;
  if (!v31)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v34);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = BOOL, Argument_Types = <unsigned long long>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v50 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v8 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(unsigned long long)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v34);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <unsigned long long>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<BOOL ()(unsigned long long)>>(), (v9 = (*(v10 + 7))(4, v10 + 24, 0, buf)) == 0))
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v34);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <unsigned long long>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  *buf = a3;
  v11 = *(v9 + 3);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v12 = (*(*v11 + 48))(v11, buf);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1DE379B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_MCP_Impl::TranslateTime(HALS_IOContext_MCP_Impl *this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0x676C6F6274726E74;
  v14 = 0;
  v4 = *&a2->mRateScalar;
  v21 = *&a2->mSampleTime;
  v22 = v4;
  v5 = *&a2->mSMPTETime.mHours;
  v23[0] = *&a2->mSMPTETime.mSubframes;
  v23[1] = v5;
  v6 = *(this + 7);
  if (v6 && (v8 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v9 = v8;
    v10 = *(this + 6);
    if (v10)
    {
      v20[0] = v21;
      v20[1] = v22;
      v20[2] = v23[0];
      v20[3] = v23[1];
      AMCP::Core::Core::call_operation_function<std::optional<CA::TimeStamp>,CA::TimeStamp>(&v15, v10, &v13, v20);
    }

    else
    {
      v15 = 0;
      v19 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    v21 = v16;
    v22 = v17;
    v23[0] = *v18;
    *(v23 + 15) = *&v18[15];
    if (v19)
    {
      LOBYTE(a3->mSampleTime) = v15;
      v11 = v22;
      *(&a3->mSampleTime + 1) = v21;
      *(&a3->mRateScalar + 1) = v11;
      *(&a3->mSMPTETime.mSubframes + 1) = v23[0];
      *&a3->mSMPTETime.mHours = *(v23 + 15);
    }
  }

  else
  {
    v21 = v16;
    v22 = v17;
    v23[0] = *v18;
    *(v23 + 15) = *&v18[15];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE379D6C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE379D70);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Core::call_operation_function<std::optional<CA::TimeStamp>,CA::TimeStamp>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 198;
      *&buf[18] = 2080;
      *&buf[20] = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v36, a2, a3);
  v8 = v36;
  if (!v36)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v39);
    std::runtime_error::runtime_error(&v38, &v39);
    std::runtime_error::runtime_error(&v32, &v38);
    *(&v33 + 1) = 0;
    v34 = 0uLL;
    LODWORD(v35) = -1;
    v32.__vftable = &unk_1F5992170;
    *&v33 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v32);
    *&v50 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <CA::TimeStamp>]";
    *(&v50 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    LODWORD(v51) = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v9 = *(a4 + 16);
  v32 = *a4;
  v33 = v9;
  v10 = *(a4 + 48);
  v34 = *(a4 + 32);
  v35 = v10;
  v11 = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>();
  v12 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11);
  if (!v12)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v40);
    std::runtime_error::runtime_error(&v41, &v40);
    std::runtime_error::runtime_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    *&v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <CA::TimeStamp>]";
    *(&v50 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v51) = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  v13 = v12;
  if (!*(v12 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>(), (v12 = (*(v13 + 7))(4, v13 + 24, 0, buf)) == 0))
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v40);
    std::runtime_error::runtime_error(&v41, &v40);
    std::runtime_error::runtime_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5992170;
    v43 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v42);
    *&v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <CA::TimeStamp>]";
    *(&v50 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v51) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  v50 = v34;
  v51 = v35;
  *buf = v32;
  *&buf[16] = v33;
  v14 = *(v12 + 3);
  if (!v14)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v14 + 48))(v14, buf);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DE37A50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, std::runtime_error a19, uint64_t a20, uint64_t a21, void *a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, std::runtime_error a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19.__vftable)
  {
    operator delete(a19.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v38 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a34);
  std::runtime_error::~runtime_error(&a33);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (v37)
  {
    __cxa_free_exception(v36);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v38 - 129));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[317];
}

double HALS_IOContext_MCP_Impl::GetCurrentTime(HALS_IOContext_MCP_Impl *this, AudioTimeStamp *a2)
{
  result = 0.0;
  *&a2->mSMPTETime.mSubframes = 0u;
  *&a2->mSMPTETime.mHours = 0u;
  *&a2->mSampleTime = 0u;
  *&a2->mRateScalar = 0u;
  v4 = *(this + 32);
  if (v4 && (*(*v4 + 120))(v4))
  {
    (*(**(this + 32) + 32))(v8);
    if (*(&v8[0] + 1))
    {
      v6 = v8[1];
      *&a2->mSampleTime = v8[0];
      *&a2->mRateScalar = v6;
      result = *&v9;
      v7 = v10;
      *&a2->mSMPTETime.mSubframes = v9;
      *&a2->mSMPTETime.mHours = v7;
    }
  }

  return result;
}

BOOL HALS_IOContext_MCP_Impl::ThreadHasBeenStopped(HALS_IOContext_MCP_Impl *this)
{
  v2 = 0x676C6F6274727374;
  v3 = 0;
  return HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(this, &v2) == 0;
}

uint64_t HALS_IOContext_MCP_Impl::ExecuteWorkWithControlAndIOThreadLocker(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return a2(&v5);
}

uint64_t HALS_IOContext_MCP_Impl::ExecuteWorkWithIOThreadUnlocker(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return a2(&v5);
}

uint64_t HALS_IOContext_MCP_Impl::ExecuteWorkWithIOThreadLocker(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return a2(&v5);
}

BOOL HALS_IOContext_MCP_Impl::IsIOThreadRunning(HALS_IOContext_MCP_Impl *this)
{
  v2 = 0x676C6F6274727374;
  v3 = 0;
  return HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(this, &v2) != 0;
}

BOOL HALS_IOContext_MCP_Impl::IsIORunning(HALS_IOContext_MCP_Impl *this)
{
  v2 = 0x676C6F6274727374;
  v3 = 0;
  return HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(this, &v2) != 0;
}

double HALS_IOContext_MCP_Impl::GetDeviceSet@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

void HALS_IOContext_MCP_Impl::reassert_description_for_device_change(CFTypeRef *this, const __CFString *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = 0;
  HALS_System::GetInstance(&v42, 0, &v40);
  v4 = *(v42 + 1744);
  applesauce::CF::DictionaryRef::from_get(&cf, this[14]);
  applesauce::CF::StringRef::from_get(&v38, a2);
  if (!cf)
  {
    v16 = 0;
    goto LABEL_69;
  }

  os_unfair_lock_lock(v4 + 4);
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v45 = v5;
  v6 = v38;
  if (v38)
  {
    CFRetain(v38);
  }

  v44 = v6;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
  *theArray = v7;
  if (!v7)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v5, v7);
  CFRelease(v7);
  if (!v8)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *theArray = 136315650;
      *&theArray[4] = "HALS_IOContext_Manager_Impl.cpp";
      v56 = 1024;
      v57 = 109;
      v58 = 2080;
      v59 = "in_aggregate_description->has_key(AMCP::CF::String{kAudioAggregateDeviceUIDKey})";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s We should have already exited if the aggregate UID were missing.", theArray, 0x1Cu);
    }

    abort();
  }

  v10 = CFStringCreateWithBytes(0, "clock", 5, 0x8000100u, 0);
  *theArray = v10;
  if (!v10)
  {
    v33 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v33, "Could not construct");
    __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v52 = 0;
  applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v54, v5, v10, &v52);
  if (v52)
  {
    CFRelease(v52);
  }

  CFRelease(v10);
  v11 = v54;
  if (v54 && applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v54, &v44) == kCFCompareEqualTo)
  {
    v16 = 1;
    goto LABEL_63;
  }

  v12 = CFStringCreateWithBytes(0, "subdevices", 10, 0x8000100u, 0);
  v52 = v12;
  if (!v12)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Could not construct");
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(theArray, v5, v12);
  CFRelease(v12);
  if (theArray[8] != 1)
  {
    v16 = 0;
    goto LABEL_62;
  }

  v13 = *theArray;
  if (!*theArray)
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "Could not construct");
    __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!CFArrayGetCount(*theArray))
  {
    v16 = 0;
    goto LABEL_60;
  }

  applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v52, v13, 0);
  applesauce::CF::details::at_as<applesauce::CF::ArrayRef>(&v50, v13);
  v14 = v51;
  Count = CFArrayGetCount(v13);
  v17 = Count;
  if (!Count)
  {
    v16 = 0;
    if (v14)
    {
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  v18 = 0;
  v16 = 1;
  do
  {
    applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v48, v13, v18);
    std::__optional_storage_base<applesauce::CF::DictionaryRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DictionaryRef,false>>(&v52, &v48);
    if (v49 == 1 && v48)
    {
      CFRelease(v48);
    }

    if (v14)
    {
      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v48, v13, v18);
      std::__optional_storage_base<applesauce::CF::DictionaryRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DictionaryRef,false>>(&v52, &v48);
      if (v49 == 1 && v48)
      {
        CFRelease(v48);
      }

      v19 = v52;
      if (!v52)
      {
        v29 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v29, "Could not construct");
        __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v20 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
      v47 = v20;
      if (!v20)
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v30, "Could not construct");
        __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v46 = 0;
      applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v48, v19, v20, &v46);
      v21 = v54;
      v11 = v48;
      v54 = v48;
      v48 = v21;
      if (v21)
      {
        CFRelease(v21);
      }

      if (v46)
      {
        CFRelease(v46);
      }

      goto LABEL_46;
    }

    if (v53)
    {
      v22 = v52;
      if (!v52)
      {
        v36 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v36, "Could not construct");
        __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v20 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
      v47 = v20;
      if (!v20)
      {
        v35 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v35, "Could not construct");
        __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v46 = 0;
      applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v48, v22, v20, &v46);
      v23 = v54;
      v11 = v48;
      v54 = v48;
      v48 = v23;
      if (v23)
      {
        CFRelease(v23);
      }

      if (v46)
      {
        CFRelease(v46);
      }

LABEL_46:
      CFRelease(v20);
      if (!v11)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v11 = v54;
    if (!v54)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v11, &v44) == kCFCompareEqualTo)
    {
      break;
    }

LABEL_50:
    v16 = ++v18 < v17;
  }

  while (v17 != v18);
  if ((v51 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (v50)
  {
    CFRelease(v50);
  }

LABEL_56:
  if (v53 == 1 && v52)
  {
    CFRelease(v52);
  }

  if (theArray[8])
  {
LABEL_60:
    if (*theArray)
    {
      CFRelease(*theArray);
    }
  }

LABEL_62:
  if (v11)
  {
LABEL_63:
    CFRelease(v11);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  os_unfair_lock_unlock(v4 + 4);
LABEL_69:
  if (v38)
  {
    CFRelease(v38);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v16)
  {
    HALS_IOContext_MCP_Impl::UpdateContext(this);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1DE37B190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext_MCP_Impl::DeviceArrived(CFTypeRef *this, HALS_Device *a2)
{
  v3 = (*(*a2 + 208))(a2);

  HALS_IOContext_MCP_Impl::reassert_description_for_device_change(this, v3);
}

uint64_t HALS_IOContext_MCP_Impl::GetSimpleStreamUsage(HALS_IOContext_MCP_Impl *this)
{
  v2 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 8), 0, *(this + 9));
  v3 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 11), 0, *(this + 12));
  if (v2 >= 1 && v3 > 0)
  {
    return 6;
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 <= 0;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  if (v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 <= 0;
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

uint64_t HALS_IOContext_MCP_Impl::IsStreamEnabledAtIndex(HALS_IOContext_MCP_Impl *this, int a2, unsigned int a3)
{
  v3 = 88;
  if (a2)
  {
    v3 = 64;
  }

  v4 = (this + v3);
  if (v4[1] <= a3)
  {
    return 1;
  }

  else
  {
    return (*(*v4 + ((a3 >> 3) & 0x1FFFFFF8)) >> a3) & 1;
  }
}

uint64_t HALS_IOContext_MCP_Impl::GetNumberActiveStreams(HALS_IOContext_MCP_Impl *this, int a2)
{
  v2 = 88;
  if (a2)
  {
    v2 = 64;
  }

  v3 = 96;
  if (a2)
  {
    v3 = 72;
  }

  return std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + v2), 0, *(this + v3));
}

void HALS_IOContext_MCP_Impl::Deactivate(HALS_IOContext_MCP_Impl *this)
{
  v9[0] = 0;
  v9[1] = 0;
  HALS_System::GetInstance(&v10, 0, v9);
  HALS_System::ProcessPropertyChanged(v10, **(*(this + 5) + 72), 1885632035, 1869968496, 1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v8[0] = 0;
  v8[1] = 0;
  HALS_System::GetInstance(&v10, 0, v8);
  HALS_System::ProcessPropertyChanged(v10, **(*(this + 5) + 72), 1885632035, 1768845428, 1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v2 = *(this + 5);
  v3 = *(v2 + 88);
  if (v3)
  {
    (*(*v3 + 120))(v3);
    v2 = *(this + 5);
  }

  v4 = *(v2 + 16);
  v5 = *(this + 58);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN23HALS_IOContext_MCP_Impl10DeactivateEv_block_invoke;
  block[3] = &__block_descriptor_tmp_3506;
  v7 = v4;
  AMCP::Utility::Dispatch_Queue::async(v5, block);
}

void sub_1DE37B764(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN23HALS_IOContext_MCP_Impl10DeactivateEv_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  HALS_IOContext_Manager::destroy_context_core_for_hal_object_id(*(v4 + 1744), *(a1 + 32));
  v2 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE37B800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext_MCP_Impl::~HALS_IOContext_MCP_Impl(HALS_IOContext_MCP_Impl *this)
{
  HALS_IOContext_MCP_Impl::~HALS_IOContext_MCP_Impl(this);

  JUMPOUT(0x1E12C1730);
}

{
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](this + 59, 0);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](this + 58, 0);
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<HALB_IOBufferManager_Server>::reset[abi:ne200100](this + 30, 0);
  for (i = 216; i != 168; i -= 24)
  {
    v9 = (this + i);
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v4 = *(this + 14);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

HALB_IOBufferManager_Server *std::unique_ptr<HALB_IOBufferManager_Server>::reset[abi:ne200100](HALB_IOBufferManager_Server **a1, HALB_IOBufferManager_Server *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALB_IOBufferManager_Server::~HALB_IOBufferManager_Server(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void HALS_IORawClock::~HALS_IORawClock(void **this)
{
  HALS_IORawClock::~HALS_IORawClock(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59694E0;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100]((this + 1));
}

uint64_t std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void HALS_IOClock::~HALS_IOClock(HALS_IOClock *this)
{
  HALS_IOClock::~HALS_IOClock(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5969500;
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](this + 608);
  v2 = *(this + 67);
  if (v2)
  {
    *(this + 68) = v2;
    operator delete(v2);
  }

  HALS_IORawClock::~HALS_IORawClock(this + 2);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::CheckHostTimeOutOfBounds(unsigned long long)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::perform(uint64_t a1)
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
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Out of bounds host time detected, host time %llu, out of bound time %llu", &v12, 0x26u);
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

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::CheckHostTimeOutOfBounds(unsigned long long)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_3,std::tuple<char const*,int,char const*,char const*,double,double,double>>::perform(uint64_t a1)
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
    v19 = 2080;
    v20 = v8;
    v21 = 2080;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IORawClock::Update: Re-anchoring IO timeline. Sample time %s consecutive, HostTime %s increasing, Ring buffer size: %f, sample diff: %f, host diff %f", &v15, 0x44u);
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

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_3,std::tuple<char const*,int,char const*,char const*,double,double,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_2,std::tuple<char const*,int,char const*,char const*>>::perform(uint64_t a1)
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
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 2080;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IORawClock::Update: Re-anchoring IO timeline. Sample time is%s consecutive, host time is%s consecutive.", &v12, 0x26u);
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

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_2,std::tuple<char const*,int,char const*,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IORawClock::Update: Re-anchoring IO timeline. Zero timestamp seed changed", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::perform(uint64_t a1)
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
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IORawClock::Update: Re-anchoring IO timeline. Initial host time is out of bounds. ZTS Host Time: %llu, OoB Time: %llu", &v12, 0x26u);
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

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__value_func<unsigned long long ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<unsigned long long ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1DE37C560(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<HALS_IOClock::HALS_IOClock(unsigned int,unsigned int,std::string const&)::$_0,std::allocator<HALS_IOClock::HALS_IOClock(unsigned int,unsigned int,std::string const&)::$_0>,unsigned long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12HALS_IOClockC1EjjRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_IOClock::HALS_IOClock(uint64_t a1, int a2, int a3, __int128 *a4)
{
  v10[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5969500;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = &unk_1F59694E0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 60) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 80) = *(a4 + 2);
    *(a1 + 64) = v5;
  }

  v6 = 0;
  *(a1 + 88) = 1;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 188) = 8;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0x3FF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0x6969726600000001;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  do
  {
    v7 = (a1 + v6);
    v7[25] = 0;
    v7[26] = 0;
    v7[28] = 0;
    v7[29] = 0;
    v6 += 40;
    v7[27] = 0x3FF0000000000000;
  }

  while (v6 != 320);
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 556) = 0u;
  *(a1 + 572) = 12;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 632) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 592) = 0u;
  v10[0] = &unk_1F59696F8;
  v10[3] = v10;
  std::__function::__value_func<unsigned long long ()(void)>::swap[abi:ne200100](v10, (a1 + 608));
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v10);
  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t HALS_IOClock::Reset(HALS_IOClock *this, double a2, int a3, int a4, char a5, int a6)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[3] = 0;
  if (a6)
  {
    v16[0] = &unk_1F5969788;
    v16[1] = this + 608;
    v16[3] = v16;
    std::__function::__value_func<unsigned long long ()(void)>::swap[abi:ne200100](v16, v15);
    std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v16);
  }

  std::__function::__value_func<unsigned long long ()(void)>::__value_func[abi:ne200100](v14, v15);
  *(this + 22) = a3;
  *(this + 92) = a5;
  std::__function::__value_func<unsigned long long ()(void)>::__value_func[abi:ne200100](v16, v14);
  std::__function::__value_func<unsigned long long ()(void)>::swap[abi:ne200100](v16, this + 3);
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v16);
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 24000000.0 / a2;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0;
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v14);
  *(this + 44) = a3;
  *(this + 45) = a4;
  *(this + 184) = a5;
  *(this + 48) = 0;
  *(this + 65) = 0;
  bzero(this + 200, 40 * *(this + 47));
  HALS_IOClock::ResetFilter(this, *(this + 14), v11);
  *(this + 146) = 0;
  *(this + 37) = 0u;
  result = std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v15);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE37C998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,std::allocator<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0>,unsigned long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12HALS_IOClock5ResetEdjjjbbE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,std::allocator<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0>,unsigned long long ()(void)>::operator()(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 24000;
}

uint64_t std::__function::__func<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,std::allocator<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0>,unsigned long long ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969788;
  a2[1] = v2;
  return result;
}

void AMCP::IOAudio2::Device::Device(uint64_t a1, uint64_t a2, unsigned int *a3, CFDictionaryRef *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  if (*a4)
  {
    applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*>((a1 + 8), *a4, @"device UID");
    *(a1 + 16) = 0;
    v7 = *(a1 + 8);
    if (v7)
    {
      applesauce::CF::convert_to<std::string,0>(queue, v7);
      if (v30 >= 0)
      {
        v8 = queue;
      }

      else
      {
        v8 = queue[0];
      }

      caulk::make_string("%s Work Queue", __p, v8);
      if (v32 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = dispatch_queue_create(v9, 0);
      AMCP::Utility::Dispatch_Queue::Dispatch_Queue(a1 + 24, v10);
      if (v10)
      {
        dispatch_release(v10);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(queue[0]);
      }

      v11 = *a3;
      *(a1 + 360) = v11;
      if (!v11 || (v11 = IOObjectRetain(v11), v12 = v11, !v11))
      {
        *(a1 + 368) = 0;
        *(a1 + 376) = 0;
        *(a1 + 384) = AMCP::Utility::Mach_Port::create_port(v11);
        *(a1 + 388) = 257;
        *(a1 + 392) = 850045863;
        *(a1 + 400) = 0u;
        *(a1 + 416) = 0u;
        *(a1 + 432) = 0u;
        *(a1 + 448) = 0u;
        *(a1 + 464) = *a4;
        *a4 = 0;
        *(a1 + 520) = 0u;
        v13 = (a1 + 520);
        *(a1 + 536) = 0;
        *(a1 + 488) = 0u;
        *(a1 + 504) = 0u;
        *(a1 + 472) = 0u;
        v14 = *(a1 + 464);
        if (v14)
        {
          __p[0] = 0;
          applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v27, v14, @"input streams", __p);
          if (__p[0])
          {
            CFRelease(__p[0]);
          }

          AMCP::IOAudio2::Stream::create_from_dictionary_list(__p, a1, 1, &v27);
          std::vector<std::shared_ptr<AMCP::IOAudio2::Stream>>::__vdeallocate((a1 + 496));
          *(a1 + 496) = *__p;
          *(a1 + 512) = v32;
          v32 = 0;
          __p[1] = 0;
          __p[0] = 0;
          queue[0] = __p;
          std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](queue);
          v15 = *(a1 + 464);
          if (v15)
          {
            __p[0] = 0;
            applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v26, v15, @"output streams", __p);
            if (__p[0])
            {
              CFRelease(__p[0]);
            }

            AMCP::IOAudio2::Stream::create_from_dictionary_list(__p, a1, 0, &v26);
            std::vector<std::shared_ptr<AMCP::IOAudio2::Stream>>::__vdeallocate((a1 + 472));
            *(a1 + 472) = *__p;
            *(a1 + 488) = v32;
            v32 = 0;
            __p[1] = 0;
            __p[0] = 0;
            queue[0] = __p;
            std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](queue);
            v16 = *(a1 + 464);
            if (v16)
            {
              __p[0] = 0;
              applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v25, v16, @"controls", __p);
              if (__p[0])
              {
                CFRelease(__p[0]);
              }

              AMCP::IOAudio2::Control::create_from_dictionary_list(__p, a1, &v25);
              if (*v13)
              {
                std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((a1 + 520));
                operator delete(*v13);
                *v13 = 0;
                *(a1 + 528) = 0;
                *(a1 + 536) = 0;
              }

              *v13 = *__p;
              *(a1 + 536) = v32;
              v32 = 0;
              __p[1] = 0;
              __p[0] = 0;
              queue[0] = __p;
              std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](queue);
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(__p, (*(*(*a1 + 32) + 32) + 368));
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (*(*(*a1 + 32) + 32) + 704));
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(object, __p);
              dispatch_set_target_queue(object[0], queue[0]);
              AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(object);
              v17 = *a3;
              operator new();
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v21 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v21, "Could not construct");
          __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v20 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v20, "Could not construct");
        __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v23 = __cxa_allocate_exception(0x20uLL);
      v24 = std::system_category();
      MEMORY[0x1E12C10C0](v23, v12, v24, "Error on Retain");
      __cxa_throw(v23, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  applesauce::CF::construct_error(v18);
  __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE37E04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34)
{
  __cxa_free_exception(v36);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v40;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v39;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v38;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v34 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v37);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v34 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v34 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v34 + 24));
  applesauce::CF::StringRef::~StringRef(v35);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  JUMPOUT(0x1DE37E4F8);
}

void sub_1DE37E190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (!*(v35 - 128))
  {
    std::optional<applesauce::CF::NumberRef>::~optional(&a19);
    applesauce::CF::StringRef::~StringRef(&a35);
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a23);
    JUMPOUT(0x1DE37E518);
  }

  JUMPOUT(0x1DE37E208);
}

void sub_1DE37E1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, _Unwind_Exception *exception_object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34, const void *a35)
{
  if (exception_object)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](exception_object);
  }

  std::optional<applesauce::CF::NumberRef>::~optional(&a19);
  applesauce::CF::StringRef::~StringRef(&a35);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a23);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v39;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = a11;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v38;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v37);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v35 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v35 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v35 + 24));
  applesauce::CF::StringRef::~StringRef(v36);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  JUMPOUT(0x1DE37E4F8);
}

void sub_1DE37E288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int buf, int a40, int a41, __int16 a42, __int16 a43, __int16 a44, __int16 a45)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v45, 0x1000C4052888210);
    v49 = __cxa_begin_catch(a1);
    v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if (a2 == 2)
    {
      v51 = v49;
      if ((v50 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v49);
      }

      v53 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v52 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        v54 = *v53;
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      else
      {
        v54 = *v53;
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v58 = (*(*v51 + 16))(v51);
        buf = 136315650;
        *(v46 + 4) = "IOAudio2_Device.cpp";
        a42 = 1024;
        *(v46 + 14) = 86;
        a45 = 2080;
        *(v46 + 20) = v58;
        _os_log_error_impl(&dword_1DE1F9000, v54, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to the driver: %s", &buf, 0x1Cu);
      }

      __cxa_rethrow();
    }

    if ((v50 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v49);
    }

    v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v55 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      v57 = *v56;
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    else
    {
      v57 = *v56;
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      *(v46 + 4) = "IOAudio2_Device.cpp";
      a42 = 1024;
      *(v46 + 14) = 91;
      _os_log_error_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to the driver", &buf, 0x12u);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE37E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34)
{
  __cxa_end_catch();
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v39;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v38;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v37;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v34 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v36);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v34 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v34 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v34 + 24));
  applesauce::CF::StringRef::~StringRef(v35);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E468(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE37E478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a49);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v54;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v53;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v52;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v49 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v51);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v49 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v49 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v49 + 24));
  applesauce::CF::StringRef::~StringRef(v50);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](&a39);
  if (v46)
  {
    dispatch_release(v46);
  }

  MEMORY[0x1E12C1730](v45, 0x1020C40DCC910D7);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v44;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v43;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v42;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v41);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v39 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v39 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v39 + 24));
  applesauce::CF::StringRef::~StringRef(v40);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E520(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(&a39);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error((v47 - 136));
  if (v41)
  {
    __cxa_free_exception(v46);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a36);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v45;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v44;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v43;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v42);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v39 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v39 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v39 + 24));
  applesauce::CF::StringRef::~StringRef(v40);
  JUMPOUT(0x1DE37E620);
}

uint64_t AMCP::Utility::Dispatch_Queue::Dispatch_Queue(uint64_t a1, dispatch_object_t object)
{
  *a1 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 850045863;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 850045863;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = dispatch_semaphore_create(0);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  return a1;
}

void std::vector<std::shared_ptr<AMCP::IOAudio2::Stream>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t applesauce::iokit::io_service_notifications::io_service_notifications(uint64_t a1, io_service_t a2, NSObject **a3, const char *a4, uint64_t a5)
{
  applesauce::iokit::details::io_notificationport_holder::io_notificationport_holder(a1);
  v10 = *a3;
  *(a1 + 8) = *a3;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *(a5 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

  if (v11 != a5)
  {
    v11 = (*(*v11 + 16))(v11);
LABEL_6:
    *(a1 + 40) = v11;
    goto LABEL_8;
  }

  *(a1 + 40) = a1 + 16;
  (*(**(a5 + 24) + 24))(*(a5 + 24), a1 + 16);
LABEL_8:
  *(a1 + 48) = 0;
  v12 = (a1 + 48);
  IONotificationPortSetDispatchQueue(*a1, *(a1 + 8));
  notification = 0;
  v13 = IOServiceAddInterestNotification(*a1, a2, a4, applesauce::iokit::io_service_notifications::notification_callback_, a1, &notification);
  if (v13)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v17 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v13, v17, "Error on IOServiceAddInterestNotification");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v14 = *v12;
  *v12 = notification;
  if (v14)
  {
    IOObjectRelease(v14);
  }

  return a1;
}

void sub_1DE37E87C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  applesauce::iokit::io_object_holder::~io_object_holder(v3);
  std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](v2);
  v6 = *(v1 + 8);
  if (v6)
  {
    dispatch_release(v6);
  }

  applesauce::iokit::details::io_notificationport_holder::~io_notificationport_holder(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      IOObjectRelease(v3);
    }

    std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](v2 + 16);
    v4 = *(v2 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    IONotificationPortDestroy(*v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

io_connect_t *applesauce::iokit::io_connect_holder::io_connect_holder(io_connect_t *connect, io_service_t service)
{
  *connect = 0;
  v3 = IOServiceOpen(service, *MEMORY[0x1E69E9A60], 0, connect);
  if (v3)
  {
    v5 = v3;
    std::string::basic_string[abi:ne200100]<0>(&v12, "Could not create ioconnect for service ");
    v6 = mach_error_string(v5);
    v7 = strlen(v6);
    v8 = std::string::append(&v12, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!*connect)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "Could not create ioservice for service ");
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, &v13);
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return connect;
}

void sub_1DE37EB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

io_connect_t **std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100](io_connect_t **result, io_connect_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    IOConnectRelease(*v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

__n128 boost::exception_detail::error_info_injector<std::system_error>::error_info_injector(std::runtime_error *a1, uint64_t a2)
{
  v3 = std::runtime_error::runtime_error(a1, a2);
  v3->n128_u64[0] = MEMORY[0x1E69E5510] + 16;
  result = *(a2 + 16);
  v3[1] = result;
  v3[3].n128_u64[0] = 0;
  v3[3].n128_u64[1] = 0;
  v3[4].n128_u32[0] = -1;
  v3->n128_u64[0] = &unk_1F5991520;
  v3[2].n128_u64[0] = &unk_1F5991548;
  v3[2].n128_u64[1] = 0;
  return result;
}

void AMCP::Utility::Mach_Port::~Mach_Port(AMCP::Utility::Mach_Port *this)
{
  AMCP::Utility::Mach_Port::reset(this);
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::mutex::~mutex((this + 8));
}

void AMCP::IOAudio2::Device::update_core_common(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 464);
  if (v1)
  {
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&v8, v1, @"device name");
    if (v9)
    {
      v16 = 0x676C6F626C6E616DLL;
      LODWORD(v17) = 0;
      AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(&v10, &v16, v8);
    }

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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "IOAudio2_Device.cpp";
      v12 = 1024;
      v13 = 124;
      connect_2 = 2080;
      v15 = "device_name_opt.operator BOOL() == true";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Devices have to have a name", &v10, 0x1Cu);
    }

    abort();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  applesauce::CF::construct_error(exception);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE380D28(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t connect, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  if (a2)
  {
    __cxa_free_exception(v61);
    applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a61);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE381544(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device10build_coreEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, const __CFDictionary **a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    goto LABEL_26;
  }

  v3 = *(a1 + 8);
  LODWORD(valuePtr) = 0;
  cf[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf[0])
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(v22, *a2, @"kind", cf);
  v4 = v22[0];
  if (!v22[0])
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = applesauce::CF::convert_to<unsigned long long,0>(v22[0]);
  CFRelease(v4);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
LABEL_26:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = 0;
  cf[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf[0])
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(v22, *a2, @"UsageCaseSampleRate", cf);
  v6 = v22[0];
  if (!v22[0])
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
    __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = applesauce::CF::convert_to<double,0>(v22[0]);
  CFRelease(v6);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v5 - 2 >= 4)
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_1DE7AA190[v5 - 2];
  }

  AMCP::IOAudio2::Device::get_device_connection(&connection, **(v3 + 376));
  v9 = connection;
  if (!connection)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  input[0] = v8;
  input[1] = vcvtd_n_u64_f64(v7 - floor(v7), 0x20uLL) + (vcvtmd_u64_f64(v7) << 32);
  memset(v22, 0, sizeof(v22));
  outputCnt = 0;
  memset(cf, 0, sizeof(cf));
  v19 = 0;
  if (IOConnectCallMethod(connection, 0xCu, input, 2u, 0, 0, 0, &outputCnt, 0, &v19))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(v22, outputCnt);
  if (v19)
  {
    std::vector<unsigned char>::__append(cf, v19);
    if (cf[0])
    {
      operator delete(cf[0]);
    }
  }

  if (v22[0])
  {
    operator delete(v22[0]);
  }

  return IOConnectRelease(v9);
}

void sub_1DE381A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v35 & 1) == 0)
    {
LABEL_10:
      v38 = *(v36 - 120);
      if (v38)
      {
        operator delete(v38);
      }

      IOConnectRelease(v33);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v34);
  goto LABEL_10;
}

uint64_t AMCP::IOAudio2::Device::get_device_connection(AMCP::IOAudio2::Device *this, io_connect_t a2)
{
  *this = a2;
  result = IOConnectAddRef(a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v3, v5, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  return result;
}

void std::vector<unsigned long long>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969C08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::operator()(CFDictionaryRef *a1@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  cf = CFStringCreateWithBytes(0, "kind", 4, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  valuePtr = 0;
  v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v2)
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v5, "Could not construct");
    __cxa_throw(v5, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(cf);
  v9 = cf;
  CFRetain(v2);
  v10 = v2;
  v7[0] = &v9;
  v7[1] = 1;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(v7);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(v2);
  CFRelease(cf);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1DE381F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities47make_owned_object_with_properties_list_propertyIjJNS_7AddressEjEEENSt3__110shared_ptrINS0_9OperationEEERNS0_6BrokerEjRKS3_SB_RKT_DpRKT0_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::operator()(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  operator new();
}

void sub_1DE3821DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKjENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSL_E_NSE_ISP_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS_7AddressERKjENSt3__19enable_ifILb1EvEEEENS8_6vectorIjNS8_9allocatorIjEEEERNS0_6BrokerEjS5_RKT_DpOT0_EUlSJ_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKjENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSL_E_NSE_ISP_EEFbRKNS_10shared_ptrINS3_4CoreEEEEEclESV_(void *a1, AMCP::Core::Core **a2)
{
  v2 = *a2;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(*a2, v3);
  if (!HIDWORD(v7))
  {
    return 0;
  }

  if (*v3 == 1668047219 || *v3 == 1650682995)
  {
    if ((AMCP::is_base_of(*v4, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*v4 != v7)
  {
    return 0;
  }

  return _ZN4AMCP4Core4Core26has_properties_with_valuesIjJENSt3__19enable_ifILb1EvEEEEbRKNS_7AddressERKT_DpOT0_(v2, v5, v6);
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKjENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSL_E_NSE_ISP_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE7__cloneEPNS0_6__baseISW_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980A38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59809C8;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 20) = *(a1 + 20);
  result = *(a1 + 36);
  *(a2 + 36) = result;
  *(a2 + 52) = 0;
  return result;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = *MEMORY[0x1E69E9840];
  memset(v4, 0, 24);
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v4, a3, a4, a4 - a3);
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE382690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(CFDictionaryRef *a1, const void **a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, *a1, *a2);
  if (v11 != 1)
  {
    if (*a1)
    {
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v8, *a1, *a2);
      if (v9 != 1)
      {
        return 0;
      }

      v5 = v8;
      if (v8)
      {
        v4 = applesauce::CF::convert_to<BOOL,0>(v8);
        CFRelease(v5);
        return v4;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_16:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

  v4 = applesauce::CF::convert_to<BOOL,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, *a1, *a2);
  if (v15 == 1)
  {
    if (!cf)
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "Could not construct");
      __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v4 = applesauce::CF::convert_to<BOOL,0>(cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (!*a1)
    {
      v10 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v10, "Could not construct");
      __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v12, *a1, *a2);
    if (v13 != 1)
    {
      v6 = 0;
      v4 = 0;
      return v4 | (v6 << 8);
    }

    v5 = v12;
    if (!v12)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
      __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v4 = applesauce::CF::convert_to<BOOL,0>(v12);
    CFRelease(v5);
  }

  v6 = 1;
  return v4 | (v6 << 8);
}

{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, *a1, *a2);
  if (v11 != 1)
  {
    if (*a1)
    {
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v8, *a1, *a2);
      if (v9 != 1)
      {
        return 0;
      }

      v5 = v8;
      if (v8)
      {
        v4 = applesauce::CF::convert_to<BOOL,0>(v8);
        CFRelease(v5);
        return v4;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_16:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

  v4 = applesauce::CF::convert_to<BOOL,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, *a1, *a2);
  if (v11 != 1)
  {
    if (*a1)
    {
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v8, *a1, *a2);
      if (v9 != 1)
      {
        return 0;
      }

      v5 = v8;
      if (v8)
      {
        v4 = applesauce::CF::convert_to<BOOL,0>(v8);
        CFRelease(v5);
        return v4;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_16:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

  v4 = applesauce::CF::convert_to<BOOL,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void *applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::NumberRef::from_get(a1, v4);
}

void std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1DE382984(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[351];
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::Core::Engine> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>())
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
      std::__function::__value_func<std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::shared_ptr<AMCP::Core::Engine> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device18update_core_commonERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v1, (*(*(a1 + 8) + 32) + 704));
  operator new();
}

void sub_1DE382EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, io_connect_t connect, char a19)
{
  __cxa_free_exception(v20);
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v22);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a19);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IOAudio2::Engine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596E5D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5969A08;
  result = AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::$_2(a2 + 8, a1 + 8);
  *(a2 + 134) = 0;
  *(a2 + 130) = 0;
  return result;
}

uint64_t AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::$_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = IOConnectAddRef(v5);
  if (v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v13 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v6, v13, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    CFRetain(*(a2 + 24));
  }

  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v10;
  *(a1 + 48) = v9;
  *(a1 + 32) = v8;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(a1 + 96, *(a2 + 96), *(a2 + 104), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_1DE383234(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5969A08;
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5969A08;
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFBooleanGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN2CA13ChannelLayoutEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F59805A8;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>((a2 + 1), *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59805A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59805A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(double const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device18update_core_commonERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(double const&)>::operator()(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  inputStruct = vcvtd_n_s64_f64(*a2 - floor(*a2), 0x20uLL) + (vcvtmd_s64_f64(*a2) << 32);
  AMCP::IOAudio2::Device::get_device_connection(&v6, **(v2 + 376));
  v3 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(v6, 4u, &inputStruct, 8uLL);
  return IOConnectRelease(v3);
}

void sub_1DE38383C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  IOConnectRelease(v1);
  _Unwind_Resume(a1);
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(mach_port_t a1, uint32_t a2, void *inputStruct, size_t inputStructCnt)
{
  memset(v7, 0, sizeof(v7));
  outputCnt = 0;
  memset(__p, 0, sizeof(__p));
  v4 = 0;
  if (IOConnectCallMethod(a1, a2, 0, 0, inputStruct, inputStructCnt, 0, &outputCnt, 0, &v4))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(v7, outputCnt);
  if (v4)
  {
    std::vector<unsigned char>::__append(__p, v4);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }
}

void sub_1DE3839FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v31 & 1) == 0)
    {
LABEL_10:
      v35 = *(v33 - 72);
      if (v35)
      {
        operator delete(v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v32);
  goto LABEL_10;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969988;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device18update_core_commonERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,double ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969908;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(*(**(a1 + 8) + 32) + 16);
  v4 = *(a1 + 16);
  v13 = &unk_1F5969AF8;
  LODWORD(v14) = v4;
  v15 = &v13;
  AMCP::Core::Broker::fetch_first_core_if (&v10, v3, &v13);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](&v13);
  AMCP::Core::Core::get_simple_required_property<1718449187u>(&v13, v10);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = v13;
  v6 = v14;
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = v5[1];
    while (v7 != v8)
    {
      CA::ValueRangeList::AddRange(a2, v7);
      v7 += 2;
    }

    v5 += 8;
  }

  v12 = &v13;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE383D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, char a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  a11 = &a12;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void AMCP::Core::Core::get_simple_required_property<1718449187u>(void *a1, AMCP::Core::Core *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v15 = 0x676C6F62666D7423;
  v16 = 0;
  has_property = AMCP::Core::Core::has_property(this, &v15);
  if (!has_property)
  {
    goto LABEL_14;
  }

  AMCP::Core::Core::find_operation(&v22, this, &v15);
  v5 = v22;
  if (v22)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      AMCP::Core::Operation::call_function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(buf, v5);
      v14 = *&buf[8];
      v17 = *buf;
      v18 = *&buf[16];
      memset(buf, 0, 24);
      v19 = 1;
      __p[0] = buf;
      std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_5:
      v7 = 0;
      v5 = v14;
      goto LABEL_10;
    }

    v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v8))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v5);
      AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(__p, buf);
      v14 = __p[1];
      v17 = *__p;
      v18 = v21;
      __p[1] = 0;
      v21 = 0;
      __p[0] = 0;
      v19 = 1;
      v24 = __p;
      std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v24);
      if (*&v27[2])
      {
        (*&v27[2])(0, buf, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v7 = 1;
LABEL_10:
  has_property = v23;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v7)
  {
LABEL_14:
    LOBYTE(v17) = 0;
    v19 = 0;
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
      HIBYTE(v21) = 4;
      strcpy(__p, "fmt#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 2080;
      *&buf[20] = "optional_value.operator BOOL() == true";
      v26 = 2080;
      *v27 = __p;
      *&v27[8] = 1024;
      v28 = 1735159650;
      v29 = 1024;
      v30 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1, v17, v5, (v5 - v17) >> 6);
  *buf = &v17;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](buf);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE38407C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<std::tuple<CA::ValueRangeList, CA::StreamDescription>>, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<std::tuple<CA::ValueRangeList, CA::StreamDescription>>, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE38452C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 57);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio26Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP8IOAudio26Device10build_coreEvENK3$_0clEvEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZZN4AMCP8IOAudio26Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEEclESH_(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2);
  v5 = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  return *(a1 + 8) == simple_required && v5 == 1634956402;
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio26Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5969AF8;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5969A88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26DeviceC1ERNS0_6DriverERKN10applesauce5iokit16io_object_holderENS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = AMCP::Utility::Mach_Port::receive_message(*(v1 + 384), 0x88u, &msg, 0);
  v3 = v2;
  AMCP::Utility::Kernel_Error_Category::get(v2);
  if (!v3 && v35)
  {
    v5 = 0;
    v6 = &v36;
    while (*(v6 + 1) != 1668247142)
    {
      ++v5;
      v6 += 4;
      if (v5 >= v35)
      {
        goto LABEL_49;
      }
    }

    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      v4 = AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v8 + 16);
    switch(v10)
    {
      case 3:
        v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v19 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
          v25 = *(v1 + 8);
          if (v25)
          {
            applesauce::CF::convert_to<std::string,0>(v37, v25);
            v26 = v37;
            if (v38 < 0)
            {
              v26 = *v37;
            }

            buf[0] = 136315650;
            *&buf[1] = "IOAudio2_Device.cpp";
            v40 = 1024;
            v41 = 557;
            v42 = 2080;
            v43 = v26;
            v27 = v22;
            v28 = OS_LOG_TYPE_INFO;
            goto LABEL_42;
          }

LABEL_50:
          exception = __cxa_allocate_exception(0x10uLL);
          v33 = MEMORY[0x1E69E5288];
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], v33);
        }

        break;
      case 2:
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v23 = *(v1 + 8);
          if (v23)
          {
            applesauce::CF::convert_to<std::string,0>(v37, v23);
            v24 = v37;
            if (v38 < 0)
            {
              v24 = *v37;
            }

            buf[0] = 136315650;
            *&buf[1] = "IOAudio2_Device.cpp";
            v40 = 1024;
            v41 = 557;
            v42 = 2080;
            v43 = v24;
            _os_log_debug_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_DEBUG, "%32s:%-5d Begin configuration change for device '%s'", buf, 0x1Cu);
            goto LABEL_43;
          }

          goto LABEL_50;
        }

        break;
      case 1:
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

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(v1 + 8);
          if (v29)
          {
            applesauce::CF::convert_to<std::string,0>(v37, v29);
            v30 = v37;
            if (v38 < 0)
            {
              v30 = *v37;
            }

            buf[0] = 136315650;
            *&buf[1] = "IOAudio2_Device.cpp";
            v40 = 1024;
            v41 = 557;
            v42 = 2080;
            v43 = v30;
            v27 = v14;
            v28 = OS_LOG_TYPE_DEFAULT;
LABEL_42:
            _os_log_impl(&dword_1DE1F9000, v27, v28, "%32s:%-5d Begin configuration change for device '%s'", buf, 0x1Cu);
LABEL_43:
            if (v38 < 0)
            {
              operator delete(*v37);
            }

            break;
          }

          goto LABEL_50;
        }

        break;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    kdebug_trace();
    operator new();
  }

LABEL_49:
  v31 = *MEMORY[0x1E69E9840];
}

void sub_1DE3850E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0,std::allocator<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device34handle_driver_configuration_changeERK20IOAudio2NotificationE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0,std::allocator<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (!is_valid)
  {
    v67 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v67 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
    }

    v69 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v68 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      v70 = *v69;
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    else
    {
      v70 = *v69;
    }

    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IOAudio2_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 564;
      *&buf[18] = 2080;
      *&buf[20] = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v70, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
    }

    abort();
  }

  AMCP::IOAudio2::Device::get_device_connection(buf, **(v2 + 376));
  v4 = *buf;
  if (!*buf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(*buf, 3u, *(a1 + 48), 0x20uLL);
  IOConnectRelease(v4);
  v5 = *(v2 + 360);
  if (!v5)
  {
    v75 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v75, "cannot create io_object_proxy from null io_object");
    __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::iokit::get_properties(buf, v5);
  v6 = *(v2 + 464);
  v7 = *buf;
  *(v2 + 464) = *buf;
  *buf = v6;
  if (v6)
  {
    CFRelease(v6);
    v7 = *(v2 + 464);
  }

  if (!v7)
  {
    v76 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v76);
    __cxa_throw(v76, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v87, v7, @"input streams", buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  AMCP::IOAudio2::Stream::create_from_dictionary_list(v86, v2, 1, &v87);
  v8 = *(v2 + 464);
  if (!v8)
  {
    v77 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v77, "Could not construct");
    __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v85, v8, @"output streams", buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  AMCP::IOAudio2::Stream::create_from_dictionary_list(v84, v2, 0, &v85);
  _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio26Device34handle_driver_configuration_changeERK20IOAudio2NotificationENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10shared_ptrINS2_6StreamEEENS_9allocatorISG_EEEESK_EEEEEENS_13invoke_resultIS8_JDpT0_EE4typeEOS8_DpOSO_(v2, v2 + 472, v84);
  _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio26Device34handle_driver_configuration_changeERK20IOAudio2NotificationENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10shared_ptrINS2_6StreamEEENS_9allocatorISG_EEEESK_EEEEEENS_13invoke_resultIS8_JDpT0_EE4typeEOS8_DpOSO_(v2, v2 + 496, v86);
  v9 = *(v2 + 464);
  if (!v9)
  {
    v78 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v78, "Could not construct");
    __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v83, v9, @"controls", buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  AMCP::IOAudio2::Control::create_from_dictionary_list(&v81, v2, &v83);
  cf = 0uLL;
  *&__p = 0;
  v11 = v81;
  v10 = v82;
  while (1)
  {
    v88[0] = v11;
    if (v11 == v10)
    {
      break;
    }

    v12 = *(v2 + 520);
    v13 = *(v2 + 528);
    if (v12 != v13)
    {
      while (*(*v12 + 36) != *(*v11 + 36))
      {
        v12 += 16;
        if (v12 == v13)
        {
          goto LABEL_22;
        }
      }
    }

    if (v12 == v13)
    {
LABEL_22:
      std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](&cf, v88);
      v10 = v82;
    }

    v11 += 16;
  }

  v89 = 0;
  v14 = 0uLL;
  *v88 = 0u;
  v15 = *(v2 + 520);
  theArray = v15;
  v79 = v2;
  v16 = *(v2 + 528);
  if (v15 == v16)
  {
    v18 = 0;
  }

  else
  {
    do
    {
      v17 = v81;
      if (v81 != v82)
      {
        while (*(*v17 + 36) != *(*v15 + 36))
        {
          v17 = (v17 + 16);
          if (v17 == v82)
          {
            v17 = v82;
            break;
          }
        }
      }

      if (v17 == v16)
      {
        std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](v88, &theArray);
        v16 = *(v79 + 528);
      }

      v15 = (v15 + 16);
      theArray = v15;
    }

    while (v15 != v16);
    v14 = *v88;
    v18 = v89;
  }

  v19 = (v79 + 520);
  *buf = cf;
  *&buf[24] = v14;
  *&buf[16] = __p;
  v96 = v18;
  v20 = v14;
  if (v14 != *(&v14 + 1))
  {
    v21 = v14;
    do
    {
      v22 = *v21++;
      v23 = *v22;
      AMCP::Core::Broker::destroy_core(*(*(**(*v22 + 24) + 32) + 16), *(*v22 + 32));
      *(v23 + 32) = 0;
    }

    while (v21 != *(&v20 + 1));
    v24 = *(v79 + 528);
    if (*(v79 + 520) != v24)
    {
      v25 = *(v79 + 520);
      while (2)
      {
        v26 = v20;
        while (*v25 != **v26)
        {
          if (++v26 == *(&v20 + 1))
          {
            goto LABEL_44;
          }
        }

        if (v26 != *(&v20 + 1))
        {
          if (v25 == v24 || (v27 = (v25 + 16), (v25 + 16) == v24))
          {
            v16 = v25;
          }

          else
          {
            v16 = v25;
            do
            {
              v28 = v27;
              v29 = *&buf[24];
              v30 = *(v25 + 2);
              while (v29 != *&buf[32])
              {
                if (v30 == **v29)
                {
                  if (*&buf[32] != v29)
                  {
                    goto LABEL_58;
                  }

                  break;
                }

                ++v29;
              }

              v31 = *(v25 + 3);
              *v27 = 0;
              v27[1] = 0;
              v32 = *(v16 + 1);
              *v16 = v30;
              *(v16 + 1) = v31;
              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v32);
              }

              v16 = (v16 + 16);
LABEL_58:
              v27 = v28 + 2;
              v25 = v28;
            }

            while (v28 + 2 != v24);
            v24 = *(v79 + 528);
            v33 = *(v79 + 520);
          }

          goto LABEL_61;
        }

LABEL_44:
        v25 = (v25 + 16);
        if (v25 != v24)
        {
          continue;
        }

        goto LABEL_68;
      }
    }

    v16 = *(v79 + 520);
LABEL_61:
    if (v16 == v24)
    {
LABEL_68:
      v16 = v24;
      goto LABEL_69;
    }

    while (v24 != v16)
    {
      v34 = *(v24 - 1);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      v24 = (v24 - 16);
    }

    *(v79 + 528) = v16;
  }

LABEL_69:
  v35 = *&buf[8];
  v36 = *buf;
  if (*buf != *&buf[8])
  {
    v37 = v79;
    do
    {
      v38 = *v36;
      v39 = *(v37 + 536);
      if (v16 >= v39)
      {
        v40 = (v16 - *v19) >> 4;
        if ((v40 + 1) >> 60)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v41 = v39 - *v19;
        v42 = v41 >> 3;
        if (v41 >> 3 <= (v40 + 1))
        {
          v42 = v40 + 1;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF0)
        {
          v43 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        v92 = v79 + 520;
        if (v43)
        {
          std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v43);
        }

        v44 = (16 * v40);
        *v44 = *v38;
        v16 = (16 * v40 + 16);
        *v38 = 0;
        *(v38 + 8) = 0;
        v37 = v79;
        v45 = *(v79 + 520);
        v46 = *(v79 + 528) - v45;
        v47 = v44 - v46;
        memcpy(v44 - v46, v45, v46);
        v48 = *(v79 + 520);
        *(v79 + 520) = v47;
        *(v79 + 528) = v16;
        v49 = *(v79 + 536);
        *(v79 + 536) = 0;
        *&__p = v48;
        *(&__p + 1) = v49;
        *&cf = v48;
        *(&cf + 1) = v48;
        std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(&cf);
      }

      else
      {
        *v16 = *v38;
        v16 = (v16 + 16);
        *v38 = 0;
        *(v38 + 8) = 0;
        v37 = v79;
      }

      *(v37 + 528) = v16;
      ++v36;
    }

    while (v36 != v35);
  }

  for (i = *v19; i != v16; i += 2)
  {
    v51 = *(v79 + 464);
    if (!v51)
    {
      goto LABEL_139;
    }

    v52 = *i;
    v53 = *(*i + 36);
    *&cf = 0;
    applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&theArray, v51, @"controls", &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v54 = theArray;
    if (!theArray)
    {
LABEL_139:
      v73 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v73, "Could not construct");
      __cxa_throw(v73, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (CFArrayGetCount(theArray))
    {
      Count = CFArrayGetCount(v54);
      v56 = CFArrayGetCount(v54);
      if (Count)
      {
        v57 = v56;
        v58 = 0;
        while (v57 != v58)
        {
          applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v80, v54, v58);
          if (!v80)
          {
            goto LABEL_138;
          }

          LODWORD(cf) = 0;
          v88[0] = CFNumberCreate(0, kCFNumberIntType, &cf);
          if (!v88[0])
          {
            v71 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v71, "Could not construct");
            __cxa_throw(v71, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&cf, v80, @"control ID", v88);
          v59 = cf;
          if (!cf)
          {
LABEL_138:
            v72 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v72, "Could not construct");
            __cxa_throw(v72, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v60 = applesauce::CF::convert_to<unsigned int,0>(cf);
          CFRelease(v59);
          if (v88[0])
          {
            CFRelease(v88[0]);
          }

          if (v60 == v53)
          {
            goto LABEL_102;
          }

          if (v80)
          {
            CFRelease(v80);
          }

          if (Count == ++v58)
          {
            break;
          }
        }
      }
    }

    v80 = 0;
LABEL_102:
    CFRelease(v54);
    v61 = *(v52 + 40);
    *(v52 + 40) = v80;
    v80 = v61;
    v62 = *(v52 + 32);
    if (!v62)
    {
      AMCP::IOAudio2::Control::build_core(v52);
    }

    AMCP::Core::Broker::fetch_core(&theArray, *(*(**(v52 + 24) + 32) + 16), v62);
    v63 = theArray;
    if (theArray)
    {
      cf = 0u;
      __p = 0u;
      LODWORD(v92) = 1065353216;
      AMCP::IOAudio2::Control::update_value(v52);
      AMCP::IOAudio2::Control::update_range(v52);
      v88[0] = v63 + 48;
      LOBYTE(v88[1]) = 1;
      caulk::concurrent::shared_spin_lock::lock(v63 + 12);
      for (j = __p; j; j = *j)
      {
        std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>(v63 + 1, (j[4] + 40), j + 4);
      }

      caulk::concurrent::shared_spin_lock::unlock(v63 + 12);
      v88[0] = 0x676C6F626F776E72;
      LODWORD(v88[1]) = 0;
      *(v63 + 1) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v63, v88, &AMCP::k_object_id_unknown);
      std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(__p);
      v65 = cf;
      *&cf = 0;
      if (v65)
      {
        operator delete(v65);
      }
    }

    if (v94)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v94);
    }

    if (v80)
    {
      CFRelease(v80);
    }
  }

  AMCP::Core::Broker::fetch_core(&theArray, *(*(*v79 + 32) + 16), *(v79 + 16));
  if (theArray)
  {
    cf = 0u;
    __p = 0u;
    LODWORD(v92) = 1065353216;
    AMCP::IOAudio2::Device::update_core_common(v79);
  }

  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  }

  if (*&buf[24])
  {
    operator delete(*&buf[24]);
  }

  if (*buf)
  {
    operator delete(*buf);
  }

  *buf = &v81;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v83)
  {
    CFRelease(v83);
  }

  *buf = v84;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v85)
  {
    CFRelease(v85);
  }

  *buf = v86;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v87)
  {
    CFRelease(v87);
  }

  v66 = *MEMORY[0x1E69E9840];
}