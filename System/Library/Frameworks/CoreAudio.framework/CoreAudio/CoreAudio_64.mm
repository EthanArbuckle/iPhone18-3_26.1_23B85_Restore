void HALS_Device::Server_Internal_AddIOProc(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v15 = 136315394;
      *&v15[4] = "HALS_Device.cpp";
      *&v15[12] = 1024;
      *&v15[14] = 2456;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::AddIOProc: no IO context", v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v15 = 136315394;
    *&v15[4] = "HALS_Device.cpp";
    *&v15[12] = 1024;
    *&v15[14] = 2458;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  HALS_Device::AddIOProc: couldn't find the IO context";
    goto LABEL_12;
  }

  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v15 = 136315394;
    *&v15[4] = "HALS_IOContext.cpp";
    *&v15[12] = 1024;
    *&v15[14] = 451;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  HALS_IOContext::Server_Internal_AddIOProc: can't add an IOProc without an IOProc";
LABEL_12:
    _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, v13, v15, 0x12u);
LABEL_13:
    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = off_1F5991DD8;
    v14[2] = 1852797029;
  }

  *v15 = v7;
  *&v15[8] = a2;
  *&v15[16] = a3;
  (*(**(v7 + 104) + 376))(*(v7 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_AddIOProc(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *),void *)::$_0>, v15);
  HALS_ObjectMap::ReleaseObject(v8, v9);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F8750(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_DestroyIOProcID(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v12 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v11 = 136315394;
      *&v11[4] = "HALS_Device.cpp";
      *&v11[12] = 1024;
      *&v11[14] = 2448;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::DestroyIOProcID: no IO context", v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v11 = 136315394;
      *&v11[4] = "HALS_Device.cpp";
      *&v11[12] = 1024;
      *&v11[14] = 2450;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::DestroyIOProcID: couldn't find the IO context", v11, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = off_1F5991DD8;
    v10[2] = 1852797029;
  }

  *v11 = v5;
  *&v11[8] = a2;
  (*(**(v5 + 104) + 376))(*(v5 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_DestroyIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>, v11);
  HALS_ObjectMap::ReleaseObject(v6, v7);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F89D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Device::Server_Internal_CreateIOProcIDWithBlock(HALS_Device *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 840))(a1) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2440;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::CreateIOProcIDWithBlock: no IO context", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(a1);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2442;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  HALS_Device::CreateIOProcIDWithBlock: couldn't find the IO context";
    goto LABEL_12;
  }

  if (!a3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_IOContext.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 382;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  HALS_IOContext::Server_Internal_CreateIOProcIDWithBlock: can't create an IOProcID without an IOBlock";
LABEL_12:
    _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
LABEL_13:
    v16 = __cxa_allocate_exception(0x10uLL);
    *v16 = off_1F5991DD8;
    v16[2] = 1852797029;
  }

  v17 = 0;
  *buf = v7;
  *&buf[8] = &v17;
  *&buf[16] = a2;
  v19 = a3;
  (*(**(v7 + 104) + 376))(*(v7 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_CreateIOProcIDWithBlock(dispatch_queue_s *,void({block_pointer})(AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*))::$_0>, buf);
  v9 = v17;
  HALS_ObjectMap::ReleaseObject(v8, v10);
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1DE6F8CF8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Device::Server_Internal_CreateIOProcID(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2432;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::CreateIOProcID: no IO context", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2434;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  HALS_Device::CreateIOProcID: couldn't find the IO context";
    goto LABEL_12;
  }

  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_IOContext.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 341;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  HALS_IOContext::Server_Internal_CreateIOProcID: can't create an IOProcID without an IOProc";
LABEL_12:
    _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
LABEL_13:
    v16 = __cxa_allocate_exception(0x10uLL);
    *v16 = off_1F5991DD8;
    v16[2] = 1852797029;
  }

  v17 = 0;
  *buf = v7;
  *&buf[8] = &v17;
  *&buf[16] = a2;
  v19 = a3;
  (*(**(v7 + 104) + 376))(*(v7 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_CreateIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *),void *)::$_0>, buf);
  v9 = v17;
  HALS_ObjectMap::ReleaseObject(v8, v10);
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1DE6F9018(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL HALS_Device::_ClientDied(std::mutex *this, HALS_Client *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *&this[8].__m_.__opaque[24];
  v5 = *&this[8].__m_.__opaque[32];
  if (v4 != v5)
  {
    while (*v4 != *(a2 + 4))
    {
      v4 += 48;
      if (v4 == v5)
      {
        goto LABEL_14;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_14:
    v14 = 0;
  }

  else
  {
    v6 = (*(this->__m_.__sig + 744))(this);
    v7 = *(v4 + 32);
    v8 = *&this[8].__m_.__opaque[32];
    if (v4 + 48 != v8)
    {
      do
      {
        v9 = v4;
        v10 = *(v4 + 48);
        v4 += 48;
        *v9 = v10;
        CACFDictionary::operator=(v9 + 8, v9 + 56);
        *(v9 + 24) = *(v9 + 72);
        *(v9 + 37) = *(v9 + 85);
      }

      while (v9 + 96 != v8);
      v8 = *&this[8].__m_.__opaque[32];
    }

    for (; v8 != v4; v8 -= 48)
    {
      CACFDictionary::~CACFDictionary((v8 - 40));
    }

    *&this[8].__m_.__opaque[32] = v4;
    (*(this->__m_.__sig + 752))(this, a2);
    if (v7)
    {
      v11 = HALS_ObjectMap::CopyObjectByObjectID(*(a2 + 4));
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 240);
      }

      else
      {
        v13 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a2 + 4);
        v16 = (*(this->__m_.__sig + 224))(this);
        v17 = *&this->__m_.__opaque[8];
        v56 = 136316418;
        v57 = "HALS_Device.cpp";
        v58 = 1024;
        v59 = 2320;
        v60 = 1024;
        v61 = v15;
        v62 = 1024;
        v63 = v13;
        v64 = 2080;
        v65 = v16;
        v66 = 1024;
        v67 = v17;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_ClientDied: client %u (pid %d) unducking on device %s (%u)", &v56, 0x2Eu);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      v18 = (*(this->__m_.__sig + 272))(this);
      (*(this->__m_.__sig + 800))(this, 0.0, v18 * 0.0500000007);
      HALS_ObjectMap::ReleaseObject(v12, v19);
    }

    v14 = v6 != (*(this->__m_.__sig + 744))(this);
  }

  std::mutex::lock(this + 11);
  if (a2)
  {
    v20 = *(a2 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
      goto LABEL_58;
    }

    v20 = 0;
  }

  v21 = &this[10].__m_.__opaque[16];
  v22 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v20);
  if (v22)
  {
    v23 = v22;
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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
      v51 = 0;
      v52 = 0;
      v53 = 47;
      do
      {
        v54 = &aLibraryCachesC_39[v51];
        if (v53 == 47)
        {
          v52 = &aLibraryCachesC_39[v51];
        }

        v53 = v54[1];
        if (!v54[1])
        {
          break;
        }

        v43 = v51++ >= 0xFFF;
      }

      while (!v43);
      if (v52)
      {
        v55 = v52 + 1;
      }

      else
      {
        v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device_HostedDSP_ClientInfo.cpp";
      }

      v56 = 136315650;
      v57 = v55;
      v58 = 1024;
      v59 = 545;
      v60 = 1024;
      v61 = v20;
      _os_log_debug_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Removing Hosted DSP streams for Client ID: %d", &v56, 0x18u);
    }

    HALS_Device_HostedDSP_ClientInfo::PerClientInfo::deactivate_stream((v23 + 3), 1);
    HALS_Device_HostedDSP_ClientInfo::PerClientInfo::deactivate_stream((v23 + 3), 0);
    v28 = *&this[10].__m_.__opaque[24];
    v29 = v23[1];
    v30 = vcnt_s8(v28);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      if (v29 >= *&v28)
      {
        v29 %= *&v28;
      }
    }

    else
    {
      v29 &= *&v28 - 1;
    }

    v31 = *(*v21 + 8 * v29);
    do
    {
      v32 = v31;
      v31 = *v31;
    }

    while (v31 != v23);
    if (v32 == &this[10].__m_.__opaque[32])
    {
      goto LABEL_48;
    }

    v33 = *(v32 + 1);
    if (v30.u32[0] > 1uLL)
    {
      if (v33 >= *&v28)
      {
        v33 %= *&v28;
      }
    }

    else
    {
      v33 &= *&v28 - 1;
    }

    if (v33 != v29)
    {
LABEL_48:
      if (!*v23)
      {
        goto LABEL_49;
      }

      v34 = *(*v23 + 8);
      if (v30.u32[0] > 1uLL)
      {
        if (v34 >= *&v28)
        {
          v34 %= *&v28;
        }
      }

      else
      {
        v34 &= *&v28 - 1;
      }

      if (v34 != v29)
      {
LABEL_49:
        *(*v21 + 8 * v29) = 0;
      }
    }

    v35 = *v23;
    if (*v23)
    {
      v36 = *(v35 + 8);
      if (v30.u32[0] > 1uLL)
      {
        if (v36 >= *&v28)
        {
          v36 %= *&v28;
        }
      }

      else
      {
        v36 &= *&v28 - 1;
      }

      if (v36 != v29)
      {
        *(*v21 + 8 * v36) = v32;
        v35 = *v23;
      }
    }

    *v32 = v35;
    *v23 = 0;
    --*&this[10].__m_.__opaque[40];
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,void *>>>::operator()[abi:ne200100](1, v23);
  }

LABEL_58:
  std::mutex::unlock(this + 11);
  v37 = *&this[9].__m_.__opaque[40];
  if (v37)
  {
    v38 = *(a2 + 4);
    std::mutex::lock((v37 + 32));
    v39 = *(v37 + 104);
    if (v39)
    {
      v40 = v37 + 104;
      v41 = *(v37 + 104);
      do
      {
        v42 = *(v41 + 32);
        v43 = v42 >= v38;
        v44 = v42 < v38;
        if (v43)
        {
          v40 = v41;
        }

        v41 = *(v41 + 8 * v44);
      }

      while (v41);
      if (v40 != v37 + 104 && *(v40 + 32) <= v38)
      {
        v45 = *(v40 + 8);
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          v47 = v40;
          do
          {
            v46 = v47[2];
            v48 = *v46 == v47;
            v47 = v46;
          }

          while (!v48);
        }

        if (*(v37 + 96) == v40)
        {
          *(v37 + 96) = v46;
        }

        --*(v37 + 112);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v39, v40);
        std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HALS_DSPHostPerClientConfiguration::PerClientProperties>,0>(v40 + 32);
        operator delete(v40);
      }
    }

    std::mutex::unlock((v37 + 32));
  }

  v49 = *MEMORY[0x1E69E9840];
  return v14;
}

void HALS_Device::DumpDuckHistory(void *a1, int a2, uint64_t a3, int a4)
{
  v6 = a2;
  v25 = *MEMORY[0x1E69E9840];
  __p = 0;
  v20 = 0;
  v21 = 0;
  if (a3 && a2)
  {
    if (a4)
    {
      v8 = a4;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "    ", 4);
        --v8;
      }

      while (v8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "Duck History:", 13);
  }

  else
  {
    HIBYTE(v21) = 10;
    LOWORD(v20) = 8250;
    __p = *"\tHistory: ";
  }

  v9 = a1[72];
  v10 = a1[75];
  v11 = (v9 + 8 * (v10 >> 7));
  if (a1[73] == v9)
  {
    v12 = 0;
    v15 = 0;
    v14 = (v9 + 8 * ((a1[76] + v10) >> 7));
  }

  else
  {
    v12 = &(*v11)[4 * (a1[75] & 0x7FLL)];
    v13 = a1[76] + v10;
    v14 = (v9 + 8 * (v13 >> 7));
    v15 = &(*v14)[4 * (v13 & 0x7F)];
  }

  buf[0] = v6;
  *&v24[4] = &__p;
  *&v24[12] = a3;
  *&v24[20] = a4;
  v22 = buf;
  if (v11 != v14)
  {
    std::for_each[abi:ne200100]<std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0>(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)::{lambda(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)#1}::operator()<HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const*>(&v22, v12, *v11 + 512);
    for (i = v11 + 1; i != v14; ++i)
    {
      std::for_each[abi:ne200100]<std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0>(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)::{lambda(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)#1}::operator()<HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const*>(&v22, *i, *i + 512);
    }

    v12 = *v14;
  }

  std::for_each[abi:ne200100]<std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0>(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)::{lambda(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)#1}::operator()<HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const*>(&v22, v12, v15);
  if ((v6 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if (v21 < 0)
    {
      p_p = __p;
    }

    *buf = 136315650;
    *v24 = "HALS_Device.cpp";
    *&v24[8] = 1024;
    *&v24[10] = 5381;
    *&v24[14] = 2080;
    *&v24[16] = p_p;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  %s", buf, 0x1Cu);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F9970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::for_each[abi:ne200100]<std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0>(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)::{lambda(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)#1}::operator()<HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const*>(unsigned __int8 **a1, time_t *a2, time_t *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = **a1;
  *v37 = *(*a1 + 1);
  *&v37[3] = *(*a1 + 1);
  v6 = *(*a1 + 1);
  v5 = *(*a1 + 2);
  v7 = *(*a1 + 3);
  v34 = v7;
  if (a2 != a3)
  {
    v9 = a2;
    v32 = **a1;
    v10 = v4 & (v5 != 0);
    v31 = *(*a1 + 2);
    v11 = (v5 + 16);
    v36 = v7;
    v35 = v7 + 1;
    v12 = MEMORY[0x1E69E5318];
    do
    {
      v13 = localtime(v9);
      strftime(__s, 0x78uLL, "%x - %X", v13);
      if (v10)
      {
        v14 = *(v9 + 2);
        v15 = *(v9 + 2);
        v16 = *(v9 + 24);
        if (v36 != -1)
        {
          v17 = v35;
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "    ", 4);
            --v17;
          }

          while (v17);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Time: ", 6);
        v18 = strlen(__s);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, __s, v18);
        std::ios_base::getloc((v11 + *(*v11 - 24)));
        v19 = std::locale::use_facet(v39, v12);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(v39);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Client: ", 8);
        v20 = MEMORY[0x1E12C1200](v11, v14);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(v39, v12);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(v39);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Volume Scalar: ", 15);
        v22 = MEMORY[0x1E12C11E0](v11, v15);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v39, v12);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v39);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Opted Out: ", 11);
        v24 = MEMORY[0x1E12C11D0](v11, v16);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(v39, v12);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(v39);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        caulk::make_string("%s: %d  %lf, %u", &v38, __s, *(v9 + 2), v9[2], *(v9 + 24));
        v26 = std::string::append(&v38, ", ", 2uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v40 = v26->__r_.__value_.__r.__words[2];
        *&v39[0].__locale_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (v40 >= 0)
        {
          locale = v39;
        }

        else
        {
          locale = v39[0].__locale_;
        }

        if (v40 >= 0)
        {
          v29 = HIBYTE(v40);
        }

        else
        {
          v29 = v39[1].__locale_;
        }

        std::string::append(v6, locale, v29);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39[0].__locale_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      v9 += 4;
    }

    while (v9 != a3);
    v3 = *a1;
    v4 = v32;
    v5 = v31;
  }

  *__s = *v37;
  *&__s[3] = *&v37[3];
  *v3 = v4;
  *(v3 + 1) = *__s;
  *(v3 + 1) = *&__s[3];
  *(v3 + 1) = v6;
  *(v3 + 2) = v5;
  *(v3 + 3) = v34;
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F9E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_Device::_SetClientClockDeviceDeviceUID(HALS_Device *this, uint64_t a2, const __CFString *cf)
{
  v3 = cf;
  if (cf && (CFRetain(cf), v6 = CFGetTypeID(v3), v6 != CFStringGetTypeID()))
  {
    v22 = 0;
    CFRelease(v3);
    v3 = 0;
  }

  else
  {
    v22 = v3;
  }

  v7 = (*(*this + 816))(this, a2);
  cfa = v7;
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = cfa;
  }

  v9 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &v22);
  if (v9)
  {
    if (!v3)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v17, "Could not construct");
      __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(&v19, v3);
    v10 = *(this + 63);
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = a2;
      if (v10 <= a2)
      {
        v12 = a2 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & a2;
    }

    v13 = *(*(this + 62) + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == a2)
      {
        if (*(v14 + 4) == a2)
        {
          if (*(v14 + 47) < 0)
          {
            operator delete(v14[3]);
          }

          *(v14 + 3) = v19;
          v14[5] = v20;
          break;
        }
      }

      else
      {
        if (v11.u32[0] > 1uLL)
        {
          if (v15 >= v10)
          {
            v15 %= v10;
          }
        }

        else
        {
          v15 &= v10 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_27;
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_27;
      }
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v9 != kCFCompareEqualTo;
}

void sub_1DE6FA214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](1, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a16);
  applesauce::CF::StringRef::~StringRef(&a17);
  _Unwind_Resume(a1);
}

CFTypeRef HALS_Device::_CopyClientClockDeviceDeviceUID(HALS_Device *this, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 62, a2);
  if (!v2)
  {
    return 0;
  }

  v5 = v2[3];
  v3 = v2 + 3;
  v4 = v5;
  if (*(v3 + 23) >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  OS::CF::String::String(&v9, v6);
  v7 = CFRetain(cf);
  OS::CF::UntypedObject::~UntypedObject(&v9);
  return v7;
}

float HALS_Device::_GetCombinedVolumeScalar(HALS_Device *this, HALS_ObjectMap *a2, unsigned int a3)
{
  v3 = a2;
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(this + 68);
  v6 = *(this + 69);
  v7 = v5;
  if (v5 != v6)
  {
    v7 = *(this + 68);
    while (*v7 != a2)
    {
      v7 += 48;
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 != v6)
  {
    v8 = *(v7 + 4 * a3 + 24);
    v9 = 0;
    if ((a3 & 1) == 0)
    {
      v8 = v8 * *(v7 + 40);
    }

    goto LABEL_18;
  }

LABEL_9:
  if (v5 == v6)
  {
    v8 = 1.0;
    goto LABEL_27;
  }

  v10 = 1.0;
  do
  {
    if (((*(v5 + 32) & 1) != 0 || *(v5 + 44) == 1) && *(v5 + 36) < v10)
    {
      v10 = *(v5 + 36);
    }

    v5 += 48;
  }

  while (v5 != v6);
  v8 = 1.0;
  if (v10 != 1.0)
  {
    v9 = 1;
    v8 = v10;
LABEL_18:
    v11 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 240);
    }

    else
    {
      v13 = -1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = "";
      v18 = 136316674;
      v19 = "HALS_Device.cpp";
      v20 = 1024;
      v21 = 2291;
      if (v9)
      {
        v15 = " not";
      }

      v22 = 2082;
      v23 = this + 164;
      v24 = 1024;
      v25 = v3;
      v26 = 1024;
      v27 = v13;
      v28 = 2082;
      v29 = v15;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_GetCombinedVolumeScalar: %{public}s client %u (pid %d) is%{public}s present, and is ducked with a combined volume scalar of %f", &v18, 0x3Cu);
    }

    HALS_ObjectMap::ReleaseObject(v12, v14);
  }

LABEL_27:
  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6FA524(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_Device::_UpdateClientVolumeScalarDucking(HALS_Device *this, double a2, double a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *(this + 68);
  v7 = *(this + 69);
  if (v6 != v7)
  {
    v8 = 1.0;
    v9 = *(this + 68);
    do
    {
      if (((*(v9 + 32) & 1) != 0 || *(v9 + 44) == 1) && *(v9 + 36) < v8)
      {
        v8 = *(v9 + 36);
      }

      v9 += 48;
    }

    while (v9 != v7);
    v10 = MEMORY[0x1E69E9C10];
    do
    {
      if (*(v6 + 32) == 1)
      {
        v6[10] = 1.0;
        v11 = HALS_ObjectMap::CopyObjectByObjectID(*v6);
        v12 = v11;
        if (v11)
        {
          v13 = *(v11 + 240);
        }

        else
        {
          v13 = -1;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *v6;
          v20 = (*(*this + 224))(this);
          v21 = *(this + 4);
          v22 = v6[10];
          *buf = 136316674;
          v35 = "HALS_Device.cpp";
          v36 = 1024;
          v37 = 2221;
          v38 = 1024;
          v39 = v19;
          v40 = 1024;
          v41 = v13;
          v42 = 2080;
          v43 = v20;
          v44 = 1024;
          v45 = v21;
          v46 = 2048;
          v47 = v22;
          _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_UpdateClientVolumeScalarDucking: client %u (pid %d) is a ducker so its ducked volume scalar on device %s (%u) is %f", buf, 0x38u);
        }
      }

      else if (*(v6 + 44) == 1)
      {
        v6[10] = 1.0;
        v14 = HALS_ObjectMap::CopyObjectByObjectID(*v6);
        v12 = v14;
        if (v14)
        {
          v15 = *(v14 + 240);
        }

        else
        {
          v15 = -1;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *v6;
          v24 = (*(*this + 224))(this);
          v25 = *(this + 4);
          v26 = v6[10];
          *buf = 136316674;
          v35 = "HALS_Device.cpp";
          v36 = 1024;
          v37 = 2230;
          v38 = 1024;
          v39 = v23;
          v40 = 1024;
          v41 = v15;
          v42 = 2080;
          v43 = v24;
          v44 = 1024;
          v45 = v25;
          v46 = 2048;
          v47 = v26;
          _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_UpdateClientVolumeScalarDucking: client %u (pid %d) is opted out from ducking so its ducked volume scalar on device %s (%u) is %f", buf, 0x38u);
        }
      }

      else
      {
        v6[10] = v8;
        v16 = HALS_ObjectMap::CopyObjectByObjectID(*v6);
        v12 = v16;
        if (v16)
        {
          v17 = *(v16 + 240);
        }

        else
        {
          v17 = -1;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *v6;
          v28 = (*(*this + 224))(this);
          v29 = *(this + 4);
          v30 = v6[10];
          *buf = 136316674;
          v35 = "HALS_Device.cpp";
          v36 = 1024;
          v37 = 2239;
          v38 = 1024;
          v39 = v27;
          v40 = 1024;
          v41 = v17;
          v42 = 2080;
          v43 = v28;
          v44 = 1024;
          v45 = v29;
          v46 = 2048;
          v47 = v30;
          _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_UpdateClientVolumeScalarDucking: client %u (pid %d) is a duckee so its ducked volume scalar on device %s (%u) is %f", buf, 0x38u);
        }
      }

      HALS_ObjectMap::ReleaseObject(v12, v18);
      v6 += 12;
    }

    while (v6 != v7);
  }

  v31 = (*(*this + 408))(this);
  if (v31)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN11HALS_Device32_UpdateClientVolumeScalarDuckingEdd_block_invoke;
    block[3] = &__block_descriptor_tmp_131_19667;
    block[4] = v31;
    *&block[5] = a2;
    *&block[6] = a3;
    AMCP::Utility::Dispatch_Queue::async(this + 784, block);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void ___ZN11HALS_Device32_UpdateClientVolumeScalarDuckingEdd_block_invoke(uint64_t a1)
{
  (*(**(a1 + 32) + 296))(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

void sub_1DE6FAA44(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FAA24);
}

uint64_t HALS_Device::_IsClientOptedOutForDucking(HALS_Device *this, int a2)
{
  v2 = *(this + 68);
  v3 = *(this + 69);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      v2 += 48;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_7:
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 44);
  }

  return v4 & 1;
}

uint64_t HALS_Device::_DuckClientOptOut(HALS_Device *this, HALS_ObjectMap *a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(this + 68);
  v7 = *(this + 69);
  if (v6 != v7)
  {
    while (*v6 != a2)
    {
      v6 += 48;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_9:
    HALS_Device::AppendDuckHistory(this, a2, -1.0, a3);
    v11 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 240);
    }

    else
    {
      v13 = -1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = (*(*this + 224))(this);
      v16 = *(this + 4);
      v17 = "in for";
      v34 = 136316674;
      *v35 = "HALS_Device.cpp";
      *&v35[8] = 1024;
      if (a3)
      {
        v17 = "out for";
      }

      *&v35[10] = 2176;
      v36 = 1024;
      v37 = a2;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = v13;
      HIWORD(v38) = 2080;
      *v39 = v17;
      *&v39[8] = 2080;
      *&v39[10] = v15;
      v40 = 1024;
      v41 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientOptOut: client %u (pid %d) is opting %s ducking on device %s (%u) ", &v34, 0x38u);
    }

    v18 = *(this + 69);
    v34 = a2;
    *&v35[4] = 0;
    *&v35[12] = 1;
    __asm { FMOV            V0.2S, #1.0 }

    v38 = _D0;
    v39[0] = 0;
    *&v39[4] = _D0;
    v39[12] = a3;
    std::vector<HALS_Device::ClientInfo>::insert(this + 68, v18, &v34);
    CACFDictionary::~CACFDictionary(&v35[4]);
    HALS_ObjectMap::ReleaseObject(v12, v24);
  }

  else
  {
    HALS_Device::AppendDuckHistory(this, a2, *(v6 + 36), a3);
    v8 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v9 = v8;
    if (a3)
    {
      if (v8)
      {
        v10 = *(v8 + 240);
      }

      else
      {
        v10 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v25 = (*(*this + 224))(this);
        v26 = *(this + 4);
        v34 = 136316674;
        *v35 = "HALS_Device.cpp";
        *&v35[8] = 1024;
        *&v35[10] = 2145;
        v36 = 1024;
        v37 = a2;
        LOWORD(v38) = 1024;
        *(&v38 + 2) = v10;
        HIWORD(v38) = 2080;
        *v39 = "out for";
        *&v39[8] = 2080;
        *&v39[10] = v25;
        v40 = 1024;
        v41 = v26;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientOptOut: client %u (pid %d) is opting %s ducking on device %s (%u) ", &v34, 0x38u);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      *(v6 + 44) = 1;
      HALS_ObjectMap::ReleaseObject(v9, v27);
    }

    else
    {
      if (v8)
      {
        v14 = *(v8 + 240);
      }

      else
      {
        v14 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v28 = (*(*this + 224))(this);
        v29 = *(this + 4);
        v34 = 136316674;
        *v35 = "HALS_Device.cpp";
        *&v35[8] = 1024;
        *&v35[10] = 2157;
        v36 = 1024;
        v37 = a2;
        LOWORD(v38) = 1024;
        *(&v38 + 2) = v14;
        HIWORD(v38) = 2080;
        *v39 = "in for";
        *&v39[8] = 2080;
        *&v39[10] = v28;
        v40 = 1024;
        v41 = v29;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientOptOut: client %u (pid %d) is opting %s ducking on device %s (%u) ", &v34, 0x38u);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      *(v6 + 44) = 0;
      *(v6 + 36) = 1065353216;
      HALS_ObjectMap::ReleaseObject(v9, v30);
    }
  }

  v31 = (*(*this + 272))(this);
  result = (*(*this + 800))(this, 0.0, v31 * 0.0500000007);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_Device::AppendDuckHistory(HALS_Device *this, int a2, double a3, char a4)
{
  v22 = 0;
  time(&v22);
  v8 = *(this + 36);
  v9 = *(this + 73);
  v10 = *(this + 72);
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 16 * (v9 - v10) - 1;
  }

  v12 = *(this + 75);
  v13 = *(this + 76) + v12;
  if (v11 == v13)
  {
    v14 = v12 >= 0x80;
    v15 = v12 - 128;
    if (!v14)
    {
      v16 = *(this + 74);
      v17 = *(this + 71);
      if (v9 - v10 < (v16 - v17))
      {
        operator new();
      }

      if (v16 == v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = (v16 - v17) >> 2;
      }

      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v18);
    }

    *(this + 75) = v15;
    v23 = *v10;
    *(this + 72) = v10 + 1;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(this + 71, &v23);
    v12 = *(this + 75);
    v10 = *(this + 72);
    v13 = *(this + 76) + v12;
  }

  v19 = *(v10 + ((v13 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v13 & 0x7F);
  *v19 = v22;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = *(this + 76);
  *(this + 76) = v20 + 1;
  if ((v20 + 1) >= 0xB)
  {
    *(this + 76) = v20;
    v21 = v12 + 1;
    *(this + 75) = v21;
    if (v21 >= 0x100)
    {
      operator delete(*v10);
      *(this + 72) += 8;
      *(this + 75) -= 128;
    }
  }
}

void sub_1DE6FB504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<HALS_Device::ClientInfo>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) + 1;
    if (v15 > 0x555555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v14) >> 4);
    if (2 * v17 > v15)
    {
      v15 = 2 * v17;
    }

    if (v17 >= 0x2AAAAAAAAAAAAAALL)
    {
      v18 = 0x555555555555555;
    }

    else
    {
      v18 = v15;
    }

    v31 = a1;
    if (v18)
    {
      std::allocator<HALS_Device::ClientInfo>::allocate_at_least[abi:ne200100](v18);
    }

    v19 = 16 * (v16 >> 4);
    v28 = 0;
    v29 = v19;
    v30 = v19;
    if (!(0xAAAAAAAAAAAAAAABLL * (v16 >> 4)))
    {
      if (v16 < 1)
      {
        if (v14 == a2)
        {
          v20 = 1;
        }

        else
        {
          v20 = 0x5555555555555556 * (v16 >> 4);
        }

        v32 = a1;
        std::allocator<HALS_Device::ClientInfo>::allocate_at_least[abi:ne200100](v20);
      }

      v19 -= 48 * ((1 - 0x5555555555555555 * (v16 >> 4)) >> 1);
      v29 = v19;
      *&v30 = v19;
    }

    std::construct_at[abi:ne200100]<HALS_Device::ClientInfo,HALS_Device::ClientInfo,HALS_Device::ClientInfo*>(v19, a3);
    v21 = v29;
    *&v30 = v30 + 48;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Device::ClientInfo>,HALS_Device::ClientInfo*>(v4, a1[1], v30);
    v22 = *a1;
    v23 = v29;
    *&v30 = v30 + a1[1] - v4;
    a1[1] = v4;
    v24 = v23 + v22 - v4;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Device::ClientInfo>,HALS_Device::ClientInfo*>(v22, v4, v24);
    v25 = *a1;
    *a1 = v24;
    v26 = a1[2];
    *(a1 + 1) = v30;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    v28 = v25;
    v29 = v25;
    std::__split_buffer<HALS_Device::ClientInfo>::~__split_buffer(&v28);
    return v21;
  }

  else if (a2 == v7)
  {
    std::construct_at[abi:ne200100]<HALS_Device::ClientInfo,HALS_Device::ClientInfo,HALS_Device::ClientInfo*>(a1[1], a3);
    a1[1] = v7 + 48;
  }

  else
  {
    v8 = v7 - 48;
    v9 = a1[1];
    if (v7 >= 0x30)
    {
      v9 = a1[1];
      do
      {
        std::construct_at[abi:ne200100]<HALS_Device::ClientInfo,HALS_Device::ClientInfo,HALS_Device::ClientInfo*>(v9, v8);
        v8 += 48;
        v9 += 48;
      }

      while (v8 < v7);
    }

    a1[1] = v9;
    if (v7 != v4 + 48)
    {
      v10 = 0;
      do
      {
        v11 = v7 + v10;
        *(v7 + v10 - 48) = *(v7 + v10 - 96);
        CACFDictionary::operator=(v7 + v10 - 40, v7 + v10 - 88);
        v12 = *(v7 + v10 - 72);
        *(v11 - 11) = *(v11 - 59);
        *(v11 - 24) = v12;
        v10 -= 48;
      }

      while (v4 - v7 + 48 != v10);
    }

    *v4 = *a3;
    CACFDictionary::operator=(v4 + 8, a3 + 8);
    v13 = *(a3 + 24);
    *(v4 + 37) = *(a3 + 37);
    *(v4 + 24) = v13;
  }

  return v4;
}

uint64_t std::construct_at[abi:ne200100]<HALS_Device::ClientInfo,HALS_Device::ClientInfo,HALS_Device::ClientInfo*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  *(a1 + 17) = *(a2 + 17);
  if (v5 == 1 && v4 != 0)
  {
    CFRetain(v4);
  }

  v7 = *(a2 + 24);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 24) = v7;
  return a1;
}

void std::allocator<HALS_Device::ClientInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<HALS_Device::ClientInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    CACFDictionary::~CACFDictionary((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Device::ClientInfo>,HALS_Device::ClientInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = a3 + v6;
      *v8 = *(v5 + v6);
      v9 = *(v5 + v6 + 8);
      *(v8 + 8) = v9;
      v10 = *(v5 + v6 + 16);
      *(v8 + 16) = v10;
      *(v8 + 17) = *(v5 + v6 + 17);
      if (v10 == 1 && v9 != 0)
      {
        CFRetain(v9);
      }

      v12 = *(v7 + 24);
      *(v8 + 37) = *(v7 + 37);
      *(v8 + 24) = v12;
      v6 += 48;
    }

    while (v7 + 48 != a2);
    do
    {
      CACFDictionary::~CACFDictionary((v5 + 8));
      v5 += 48;
    }

    while (v5 != a2);
  }
}

uint64_t HALS_Device::_DuckClientVolumeScalar(HALS_Device *this, HALS_ObjectMap *a2, float a3, double a4, double a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = 0.0;
  if (a3 >= 0.0)
  {
    v9 = a3;
  }

  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = *(this + 68);
  v12 = *(this + 69);
  if (v11 != v12)
  {
    while (*v11 != a2)
    {
      v11 += 48;
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }
  }

  if (v11 == v12)
  {
LABEL_14:
    if (a3 != 1.0)
    {
      HALS_Device::AppendDuckHistory(this, a2, v10, 0);
      v16 = HALS_ObjectMap::CopyObjectByObjectID(a2);
      v17 = v16;
      if (v16)
      {
        v18 = *(v16 + 240);
      }

      else
      {
        v18 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v20 = (*(*this + 224))(this);
        v21 = *(this + 4);
        v37 = 136317186;
        *v38 = "HALS_Device.cpp";
        *&v38[8] = 1024;
        *&v38[10] = 2120;
        v39 = 1024;
        v40 = a2;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = v18;
        HIWORD(v41) = 2080;
        v42 = v20;
        *v43 = 1024;
        *&v43[2] = v21;
        v44 = 2048;
        v45 = v10;
        v46 = 2048;
        v47 = a4;
        v48 = 2048;
        v49 = a5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientVolumeScalar: client %u (pid %d) ducking device %s (%u) to %f over (%f, %0.f)", &v37, 0x4Cu);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      v22 = *(this + 69);
      v37 = a2;
      *&v38[4] = 0;
      *&v38[12] = 1;
      __asm { FMOV            V0.2S, #1.0 }

      v41 = _D0;
      LOBYTE(v42) = 1;
      *(&v42 + 1) = v10;
      *v43 = 1065353216;
      v43[4] = 0;
      std::vector<HALS_Device::ClientInfo>::insert(this + 68, v22, &v37);
      CACFDictionary::~CACFDictionary(&v38[4]);
      HALS_ObjectMap::ReleaseObject(v17, v28);
    }
  }

  else
  {
    HALS_Device::AppendDuckHistory(this, a2, v10, *(v11 + 44));
    v13 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v14 = v13;
    if (v10 == 1.0)
    {
      if (v13)
      {
        v19 = *(v13 + 240);
      }

      else
      {
        v19 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v32 = (*(*this + 224))(this);
        v33 = *(this + 4);
        v37 = 136316930;
        *v38 = "HALS_Device.cpp";
        *&v38[8] = 1024;
        *&v38[10] = 2101;
        v39 = 1024;
        v40 = a2;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = v19;
        HIWORD(v41) = 2080;
        v42 = v32;
        *v43 = 1024;
        *&v43[2] = v33;
        v44 = 2048;
        v45 = a4;
        v46 = 2048;
        v47 = a5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientVolumeScalar: client %u (pid %d) unducking device %s (%u) over (%f, %0.f)", &v37, 0x42u);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      *(v11 + 32) = 0;
      *(v11 + 36) = 1065353216;
      HALS_ObjectMap::ReleaseObject(v14, v34);
    }

    else
    {
      if (v13)
      {
        v15 = *(v13 + 240);
      }

      else
      {
        v15 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v29 = (*(*this + 224))(this);
        v30 = *(this + 4);
        v37 = 136317186;
        *v38 = "HALS_Device.cpp";
        *&v38[8] = 1024;
        *&v38[10] = 2088;
        v39 = 1024;
        v40 = a2;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = v15;
        HIWORD(v41) = 2080;
        v42 = v29;
        *v43 = 1024;
        *&v43[2] = v30;
        v44 = 2048;
        v45 = v10;
        v46 = 2048;
        v47 = a4;
        v48 = 2048;
        v49 = a5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientVolumeScalar: client %u (pid %d) ducking device %s (%u) to %f over (%f, %0.f)", &v37, 0x4Cu);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      *(v11 + 32) = 1;
      *(v11 + 36) = v10;
      HALS_ObjectMap::ReleaseObject(v14, v31);
    }
  }

  result = (*(*this + 800))(this, a4, a5);
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_Device::_SetClientVolumeScalar(HALS_Device *this, int a2, int a3, float a4)
{
  v4 = a3;
  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  v7 = *(this + 68);
  v8 = *(this + 69);
  if (v7 != v8)
  {
    while (*v7 != a2)
    {
      v7 += 12;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_12:
    if (a4 != 1.0)
    {
      v25 = a2;
      if (a3)
      {
        v10 = a4;
      }

      else
      {
        v10 = 1.0;
      }

      if (a3)
      {
        a4 = 1.0;
      }

      v26 = 0;
      v27 = 1;
      v28 = a4;
      v29 = v10;
      v30 = 0;
      __asm { FMOV            V0.2S, #1.0 }

      v31 = _D0;
      v32 = 0;
      v16 = std::vector<HALS_Device::ClientInfo>::insert(this + 68, v8, &v25);
      CACFDictionary::~CACFDictionary(&v26);
      if ((v4 & 1) == 0)
      {
        v19 = *(this + 68);
        v20 = *(this + 69);
        while (v19 != v20)
        {
          if (*(v19 + 32) == 1)
          {
            v21 = *(v19 + 36);
            if (v21 >= *(v16 + 40))
            {
              v21 = *(v16 + 40);
            }

            *(v16 + 40) = v21;
          }

          v19 += 48;
        }
      }

      goto LABEL_19;
    }

    return 0;
  }

  v9 = v7 + 6;
  if (*&v9[a3] == a4)
  {
    return 0;
  }

  *&v9[a3] = a4;
LABEL_19:
  v17 = (*(*this + 408))(this);
  if (v17)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZN11HALS_Device22_SetClientVolumeScalarEjbf_block_invoke;
    v22[3] = &__block_descriptor_tmp_122;
    v22[4] = v17;
    v23 = a2;
    v24 = v4;
    AMCP::Utility::Dispatch_Queue::async(this + 784, v22);
  }

  return 1;
}

void ___ZN11HALS_Device22_SetClientVolumeScalarEjbf_block_invoke(uint64_t a1)
{
  (*(**(a1 + 32) + 288))(*(a1 + 32), *(a1 + 40), *(a1 + 44));
  v3 = *(a1 + 32);

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

void sub_1DE6FC1F0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FC1D0);
}

float HALS_Device::_GetClientVolumeScalar(HALS_Device *this, int a2, int a3)
{
  v3 = *(this + 68);
  v4 = *(this + 69);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      v3 += 12;
      if (v3 == v4)
      {
        return 1.0;
      }
    }
  }

  if (v3 == v4)
  {
    return 1.0;
  }

  else
  {
    return *&v3[a3 + 6];
  }
}

uint64_t HALS_Device::_GetCurrentClientKind(HALS_Device *this)
{
  v4 = 0;
  v2 = (*(*this + 736))(this);
  if (*(this + 69) == v2)
  {
    return 0;
  }

  result = *(v2 + 8);
  if (result)
  {
    CACFDictionary::GetUInt32(result, @"kind", &v4);
    return v4;
  }

  return result;
}

uint64_t HALS_Device::_FindHighestPriorityClientDescription(HALS_Device *this)
{
  v2 = *(this + 69);
  for (i = *(this + 68); i != v2; i += 48)
  {
    v4 = *(i + 8);
    if (v4)
    {
      v6 = 0;
      CACFDictionary::GetUInt32(v4, @"kind", &v6);
      if (v6)
      {
        result = i;
      }

      else
      {
        result = v2;
      }

      v2 = *(this + 69);
    }

    else
    {
      result = v2;
    }

    if (result != v2)
    {
      return result;
    }
  }

  return v2;
}

uint64_t HALS_Device::_SetClientDescription(uint64_t *a1, uint64_t a2, CFTypeRef cf)
{
  v5 = a1[68];
  v6 = a1[69];
  if (v5 != v6)
  {
    while (*v5 != *(a2 + 16))
    {
      v5 += 12;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_7:
    v7 = a1 + 69;
    v36 = *(a2 + 16);
    cfa = cf;
    v38 = 1;
    __asm { FMOV            V0.2S, #1.0 }

    *v39 = _D0;
    v39[8] = 0;
    *&v39[12] = _D0;
    v39[20] = 0;
    if (cf)
    {
      CFRetain(cf);
      v6 = *v7;
    }

    v13 = a1[70];
    if (v6 >= v13)
    {
      v18 = a1 + 68;
      v19 = a1[68];
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v19) >> 4);
      if (v20 + 1 > 0x555555555555555)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v19) >> 4);
      v22 = 2 * v21;
      if (2 * v21 <= v20 + 1)
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x2AAAAAAAAAAAAAALL)
      {
        v23 = 0x555555555555555;
      }

      else
      {
        v23 = v22;
      }

      v43 = a1 + 68;
      if (v23)
      {
        std::allocator<HALS_Device::ClientInfo>::allocate_at_least[abi:ne200100](v23);
      }

      v24 = 48 * v20;
      v40 = 0;
      v41 = v24;
      v42 = v24;
      *v24 = v36;
      v25 = cfa;
      *(v24 + 8) = cfa;
      v26 = v38;
      *(v24 + 16) = v38;
      v27 = v24;
      v28 = v24;
      if (v26 == 1)
      {
        v27 = v24;
        v28 = v24;
        if (v25)
        {
          CFRetain(v25);
          v27 = v41;
          v28 = v42;
        }
      }

      v29 = *v39;
      *(v24 + 37) = *&v39[13];
      *(v24 + 24) = v29;
      *&v42 = v28 + 48;
      v30 = *v18;
      v31 = v27 + *v18 - *v7;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Device::ClientInfo>,HALS_Device::ClientInfo*>(v30, *v7, v31);
      v32 = a1[68];
      a1[68] = v31;
      v33 = a1[70];
      v35 = v42;
      *v7 = v42;
      *&v42 = v32;
      *(&v42 + 1) = v33;
      v40 = v32;
      v41 = v32;
      std::__split_buffer<HALS_Device::ClientInfo>::~__split_buffer(&v40);
      v17 = v35;
    }

    else
    {
      *v6 = v36;
      v14 = cfa;
      *(v6 + 8) = cfa;
      v15 = v38;
      *(v6 + 16) = v38;
      if (v15 == 1 && v14)
      {
        CFRetain(v14);
      }

      v16 = *v39;
      *(v6 + 37) = *&v39[13];
      *(v6 + 24) = v16;
      v17 = v6 + 48;
      *v7 = v6 + 48;
    }

    *v7 = v17;
    CACFDictionary::~CACFDictionary(&cfa);
  }

  else
  {
    CACFDictionary::operator=((v5 + 2), cf);
  }

  return (*(*a1 + 752))(a1, a2);
}

void sub_1DE6FC5E0(_Unwind_Exception *a1)
{
  *v2 = v3;
  CACFDictionary::~CACFDictionary((v1 + 8));
  _Unwind_Resume(a1);
}

__CFDictionary *HALS_Device::_CopyClientDescription(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 544);
  v3 = *(a1 + 552);
  if (v2 != v3)
  {
    while (*v2 != *(a2 + 16))
    {
      v2 += 48;
      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v7 = Mutable;
    v8 = 257;
    CACFDictionary::AddUInt32(&v7, @"kind", 0);
    if (Mutable)
    {
      CFRetain(Mutable);
      Mutable = v7;
    }

    CACFDictionary::~CACFDictionary(&v7);
  }

  else
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      CFRetain(v4);
      return *(v2 + 8);
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

BOOL HALS_Device::IsInputMutedForClient(HALS_Device *this, HALS_Client *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1065353216;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_Device21IsInputMutedForClientEP11HALS_Client_block_invoke;
  v5[3] = &unk_1E8678BD0;
  v5[4] = &v6;
  v5[5] = this;
  v5[6] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v7[6] == 0.0;
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1DE6FC860(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::GetClockDeviceNominalSampleRate(HALS_Device *this, HALS_Client *a2)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3002000000;
  v25 = __Block_byref_object_copy__124;
  v26 = __Block_byref_object_dispose__125;
  cf = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = ___ZNK11HALS_Device31GetClockDeviceNominalSampleRateEP11HALS_Client_block_invoke;
  v21[3] = &unk_1E8678BA8;
  v21[5] = this;
  v21[6] = a2;
  v21[4] = &v22;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v21);
  if (!v23[5])
  {
    goto LABEL_22;
  }

  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(&v19, 0, v18);
  if (v19)
  {
    v3 = v23[5];
    v29 = 0;
    v30 = &v29;
    v31 = 0x4002000000;
    v32 = __Block_byref_object_copy__7820;
    v33 = __Block_byref_object_dispose__7821;
    memset(v34, 0, sizeof(v34));
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = ___ZNK11HALS_System17CopyIODeviceByUIDEPK10__CFStringP11HALS_Client_block_invoke;
    v28[3] = &unk_1E8675888;
    v28[4] = &v29;
    v28[5] = v19;
    v4 = (*(*v19 + 64))(v19);
    HALB_CommandGate::ExecuteCommand(v4, v28);
    v5 = v30[5];
    v6 = v30[6];
    if (v5 == v6)
    {
LABEL_13:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        if (v3)
        {
          v7 = *v5;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 0x40000000;
          v38[2] = ___ZNK18HALS_DeviceManager16CopyIODeviceListERNS_17BasicIODeviceListEP11HALS_Client_block_invoke;
          v38[3] = &__block_descriptor_tmp_8_11652;
          v38[4] = v7;
          v38[5] = &v35;
          v8 = (*(*v7 + 64))(v7);
          HALB_CommandGate::ExecuteCommand(v8, v38);
          for (i = v35; i != v36; ++i)
          {
            v11 = *i;
            v12 = (*(**i + 208))(*i);
            if (v12 && CFStringCompare(v12, v3, 0) == kCFCompareEqualTo)
            {
              goto LABEL_11;
            }
          }

          v11 = 0;
LABEL_11:
          HALS_ObjectMap::RetainObject(v11, v9);
          HALS_DeviceManager::BasicIODeviceList::~BasicIODeviceList(&v35, v13);
          if (v11)
          {
            break;
          }
        }

        if (++v5 == v6)
        {
          goto LABEL_13;
        }
      }
    }

    _Block_object_dispose(&v29, 8);
    HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v34, v14);
    v16 = v11 ? (*(*v11 + 272))(v11) : 0.0;
    HALS_ObjectMap::ReleaseObject(v11, v15);
  }

  else
  {
    v16 = 0.0;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v16 == 0.0)
  {
LABEL_22:
    v16 = 0.0;
  }

  _Block_object_dispose(&v22, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  return *&v16;
}

void sub_1DE6FCC14(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  HALS_ObjectMap::ReleaseObject(v33, a2);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Block_object_dispose(&a21, 8);
  applesauce::CF::StringRef::~StringRef((v34 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__125(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZNK11HALS_Device31GetClockDeviceNominalSampleRateEP11HALS_Client_block_invoke(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((a1[5] + 496), *(v1 + 16));
    if (v3)
    {
      v4 = *(v3 + 47);
      if (v4 < 0)
      {
        v5 = v3[3];
        if (!v5)
        {
          v6 = 0;
LABEL_8:
          v7 = *(a1[4] + 8);
          v8 = *(v7 + 40);
          *(v7 + 40) = v6;
          if (v8)
          {
            CFRelease(v8);
          }

          return;
        }

        v4 = v3[4];
      }

      else
      {
        v5 = (v3 + 3);
      }

      v6 = CFStringCreateWithBytes(0, v5, v4, 0x8000100u, 0);
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      goto LABEL_8;
    }
  }
}

void sub_1DE6FCDA4(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FCD50);
}

uint64_t HALS_Device::IsClockDeviceUIDSetForAnyClient(uint64_t a1, CFTypeRef *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1174405120;
  v7[2] = ___ZNK11HALS_Device31IsClockDeviceUIDSetForAnyClientEN10applesauce2CF9StringRefE_block_invoke;
  v7[3] = &unk_1F598E358;
  v7[5] = a1;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  cf = v3;
  v7[4] = &v9;
  v4 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v10 + 24);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1DE6FCEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::StringRef::~StringRef((v9 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK11HALS_Device31IsClockDeviceUIDSetForAnyClientEN10applesauce2CF9StringRefE_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 512); i; i = *i)
  {
    v3 = *(i + 47);
    if (v3 < 0)
    {
      v4 = i[3];
      if (!v4)
      {
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(0, (a1 + 48)) == kCFCompareEqualTo)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          return;
        }

        continue;
      }

      v3 = i[4];
    }

    else
    {
      v4 = (i + 3);
    }

    v5 = CFStringCreateWithBytes(0, v4, v3, 0x8000100u, 0);
    v6 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v5, (a1 + 48)) == kCFCompareEqualTo)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      CFRelease(v6);
      return;
    }

    CFRelease(v6);
  }
}

void sub_1DE6FD018(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FCFC4);
}

CFMutableDictionaryRef HALS_Device::_CreateLegacyIOContextDescription(HALS_Device *this, HALS_Client *a2)
{
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v69 = 257;
  CACFDictionary::AddUInt32(&theDict, @"device id", *(this + 4));
  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) && *(this + 78))
  {
    if (a2)
    {
      v4 = *(a2 + 4);
    }

    else
    {
      v4 = 0;
    }

    HALS_Device::InformOffloadsAvailableOnDevice(this, a2);
    HALS_Device::GetDSPOffloadsRequested(&cf, this, 1);
    if (cf)
    {
      v26 = *(this + 78);
      HALS_Device::GetModelUID(&__p, this);
      HALS_DSPHostPerClientConfiguration::set_offloads_requested(v26, v4, &cf, &__p);
      if (v75 == 1 && SHIBYTE(v74) < 0)
      {
        operator delete(__p);
      }
    }

    HALS_DSPHostPerClientConfiguration::serialize_to_description(*(this + 78), v4, theDict);
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_56;
  }

  if (!a2)
  {
    goto LABEL_56;
  }

  v5 = 0;
  v6 = theDict;
  do
  {
    v7 = (&HALS_Device::_AddDSPKeysToIOContextDescriptionForClient(HALS_Client *,__CFDictionary *,std::optional<unsigned int>)const::hostedDspKeys + v5);
    HALS_Device_HostedDSP_ClientInfo::get_dsp_types_for_client(&__p, this + 648, (*(&HALS_Device::_AddDSPKeysToIOContextDescriptionForClient(HALS_Client *,__CFDictionary *,std::optional<unsigned int>)const::hostedDspKeys + v5 + 4) == 1768845428), a2);
    if (v74)
    {
      v8 = v7[2];
      if (v8)
      {
        v9 = &v7[v8 + 3];
        v10 = (v7 + 3);
        while (1)
        {
          if (v73)
          {
            v11 = *v10;
            v12 = &v73;
            v13 = v73;
            do
            {
              v14 = v13;
              v15 = v12;
              v16 = *(v13 + 7);
              if (v16 >= v11)
              {
                v12 = v13;
              }

              v13 = v13[v16 < v11];
            }

            while (v13);
            if (v12 != &v73)
            {
              if (v16 < v11)
              {
                v14 = v15;
              }

              if (v11 >= *(v14 + 7))
              {
                break;
              }
            }
          }

          if (++v10 >= v9)
          {
            goto LABEL_20;
          }
        }

        if (v11)
        {
          v18 = *v7;
          if (*v7 == 1934647636)
          {
            LODWORD(valuePtr) = *v10;
            v22 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            cf = v22;
            if (!v22)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            CFDictionarySetValue(v6, @"spatialization type", v22);
            v20 = cf;
            if (cf)
            {
LABEL_35:
              CFRelease(v20);
            }
          }

          else if (v18 == 1983996971)
          {
            LODWORD(valuePtr) = *v10;
            v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            cf = v21;
            if (!v21)
            {
              v56 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v56, "Could not construct");
              __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            CFDictionarySetValue(v6, @"voice activity detection enable", v21);
            v20 = cf;
            if (cf)
            {
              goto LABEL_35;
            }
          }

          else if (v18 == 1986622324)
          {
            LODWORD(valuePtr) = *v10;
            v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            cf = v19;
            if (!v19)
            {
              v55 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v55, "Could not construct");
              __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            CFDictionarySetValue(v6, @"vocal isolation type", v19);
            v20 = cf;
            if (cf)
            {
              goto LABEL_35;
            }
          }
        }
      }
    }

LABEL_20:
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v73);
    v17 = v5 >= 0x28;
    v5 += 20;
  }

  while (!v17);
  v23 = *(this + 79);
  if (v23)
  {
    HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(&__p, v23, 1, a2);
    if (__p)
    {
      DSP_Host_OffloadDictionary::deep_copy_to(__p, v6, "device dsp offloads input");
    }
  }

  else
  {
    __p = 0;
  }

  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&__p, 0);
  v24 = *(this + 79);
  if (v24)
  {
    HALS_Device_HostedDSP::CopyDSPSettingsForClient(&__p, *v24, 1, a2);
    if (__p)
    {
      DSP_Host_OffloadDictionary::deep_copy_to(__p, v6, "dsp input settings");
    }
  }

  else
  {
    __p = 0;
  }

  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&__p, 0);
  HALS_Device_HostedDSP_ClientInfo::get_virtual_channel_layout_for_client(&__p, this + 648, 0, a2);
  if (v75 == 1)
  {
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v71 = 256;
    if ((v75 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    HALS_Device::ConstructDictionaryFromLayout(__p, &cf, v25);
    CFDictionarySetValue(v6, @"spatialization virtual channel layout", cf);
    CACFDictionary::~CACFDictionary(&cf);
    if ((v75 & 1) != 0 && __p)
    {
      v73 = __p;
      operator delete(__p);
    }
  }

LABEL_56:
  v27 = (*(*this + 208))(this);
  if (HIBYTE(v69) == 1 && v27 && theDict != 0)
  {
    CFDictionarySetValue(theDict, @"master uid", v27);
  }

  if (a2)
  {
    v29 = *(a2 + 4);
  }

  else
  {
    v29 = 0;
  }

  v30 = (*(*this + 816))(this, v29);
  cf = v30;
  LOBYTE(v71) = 1;
  if (v30 && HIBYTE(v69) == 1 && theDict)
  {
    CFDictionarySetValue(theDict, @"clock device uid", v30);
  }

  v31 = (*(*this + 392))(this, 1, v30);
  if (v31)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v33 = 0;
    v34 = MEMORY[0x1E695E9E0];
    v35 = MEMORY[0x1E695E9F0];
    valuePtr = Mutable;
    v67 = 257;
    do
    {
      v36 = (*(*this + 400))(this, 1, v33);
      if ((*(*this + 616))(this, v36, a2))
      {
        v64 = CFDictionaryCreateMutable(0, 0, v34, v35);
        v65 = 257;
        v38 = (*(*this + 208))(this);
        if (HIBYTE(v65) == 1 && v38 && v64 != 0)
        {
          CFDictionarySetValue(v64, @"uid", v38);
        }

        CACFDictionary::AddUInt32(&v64, @"index", v33);
        if (valuePtr && HIBYTE(v67) == 1)
        {
          CFArrayAppendValue(valuePtr, v64);
        }

        if (cf)
        {
          CACFDictionary::AddUInt32(&v64, @"drift", 1);
          CACFDictionary::AddUInt32(&v64, @"drift algorithm", 0);
          CACFDictionary::AddUInt32(&v64, @"drift quality", 127);
        }

        CACFDictionary::~CACFDictionary(&v64);
      }

      HALS_ObjectMap::ReleaseObject(v36, v37);
      v33 = (v33 + 1);
    }

    while (v31 != v33);
    if (valuePtr && CFArrayGetCount(valuePtr) && HIBYTE(v69) == 1 && valuePtr && theDict)
    {
      CFDictionarySetValue(theDict, @"grid-in", valuePtr);
    }

    CACFArray::~CACFArray(&valuePtr);
  }

  v40 = (*(*this + 392))(this, 0);
  if (v40)
  {
    v41 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v42 = 0;
    v43 = MEMORY[0x1E695E9E0];
    v44 = MEMORY[0x1E695E9F0];
    v45 = MEMORY[0x1E695E9C8];
    valuePtr = v41;
    v67 = 257;
    do
    {
      v47 = (*(*this + 400))(this, 0, v42);
      if (v47)
      {
        v64 = CFDictionaryCreateMutable(0, 0, v43, v44);
        v65 = 257;
        NumberChannels = HALS_Stream::GetNumberChannels(v47);
        CACFDictionary::AddUInt32(&v64, @"channels", NumberChannels);
        v62 = CFArrayCreateMutable(0, 0, v45);
        v63 = 257;
        theArray = CFArrayCreateMutable(0, 0, v45);
        v61 = 257;
        v58 = CFDictionaryCreateMutable(0, 0, v43, v44);
        v59 = 257;
        v49 = (*(*this + 208))(this);
        if (HIBYTE(v59) == 1 && v49 && v58)
        {
          CFDictionarySetValue(v58, @"uid", v49);
        }

        CACFDictionary::AddUInt32(&v58, @"index", v42);
        if (cf)
        {
          CACFDictionary::AddUInt32(&v58, @"drift", 1);
          CACFDictionary::AddUInt32(&v58, @"drift algorithm", 0);
          CACFDictionary::AddUInt32(&v58, @"drift quality", 127);
        }

        v50 = theArray;
        if (theArray && HIBYTE(v61) == 1)
        {
          CFArrayAppendValue(theArray, v58);
          v50 = theArray;
        }

        v51 = v62;
        if (v62 && HIBYTE(v63) == 1)
        {
          CFArrayAppendValue(v62, v50);
          v51 = v62;
        }

        v52 = v64;
        if (HIBYTE(v65) == 1 && v51 && v64)
        {
          CFDictionarySetValue(v64, @"stream groups", v51);
          v52 = v64;
        }

        if (valuePtr && HIBYTE(v67) == 1)
        {
          CFArrayAppendValue(valuePtr, v52);
        }

        CACFDictionary::~CACFDictionary(&v58);
        CACFArray::~CACFArray(&theArray);
        CACFArray::~CACFArray(&v62);
        CACFDictionary::~CACFDictionary(&v64);
      }

      HALS_ObjectMap::ReleaseObject(v47, v46);
      v42 = (v42 + 1);
    }

    while (v40 != v42);
    if (HIBYTE(v69) == 1 && valuePtr && theDict)
    {
      CFDictionarySetValue(theDict, @"grid-out", valuePtr);
    }

    CACFArray::~CACFArray(&valuePtr);
  }

  if (theDict)
  {
    CFRetain(theDict);
    v53 = theDict;
  }

  else
  {
    v53 = 0;
  }

  CACFString::~CACFString(&cf);
  CACFDictionary::~CACFDictionary(&theDict);
  return v53;
}

void sub_1DE6FDB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, const void *a21, uint64_t a22, void *__p, void *a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a21);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a24);
  CACFDictionary::~CACFDictionary(&a19);
  _Unwind_Resume(a1);
}

void HALS_Device::InformOffloadsAvailableOnDevice(HALS_Device *this, HALS_Client *a2)
{
  v75[19] = *MEMORY[0x1E69E9840];
  v63[0] = 0;
  v63[1] = 0;
  HALS_System::GetInstance(buf, 0, v63);
  v4 = *(*buf + 1800);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v5 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v62[0] = 0;
  v62[1] = 0;
  HALS_System::GetInstance(buf, 0, v62);
  v6 = *(*buf + 1800);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v7 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  v8 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  only_airpods_studio_voice_mic = AMCP::Feature_Flags::auacc_read_only_airpods_studio_voice_mic(v8);
  if (only_airpods_studio_voice_mic)
  {
    if (v7 != 1)
    {
      if (!(v5 & 1 | ((*(this + 641) & 1) == 0)))
      {
        goto LABEL_89;
      }

LABEL_28:
      v59 = 0;
      v60 = 0;
      theDict = 0;
      if (!AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
      {
        HALS_Device_HostedDSP::GetOffloadsAvailableForDevice(*(this + 79), 1, &v59);
        if (v7 == 1)
        {
          DSP_Host_OffloadDictionary::get_offload_id_list(&v57, &v59);
          v30 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
          v31 = v57;
          for (i = v58; v31 != i; v31 += 24)
          {
            v33 = *(v31 + 23);
            if (v33 >= 0)
            {
              v34 = v31;
            }

            else
            {
              v34 = *v31;
            }

            if (v33 >= 0)
            {
              v35 = *(v31 + 23);
            }

            else
            {
              v35 = *(v31 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], v34, v35);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], " ", 1);
          }

          v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v36 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v30);
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

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str[abi:ne200100](__p, &v72);
            v44 = v56 >= 0 ? __p : __p[0];
            v45 = *(this + 4);
            *v64 = 136315906;
            *&v64[4] = "HALS_Device.cpp";
            v65 = 1024;
            v66 = 5868;
            v67 = 2080;
            v68 = v44;
            v69 = 1024;
            v70 = v45;
            _os_log_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads] ADM says offloads (%s) are available for (Device ID: %d)", v64, 0x22u);
            if (v56 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *buf = *MEMORY[0x1E69E54D8];
          v46 = *(MEMORY[0x1E69E54D8] + 72);
          *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
          *&buf[16] = v46;
          v72 = MEMORY[0x1E69E5548] + 16;
          if (v74 < 0)
          {
            operator delete(v73[7].__locale_);
          }

          v72 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v73);
          std::iostream::~basic_iostream();
          MEMORY[0x1E12C15F0](v75);
          *buf = &v57;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
        }

        goto LABEL_73;
      }

      HALS_Device::GetModelUID(buf, this);
      if (v72 == 1)
      {
        v20 = *(this + 78);
        v21 = *v20;
        v22 = **v20;
        std::mutex::lock((v22 + 8));
        AHAL_DSP::HostingInternalState::init(*v21);
        v23 = *(*v21 + 9);
        if (v23)
        {
          v24 = (*(*v23 + 32))(v23, buf, 1);
          std::mutex::unlock((v22 + 8));
          if (v24)
          {
            v57 = v24;
            v25 = CFGetTypeID(v24);
            if (v25 != CFDictionaryGetTypeID())
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            *v64 = v24;
            v64[8] = 1;
            DSP_Host_OffloadDictionary::deep_copy_from(&v59, v24);
            CFRelease(v24);
            goto LABEL_60;
          }
        }

        else
        {
          std::mutex::unlock((v22 + 8));
        }

        v64[0] = 0;
        v64[8] = 0;
      }

LABEL_60:
      if (v72 == 1 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

LABEL_73:
      Count = theDict;
      if (theDict && (Count = CFDictionaryGetCount(theDict)) != 0 && (Count = DSP_Host_OffloadDictionary::has_all_id(&v59), !Count))
      {
        *(this + 320) = (*(*this + 960))(this, 1, a2, &v59) | 0x100;
      }

      else if (v7 == 1)
      {
        v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v48 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(Count);
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

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(this + 4);
          *buf = 136315650;
          *&buf[4] = "HALS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5875;
          *&buf[18] = 1024;
          *&buf[20] = v52;
          _os_log_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads] ADM has no SPECIFIC offloads for (Device ID: %d), won't send anything to device", buf, 0x18u);
        }
      }

      if (theDict)
      {
        CFRelease(theDict);
      }

      if (v60)
      {
        std::__shared_weak_count::__release_weak(v60);
      }

      goto LABEL_89;
    }

    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(only_airpods_studio_voice_mic);
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

    v18 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      v19 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5827;
      *&buf[18] = 1024;
      *&buf[20] = v19;
      _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads] Inform available offloads called (Device ID: %d)", buf, 0x18u);
    }

    if (v5 & 1 | ((*(this + 641) & 1) == 0))
    {
      goto LABEL_28;
    }

    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
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

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5833;
      *&buf[18] = 1024;
      *&buf[20] = v43;
      v40 = "%32s:%-5d [hal_dsp][offloads] Available offloads has already informed device (Device ID: %d) (cache optimized)";
      v41 = v29;
      v42 = 24;
      goto LABEL_57;
    }
  }

  else if (v7 == 1)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(only_airpods_studio_voice_mic);
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

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5820;
      v40 = "%32s:%-5d [hal_dsp][offloads] Inform available offloads not called, feature flag is not set.";
      v41 = v17;
      v42 = 18;
LABEL_57:
      _os_log_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
    }
  }

LABEL_89:
  v53 = *MEMORY[0x1E69E9840];
}

void sub_1DE6FE554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  __cxa_free_exception(v35);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a13);
  if (a35 == 1 && a34 < 0)
  {
    operator delete(__p);
  }

  DSP_Host_OffloadDictionary::~DSP_Host_OffloadDictionary(&a16);
  _Unwind_Resume(a1);
}

void HALS_Device::GetDSPOffloadsRequested(HALS_Device *this, unsigned int *a2, int a3)
{
  *this = 0;
  if (a3)
  {
    if ((*(*a2 + 96))(a2, a2[4], "rOsdtpni", 0))
    {
      v11 = 8;
      cf = 0;
      (*(*a2 + 120))(a2, a2[4], "rOsdtpni", 8, &v11, &cf, 0, 0, 0);
      if (cf)
      {
        v5 = PropertyListDeepImmutableCopy(cf);
        v6 = v5;
        if (v5)
        {
          v7 = CFGetTypeID(v5);
          if (v7 != CFDictionaryGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        v8 = *this;
        *this = v6;
        if (v8)
        {
          CFRelease(v8);
        }

        CFRelease(cf);
      }
    }
  }
}

void sub_1DE6FE784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(v10);
  _Unwind_Resume(a1);
}

void HALS_Device::GetModelUID(HALS_Device *this, unsigned int *a2)
{
  *this = 0;
  *(this + 24) = 0;
  v11 = *"diumbolg";
  v12 = 0;
  if ((*(*a2 + 96))(a2, a2[4], &v11, 0))
  {
    cf = 0;
    v9 = 8;
    (*(*a2 + 120))(a2, a2[4], &v11, 8, &v9, &cf, 0, 0, 0);
    v4 = cf;
    if (cf)
    {
      CFRetain(cf);
      v5 = CFGetTypeID(v4);
      if (v5 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(&v7, v4);
      *this = v7;
      *(this + 2) = v8;
      v8 = 0;
      v7 = 0uLL;
      *(this + 24) = 1;
      if (v4)
      {
        CFRelease(v4);
      }

      CFRelease(cf);
    }
  }
}

void sub_1DE6FE958(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a11);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FE908);
}

void sub_1DE6FE9A8(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 24) & 1) != 0 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Device::ConstructDictionaryFromLayout(HALS_Device *this, CFMutableDictionaryRef *a2, CACFDictionary *a3)
{
  CACFDictionary::AddUInt32(a2, @"channel layout tag", *this);
  CACFDictionary::AddUInt32(a2, @"channel bitmap", *(this + 1));
  CACFDictionary::AddUInt32(a2, @"number channels", *(this + 2));
  if (!*this)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v18 = Mutable;
    v19 = 257;
    if (Mutable)
    {
      if (*(this + 2))
      {
        v6 = 0;
        v7 = MEMORY[0x1E695E9E0];
        v8 = MEMORY[0x1E695E9F0];
        v9 = this + 20;
        do
        {
          theDict = CFDictionaryCreateMutable(0, 0, v7, v8);
          v17 = 257;
          if (theDict)
          {
            v10 = (this + 20 * v6 + 12);
            CACFDictionary::AddUInt32(&theDict, @"channel label", *v10);
            CACFDictionary::AddUInt32(&theDict, @"channel flags", v10[1]);
            theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
            v15 = 257;
            if (theArray)
            {
              for (i = 0; i != 12; i += 4)
              {
                if (theArray && HIBYTE(v15) == 1)
                {
                  valuePtr = *&v9[i];
                  v12 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
                  v20 = v12;
                  v21 = 1;
                  if (v12 && theArray && HIBYTE(v15) == 1)
                  {
                    CFArrayAppendValue(theArray, v12);
                  }

                  CACFNumber::~CACFNumber(&v20);
                }
              }

              if (HIBYTE(v17) == 1 && theArray && theDict)
              {
                CFDictionarySetValue(theDict, @"coordinates", theArray);
              }
            }

            if (v18 && HIBYTE(v19) == 1)
            {
              CFArrayAppendValue(v18, theDict);
            }

            CACFArray::~CACFArray(&theArray);
          }

          CACFDictionary::~CACFDictionary(&theDict);
          ++v6;
          v9 += 20;
        }

        while (v6 < *(this + 2));
        v13 = v18;
      }

      else
      {
        v13 = Mutable;
      }

      if (*(a2 + 9) == 1 && v13)
      {
        if (*a2)
        {
          CFDictionarySetValue(*a2, @"channel descriptions", v13);
        }
      }
    }

    CACFArray::~CACFArray(&v18);
  }
}

void sub_1DE6FEC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  CACFArray::~CACFArray(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_Device::CopyControlByDescription(HALS_Device *this, int a2, int a3, int a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK11HALS_Device24CopyControlByDescriptionEjjj_block_invoke;
  v7[3] = &unk_1E8678AE8;
  v7[4] = &v11;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t ___ZNK11HALS_Device24CopyControlByDescriptionEjjj_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 680))(*(a1 + 40), *(a1 + 48), *(a1 + 52), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE6FEDE0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::CopyControlByIndex(HALS_Device *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_Device18CopyControlByIndexEj_block_invoke;
  v5[3] = &unk_1E8678AC0;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK11HALS_Device18CopyControlByIndexEj_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 672))(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE6FEF44(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::GetNumberControls(HALS_Device *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK11HALS_Device17GetNumberControlsEv_block_invoke;
  v4[3] = &unk_1E8678A98;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE6FF02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_Device17GetNumberControlsEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 664))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE6FF0A0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_Device::CopyControls(HALS_Device *this, HALS_Device::BasicControlList *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK11HALS_Device12CopyControlsERNS_16BasicControlListE_block_invoke;
  v3[3] = &__block_descriptor_tmp_76_19773;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void sub_1DE6FF198(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL HALS_Device::_ClientCanUseStream(uint64_t a1, HALS_Stream *this, uint64_t a3)
{
  if (!this)
  {
    return 0;
  }

  if (*(this + 52) != 1)
  {
    return 1;
  }

  if (*(this + 14) != 1)
  {
    if (HALS_Stream::IsHardwareReferenceStream(this))
    {
      if (*(this + 14) <= 1u)
      {
        goto LABEL_4;
      }

      return 0;
    }

    return 1;
  }

LABEL_4:
  result = 1;
  if (a3 && (*(a1 + 536) & 1) == 0)
  {
    v7 = *(a3 + 16);
    v8 = *(a1 + 448);

    return HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(v8, v7);
  }

  return result;
}

uint64_t HALS_Device::_GetTotalNumberChannelsForClient(std::mutex *this, uint64_t a2, HALS_Client *a3)
{
  std::mutex::lock(this + 11);
  if (a3)
  {
    v6 = *(a3 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
      goto LABEL_10;
    }

    v6 = 0;
  }

  v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v6);
  if (v7)
  {
    v8 = 9;
    if (a2)
    {
      v8 = 3;
    }

    v9 = v7[v8 + 3];
    if (v9)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = ___ZNK14HALS_DSPStream24GetCurrentPhysicalFormatER27AudioStreamBasicDescription_block_invoke;
      v20[3] = &__block_descriptor_tmp_17_17185;
      v20[4] = v9;
      v20[5] = &v18;
      v10 = (*(*v9 + 64))(v9);
      HALB_CommandGate::ExecuteCommand(v10, v20);
      v11 = v19;
      std::mutex::unlock(this + 11);
      return v11;
    }
  }

LABEL_10:
  std::mutex::unlock(this + 11);
  v12 = (*(this->__m_.__sig + 392))(this, a2);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  v11 = 0;
  do
  {
    v15 = (*(this->__m_.__sig + 400))(this, a2, v14);
    if ((*(this->__m_.__sig + 616))(this, v15, a3))
    {
      v11 = HALS_Stream::GetNumberChannels(v15) + v11;
    }

    HALS_ObjectMap::ReleaseObject(v15, v16);
    v14 = (v14 + 1);
  }

  while (v13 != v14);
  return v11;
}

HALS_ObjectMap *HALS_Device::_CopyStreamByIndexForClient(std::mutex *this, uint64_t a2, int a3, HALS_Client *a4)
{
  std::mutex::lock(this + 11);
  if (a4)
  {
    v8 = *(a4 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

    v8 = 0;
  }

  v9 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v8);
  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = 9;
  if (a2)
  {
    v11 = 3;
  }

  v12 = &v9[v11];
  v13 = v12[3];
  if (v13)
  {
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      HALS_ObjectMap::RetainObject(v12[3], v10);
    }

    std::mutex::unlock(this + 11);
    return v13;
  }

LABEL_12:
  std::mutex::unlock(this + 11);
  v14 = (*(this->__m_.__sig + 392))(this, a2);
  if (v14)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = (*(this->__m_.__sig + 400))(this, a2, v16 - 1);
      if ((*(this->__m_.__sig + 616))(this, v17, a4))
      {
        if (v15 == a3)
        {
          HALS_ObjectMap::RetainObject(v17, v18);
          v13 = v17;
          v15 = a3;
        }

        else
        {
          v13 = 0;
          ++v15;
        }
      }

      else
      {
        v13 = 0;
      }

      HALS_ObjectMap::ReleaseObject(v17, v18);
      if (v13)
      {
        break;
      }
    }

    while (v16++ < v14);
  }

  return v13;
}

void sub_1DE6FF67C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FF52CLL);
}

uint64_t HALS_Device::_GetNumberReferenceStreams(HALS_Device *this, uint64_t a2)
{
  v4 = (*(*this + 392))(this);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (*(*this + 400))(this, a2, v7);
    v10 = v8;
    if (v8 && (*(v8 + 14) == 1 || HALS_Stream::IsHardwareReferenceStream(v8)))
    {
      v6 = (v6 + 1);
    }

    HALS_ObjectMap::ReleaseObject(v10, v9);
    v7 = (v7 + 1);
  }

  while (v5 != v7);
  return v6;
}

uint64_t HALS_Device::_GetNumberStreamsExcludingReferenceStreams(HALS_Device *this, uint64_t a2)
{
  v4 = (*(*this + 392))(this);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (*(*this + 400))(this, a2, v7);
    v10 = v8;
    if (v8 && *(v8 + 14) != 1)
    {
      if (HALS_Stream::IsHardwareReferenceStream(v8))
      {
        v6 = v6;
      }

      else
      {
        v6 = (v6 + 1);
      }
    }

    HALS_ObjectMap::ReleaseObject(v10, v9);
    v7 = (v7 + 1);
  }

  while (v5 != v7);
  return v6;
}

uint64_t HALS_Device::_GetNumberStreamsForClient(std::mutex *this, uint64_t a2, HALS_Client *a3)
{
  v6 = (*(this->__m_.__sig + 392))(this);
  std::mutex::lock(this + 11);
  if (a3)
  {
    v7 = *(a3 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
LABEL_10:
      std::mutex::unlock(this + 11);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v7);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = 9;
  if (a2)
  {
    v9 = 3;
  }

  v10 = v8[v9 + 3];
  std::mutex::unlock(this + 11);
  if (v10)
  {
    return 1;
  }

LABEL_11:
  v11 = 0;
  if (v6)
  {
    v12 = 0;
    do
    {
      v14 = (*(this->__m_.__sig + 400))(this, a2, v12);
      if (v14)
      {
        v11 = v11 + (*(this->__m_.__sig + 616))(this, v14, a3);
      }

      HALS_ObjectMap::ReleaseObject(v14, v13);
      v12 = (v12 + 1);
    }

    while (v6 != v12);
  }

  return v11;
}

HALS_Stream *HALS_Device::_CopyStreamByChannel(HALS_Device *this, uint64_t a2, unsigned int a3)
{
  v6 = (*(*this + 392))(this);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = (*(*this + 400))(this, a2, v9 - 1);
    v12 = HALS_Stream::GetNumberChannels(v10) + v8;
    if (v12 < a3)
    {
      HALS_ObjectMap::ReleaseObject(v10, v11);
      v10 = 0;
      v8 = v12;
    }

    if (v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9 >= v7;
    }

    ++v9;
  }

  while (!v13);
  return v10;
}

uint64_t HALS_Device::GetNumberStreamsForClient(HALS_Device *this, char a2, HALS_Client *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK11HALS_Device25GetNumberStreamsForClientEbP11HALS_Client_block_invoke;
  v6[3] = &unk_1E86788F0;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZNK11HALS_Device25GetNumberStreamsForClientEbP11HALS_Client_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 576))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE6FFCA4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL HALS_Device::IsRunningSomewhereElse(HALS_Device *this, HALS_Client *a2)
{
  if (!AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    v22[0] = 0;
    v22[1] = 0;
    HALS_System::GetInstance(&v23, 0, v22);
    v7 = *(this + 4);
    v33 = 0;
    v34 = &v33;
    v35 = 0x4002000000;
    v36 = __Block_byref_object_copy__46;
    v37 = __Block_byref_object_dispose__47;
    memset(v38, 0, 24);
    v27 = MEMORY[0x1E69E9820];
    v28 = 0x40000000;
    v29 = ___ZNK11HALS_System46CountRunningIOContextsForDeviceExcludingClientEjP11HALS_Client_block_invoke;
    v30 = &unk_1E8675E18;
    v31 = &v33;
    v32 = v23;
    v8 = (*(*v23 + 64))(v23);
    HALB_CommandGate::ExecuteCommand(v8, &v27);
    if (a2)
    {
      v9 = *(a2 + 4);
    }

    else
    {
      v9 = -1;
    }

    v19 = v34[5];
    v20 = v34[6];
    if (v19 == v20)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        if (*v19)
        {
          (*(**(*v19 + 104) + 136))(&v25);
          v21 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v25, v7);
          if (**(*v19 + 72) != v9 && (*(**v19 + 240))(*v19) && v21)
          {
            ++v6;
          }

          std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v25);
        }

        ++v19;
      }

      while (v19 != v20);
    }

    _Block_object_dispose(&v33, 8);
    v25 = v38;
    std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v17 = v24;
    if (v24)
    {
      goto LABEL_20;
    }

    return v6 != 0;
  }

  v23 = 0;
  v24 = 0;
  HALS_System::GetInstance(&v25, 0, &v23);
  v4 = v25[218];
  os_unfair_lock_lock(v4 + 4);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((v4 + 40), *(this + 4));
  if (!HIDWORD(mcp_object))
  {
    v6 = 0;
    goto LABEL_19;
  }

  AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(&v33, *(v4 + 17), mcp_object);
  AMCP::IO_Core::Graph_Manager::find_contexts_using_timebase(&v27, *(v4 + 17), &v33);
  v10 = v27;
  v11 = v28;
  if (v27 == v28)
  {
    v6 = 0;
    if (!v27)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
    v12 = v27;
    do
    {
      v13 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(v4 + 5, *v12);
      if (v13)
      {
        v14 = HALS_ObjectMap::CopyObjectByObjectID(*(v13 + 5));
        v16 = v14;
        if (v14 && (*(*v14 + 240))(v14) && (!a2 || **(v16 + 9) != *(a2 + 4)))
        {
          ++v6;
        }

        HALS_ObjectMap::ReleaseObject(v16, v15);
      }

      ++v12;
    }

    while (v12 != v11);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  operator delete(v10);
LABEL_18:
  v27 = &v33;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v27);
LABEL_19:
  os_unfair_lock_unlock(v4 + 4);
  v17 = v26;
  if (v26)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return v6 != 0;
}

void sub_1DE700020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a18 = &a24;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a18);
  os_unfair_lock_unlock(v24 + 4);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_Device::CanBeSeenByProcess(HALS_Device *this, HALS_Client *a2)
{
  if (!a2 || *(a2 + 60) == -1 || !(*(*this + 480))(this))
  {
    return 1;
  }

  v4 = (*(*this + 488))(this);

  return HALS_ClientEntitlements::HasEntitlementWithBooleanValue((a2 + 296), v4);
}

void HALS_Device::ClearDeviceArrivalTime(const __CFString **this)
{
  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v7, 0, v6);
  Setting = HALS_SettingsManager::ReadSetting(*(v7 + 1776), this[15]);
  v9 = &unk_1F5991008;
  v10 = Setting;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    OS::CF::MutableDictionary::MutableDictionary(&v7, v10);
    OS::CF::MutableDictionary::RemoveKey(v8, @"global.arrival");
    v3[0] = 0;
    v3[1] = 0;
    HALS_System::GetInstance(&v4, 0, v3);
    HALS_SettingsManager::WriteSetting(*(v4 + 1776), this[15], v8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    OS::CF::UntypedObject::~UntypedObject(&v7);
  }

  OS::CF::UntypedObject::~UntypedObject(&v9);
}

void sub_1DE700268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject((v7 - 32));
  _Unwind_Resume(a1);
}

uint64_t HALS_Device::HasValidDSP(HALS_Device *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK11HALS_Device11HasValidDSPEv_block_invoke;
  v4[3] = &unk_1E8678A30;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE700368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

HALS_DSPSettings *___ZNK11HALS_Device11HasValidDSPEv_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  result = *(*(a1 + 40) + 472);
  if (result)
  {
    result = HALS_DSPSettings::HasValidDSPString(result, a2);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_Device::ReapplyDSP(HALS_Device *this)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN11HALS_Device10ReapplyDSPEv_block_invoke;
  v6[3] = &unk_1E8678A08;
  v6[4] = &v7;
  v6[5] = this;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v6);
  if (v8[3])
  {
    v3 = 1;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN11HALS_Device19ClearDSPDescriptionEv_block_invoke;
    v11[3] = &__block_descriptor_tmp_74_19818;
    v11[4] = this;
    v4 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v4, v11);
    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v3 & 1;
}

void sub_1DE700514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN11HALS_Device10ReapplyDSPEv_block_invoke(uint64_t a1)
{
  result = HALS_Device::_SetDSPSettingsFromDescription(*(a1 + 40), (*(a1 + 40) + 472), *(*(a1 + 40) + 488));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___ZN11HALS_Device19ClearDSPDescriptionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 480) == 1)
  {
    v2 = *(v1 + 472);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  *(v1 + 472) = 0;
  *(v1 + 481) = 0;
  *(v1 + 488) = 0;
}

uint64_t HALS_Device::_SetDSPSettingsFromDescription(HALS_Device *this, const __CFDictionary **a2, AudioObjectPropertyScope a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = v30;
  if (HALS_DSPSettings::HasValidDSPString(*a2, a2))
  {
    HALS_DSPSettings::FromDictionary(v20, *a2);
    v7 = v28;
    if (v7 >= (*(*this + 392))(this, 0))
    {
      v10 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        buf[0].mSelector = 136315394;
        *&buf[0].mScope = "HALS_Device.cpp";
        LOWORD(buf[1].mSelector) = 1024;
        *(&buf[1].mSelector + 2) = 1083;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Target stream for DSP is not available or out of range.", buf, 0x12u);
        v10 = 0;
      }
    }

    else
    {
      v8 = (*(*this + 400))(this, 0, v28);
      v10 = HALS_Device::SetStreamDSP(this, v8, v20);
      if (v10)
      {
        memset(buf, 0, sizeof(buf));
        v44 = &unk_1F5991008;
        v45 = 0;
        v46 = &unk_1F5991008;
        v47 = 0u;
        memset(v49, 0, sizeof(v49));
        v51 = &unk_1F5991008;
        v52 = 0;
        v11 = *(this + 59);
        if (v11)
        {
          HALS_DSPSettings::FromDictionary(v30, v11);
          if (SHIBYTE(buf[1].mElement) < 0)
          {
            operator delete(*&buf[0].mSelector);
          }

          *&buf[0].mSelector = *v30;
          v12 = v31;
          HIBYTE(v31) = 0;
          LOBYTE(v30[0]) = 0;
          v13 = v45;
          *&buf[1].mScope = v12;
          v45 = v33;
          v33 = v13;
          v14 = v47;
          v47 = *cf;
          *cf = v14;
          v48 = v36;
          if (*v49)
          {
            *&v49[8] = *v49;
            operator delete(*v49);
          }

          *v49 = __p;
          *&v49[16] = v38;
          v38 = 0;
          __p = 0uLL;
          v50 = v39;
          v15 = v52;
          v52 = v41;
          v41 = v15;
          v53 = v42;
          OS::CF::UntypedObject::~UntypedObject(&v40);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          if (cf[1])
          {
            CFRelease(cf[1]);
          }

          OS::CF::UntypedObject::~UntypedObject(&v34);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          LODWORD(v6) = v48;
        }

        v16 = v25;
        OS::CF::UntypedObject::~UntypedObject(&v51);
        if (*v49)
        {
          *&v49[8] = *v49;
          operator delete(*v49);
        }

        if (*(&v47 + 1))
        {
          CFRelease(*(&v47 + 1));
        }

        OS::CF::UntypedObject::~UntypedObject(&v46);
        OS::CF::UntypedObject::~UntypedObject(&v44);
        if (SHIBYTE(buf[1].mElement) < 0)
        {
          operator delete(*&buf[0].mSelector);
        }

        if (v16 != v6)
        {
          v17 = v8[4];
          buf[0].mSelector = 1936092532;
          buf[0].mScope = a3;
          buf[0].mElement = 0;
          HALS_Object::PropertiesChanged(this, v17, 0, 1, buf);
        }
      }

      HALS_ObjectMap::ReleaseObject(v8, v9);
    }

    OS::CF::UntypedObject::~UntypedObject(&v29);
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    OS::CF::UntypedObject::~UntypedObject(&v23);
    OS::CF::UntypedObject::~UntypedObject(&v22);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    v10 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "HALS_Device.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 1088;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Given HAL DSP dictionary is missing the DSP description string for kAudioDSPDescriptionKey_DSPGraph key.", buf, 0x12u);
      v10 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1DE7009FC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE700A54(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE700A5CLL);
  }

  JUMPOUT(0x1DE700A40);
}

void sub_1DE700A68(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE700A70);
  }

  JUMPOUT(0x1DE700A40);
}

uint64_t HALS_Device::SetStreamDSP(HALS_Device *this, HALS_Stream *a2, const HALS_DSPSettings *a3)
{
  if (!a2)
  {
    return 0;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 0x40000000;
  v19 = ___ZNK11HALS_Device17GetIndexForStreamEP11HALS_Stream_block_invoke;
  v20 = &unk_1E8678940;
  v21 = &v24;
  v22 = this;
  v23 = a2;
  v6 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v6, &v17);
  v7 = *(v25 + 6);
  _Block_object_dispose(&v24, 8);
  v8 = *(a2 + 52);
  if (AMCP::Feature_Flags::run_hybrid_hal(v9, v10))
  {
    v16[0] = 0;
    v16[1] = 0;
    HALS_System::GetInstance(&v17, 0, v16);
    v11 = *(v17 + 1744);
    os_unfair_lock_lock(v11 + 4);
    os_unfair_lock_unlock(v11 + 4);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    return 0;
  }

  v13 = (*(*this + 408))(this);
  v15 = v13;
  if (v13)
  {
    LOBYTE(a3) = (*(*v13 + 496))(v13, v8, v7, a3);
  }

  HALS_ObjectMap::ReleaseObject(v15, v14);
  return (v15 != 0) & a3;
}

void sub_1DE700CB0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE700C88);
}

void ___ZNK11HALS_Device17GetIndexForStreamEP11HALS_Stream_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v3)
  {
    if (*(v3 + 56) == 2)
    {
      v4 = 0;
      goto LABEL_18;
    }

    v5 = *(v3 + 52);
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*v2 + 392))(a1[5], v5 & 1);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = (*(*v2 + 400))(v2, v5 & 1, v7);
      HALS_ObjectMap::ReleaseObject(v8, v9);
      if (v8 == v3)
      {
        v4 = v7;
      }

      else
      {
        v4 = -1;
      }

      v7 = (v7 + 1);
    }

    while (v4 == -1 && v7 < v6);
  }

  else
  {
    v4 = -1;
  }

LABEL_18:
  *(*(a1[4] + 8) + 24) = v4;
}

void sub_1DE700DFC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

float HALS_Device::GetCombinedVolumeScalarForClient(HALS_Device *this, int a2, char a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1065353216;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK11HALS_Device32GetCombinedVolumeScalarForClientEjb_block_invoke;
  v6[3] = &unk_1E8678B60;
  v6[4] = &v9;
  v6[5] = this;
  v7 = a2;
  v8 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = v10[6];
  _Block_object_dispose(&v9, 8);
  return v4;
}

void sub_1DE700F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_Device::DoAnyQueuesHaveWorkAfterFlush(HALS_Device *this)
{
  v1 = atomic_load(this + 817);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = atomic_load(this + 1153);
  }

  return v2 & 1;
}

void HALS_Device::FlushAllQueues(HALS_Device *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 784));

  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1120));
}

void HALS_Device::HandleOwnedObjectPropertiesChanged(HALS_Device *this, const HALS_Object *a2, unsigned int a3, int a4, const AudioObjectPropertyAddress *a5, int a6)
{
  v54 = a6;
  v55 = a3;
  LODWORD(v7) = a4;
  memset(v64, 0, sizeof(v64));
  __p = 0;
  v62 = 0;
  v63 = 0;
  v10 = *(a2 + 5);
  IsSubClass = HALB_Info::IsSubClass(v10, 1633907820);
  v13 = *(a2 + 6);
  v57 = this;
  if (v10 == v13 || IsSubClass)
  {
    v14 = v10 != v13 || IsSubClass;
    if (v14 != 1)
    {
      goto LABEL_188;
    }
  }

  else if (!HALB_Info::IsSubClass(v13, 1633907820))
  {
LABEL_188:
    v56 = 0;
    goto LABEL_189;
  }

  v15 = *(a2 + 13);
  v53 = v7;
  if (v7)
  {
    v16 = *(a2 + 12);
    qmemcpy(v52, "srhturtpurhturtpbnsldpatmlovnscl", sizeof(v52));
    v56 = 1835295859;
    v17 = a5;
    for (i = v53; i; --i)
    {
      mSelector = v17->mSelector;
      ++v17;
      v19 = mSelector;
      if (mSelector <= 1818456931)
      {
        if (v19 <= 1668049770)
        {
          if (v19 != 1650685548)
          {
            if (v19 == 1651272546)
            {
              if (v10 == 1936028002)
              {
                LODWORD(v60) = 1936811108;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else if (v19 == 1651272548 && v10 == 1936028002)
            {
              LODWORD(v60) = 1936811109;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            continue;
          }

          if (v10 <= 1819504225)
          {
            if (v10 <= 1702259058)
            {
              switch(v10)
              {
                case 1650602615:
                  LODWORD(v60) = 1650602615;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1668049264:
                  LODWORD(v60) = 1668049264;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1684895092:
                  LODWORD(v60) = 1684895092;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
              }
            }

            else if (v10 > 1784767338)
            {
              if (v10 == 1784767339)
              {
                LODWORD(v60) = 1784767339;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1815241314)
              {
                LODWORD(v60) = 1815241314;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else if (v10 == 1702259059)
            {
              *&v60 = __PAIR64__(v16, HIDWORD(v52[2]));
              DWORD2(v60) = v15;
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            else if (v10 == 1718432370)
            {
              LODWORD(v60) = 1718432370;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            continue;
          }

          if (v10 > 1936682094)
          {
            if (v10 > 1952541793)
            {
              if (v10 == 1952541794)
              {
                LODWORD(v60) = 1952541794;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1999790690)
              {
                LODWORD(v60) = 1999790690;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              continue;
            }

            if (v10 != 1936682095)
            {
              if (v10 == 1937072749)
              {
                LODWORD(v60) = 1936553332;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              continue;
            }

            if (v16 == 1886679669)
            {
              *&v60 = v52[0];
            }

            else
            {
              LODWORD(v60) = 1936682095;
              DWORD1(v60) = v16;
            }

            goto LABEL_160;
          }

          if (v10 > 1885888877)
          {
            if (v10 == 1885888878)
            {
              LODWORD(v60) = 1885888878;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            else if (v10 == 1885893481)
            {
              LODWORD(v60) = 1885893481;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            continue;
          }

          if (v10 == 1819504226)
          {
            *&v60 = __PAIR64__(v16, v52[2]);
            DWORD2(v60) = v15;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
          }

          else if (v10 == 1836414053)
          {
            if (v16 == 1886679669)
            {
              *&v60 = v52[1];
            }

            else
            {
              LODWORD(v60) = 1836414053;
              DWORD1(v60) = v16;
            }

            goto LABEL_160;
          }
        }

        else if (v19 > 1818453106)
        {
          if (v19 == 1818453107)
          {
            switch(v10)
            {
              case 1936028007:
                LODWORD(v60) = 1936811878;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1937072758:
                LODWORD(v60) = 1935946358;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1986817381:
                if (v16 == 1886679669)
                {
                  *&v60 = 0x707472756D763273;
                }

                else
                {
                  LODWORD(v60) = 1684157046;
                  DWORD1(v60) = v16;
                }

                goto LABEL_160;
            }
          }

          else if (v19 == 1818453110)
          {
            switch(v10)
            {
              case 1936028007:
                LODWORD(v60) = 1936811876;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1937072758:
                LODWORD(v60) = 1937140836;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1986817381:
                if (v16 == 1886679669)
                {
                  *&v60 = 0x707472756D766462;
                }

                else
                {
                  LODWORD(v60) = 1987013732;
                  DWORD1(v60) = v16;
                }

                goto LABEL_160;
            }
          }
        }

        else
        {
          if (v19 == 1668049771)
          {
            if (v10 == 1668047723)
            {
              LODWORD(v60) = 1668506475;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            continue;
          }

          if (v19 == 1818453106)
          {
            switch(v10)
            {
              case 1936028007:
                LODWORD(v60) = 1936811890;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1937072758:
                LODWORD(v60) = 1937138723;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1986817381:
                if (v16 == 1886679669)
                {
                  *&v60 = 0x707472756D766423;
                }

                else
                {
                  LODWORD(v60) = 1986290211;
                  DWORD1(v60) = v16;
                }

                goto LABEL_160;
            }
          }
        }
      }

      else if (v19 > 1935893352)
      {
        if (v19 <= 1936745314)
        {
          if (v19 == 1935893353)
          {
            if (v10 <= 1685287522)
            {
              if (v10 == 1668047723)
              {
                LODWORD(v60) = 1668510307;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1684370292)
              {
                *&v60 = __PAIR64__(v16, v56);
                DWORD2(v60) = v15;
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else
            {
              switch(v10)
              {
                case 1852601964:
                  LODWORD(v60) = 1852601964;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1751740518:
                  LODWORD(v60) = 1751740518;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1685287523:
                  LODWORD(v60) = 1936945763;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
              }
            }
          }

          else if (v19 == 1935894894)
          {
            if (v10 <= 1685287522)
            {
              if (v10 == 1668047723)
              {
                *&v60 = __PAIR64__(v16, HIDWORD(v52[3]));
                DWORD2(v60) = v15;
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1684370292)
              {
                LODWORD(v60) = 1835295843;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else
            {
              switch(v10)
              {
                case 1852601964:
                  LODWORD(v60) = 1818455660;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1751740518:
                  LODWORD(v60) = 1751740524;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1685287523:
                  LODWORD(v60) = 1819501422;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
              }
            }
          }

          continue;
        }

        if (v19 != 1936745315)
        {
          if (v19 != 1936745334 || v10 != 1936744814)
          {
            continue;
          }

          if (v16 == 1886679669)
          {
            *&v60 = 0x707472756D73706ELL;
          }

          else
          {
            LODWORD(v60) = 1936744814;
            DWORD1(v60) = v16;
          }

          goto LABEL_160;
        }

        if (v10 == 1936744814)
        {
          if (v16 == 1886679669)
          {
            *&v60 = 0x707472756D737023;
          }

          else
          {
            LODWORD(v60) = 1936748067;
            DWORD1(v60) = v16;
          }

          goto LABEL_160;
        }
      }

      else if (v19 > 1818457189)
      {
        if (v19 != 1818457190)
        {
          if (v19 == 1935892841)
          {
            if (v10 <= 1685287522)
            {
              if (v10 == 1668047723)
              {
                LODWORD(v60) = 1668506403;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1684370292)
              {
                LODWORD(v60) = 1835295779;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else
            {
              switch(v10)
              {
                case 1852601964:
                  LODWORD(v60) = 1852601891;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1751740518:
                  LODWORD(v60) = 1751740451;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1685287523:
                  LODWORD(v60) = 1936941859;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
              }
            }
          }

          continue;
        }

        if (v10 == 1937072758)
        {
          LODWORD(v60) = 1937142886;
          *(&v60 + 4) = __PAIR64__(v15, v16);
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
        }

        else if (v10 == 1986817381)
        {
          if (v16 == 1886679669)
          {
            *&v60 = 0x707472756D767466;
          }

          else
          {
            LODWORD(v60) = 1986229350;
            DWORD1(v60) = v16;
          }

          goto LABEL_160;
        }
      }

      else if (v19 == 1818456932)
      {
        switch(v10)
        {
          case 1936028007:
            LODWORD(v60) = 1936811892;
            *(&v60 + 4) = __PAIR64__(v15, v16);
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
          case 1937072758:
            LODWORD(v60) = 1937125988;
            *(&v60 + 4) = __PAIR64__(v15, v16);
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
          case 1986817381:
            if (v16 == 1886679669)
            {
              *&v60 = 0x707472756D763264;
            }

            else
            {
              LODWORD(v60) = 1983013986;
              DWORD1(v60) = v16;
            }

            goto LABEL_160;
        }
      }

      else if (v19 == 1818456950)
      {
        switch(v10)
        {
          case 1936028007:
            LODWORD(v60) = 1936811891;
            *(&v60 + 4) = __PAIR64__(v15, v16);
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
          case 1937072758:
            LODWORD(v60) = 1937140845;
            *(&v60 + 4) = __PAIR64__(v15, v16);
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
          case 1986817381:
            if (v16 == 1886679669)
            {
              *&v60 = 0x707472756D767363;
            }

            else
            {
              *&v60 = __PAIR64__(v16, v52[3]);
            }

LABEL_160:
            DWORD2(v60) = v15;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
        }
      }
    }
  }

  TransportType = HALS_IODevice::GetTransportType(v57);
  v10 = *(a2 + 5);
  LODWORD(v13) = *(a2 + 6);
  LODWORD(v7) = v53;
  if (TransportType != 1651274862)
  {
    goto LABEL_188;
  }

  v22 = v10 == v13;
  v23 = v10 == 1685287523;
  if (v10 == 1685287523)
  {
    v22 = 1;
  }

  if (v10 != v13)
  {
    v23 = 1;
  }

  v24 = v22 ? v23 : v13 == 1685287523;
  if (v24 != 1 || v15 != 0)
  {
    goto LABEL_188;
  }

  v26 = a5;
  if (v53)
  {
    v27 = 12 * v53;
    v26 = a5;
    while (v26->mSelector != 1935893353)
    {
      ++v26;
      v27 -= 12;
      if (!v27)
      {
        goto LABEL_188;
      }
    }
  }

  if (v26 == &a5[v53])
  {
    goto LABEL_188;
  }

  HALS_Device::UpdateDeviceArrivalTime(v57);
  v28 = *(v57 + 4);
  v29 = v62;
  if (v62 >= v63)
  {
    v45 = __p;
    v46 = v62 - __p;
    v47 = (v62 - __p) >> 2;
    v48 = v47 + 1;
    if ((v47 + 1) >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v49 = v63 - __p;
    if ((v63 - __p) >> 1 > v48)
    {
      v48 = v49 >> 1;
    }

    if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v50 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v48;
    }

    if (v50)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v50);
    }

    v51 = (4 * v47);
    *v51 = v28;
    v7 = (v51 + 1);
    memcpy(0, v45, v46);
    __p = 0;
    v63 = 0;
    if (v45)
    {
      operator delete(v45);
    }
  }

  else
  {
    *v62 = v28;
    v7 = v29 + 4;
  }

  v62 = v7;
  v56 = 1;
  v10 = *(a2 + 5);
  LODWORD(v13) = *(a2 + 6);
  LODWORD(v7) = v53;
LABEL_189:
  if (v10 == v13 || v10 == 1634956402)
  {
    if (v10 != 1634956402 && v10 == v13)
    {
      goto LABEL_214;
    }
  }

  else if (v13 != 1634956402)
  {
    goto LABEL_214;
  }

  v30 = *(a2 + 4);
  *&v60 = 0x676C6F627363686ELL;
  DWORD2(v60) = 0;
  v65[0] = 0;
  (*(*a2 + 120))(a2, v30, &v60, 4, v65, v65 + 4, 0, 0, 0);
  v31 = HIDWORD(v65[0]);
  v32 = *(a2 + 4);
  *&v60 = 0x676C6F6273646972;
  DWORD2(v60) = 0;
  v65[0] = 0;
  (*(*a2 + 120))(a2, v32, &v60, 4, v65, v65 + 4, 0, 0, 0);
  if (HIDWORD(v65[0]))
  {
    v34 = 1768845428;
  }

  else
  {
    v34 = 1869968496;
  }

  if (v7)
  {
    v7 = v7;
    do
    {
      v36 = a5->mSelector;
      ++a5;
      v35 = v36;
      if (v36 > 1936092512)
      {
        if (v35 == 1936092513)
        {
          LODWORD(v60) = 1936092513;
          *(&v60 + 4) = __PAIR64__(v31, v34);
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
          LODWORD(v60) = 1936092451;
          *(&v60 + 4) = __PAIR64__(v31, v34);
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v39);
          if (v31 == 1)
          {
            LODWORD(v60) = 1936092513;
            *(&v60 + 4) = v34;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
            LODWORD(v60) = 1936092451;
            *(&v60 + 4) = v34;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v40);
          }
        }

        else if (v35 == 1936092532)
        {
          LODWORD(v60) = 1936092532;
          *(&v60 + 4) = __PAIR64__(v31, v34);
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
          if (v31 == 1)
          {
            LODWORD(v60) = 1936092532;
            *(&v60 + 4) = v34;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
          }
        }
      }

      else if (v35 == 1885762592)
      {
        LODWORD(v60) = 1885762592;
        *(&v60 + 4) = __PAIR64__(v31, v34);
        CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
        if (v31 == 1)
        {
          LODWORD(v60) = 1885762592;
          *(&v60 + 4) = v34;
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
        }
      }

      else if (v35 == 1885762657)
      {
        LODWORD(v60) = 1885762657;
        *(&v60 + 4) = __PAIR64__(v31, v34);
        CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
        LODWORD(v60) = 1885762595;
        *(&v60 + 4) = __PAIR64__(v31, v34);
        CAPropertyAddressList::AppendUniqueItem(v64, &v60, v37);
        if (v31 == 1)
        {
          LODWORD(v60) = 1885762657;
          *(&v60 + 4) = v34;
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
          LODWORD(v60) = 1885762595;
          *(&v60 + 4) = v34;
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v38);
        }
      }

      --v7;
    }

    while (v7);
  }

LABEL_214:
  v41 = *&v64[0];
  if (*&v64[0] != *(&v64[0] + 1))
  {
    v42 = *(v57 + 4);
    v43 = -1431655765 * ((*(&v64[0] + 1) - *&v64[0]) >> 2);
    if (v54)
    {
      HALS_Object::PropertiesChanged_Sync(v57, v42, v55, v43, *&v64[0]);
    }

    else
    {
      HALS_Object::PropertiesChanged(v57, v42, v55, v43, *&v64[0]);
    }
  }

  v44 = __p;
  if (v56)
  {
    if (__p == v62)
    {
      v59[0] = 0;
      v59[1] = 0;
      HALS_System::GetInstance(&v60, 0, v59);
      HALS_System::CheckForDefaultDeviceChanges(v60);
    }

    else
    {
      v58[0] = 0;
      v58[1] = 0;
      HALS_System::GetInstance(&v60, 0, v58);
      HALS_System::CheckForDefaultDeviceChanges(v60, &__p);
    }

    if (*(&v60 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60 + 1));
    }
  }

  if (v44)
  {
    operator delete(v44);
  }

  if (v41)
  {
    operator delete(v41);
  }
}

void sub_1DE7023A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Device::UpdateDeviceArrivalTime(HALS_Device *this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (HALS_IODevice::GetTransportType(this) == 1651274862)
  {
    v2 = (*(*this + 648))(this, 1685287523, 1869968496, 0);
    if (v2 || (v2 = (*(*this + 648))(this, 1685287523, 1768845428, 0), pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize), v2))
    {
      v4 = v2[4];
      v19 = 0x676C6F6273636369;
      LODWORD(v20) = 0;
      v17 = 0;
      LODWORD(v15) = 0;
      (*(*v2 + 120))(v2, v4, &v19, 4, &v15, &v17, 0, 0, 0);
      v5 = v17;
    }

    else
    {
      v5 = 0;
    }

    HALS_ObjectMap::ReleaseObject(v2, v3);
    if (v5 == 1769173099 || v5 == 1768778083)
    {
      goto LABEL_8;
    }
  }

  IsHidden = HALS_Device::IsHidden(this);
  if (IsHidden)
  {
LABEL_8:
    *(this + 53) = 0;
    *(this + 54) = 0;
  }

  else
  {
    *(this + 53) = HALS_System::GetCurrentDeviceArrivalTime(IsHidden);
    *(this + 54) = v7;
  }

  OS::CF::MutableDictionary::MutableDictionary(&v17);
  v14[0] = 0;
  v14[1] = 0;
  HALS_System::GetInstance(&v19, 0, v14);
  Setting = HALS_SettingsManager::ReadSetting(*(v19 + 1776), *(this + 15));
  v15 = &unk_1F5991008;
  theDict = Setting;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (theDict)
  {
    OS::CF::MutableDictionary::operator=(&v17, theDict);
  }

  OS::CF::Number::Number<unsigned long long>(&v11, *(this + 53));
  v19 = @"seed";
  v20 = v12;
  OS::CF::Number::Number<unsigned long long>(v10, *(this + 54));
  v21 = @"time";
  v22 = v10[1];
  OS::CF::Dictionary::Dictionary(v13, &v19, 2uLL);
  OS::CF::UntypedObject::~UntypedObject(v10);
  OS::CF::UntypedObject::~UntypedObject(&v11);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Dictionary>(v18, @"global.arrival", v13[1]);
  v11 = 0;
  v12 = 0;
  HALS_System::GetInstance(&v19, 0, &v11);
  HALS_SettingsManager::WriteSetting(*(v19 + 1776), *(this + 15), v18);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  OS::CF::UntypedObject::~UntypedObject(v13);
  OS::CF::UntypedObject::~UntypedObject(&v15);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  v9 = *MEMORY[0x1E69E9840];
}

void HALS_Device::SetPropertyData(HALS_Device *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, unsigned int a4, float *a5, unsigned int a6, _DWORD *a7, AudioObjectPropertyAddress *a8)
{
  v8 = a8;
  v396 = *MEMORY[0x1E69E9840];
  v383 = a4;
  v382 = a5;
  v381 = a6;
  v380 = a7;
  v379 = a8;
  v378[0] = this;
  v378[1] = &v379;
  v378[2] = a3;
  v378[3] = &v383;
  v378[4] = &v382;
  v378[5] = &v381;
  v378[6] = &v380;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, a2))
  {
    v12 = atomic_load(this + 40);
    if (v8)
    {
      mSelector = v8[20].mSelector;
    }

    else
    {
      mSelector = getpid();
    }

    if (v12 != -1 && v12 != mSelector)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4536;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: the given process does not own hog mode", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560492391;
    }

    v8 = v379;
  }

  v14 = (*(*this + 184))(this, a3, v8);
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4537;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: the given process is just plain not allowed", buf, 0x12u);
    }

    v286 = __cxa_allocate_exception(0x10uLL);
    *v286 = off_1F5991DD8;
    v286[2] = 560492391;
  }

  v15 = a3->mSelector;
  if (a3->mSelector > 1751413615)
  {
    if (v15 <= 1934647618)
    {
      if (v15 <= 1852793962)
      {
        if (v15 == 1751413616)
        {
          if (v383 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4862;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyDSPDescription", buf, 0x12u);
            }

            v294 = __cxa_allocate_exception(0x10uLL);
            *v294 = off_1F5991DD8;
            v294[2] = 561211770;
          }

          if (!v382)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4863;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: null CFStringRef specificed for kAudioDevicePropertyDSPDescription", buf, 0x12u);
            }

            v299 = __cxa_allocate_exception(0x10uLL);
            *v299 = off_1F5991DD8;
            v299[2] = 2003329396;
          }

          *theDict = 0;
          *&theDict[8] = theDict;
          *&theDict[16] = 0x2000000000;
          LOBYTE(v385) = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3002000000;
          *&buf[24] = __Block_byref_object_copy__227;
          *&buf[32] = __Block_byref_object_dispose__228;
          *&buf[40] = 0;
          v345[0] = MEMORY[0x1E69E9820];
          v345[1] = 0x40000000;
          v345[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_229;
          v345[3] = &unk_1E8679118;
          v345[5] = this;
          v345[4] = buf;
          v54 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v54, v345);
          v56 = *(*&buf[8] + 40);
          if (v56)
          {
            memset(v394, 0, sizeof(v394));
            (*(*v56 + 224))(v56, v394);
            v344[0] = MEMORY[0x1E69E9820];
            v344[1] = 0x40000000;
            v344[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_2_231;
            v344[3] = &unk_1E8679140;
            v344[5] = this;
            v344[4] = theDict;
            v344[6] = v382;
            v344[7] = a3;
            v57 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v57, v344);
            (*(**(*&buf[8] + 40) + 232))(*(*&buf[8] + 40), v394);
            v56 = *&v394[0].mSelector;
            if (*&v394[0].mSelector)
            {
              *&v394[0].mElement = *&v394[0].mSelector;
              operator delete(*&v394[0].mSelector);
            }
          }

          if (AMCP::Feature_Flags::run_hybrid_hal(v56, v55))
          {
            v343[0] = MEMORY[0x1E69E9820];
            v343[1] = 0x40000000;
            v343[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_3;
            v343[3] = &unk_1E8679168;
            v343[5] = this;
            v343[4] = theDict;
            v343[6] = v382;
            v343[7] = a3;
            v58 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v58, v343);
          }

          if (*(*&theDict[8] + 24) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v394[0].mSelector = 136315394;
              *&v394[0].mScope = "HALS_Device.cpp";
              LOWORD(v394[1].mSelector) = 1024;
              *(&v394[1].mSelector + 2) = 4889;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Could not set given DSP description.", v394, 0x12u);
            }

            v306 = __cxa_allocate_exception(0x10uLL);
            *v306 = off_1F5991DD8;
            v306[2] = 1852797029;
          }

          v59 = *(this + 4);
          if (v379)
          {
            mScope = v379[1].mScope;
          }

          else
          {
            mScope = 0;
          }

          v140 = a3->mScope;
          v394[0].mSelector = 1751413616;
          *&v394[0].mScope = v140;
          HALS_Object::PropertiesChanged(this, v59, mScope, 1, v394);
          _Block_object_dispose(buf, 8);
          HALS_ObjectMap::ReleaseObject(*&buf[40], v141);
          goto LABEL_304;
        }

        if (v15 == 1818454126)
        {
          if (v383 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4546;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioObjectPropertyElementName", buf, 0x12u);
            }

            v292 = __cxa_allocate_exception(0x10uLL);
            *v292 = off_1F5991DD8;
            v292[2] = 561211770;
          }

          v377[0] = MEMORY[0x1E69E9820];
          v377[1] = 0x40000000;
          v377[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
          v377[3] = &__block_descriptor_tmp_209;
          v377[4] = this;
          v377[5] = a3;
          v377[6] = v382;
          v35 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v35, v377);
          v36 = *(this + 4);
          if (v379)
          {
            v37 = v379[1].mScope;
          }

          else
          {
            v37 = 0;
          }

          *buf = 1818454126;
          *&buf[4] = *&a3->mScope;
          HALS_Object::PropertiesChanged(this, v36, v37, 1, buf);
          goto LABEL_298;
        }
      }

      else
      {
        switch(v15)
        {
          case 1852793963:
            if (v383 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4828;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessDuckOptOut", buf, 0x12u);
              }

              v297 = __cxa_allocate_exception(0x10uLL);
              *v297 = off_1F5991DD8;
              v297[2] = 561211770;
            }

            v71 = HALS_Device::CopyIOEngineReplacerOwningDevice(this);
            v72 = v71;
            if (v71)
            {
              v73 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v73 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v71);
              }

              v75 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v74 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v74)
              {
                atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                v76 = *v75;
                std::__shared_weak_count::__release_shared[abi:ne200100](v74);
              }

              else
              {
                v76 = *v75;
              }

              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                v147 = (*(*v72 + 224))(v72);
                *buf = 136315906;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4833;
                *&buf[18] = 2082;
                *&buf[20] = this + 164;
                *&buf[28] = 2082;
                *&buf[30] = v147;
                _os_log_impl(&dword_1DE1F9000, v76, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Device '%{public}s' has a engine replacer '%{public}s', forwarding volume ducking command", buf, 0x26u);
              }

              (*(*v72 + 128))(v72, v72[4], a3, v383, v382, v381, v380, v379);
            }

            v148 = *v382 != 0;
            v348[0] = MEMORY[0x1E69E9820];
            v348[1] = 0x40000000;
            v348[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_223;
            v348[3] = &__block_descriptor_tmp_224;
            v348[4] = this;
            v348[5] = v379;
            v349 = v148;
            v149 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v149, v348);
            HALS_ObjectMap::ReleaseObject(v72, v150);
            goto LABEL_298;
          case 1853059700:
            if (v383 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4611;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
              }

              v98 = __cxa_allocate_exception(0x10uLL);
              *v98 = off_1F5991DD8;
              v98[2] = 561211770;
            }

            goto LABEL_298;
          case 1869180523:
            if (v383 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4561;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyHogMode", buf, 0x12u);
              }

              v289 = __cxa_allocate_exception(0x10uLL);
              *v289 = off_1F5991DD8;
              v289[2] = 561211770;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2000000000;
            v19 = v379;
            if (v379)
            {
              v20 = v379[20].mSelector;
            }

            else
            {
              v20 = getpid();
              v19 = v379;
            }

            *&buf[24] = v20;
            *theDict = 0;
            *&theDict[8] = theDict;
            *&theDict[16] = 0x2000000000;
            LODWORD(v385) = 0;
            *&v394[0].mSelector = 0;
            *&v394[0].mElement = v394;
            *&v394[1].mScope = 0x2000000000;
            LOBYTE(v395) = 0;
            v376[0] = MEMORY[0x1E69E9820];
            v376[1] = 0x40000000;
            v376[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_210;
            v376[3] = &unk_1E8678FC0;
            v376[8] = v19;
            v376[4] = buf;
            v376[5] = v394;
            v376[7] = this;
            v376[6] = theDict;
            v130 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v130, v376);
            if (*(*&theDict[8] + 24))
            {
              v302 = __cxa_allocate_exception(0x10uLL);
              v303 = *(*&theDict[8] + 24);
              *v302 = off_1F5991DD8;
              v302[2] = v303;
            }

            if (*(*&v394[0].mElement + 24) == 1)
            {
              v131 = (*(*this + 408))(this);
              v133 = v131;
              if (v131)
              {
                v131 = (*(*v131 + 304))(v131, *(*&buf[8] + 24));
              }

              if (AMCP::Feature_Flags::run_hybrid_hal(v131, v132))
              {
                v375[1] = 0;
                v375[0] = 0;
                HALS_System::GetInstance(&v392, 0, v375);
                HALS_IOContext_Manager::hog_mode_owner_changed(*(v392 + 1744), this, *(*&buf[8] + 24));
                if (v393[0])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v393[0]);
                }
              }

              v374[1] = 0;
              v374[0] = 0;
              HALS_System::GetInstance(&v392, 0, v374);
              HALS_System::CheckForDefaultDeviceChanges(v392);
              if (v393[0])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v393[0]);
              }

              v134 = *(this + 4);
              if (v379)
              {
                v135 = v379[1].mScope;
              }

              else
              {
                v135 = 0;
              }

              v392 = 0x676C6F626F696E6BLL;
              LODWORD(v393[0]) = 0;
              HALS_Object::PropertiesChanged(this, v134, v135, 1, &v392);
              HALS_ObjectMap::ReleaseObject(v133, v161);
            }

            *v382 = *(*&buf[8] + 24);
            _Block_object_dispose(v394, 8);
LABEL_271:
            _Block_object_dispose(theDict, 8);
LABEL_296:
            v164 = buf;
LABEL_297:
            _Block_object_dispose(v164, 8);
            goto LABEL_298;
        }
      }

LABEL_606:
      if (HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v378))
      {
        AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
      }

      HALS_Object::SetPropertyData(this, a2, a3, v308, v309, v310, v311, v379);
    }

    if (v15 <= 1936879203)
    {
      if (v15 == 1934647619)
      {
        v64 = HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v378);
        if (v64)
        {
          v64 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        if (a3->mScope == 1768845428)
        {
          v174 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v174 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v64);
          }

          v176 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v175 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v175)
          {
            atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
            v177 = *v176;
            std::__shared_weak_count::__release_shared[abi:ne200100](v175);
          }

          else
          {
            v177 = *v176;
          }

          if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5060;
            *&buf[18] = 2080;
            *&buf[20] = "isInput == true";
            _os_log_error_impl(&dword_1DE1F9000, v177, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: only valid for output scope kAudioDevicePropertySpatializationVirtualChannelLayout", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5060;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        v65 = v382;
        if (!v382)
        {
          v194 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v194 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v64);
          }

          v196 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v195 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v195)
          {
            atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
            v197 = *v196;
            std::__shared_weak_count::__release_shared[abi:ne200100](v195);
          }

          else
          {
            v197 = *v196;
          }

          if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5062;
            *&buf[18] = 2080;
            *&buf[20] = "inData == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v197, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertySpatializationVirtualChannelLayout", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5062;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        v66 = v383;
        v67 = caulk::numeric::exceptional_mul<unsigned int>(*(v382 + 2));
        v68 = caulk::numeric::exceptional_add<unsigned int>(v67);
        if (v66 < v68)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5064;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: kAudioDevicePropertySpatializationVirtualChannelLayout: the provided size is smaller than what is specified in the data", buf, 0x12u);
          }

          v307 = __cxa_allocate_exception(0x10uLL);
          *v307 = off_1F5991DD8;
          v307[2] = 561211770;
        }

        if (!v379)
        {
          v230 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v230 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v68);
          }

          v232 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v231 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v231)
          {
            atomic_fetch_add_explicit(&v231->__shared_owners_, 1uLL, memory_order_relaxed);
            v233 = *v232;
            std::__shared_weak_count::__release_shared[abi:ne200100](v231);
          }

          else
          {
            v233 = *v232;
          }

          if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5066;
            *&buf[18] = 2080;
            *&buf[20] = "inClient == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v233, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertySpatializationVirtualChannelLayout", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5066;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZN11HALS_Device35SetDSPVirtualChannelLayoutForClientEbP11HALS_ClientPK18AudioChannelLayout_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_303;
        v391 = 0;
        *&buf[32] = this;
        *&buf[40] = v379;
        v390 = v65;
        v69 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v69, buf);
        goto LABEL_298;
      }

      if (v15 == 1934647636)
      {
        v46 = HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v378);
        if (v46)
        {
          v46 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        v47 = a3->mScope == 1768845428;
        if (a3->mScope == 1768845428)
        {
          v170 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v170 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v172 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v171 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v171)
          {
            atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
            v173 = *v172;
            std::__shared_weak_count::__release_shared[abi:ne200100](v171);
          }

          else
          {
            v173 = *v172;
          }

          if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5019;
            *&buf[18] = 2080;
            *&buf[20] = "isInput == true";
            _os_log_error_impl(&dword_1DE1F9000, v173, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: only valid for output scope kAudioDevicePropertySpatializationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5019;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        if (!v382)
        {
          v190 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v190 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v192 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v191 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v191)
          {
            atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
            v193 = *v192;
            std::__shared_weak_count::__release_shared[abi:ne200100](v191);
          }

          else
          {
            v193 = *v192;
          }

          if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5020;
            *&buf[18] = 2080;
            *&buf[20] = "inData == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v193, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertySpatializationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5020;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        if (v383 != 4)
        {
          v214 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v214 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v216 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v215 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v215)
          {
            atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
            v217 = *v216;
            std::__shared_weak_count::__release_shared[abi:ne200100](v215);
          }

          else
          {
            v217 = *v216;
          }

          if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5021;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize != sizeof(UInt32)";
            _os_log_error_impl(&dword_1DE1F9000, v217, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertySpatializationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5021;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        v48 = *v382;
        if (*v382 >= 3u)
        {
          v234 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v234 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v236 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v235 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v235)
          {
            atomic_fetch_add_explicit(&v235->__shared_owners_, 1uLL, memory_order_relaxed);
            v237 = *v236;
            std::__shared_weak_count::__release_shared[abi:ne200100](v235);
          }

          else
          {
            v237 = *v236;
          }

          if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5024;
            *&buf[18] = 2080;
            *&buf[20] = "dataValue > kAudioDevicePropertySpatializationTypeSpatialize";
            _os_log_error_impl(&dword_1DE1F9000, v237, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData inData is an invalid value for kAudioDevicePropertySpatializationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5024;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        buf[24] = 0;
        v326[0] = MEMORY[0x1E69E9820];
        v326[1] = 0x40000000;
        v326[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_244;
        v326[3] = &unk_1E8679208;
        v327 = v48;
        v326[4] = buf;
        v326[5] = this;
        v328 = v47;
        v326[6] = v379;
        v49 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v49, v326);
        if (*(*&buf[8] + 24) == 1)
        {
          v50 = *(this + 4);
          if (v379)
          {
            v51 = v379[1].mScope;
          }

          else
          {
            v51 = 0;
          }

          strcpy(theDict, "TaPsptuo");
          theDict[9] = 0;
          *&theDict[10] = 0;
          HALS_Object::PropertiesChanged(this, v50, v51, 1, theDict);
        }

        goto LABEL_296;
      }

      goto LABEL_606;
    }

    if (v15 != 1936879204)
    {
      if (v15 == 1983996971)
      {
        v103 = HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v378);
        if (v103)
        {
          v103 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        v104 = a3->mScope == 1768845428;
        if (a3->mScope != 1768845428)
        {
          v182 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v182 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v184 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v183 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v183)
          {
            atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
            v185 = *v184;
            std::__shared_weak_count::__release_shared[abi:ne200100](v183);
          }

          else
          {
            v185 = *v184;
          }

          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5081;
            *&buf[18] = 2080;
            *&buf[20] = "isInput == false";
            _os_log_error_impl(&dword_1DE1F9000, v185, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: only valid for input scope kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5081;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        if (!v382)
        {
          v206 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v206 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v208 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v207 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v207)
          {
            atomic_fetch_add_explicit(&v207->__shared_owners_, 1uLL, memory_order_relaxed);
            v209 = *v208;
            std::__shared_weak_count::__release_shared[abi:ne200100](v207);
          }

          else
          {
            v209 = *v208;
          }

          if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5082;
            *&buf[18] = 2080;
            *&buf[20] = "inData == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v209, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5082;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        if (v383 != 4)
        {
          v222 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v222 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v224 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v223 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v223)
          {
            atomic_fetch_add_explicit(&v223->__shared_owners_, 1uLL, memory_order_relaxed);
            v225 = *v224;
            std::__shared_weak_count::__release_shared[abi:ne200100](v223);
          }

          else
          {
            v225 = *v224;
          }

          if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5083;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize != sizeof(UInt32)";
            _os_log_error_impl(&dword_1DE1F9000, v225, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5083;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        if (!v379)
        {
          v242 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v242 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v244 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v243 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v243)
          {
            atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
            v245 = *v244;
            std::__shared_weak_count::__release_shared[abi:ne200100](v243);
          }

          else
          {
            v245 = *v244;
          }

          if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5084;
            *&buf[18] = 2080;
            *&buf[20] = "inClient == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v245, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5084;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        v105 = atomic_load(&v379[22].mScope);
        if ((v105 & 1) == 0)
        {
          v254 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v254 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v256 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v255 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v255)
          {
            atomic_fetch_add_explicit(&v255->__shared_owners_, 1uLL, memory_order_relaxed);
            v257 = *v256;
            std::__shared_weak_count::__release_shared[abi:ne200100](v255);
          }

          else
          {
            v257 = *v256;
          }

          if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5085;
            *&buf[18] = 2080;
            *&buf[20] = "!inClient->SandboxAllowsMicAccess()";
            _os_log_error_impl(&dword_1DE1F9000, v257, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient does not have permission to set kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 560492391;
          *&theDict[8] = 560492391;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5085;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        v106 = *v382;
        if (*v382 >= 2u)
        {
          v266 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v266 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v268 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v267 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v267)
          {
            atomic_fetch_add_explicit(&v267->__shared_owners_, 1uLL, memory_order_relaxed);
            v269 = *v268;
            std::__shared_weak_count::__release_shared[abi:ne200100](v267);
          }

          else
          {
            v269 = *v268;
          }

          if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5088;
            *&buf[18] = 2080;
            *&buf[20] = "dataValue > 1";
            _os_log_error_impl(&dword_1DE1F9000, v269, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData inData is an invalid value for kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 5088;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        buf[24] = 0;
        v323[0] = MEMORY[0x1E69E9820];
        v323[1] = 0x40000000;
        v323[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_247;
        v323[3] = &unk_1E8679230;
        v324 = v106;
        v323[4] = buf;
        v323[5] = this;
        v325 = v104;
        v323[6] = v379;
        v107 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v107, v323);
        if (*(*&buf[8] + 24) == 1)
        {
          v108 = *(this + 4);
          if (v379)
          {
            v109 = v379[1].mScope;
          }

          else
          {
            v109 = 0;
          }

          strcpy(theDict, "+dAvtpni");
          theDict[9] = 0;
          *&theDict[10] = 0;
          HALS_Object::PropertiesChanged(this, v108, v109, 1, theDict);
        }

        goto LABEL_296;
      }

      if (v15 == 1986622324)
      {
        if (HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v378))
        {
          AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(this, 1);
        if (!NumberStreamsExcludingReferenceStreams)
        {
          v186 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v186 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v188 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v187 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v187)
          {
            atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
            v189 = *v188;
            std::__shared_weak_count::__release_shared[abi:ne200100](v187);
          }

          else
          {
            v189 = *v188;
          }

          if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4974;
            *&buf[18] = 2080;
            *&buf[20] = "hasNonReferenceInputStream == false";
            _os_log_error_impl(&dword_1DE1F9000, v189, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: Device does not have non-reference input streams kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 4974;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        v28 = a3->mScope == 1768845428;
        if (a3->mScope != 1768845428)
        {
          v210 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v210 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v212 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v211 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v211)
          {
            atomic_fetch_add_explicit(&v211->__shared_owners_, 1uLL, memory_order_relaxed);
            v213 = *v212;
            std::__shared_weak_count::__release_shared[abi:ne200100](v211);
          }

          else
          {
            v213 = *v212;
          }

          if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4976;
            *&buf[18] = 2080;
            *&buf[20] = "isInput == false";
            _os_log_error_impl(&dword_1DE1F9000, v213, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: only valid for input scope kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 4976;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        if (!v382)
        {
          v226 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v226 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v228 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v227 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v227)
          {
            atomic_fetch_add_explicit(&v227->__shared_owners_, 1uLL, memory_order_relaxed);
            v229 = *v228;
            std::__shared_weak_count::__release_shared[abi:ne200100](v227);
          }

          else
          {
            v229 = *v228;
          }

          if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4977;
            *&buf[18] = 2080;
            *&buf[20] = "inData == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v229, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 4977;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        if (v383 != 4)
        {
          v246 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v246 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v248 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v247 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v247)
          {
            atomic_fetch_add_explicit(&v247->__shared_owners_, 1uLL, memory_order_relaxed);
            v249 = *v248;
            std::__shared_weak_count::__release_shared[abi:ne200100](v247);
          }

          else
          {
            v249 = *v248;
          }

          if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4978;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize != sizeof(UInt32)";
            _os_log_error_impl(&dword_1DE1F9000, v249, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 4978;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        if (!v379)
        {
          v258 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v258 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v260 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v259 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v259)
          {
            atomic_fetch_add_explicit(&v259->__shared_owners_, 1uLL, memory_order_relaxed);
            v261 = *v260;
            std::__shared_weak_count::__release_shared[abi:ne200100](v259);
          }

          else
          {
            v261 = *v260;
          }

          if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4979;
            *&buf[18] = 2080;
            *&buf[20] = "inClient == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v261, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 4979;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        v29 = atomic_load(&v379[22].mScope);
        if ((v29 & 1) == 0)
        {
          v270 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v270 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v272 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v271 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v271)
          {
            atomic_fetch_add_explicit(&v271->__shared_owners_, 1uLL, memory_order_relaxed);
            v273 = *v272;
            std::__shared_weak_count::__release_shared[abi:ne200100](v271);
          }

          else
          {
            v273 = *v272;
          }

          if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4980;
            *&buf[18] = 2080;
            *&buf[20] = "!inClient->SandboxAllowsMicAccess()";
            _os_log_error_impl(&dword_1DE1F9000, v273, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::GetPropertyData: inClient does not have permission to set kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 560492391;
          *&theDict[8] = 560492391;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 4980;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        v30 = *v382;
        if (*v382 >= 3u)
        {
          v278 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v278 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v280 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v279 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v279)
          {
            atomic_fetch_add_explicit(&v279->__shared_owners_, 1uLL, memory_order_relaxed);
            v281 = *v280;
            std::__shared_weak_count::__release_shared[abi:ne200100](v279);
          }

          else
          {
            v281 = *v280;
          }

          if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4983;
            *&buf[18] = 2080;
            *&buf[20] = "dataValue > kAudioDevicePropertyVocalIsolationTypeBasic";
            _os_log_error_impl(&dword_1DE1F9000, v281, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData inData is an invalid value for kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
          __cxa_allocate_exception(0x40uLL);
          v332 = off_1F5991DD8;
          v333 = 1852797029;
          *&theDict[8] = 1852797029;
          v387 = 0;
          v385 = 0;
          v386 = 0;
          v388 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v390) = 4983;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        buf[24] = 0;
        v329[0] = MEMORY[0x1E69E9820];
        v329[1] = 0x40000000;
        v329[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_241;
        v329[3] = &unk_1E86791E0;
        v330 = v30;
        v329[4] = buf;
        v329[5] = this;
        v331 = v28;
        v329[6] = v379;
        v31 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v31, v329);
        if (*(*&buf[8] + 24) == 1)
        {
          v32 = *(this + 4);
          if (v379)
          {
            v33 = v379[1].mScope;
          }

          else
          {
            v33 = 0;
          }

          strcpy(theDict, "tsivtpni");
          theDict[9] = 0;
          *&theDict[10] = 0;
          HALS_Object::PropertiesChanged(this, v32, v33, 1, theDict);
        }

        goto LABEL_296;
      }

      goto LABEL_606;
    }

    TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, a3->mScope == 1768845428, v379);
    v83 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
    v84 = caulk::numeric::exceptional_add<unsigned int>(v83);
    v85 = v383;
    if (v383 < v84)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4655;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyPreferredChannelLayout", buf, 0x12u);
      }

      v301 = __cxa_allocate_exception(0x10uLL);
      *v301 = off_1F5991DD8;
      v301[2] = 561211770;
    }

    v86 = v382;
    v87 = caulk::numeric::exceptional_mul<unsigned int>(*(v382 + 2));
    if (v85 < caulk::numeric::exceptional_add<unsigned int>(v87))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4659;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: kAudioDevicePropertyPreferredChannelLayout: the provided size is smaller than what is specified in the data", buf, 0x12u);
      }

      v305 = __cxa_allocate_exception(0x10uLL);
      *v305 = off_1F5991DD8;
      v305[2] = 561211770;
    }

    v370[1] = 0;
    v370[0] = 0;
    HALS_System::GetInstance(theDict, 0, v370);
    *buf = HALS_SettingsManager::ReadSetting(*(*theDict + 1776), *(this + 15));
    *&buf[8] = 1;
    if (*&theDict[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&theDict[8]);
    }

    *theDict = 0;
    *&theDict[8] = 257;
    if (*buf)
    {
      CACFDictionary::SetCFMutableDictionaryFromCopy(theDict, *buf);
    }

    else
    {
      CACFDictionary::SetCFMutableDictionaryToEmpty(theDict);
    }

    *&v394[0].mSelector = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    LOWORD(v394[0].mElement) = 257;
    HALS_Device::ConstructDictionaryFromLayout(v86, v394, v136);
    v137 = a3->mScope;
    if (v137 == 1869968496)
    {
      if (theDict[9] == 1 && *&v394[0].mSelector && *theDict)
      {
        CFDictionarySetValue(*theDict, @"output.surround", *&v394[0].mSelector);
      }

      v368[1] = 0;
      v368[0] = 0;
      HALS_System::GetInstance(&v392, 0, v368);
      HALS_SettingsManager::WriteSetting(*(v392 + 1776), *(this + 15), *theDict);
      if (v393[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393[0]);
      }

      v145 = *(this + 4);
      if (v379)
      {
        v146 = v379[1].mScope;
      }

      else
      {
        v146 = 0;
      }

      v392 = 0x6F75747073726E64;
      LODWORD(v393[0]) = 0;
      HALS_Object::PropertiesChanged(this, v145, v146, 1, &v392);
    }

    else if (v137 == 1768845428)
    {
      if (theDict[9] == 1 && *&v394[0].mSelector && *theDict)
      {
        CFDictionarySetValue(*theDict, @"input.surround", *&v394[0].mSelector);
      }

      v369[1] = 0;
      v369[0] = 0;
      HALS_System::GetInstance(&v392, 0, v369);
      HALS_SettingsManager::WriteSetting(*(v392 + 1776), *(this + 15), *theDict);
      if (v393[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393[0]);
      }

      v138 = *(this + 4);
      if (v379)
      {
        v139 = v379[1].mScope;
      }

      else
      {
        v139 = 0;
      }

      v392 = 0x696E707473726E64;
      LODWORD(v393[0]) = 0;
      HALS_Object::PropertiesChanged(this, v138, v139, 1, &v392);
    }

    CACFDictionary::~CACFDictionary(v394);
LABEL_293:
    CACFDictionary::~CACFDictionary(theDict);
    CACFDictionary::~CACFDictionary(buf);
    goto LABEL_298;
  }

  if (v15 > 1684236337)
  {
    if (v15 > 1684500593)
    {
      switch(v15)
      {
        case 1684500594:
          if (!v380)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4942;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: inQualifierData is nullptr for kAudioDevicePropertyDSPGraphProperty", buf, 0x12u);
            }

            v298 = __cxa_allocate_exception(0x10uLL);
            *v298 = off_1F5991DD8;
            v298[2] = 1852797029;
          }

          if (v381 != 4)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4944;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: incorrect inQualifierDataSize for kAudioDevicePropertyDSPGraphProperty", buf, 0x12u);
            }

            v300 = __cxa_allocate_exception(0x10uLL);
            *v300 = off_1F5991DD8;
            v300[2] = 1852797029;
          }

          v77 = a3->mScope;
          if (v77 != 1768845428 && v77 != 1869968496)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4946;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: incorrect inAddress.mScope for kAudioDevicePropertyDSPGraphProperty", buf, 0x12u);
            }

            v312 = __cxa_allocate_exception(0x10uLL);
            *v312 = off_1F5991DD8;
            v312[2] = 1852797029;
          }

          v78 = *v380;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          buf[24] = 0;
          v335[0] = MEMORY[0x1E69E9820];
          v335[1] = 0x40000000;
          v335[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_236;
          v335[3] = &unk_1E86791B8;
          v335[4] = buf;
          v335[5] = this;
          v338 = v77 == 1768845428;
          v336 = v78;
          v337 = v383;
          v335[6] = a3;
          v335[7] = v382;
          v79 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v79, v335);
          if (*(*&buf[8] + 24) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *theDict = 136315394;
              *&theDict[4] = "HALS_Device.cpp";
              *&theDict[12] = 1024;
              *&theDict[14] = 4959;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  SetStreamDSPProperty failure", theDict, 0x12u);
            }

            v304 = __cxa_allocate_exception(0x10uLL);
            *v304 = off_1F5991DD8;
            v304[2] = 1852797029;
          }

          v80 = *(this + 4);
          if (v379)
          {
            v81 = v379[1].mScope;
          }

          else
          {
            v81 = 0;
          }

          *theDict = 1684500594;
          *&theDict[4] = *&a3->mScope;
          HALS_Object::PropertiesChanged(this, v80, v81, 1, theDict);
          goto LABEL_296;
        case 1685278562:
          v99 = HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v378);
          if (v99)
          {
            v99 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          }

          if (!v382)
          {
            v178 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v178 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v99);
            }

            v180 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v179 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v179)
            {
              atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
              v181 = *v180;
              std::__shared_weak_count::__release_shared[abi:ne200100](v179);
            }

            else
            {
              v181 = *v180;
            }

            if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5119;
              *&buf[18] = 2080;
              *&buf[20] = "inData == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v181, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: outData is nullptr for kAudioDevicePropertyDSPOffloadBypass", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
            __cxa_allocate_exception(0x40uLL);
            v332 = off_1F5991DD8;
            v333 = 1852797029;
            *&theDict[8] = 1852797029;
            v387 = 0;
            v385 = 0;
            v386 = 0;
            v388 = -1;
            *theDict = &unk_1F598E5D8;
            *&theDict[16] = &unk_1F598E600;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
            *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
            LODWORD(v390) = 5119;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
          }

          if (v383 != 8)
          {
            v202 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v202 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v99);
            }

            v204 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v203 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v203)
            {
              atomic_fetch_add_explicit(&v203->__shared_owners_, 1uLL, memory_order_relaxed);
              v205 = *v204;
              std::__shared_weak_count::__release_shared[abi:ne200100](v203);
            }

            else
            {
              v205 = *v204;
            }

            if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5120;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize != sizeof(CFDictionaryRef)";
              _os_log_error_impl(&dword_1DE1F9000, v205, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not CFDictionaryRef for kAudioDevicePropertyDSPOffloadBypass", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
            __cxa_allocate_exception(0x40uLL);
            v332 = off_1F5991DD8;
            v333 = 1852797029;
            *&theDict[8] = 1852797029;
            v387 = 0;
            v385 = 0;
            v386 = 0;
            v388 = -1;
            *theDict = &unk_1F598E5D8;
            *&theDict[16] = &unk_1F598E600;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
            *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
            LODWORD(v390) = 5120;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
          }

          if (!v379 && (*(this + 660) & 1) == 0)
          {
            v282 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v282 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v99);
            }

            v284 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v283 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v283)
            {
              atomic_fetch_add_explicit(&v283->__shared_owners_, 1uLL, memory_order_relaxed);
              v285 = *v284;
              std::__shared_weak_count::__release_shared[abi:ne200100](v283);
            }

            else
            {
              v285 = *v284;
            }

            if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5121;
              *&buf[18] = 2080;
              *&buf[20] = "inClient == nullptr && !mHostedDSPClientInfo.allows_null_client()";
              _os_log_error_impl(&dword_1DE1F9000, v285, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertyDSPOffloadBypass", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
            __cxa_allocate_exception(0x40uLL);
            v332 = off_1F5991DD8;
            v333 = 1852797029;
            *&theDict[8] = 1852797029;
            v387 = 0;
            v385 = 0;
            v386 = 0;
            v388 = -1;
            *theDict = &unk_1F598E5D8;
            *&theDict[16] = &unk_1F598E600;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
            *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
            LODWORD(v390) = 5121;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3002000000;
          *&buf[24] = __Block_byref_object_copy__249;
          *&buf[32] = __Block_byref_object_dispose__250;
          *&buf[40] = 0;
          v322[0] = MEMORY[0x1E69E9820];
          v322[1] = 0x40000000;
          v322[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_251;
          v322[3] = &unk_1E8679258;
          v322[4] = buf;
          v322[5] = this;
          v322[6] = a3;
          v322[7] = v379;
          v322[8] = v382;
          v100 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v100, v322);
          if (*(*&buf[8] + 40) == 1)
          {
            v101 = *(this + 4);
            if (v379)
            {
              v102 = v379[1].mScope;
            }

            else
            {
              v102 = 0;
            }

            mElement = a3->mElement;
            *theDict = *&a3->mSelector;
            *&theDict[8] = mElement;
            HALS_Object::PropertiesChanged(this, v101, v102, 1, theDict);
          }

          goto LABEL_296;
        case 1685414763:
          if (v383 <= 0xF)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4803;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessDuck", buf, 0x12u);
            }

            v290 = __cxa_allocate_exception(0x10uLL);
            *v290 = off_1F5991DD8;
            v290[2] = 561211770;
          }

          v21 = HALS_Device::CopyIOEngineReplacerOwningDevice(this);
          v22 = v21;
          if (v21)
          {
            v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v23 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v21);
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

            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v151 = (*(*v22 + 224))(v22);
              *buf = 136315906;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4808;
              *&buf[18] = 2082;
              *&buf[20] = this + 164;
              *&buf[28] = 2082;
              *&buf[30] = v151;
              _os_log_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Device '%{public}s' has a engine replacer '%{public}s', forwarding volume ducking command", buf, 0x26u);
            }

            (*(*v22 + 128))(v22, v22[4], a3, v383, v382, v381, v380, v379);
          }

          v152 = *v382;
          v153 = v382[2];
          v154 = v382[3];
          (*(*this + 272))(this);
          v156 = 0.0;
          if (v154 >= 0.0)
          {
            v157 = v154;
          }

          else
          {
            v157 = 0.0;
          }

          if (v153 >= 0.0)
          {
            v156 = v153;
          }

          if (v156 > 1.0)
          {
            v156 = 1.0;
          }

          v158 = v155 * v157;
          if (v158 < 1.0)
          {
            v158 = 1.0;
          }

          v350[0] = MEMORY[0x1E69E9820];
          v350[1] = 0x40000000;
          v350[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_221;
          v350[3] = &__block_descriptor_tmp_222;
          v350[4] = this;
          v350[5] = v379;
          v350[6] = v152;
          v351 = v156;
          v352 = v158;
          v159 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v159, v350);
          HALS_ObjectMap::ReleaseObject(v22, v160);
          goto LABEL_298;
      }

      goto LABEL_606;
    }

    if (v15 != 1684236338)
    {
      if (v15 == 1684500589)
      {
        if (HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v378))
        {
          AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        HasProperty = HALS_Device_HostedDSP::HasProperty(*(this + 79), a3, v379, v38);
        if ((HasProperty & 0x100) == 0)
        {
          if (!v382)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4910;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: inData in nullptr for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v313 = __cxa_allocate_exception(0x10uLL);
            *v313 = off_1F5991DD8;
            v313[2] = 1852797029;
          }

          if (v383 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4912;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v314 = __cxa_allocate_exception(0x10uLL);
            *v314 = off_1F5991DD8;
            v314[2] = 561211770;
          }

          if (!v380)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4914;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: inQualifierData is nullptr for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v315 = __cxa_allocate_exception(0x10uLL);
            *v315 = off_1F5991DD8;
            v315[2] = 1852797029;
          }

          if (v381 != 4)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4916;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: incorrect inQualifierDataSize for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v316 = __cxa_allocate_exception(0x10uLL);
            *v316 = off_1F5991DD8;
            v316[2] = 1852797029;
          }

          v40 = a3->mScope;
          if (v40 != 1768845428 && v40 != 1869968496)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4918;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: incorrect inAddress.mScope for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v318 = __cxa_allocate_exception(0x10uLL);
            *v318 = off_1F5991DD8;
            v318[2] = 1852797029;
          }

          v41 = *v382;
          v42 = *v380;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          buf[24] = 0;
          v339[0] = MEMORY[0x1E69E9820];
          v339[1] = 0x40000000;
          v339[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_234;
          v339[3] = &unk_1E8679190;
          v339[4] = buf;
          v339[5] = this;
          v342 = v40 == 1768845428;
          v339[6] = a3;
          v340 = v42;
          v341 = v41;
          v43 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v43, v339);
          if (*(*&buf[8] + 24) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *theDict = 136315394;
              *&theDict[4] = "HALS_Device.cpp";
              *&theDict[12] = 1024;
              *&theDict[14] = 4932;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  SetStreamDSPParameter failure", theDict, 0x12u);
            }

            v317 = __cxa_allocate_exception(0x10uLL);
            *v317 = off_1F5991DD8;
            v317[2] = 1852797029;
          }

          v44 = *(this + 4);
          if (v379)
          {
            v45 = v379[1].mScope;
          }

          else
          {
            v45 = 0;
          }

          *theDict = 1684500589;
          *&theDict[4] = *&a3->mScope;
          HALS_Object::PropertiesChanged(this, v44, v45, 1, theDict);
          goto LABEL_296;
        }

        if (a3->mSelector == 1684500589)
        {
          v110 = *(this + 79);
          v111 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v111 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(HasProperty);
          }

          v113 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v112 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v112)
          {
            atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
            v114 = *v113;
            std::__shared_weak_count::__release_shared[abi:ne200100](v112);
          }

          else
          {
            v114 = *v113;
          }

          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Device_HostedDSP.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 656;
            _os_log_impl(&dword_1DE1F9000, v114, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][graph] Hosted DSP is processing a kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
          }

          *theDict = *&a3->mSelector;
          *&theDict[8] = a3->mElement;
          operator new();
        }

        goto LABEL_298;
      }

      goto LABEL_606;
    }

    if (v383 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4619;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyPreferredChannelsForStereo", buf, 0x12u);
      }

      v295 = __cxa_allocate_exception(0x10uLL);
      *v295 = off_1F5991DD8;
      v295[2] = 561211770;
    }

    v373[1] = 0;
    v373[0] = 0;
    HALS_System::GetInstance(theDict, 0, v373);
    *buf = HALS_SettingsManager::ReadSetting(*(*theDict + 1776), *(this + 15));
    *&buf[8] = 1;
    if (*&theDict[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&theDict[8]);
    }

    *theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    *&theDict[8] = 257;
    if (*buf)
    {
      CACFDictionary::SetCFMutableDictionaryFromCopy(theDict, *buf);
    }

    v61 = a3->mScope;
    if (v61 == 1869968496)
    {
      v142 = v382;
      *(this + 38) = *v382;
      *(this + 39) = v142[1];
      CACFDictionary::AddUInt32(theDict, @"output.stereo.left", *v142);
      CACFDictionary::AddUInt32(theDict, @"output.stereo.right", *(v382 + 1));
      v371[1] = 0;
      v371[0] = 0;
      HALS_System::GetInstance(v394, 0, v371);
      HALS_SettingsManager::WriteSetting(*(*&v394[0].mSelector + 1776), *(this + 15), *theDict);
      if (*&v394[0].mElement)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v394[0].mElement);
      }

      v143 = *(this + 4);
      if (v379)
      {
        v144 = v379[1].mScope;
      }

      else
      {
        v144 = 0;
      }

      strcpy(v394, "2hcdptuo");
      BYTE1(v394[0].mElement) = 0;
      HIWORD(v394[0].mElement) = 0;
      HALS_Object::PropertiesChanged(this, v143, v144, 1, v394);
    }

    else if (v61 == 1768845428)
    {
      CACFDictionary::AddUInt32(theDict, @"input.stereo.left", *v382);
      CACFDictionary::AddUInt32(theDict, @"input.stereo.right", *(v382 + 1));
      v372[1] = 0;
      v372[0] = 0;
      HALS_System::GetInstance(v394, 0, v372);
      HALS_SettingsManager::WriteSetting(*(*&v394[0].mSelector + 1776), *(this + 15), *theDict);
      if (*&v394[0].mElement)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v394[0].mElement);
      }

      v62 = *(this + 4);
      if (v379)
      {
        v63 = v379[1].mScope;
      }

      else
      {
        v63 = 0;
      }

      strcpy(v394, "2hcdtpni");
      BYTE1(v394[0].mElement) = 0;
      HIWORD(v394[0].mElement) = 0;
      HALS_Object::PropertiesChanged(this, v62, v63, 1, v394);
    }

    goto LABEL_293;
  }

  if (v15 <= 1634758773)
  {
    if (v15 == 1634755428)
    {
      if (v383 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4847;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyClockDevice", buf, 0x12u);
        }

        v293 = __cxa_allocate_exception(0x10uLL);
        *v293 = off_1F5991DD8;
        v293[2] = 561211770;
      }

      v52 = v379;
      if (v379)
      {
        v52 = v379[1].mScope;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      buf[24] = 0;
      v346[0] = MEMORY[0x1E69E9820];
      v346[1] = 0x40000000;
      v346[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_225;
      v346[3] = &unk_1E86790F0;
      v346[5] = this;
      v346[4] = buf;
      v347 = v52;
      v346[6] = v382;
      v53 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v53, v346);
      goto LABEL_296;
    }

    if (v15 != 1634758765)
    {
      goto LABEL_606;
    }

    if (v383 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4763;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessMute", buf, 0x12u);
      }

      v291 = __cxa_allocate_exception(0x10uLL);
      *v291 = off_1F5991DD8;
      v291[2] = 561211770;
    }

    if (v379)
    {
      v34 = v379[1].mScope;
    }

    else
    {
      v34 = 0;
    }

    v115 = a3->mScope;
    *theDict = 0;
    *&theDict[8] = theDict;
    *&theDict[16] = 0x2000000000;
    LODWORD(v385) = 1065353216;
    v357[0] = MEMORY[0x1E69E9820];
    v357[1] = 0x40000000;
    v357[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_217;
    v357[3] = &unk_1E8679060;
    v357[5] = this;
    v357[4] = theDict;
    v358 = v34;
    v359 = v115 == 1768845428;
    v116 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v116, v357);
    v117 = *v382;
    if (*v382)
    {
      v118 = 0.0;
    }

    else
    {
      v118 = 1.0;
    }

    if (v118 != *(*&theDict[8] + 24))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v119 = *(this + 4);
        if (a3->mScope == 1768845428)
        {
          v120 = "input";
        }

        else
        {
          v120 = "output";
        }

        v121 = "on";
        *buf = 136316162;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[14] = 4774;
        *&buf[12] = 1024;
        *&buf[18] = 1024;
        if (v118 != 0.0)
        {
          v121 = "off";
        }

        *&buf[20] = v119;
        *&buf[24] = 2080;
        *&buf[26] = v120;
        *&buf[34] = 2080;
        *&buf[36] = v121;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_SetPropertyData: Object ID: %d setting process %s mute: %s", buf, 0x2Cu);
      }

      *&v394[0].mSelector = 0;
      *&v394[0].mElement = v394;
      *&v394[1].mScope = 0x2000000000;
      LOBYTE(v395) = 0;
      v353[0] = MEMORY[0x1E69E9820];
      v353[1] = 0x40000000;
      v353[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_219;
      v353[3] = &unk_1E8679088;
      v353[5] = this;
      v353[4] = v394;
      v354 = v34;
      v356 = v115 == 1768845428;
      v355 = v118;
      v122 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v122, v353);
      if (*(*&v394[0].mElement + 24) == 1)
      {
        if (v115 == 1768845428)
        {
          HALS_Device::ProcessMuteStateChanged(this, v379, v117 != 0);
        }

        v123 = a3->mScope;
        *buf = 1634758774;
        *&buf[4] = v123;
        *&buf[8] = 0x6170706D00000000;
        *&buf[16] = v123;
        v393[0] = 0;
        v393[1] = 0;
        v392 = 0;
        std::vector<CA::PropertyAddress>::__init_with_size[abi:ne200100]<CA::PropertyAddress const*,CA::PropertyAddress const*>(&v392, buf, &buf[24], 2uLL);
      }

      _Block_object_dispose(v394, 8);
    }

LABEL_304:
    v164 = theDict;
    goto LABEL_297;
  }

  if (v15 == 1634758774)
  {
    if (v383 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4722;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessVolumeScalar", buf, 0x12u);
      }

      v296 = __cxa_allocate_exception(0x10uLL);
      *v296 = off_1F5991DD8;
      v296[2] = 561211770;
    }

    if (v379)
    {
      v70 = v379[1].mScope;
    }

    else
    {
      v70 = 0;
    }

    v124 = a3->mScope == 1768845428;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    *&buf[24] = 1065353216;
    v364[0] = MEMORY[0x1E69E9820];
    v364[1] = 0x40000000;
    v364[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_214;
    v364[3] = &unk_1E8679010;
    v364[5] = this;
    v364[4] = buf;
    v365 = v70;
    v366 = v124;
    v125 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v125, v364);
    *&v126 = 0.0;
    if (*v382 < 0.0 || (v127 = 1.0, v126 = *v382, *v382 <= 1.0))
    {
      v127 = *&v126;
    }

    if (v127 == *(*&buf[8] + 24))
    {
      goto LABEL_296;
    }

    *theDict = 0;
    *&theDict[8] = theDict;
    *&theDict[16] = 0x2000000000;
    LOBYTE(v385) = 0;
    v360[0] = MEMORY[0x1E69E9820];
    v360[1] = 0x40000000;
    v360[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_2;
    v360[3] = &unk_1E8679038;
    v360[5] = this;
    v360[4] = theDict;
    v361 = v70;
    v363 = v124;
    v362 = v127;
    v128 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v128, v360);
    if (*(*&theDict[8] + 24) == 1)
    {
      v129 = a3->mScope;
      LODWORD(v392) = 1634758774;
      HIDWORD(v392) = v129;
      LODWORD(v393[0]) = 0;
      memset(v394, 0, sizeof(v394));
      std::vector<CA::PropertyAddress>::__init_with_size[abi:ne200100]<CA::PropertyAddress const*,CA::PropertyAddress const*>(v394, &v392, v393 + 4, 1uLL);
    }

    goto LABEL_271;
  }

  if (v15 == 1667461733)
  {
    only_ios_high_quality_recording = AMCP::Feature_Flags::va_read_only_ios_high_quality_recording(v14);
    if ((only_ios_high_quality_recording & 1) == 0)
    {
      only_macos_high_quality_local_recording = AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(only_ios_high_quality_recording);
      if ((only_macos_high_quality_local_recording & 1) == 0)
      {
        v166 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v166 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
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
          *buf = 136315650;
          *&buf[4] = "HALS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5138;
          *&buf[18] = 2080;
          *&buf[20] = "allowEC == false";
          _os_log_error_impl(&dword_1DE1F9000, v169, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: kAudioDevicePropertyContentCreationRecording feature disabled", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
        __cxa_allocate_exception(0x40uLL);
        v332 = off_1F5991DD8;
        v333 = 1852797029;
        *&theDict[8] = 1852797029;
        v387 = 0;
        v385 = 0;
        v386 = 0;
        v388 = -1;
        *theDict = &unk_1F598E5D8;
        *&theDict[16] = &unk_1F598E600;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
        *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
        *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
        LODWORD(v390) = 5138;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
      }
    }

    v90 = HALS_Device::GetNumberStreamsExcludingReferenceStreams(this, 1);
    if (!v90)
    {
      v198 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v198 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v200 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v199 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v199)
      {
        atomic_fetch_add_explicit(&v199->__shared_owners_, 1uLL, memory_order_relaxed);
        v201 = *v200;
        std::__shared_weak_count::__release_shared[abi:ne200100](v199);
      }

      else
      {
        v201 = *v200;
      }

      if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5140;
        *&buf[18] = 2080;
        *&buf[20] = "hasNonReferenceInputStream == false";
        _os_log_error_impl(&dword_1DE1F9000, v201, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: Device does not have non-reference input streams kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
      __cxa_allocate_exception(0x40uLL);
      v332 = off_1F5991DD8;
      v333 = 1852797029;
      *&theDict[8] = 1852797029;
      v387 = 0;
      v385 = 0;
      v386 = 0;
      v388 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v390) = 5140;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
    }

    v91 = a3->mScope == 1768845428;
    if (a3->mScope != 1768845428)
    {
      v218 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v218 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v220 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v219 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v219)
      {
        atomic_fetch_add_explicit(&v219->__shared_owners_, 1uLL, memory_order_relaxed);
        v221 = *v220;
        std::__shared_weak_count::__release_shared[abi:ne200100](v219);
      }

      else
      {
        v221 = *v220;
      }

      if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5142;
        *&buf[18] = 2080;
        *&buf[20] = "isInput == false";
        _os_log_error_impl(&dword_1DE1F9000, v221, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: kAudioDevicePropertyContentCreationRecording is only valid for input scope", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
      __cxa_allocate_exception(0x40uLL);
      v332 = off_1F5991DD8;
      v333 = 1852797029;
      *&theDict[8] = 1852797029;
      v387 = 0;
      v385 = 0;
      v386 = 0;
      v388 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v390) = 5142;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
    }

    if (!v382)
    {
      v238 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v238 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v240 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v239 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v239)
      {
        atomic_fetch_add_explicit(&v239->__shared_owners_, 1uLL, memory_order_relaxed);
        v241 = *v240;
        std::__shared_weak_count::__release_shared[abi:ne200100](v239);
      }

      else
      {
        v241 = *v240;
      }

      if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5143;
        *&buf[18] = 2080;
        *&buf[20] = "inData == nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v241, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
      __cxa_allocate_exception(0x40uLL);
      v332 = off_1F5991DD8;
      v333 = 1852797029;
      *&theDict[8] = 1852797029;
      v387 = 0;
      v385 = 0;
      v386 = 0;
      v388 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v390) = 5143;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
    }

    if (v383 != 4)
    {
      v250 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v250 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v252 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v251 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v251)
      {
        atomic_fetch_add_explicit(&v251->__shared_owners_, 1uLL, memory_order_relaxed);
        v253 = *v252;
        std::__shared_weak_count::__release_shared[abi:ne200100](v251);
      }

      else
      {
        v253 = *v252;
      }

      if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5144;
        *&buf[18] = 2080;
        *&buf[20] = "inDataSize != sizeof(UInt32)";
        _os_log_error_impl(&dword_1DE1F9000, v253, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
      __cxa_allocate_exception(0x40uLL);
      v332 = off_1F5991DD8;
      v333 = 1852797029;
      *&theDict[8] = 1852797029;
      v387 = 0;
      v385 = 0;
      v386 = 0;
      v388 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v390) = 5144;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
    }

    if (!v379)
    {
      v262 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v262 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v264 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v263 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v263)
      {
        atomic_fetch_add_explicit(&v263->__shared_owners_, 1uLL, memory_order_relaxed);
        v265 = *v264;
        std::__shared_weak_count::__release_shared[abi:ne200100](v263);
      }

      else
      {
        v265 = *v264;
      }

      if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5145;
        *&buf[18] = 2080;
        *&buf[20] = "inClient == nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v265, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
      __cxa_allocate_exception(0x40uLL);
      v332 = off_1F5991DD8;
      v333 = 1852797029;
      *&theDict[8] = 1852797029;
      v387 = 0;
      v385 = 0;
      v386 = 0;
      v388 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v390) = 5145;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
    }

    v92 = atomic_load(&v379[22].mScope);
    if ((v92 & 1) == 0)
    {
      v274 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v274 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v276 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v275 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v275)
      {
        atomic_fetch_add_explicit(&v275->__shared_owners_, 1uLL, memory_order_relaxed);
        v277 = *v276;
        std::__shared_weak_count::__release_shared[abi:ne200100](v275);
      }

      else
      {
        v277 = *v276;
      }

      if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5146;
        *&buf[18] = 2080;
        *&buf[20] = "!inClient->SandboxAllowsMicAccess()";
        _os_log_error_impl(&dword_1DE1F9000, v277, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient does not have permission to set kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v334);
      __cxa_allocate_exception(0x40uLL);
      v332 = off_1F5991DD8;
      v333 = 560492391;
      *&theDict[8] = 560492391;
      v387 = 0;
      v385 = 0;
      v386 = 0;
      v388 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v390) = 5146;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v392);
    }

    v93 = *v382 != 0;
    v94 = v380;
    if (v380)
    {
      v94 = *v380;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    buf[24] = 0;
    v319[0] = MEMORY[0x1E69E9820];
    v319[1] = 0x40000000;
    v319[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_254;
    v319[3] = &unk_1E8679280;
    v319[4] = buf;
    v319[5] = this;
    v320 = v91;
    v321 = v93;
    v319[6] = v379;
    v319[7] = v94;
    v95 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v95, v319);
    if (*(*&buf[8] + 24) == 1)
    {
      v96 = *(this + 4);
      if (v379)
      {
        v97 = v379[1].mScope;
      }

      else
      {
        v97 = 0;
      }

      v163 = a3->mElement;
      *theDict = *&a3->mSelector;
      *&theDict[8] = v163;
      HALS_Object::PropertiesChanged(this, v96, v97, 1, theDict);
    }

    goto LABEL_296;
  }

  if (v15 != 1667523955)
  {
    goto LABEL_606;
  }

  if (v383 <= 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4698;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyClientDescription", buf, 0x12u);
    }

    v288 = __cxa_allocate_exception(0x10uLL);
    *v288 = off_1F5991DD8;
    v288[2] = 561211770;
  }

  if (v379)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    buf[24] = 0;
    v367[0] = MEMORY[0x1E69E9820];
    v367[1] = 0x40000000;
    v367[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_212;
    v367[3] = &unk_1E8678FE8;
    v367[6] = v379;
    v367[7] = v382;
    v367[5] = this;
    v367[4] = buf;
    v16 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v16, v367);
    if (*(*&buf[8] + 24) == 1)
    {
      v17 = *(this + 4);
      if (v379)
      {
        v18 = v379[1].mScope;
      }

      else
      {
        v18 = 0;
      }

      strcpy(theDict, "sedcbolg");
      theDict[9] = 0;
      *&theDict[10] = 0;
      HALS_Object::PropertiesChanged(this, v17, v18, 1, theDict);
    }

    goto LABEL_296;
  }

LABEL_298:
  v165 = *MEMORY[0x1E69E9840];
}

void sub_1DE709D84(_Unwind_Exception *a1)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    operator delete(v3);
  }

  _Block_object_dispose(&STACK[0x600], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Unwind_Resume(a1);
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4 = *(v1 + 4);
  v3 = *(v1 + 8);
  v5 = a1[6];
  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(&Mutable, 0, v18);
  Setting = HALS_SettingsManager::ReadSetting(Mutable[222], *(v2 + 120));
  v22 = 1;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  LOWORD(v20) = 257;
  if (Setting)
  {
    CACFDictionary::SetCFMutableDictionaryFromCopy(&Mutable, Setting);
  }

  v6 = 0;
  if (v4 > 1869968495)
  {
    if (v4 == 1869968496)
    {
      v6 = @"output.elementnames";
    }

    else if (v4 == 1886679669)
    {
      v6 = @"through.elementnames";
    }
  }

  else if (v4 == 1735159650)
  {
    v6 = @"global.elementnames";
  }

  else if (v4 == 1768845428)
  {
    v6 = @"input.elementnames";
  }

  v16 = 0;
  v17 = 1;
  CACFDictionary::GetCACFDictionary(&Mutable, v6, &v16);
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v15 = 257;
  if (v16)
  {
    CACFDictionary::SetCFMutableDictionaryFromCopy(&theDict, v16);
  }

  v7 = CFStringCreateWithFormat(0, 0, @"%lu", v3);
  key = v7;
  v13 = 1;
  if (v5 && (v8 = CFStringCompare(*v5, &stru_1F5992518, 1uLL), v7 = key, v8))
  {
    if (HIBYTE(v15) == 1 && *v5 && theDict)
    {
      CFDictionarySetValue(theDict, key, *v5);
    }
  }

  else if (HIBYTE(v15) == 1 && theDict)
  {
    CFDictionaryRemoveValue(theDict, v7);
  }

  if (BYTE1(v20) == 1 && theDict && Mutable)
  {
    CFDictionarySetValue(Mutable, v6, theDict);
  }

  v9[0] = 0;
  v9[1] = 0;
  HALS_System::GetInstance(&v10, 0, v9);
  HALS_SettingsManager::WriteSetting(*(v10 + 1776), *(v2 + 120), Mutable);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  CACFString::~CACFString(&key);
  CACFDictionary::~CACFDictionary(&theDict);
  CACFDictionary::~CACFDictionary(&v16);
  CACFDictionary::~CACFDictionary(&Mutable);
  CACFDictionary::~CACFDictionary(&Setting);
}

void sub_1DE70A378(void *a1)
{
  CACFDictionary::~CACFDictionary(&v3);
  CACFDictionary::~CACFDictionary(&v4);
  CACFDictionary::~CACFDictionary((v1 - 80));
  CACFDictionary::~CACFDictionary((v1 - 64));
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

unsigned int *___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_210(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = a1[7];
  v3 = *(*(a1[4] + 8) + 24);
  v4 = atomic_load(result + 40);
  v5 = atomic_load(result + 40);
  if (v4 != v3)
  {
    if (v5 != -1 && a1[8])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "HALS_Device.cpp";
        v10 = 1024;
        v11 = 4569;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: kAudioDevicePropertyHogMode: hog mode is owned by another process", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560492391;
    }

    result = HALS_Device::_SetHogModeOwner(result, *(*(a1[4] + 8) + 24));
    goto LABEL_7;
  }

  if (v5 != -1)
  {
    *(*(a1[4] + 8) + 24) = -1;
    result = HALS_Device::_SetHogModeOwner(result, *(*(a1[4] + 8) + 24));
LABEL_7:
    *(*(a1[5] + 8) + 24) = result;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE70A5A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 48) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 48) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE70A4C0);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_Device::GetTotalNumberChannelsForClient(HALS_Device *this, char a2, HALS_Client *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK11HALS_Device31GetTotalNumberChannelsForClientEbP11HALS_Client_block_invoke;
  v6[3] = &unk_1E8678990;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_212(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(*v2 + 744))(v2);
  (*(*v2 + 728))(v2, *(a1 + 48), **(a1 + 56));
  result = (*(*v2 + 744))(v2);
  *(*(*(a1 + 32) + 8) + 24) = v3 != result;
  return result;
}

void sub_1DE70A7B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE70A75CLL);
}

void sub_1DE70A820(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_2(uint64_t a1)
{
  result = (*(**(a1 + 40) + 768))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 52));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE70A8A8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE70A934(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Device::ProcessMuteStateChanged(HALS_Device *this, HALS_Client *a2, uint64_t a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v19[0] = 0;
    v19[1] = 0;
    HALS_System::GetInstance(&v20, 0, v19);
    if (!v20)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2063;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::ProcessMuteStateChanged: there is no system", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560492391;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4002000000;
    v31 = __Block_byref_object_copy__48;
    v32 = __Block_byref_object_dispose__49;
    memset(v33, 0, 24);
    v23 = 0;
    v24 = &v23;
    v25 = 0x4002000000;
    v26 = __Block_byref_object_copy__46;
    v27 = __Block_byref_object_dispose__47;
    memset(v28, 0, sizeof(v28));
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZN11HALS_System23ProcessMuteStateChangedEPK11HALS_DeviceP11HALS_Clientb_block_invoke;
    v22[3] = &unk_1E86759F0;
    v22[5] = &v23;
    v22[6] = v20;
    v22[4] = buf;
    v6 = (*(*v20 + 64))(v20);
    HALB_CommandGate::ExecuteCommand(v6, v22);
    v7 = v24[5];
    v8 = v24[6];
    while (v7 != v8)
    {
      v9 = *(this + 4);
      if (v9 == (*(**(*v7 + 13) + 768))(*(*v7 + 13)))
      {
        v10 = **(*v7 + 9);
        if (v10 == *(a2 + 4) || v10 == 0)
        {
          (*(**(*v7 + 13) + 96))(*(*v7 + 13), a3);
        }
      }

      ++v7;
    }

    _Block_object_dispose(&v23, 8);
    v29 = v28;
    std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v29);
    _Block_object_dispose(buf, 8);
    v23 = v33;
    std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v23);
    platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v12);
    (*(*platform_behaviors + 64))(platform_behaviors);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZNK11HALS_Device23ProcessMuteStateChangedEP11HALS_Clientb_block_invoke;
    v17[3] = &__block_descriptor_tmp_128_19945;
    v17[4] = this;
    v17[5] = a2;
    v18 = a3;
    v14 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v14, v17);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t std::vector<CA::PropertyAddress>::__emplace_back_slow_path<CA::PropertyAddress>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v5 = 0x1555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v5);
  }

  v6 = 12 * v2;
  v7 = *a2;
  *(v6 + 8) = *(a2 + 2);
  *v6 = v7;
  v8 = 12 * v2 + 12;
  v9 = *(a1 + 8) - *a1;
  v10 = 12 * v2 - v9;
  memcpy((v6 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_1DE70AEC4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_219(uint64_t a1)
{
  result = (*(**(a1 + 40) + 768))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 52));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE70AF4C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

HALS_ObjectMap *HALS_Device::CopyIOEngineReplacerOwningDevice(HALS_Device *this)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!AMCP::Feature_Flags::allow_unified_device_engine_replacer(this) || (v2 = *(this + 4), v39 = 0x676C6F6261657245, v40 = 0, ((*(*this + 96))(this, v2, &v39, 0) & 1) == 0) || (*buf = 0, LODWORD(__p) = 0, (*(*this + 120))(this, v2, &v39, 4, &__p, buf, 0, 0, 0), !*buf))
  {
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  v37 = 0x676C6F6261657255;
  v38 = 0;
  v3 = (*(*this + 96))(this, v2, &v37, 0);
  if ((v3 & 1) == 0)
  {
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
      *buf = 136315650;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6258;
      *&buf[18] = 2080;
      *&buf[20] = this + 164;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d %s replacer engine property is not supported", buf, 0x1Cu);
    }

    goto LABEL_32;
  }

  *buf = 0;
  LODWORD(__p) = 0;
  (*(*this + 120))(this, v2, &v37, 8, &__p, buf, 0, 0, 0);
  TypeID = *buf;
  cf = *buf;
  if (!*buf)
  {
    goto LABEL_17;
  }

  v5 = CFGetTypeID(*buf);
  TypeID = CFStringGetTypeID();
  if (v5 != TypeID)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!cf)
  {
LABEL_17:
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(TypeID);
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
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6265;
      *&buf[18] = 2080;
      *&buf[20] = this + 164;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d %s replacer engine uid is null", buf, 0x1Cu);
    }

    goto LABEL_27;
  }

  v35[0] = 0;
  v35[1] = 0;
  HALS_System::GetInstance(&__p, 0, v35);
  memset(buf, 0, 32);
  *&buf[32] = 1065353216;
  v6 = HALS_System::CopyDeviceByUID(__p, cf, 0, buf);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
  v7 = v33;
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (!v6)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      applesauce::CF::StringRef_proxy::StringRef_proxy(&v41, &cf);
      applesauce::CF::convert_to<std::string,0>(&__p, *v41);
      v28 = v34 >= 0 ? &__p : __p;
      *buf = 136315906;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6272;
      *&buf[18] = 2080;
      *&buf[20] = this + 164;
      *&buf[28] = 2080;
      *&buf[30] = v28;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d %s replacer engine object is null for UID %s", buf, 0x26u);
      if (v34 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_27:
    v6 = 0;
    goto LABEL_28;
  }

  v8 = (*(*v6 + 40))(v6);
  if (v8)
  {
    v9 = 1;
    goto LABEL_29;
  }

  v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v24 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
    v30 = (*(*v6 + 224))(v6);
    *buf = 136315906;
    *&buf[4] = "HALS_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6277;
    *&buf[18] = 2080;
    *&buf[20] = this + 164;
    *&buf[28] = 2080;
    *&buf[30] = v30;
    _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d %s the engine replacer device %s is not yet active", buf, 0x26u);
  }

  HALS_ObjectMap::ReleaseObject(v6, v29);
LABEL_28:
  v9 = 0;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v18 = *MEMORY[0x1E69E9840];
  return v6;
}