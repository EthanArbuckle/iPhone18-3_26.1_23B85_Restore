void sub_23C29F5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandIPCTrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN16BasebandIPCTrace11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke;
  v7[3] = &unk_278BB96C8;
  v7[4] = &v8;
  v7[5] = a2;
  v7[6] = a3;
  v12 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_3;
  block[3] = &__block_descriptor_tmp_59;
  block[4] = a1 + 8;
  block[5] = &v12;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

BOOL ___ZN16BasebandIPCTrace11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke(uint64_t a1)
{
  result = prop::bbipc::get(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___ZN16BasebandIPCTrace12collect_syncEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1, uint64_t *a2, CFTypeRef *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "Query failed: %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = (v3 + 120);
    if ((v3 + 120) != a3)
    {
      v8 = *a3;
      if (*a3)
      {
        CFRetain(*a3);
      }

      v9 = *v7;
      *v7 = v8;
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C29F888(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void ___ZN16BasebandIPCTrace10write_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1, uint64_t a2, CFDataRef *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 55);
  if (v3 >= 0)
  {
    v4 = *(a1 + 55);
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(v23, 0, 24);
    v10 = v23;
    v23[23] = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    *&v23[8] = v4 + 1;
    *&v23[16] = v9 | 0x8000000000000000;
    *v23 = v10;
  }

  if (v3 >= 0)
  {
    v11 = (a1 + 32);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 47;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(v23, v13, v14);
  __p = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((v23[23] & 0x80000000) != 0)
  {
    operator delete(*v23);
  }

  memset(&v23[8], 170, 0x230uLL);
  *&v23[464] = 0;
  v16 = MEMORY[0x277D82860] + 64;
  *&v23[416] = MEMORY[0x277D82860] + 64;
  v17 = MEMORY[0x277D82810];
  v18 = *(MEMORY[0x277D82810] + 16);
  *v23 = *(MEMORY[0x277D82810] + 8);
  *&v23[*(*v23 - 24)] = v18;
  v19 = &v23[*(*v23 - 24)];
  std::ios_base::init(v19, &v23[8]);
  v20 = MEMORY[0x277D82860] + 24;
  v19[1].__vftable = 0;
  v19[1].__fmtflags_ = -1;
  *v23 = v20;
  *&v23[416] = v16;
  MEMORY[0x23EECDE30](&v23[8]);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&v23[*(*v23 - 24)], *&v23[*(*v23 - 24) + 32] | 4);
  }

  if (!*&v23[*(*v23 - 24) + 32] && *a3)
  {
    CFDataGetBytePtr(*a3);
    CFDataGetLength(*a3);
    std::ostream::write();
  }

  *v23 = *v17;
  *&v23[*(*v23 - 24)] = v17[3];
  MEMORY[0x23EECDE40](&v23[8]);
  std::ostream::~ostream();
  MEMORY[0x23EECE150](&v23[416]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_23C29FC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::ofstream::~ofstream(&a16);
  MEMORY[0x23EECE150](v21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x277D82810];
  v2 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x23EECDE40](a1 + 1);

  return std::ostream::~ostream();
}

atomic_ullong *std::shared_ptr<BasebandIPCTrace>::shared_ptr[abi:ne200100]<BasebandIPCTrace,std::shared_ptr<BasebandIPCTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTrace>(BasebandIPCTrace*)::{lambda(BasebandIPCTrace*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFCF88;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_23C29FF68(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandIPCTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTrace>(BasebandIPCTrace*)::{lambda(BasebandIPCTrace*)#1}::operator() const(BasebandIPCTrace*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BasebandIPCTrace *,std::shared_ptr<BasebandIPCTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTrace>(BasebandIPCTrace*)::{lambda(BasebandIPCTrace *)#1},std::allocator<BasebandIPCTrace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandIPCTrace *,std::shared_ptr<BasebandIPCTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTrace>(BasebandIPCTrace*)::{lambda(BasebandIPCTrace *)#1},std::allocator<BasebandIPCTrace>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI16BasebandIPCTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI16BasebandIPCTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI16BasebandIPCTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI16BasebandIPCTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandIPCTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<BasebandIPCTrace>(BasebandIPCTrace*)::{lambda(BasebandIPCTrace*)#1}::operator() const(BasebandIPCTrace*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void *std::unique_ptr<std::__tree_node<std::string,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void ___ZN3ctu2cf8for_eachINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPK8__CFDataEEvPK14__CFDictionaryU13block_pointerFvRKT_RKT0_E_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = *(a1 + 32);
  v9 = 0uLL;
  v10 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v8 = 0;
  if (a3)
  {
    v5 = CFGetTypeID(a3);
    if (v5 == CFDataGetTypeID())
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *&v9 = v6;
  (*(v4 + 16))(v4, __p, &v9);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23C2A0228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_21()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_22()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void abm::CellularLoggingTask::~CellularLoggingTask(abm::CellularLoggingTask *this)
{
  *this = &unk_284EFCFD8;
  v2 = *(this + 17);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 15);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(this + 13);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  *this = &unk_284F001D8;
  v6 = *(this + 12);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x23EECD800](this + 40);
  v8 = *(this + 4);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void abm::HelperTask::~HelperTask(abm::HelperTask *this)
{
  *this = &unk_284F001D8;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x23EECD800](this + 40);
  v4 = *(this + 4);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void *abm::CellularLoggingTask::CellularLoggingTask(void *a1, int a2, uint64_t *a3)
{
  v6 = a3[1];
  v18 = *a3;
  v19 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  abm::HelperTask::HelperTask(a1, a2, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  *a1 = &unk_284EFCFD8;
  a1[13] = 0;
  abm::helper::getLoggingDomain(a2, __p);
  if ((a2 - 1) > 9)
  {
    v7 = "invalid";
  }

  else
  {
    v7 = off_278BB9730[a2 - 1];
  }

  if (v16 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  ctu::OsLogContext::OsLogContext(v17, v8, v7);
  a1[14] = 0xAAAAAAAAAAAAAAAALL;
  a1[15] = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<abm::AppMonitor,std::allocator<abm::AppMonitor>,ctu::OsLogContext &,0>(v17, a1 + 14);
  ctu::OsLogContext::~OsLogContext(v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a3[1];
  v13 = *a3;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[3];
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  abm::CellularLoggingCommon::create(&v13, &object, a1 + 16);
  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  return a1;
}

void sub_23C2A0680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v19 + 112);
  v21 = *(v19 + 13);
  if (v21)
  {
    dispatch_group_leave(v21);
    v22 = *(v19 + 13);
    if (v22)
    {
      dispatch_release(v22);
    }
  }

  abm::HelperTask::~HelperTask(v19);
  _Unwind_Resume(a1);
}

void sub_23C2A06FC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23C2A06F4);
}

void abm::CellularLoggingTask::init_sync(abm::CellularLoggingTask *this)
{
  v129 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_107;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_107;
    }
  }

  v7 = std::__shared_weak_count::lock(v6);
  v124 = v7;
  if (!v7)
  {
    goto LABEL_107;
  }

  v123 = *(this + 11);
  if (!v123)
  {
    goto LABEL_105;
  }

  memset(__p, 170, sizeof(__p));
  *(&v126.__r_.__value_.__s + 23) = 1;
  LOWORD(v126.__r_.__value_.__l.__data_) = 47;
  v8 = std::string::insert(&v126, 0, "/private/var/mobile/Library/Logs/CellularLogging", 0x30uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v127.st_uid = *(&v8->__r_.__value_.__l + 2);
  *&v127.st_dev = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  st_gid_high = SHIBYTE(v127.st_gid);
  if ((SHIBYTE(v127.st_gid) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v127.st_gid) < 0x17)
    {
      v11 = SHIBYTE(v127.st_gid) + 31;
      v12 = &v127;
      v13 = 22;
LABEL_15:
      v15 = 2 * v13;
      if (v11 > 2 * v13)
      {
        v15 = v11;
      }

      if ((v15 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v15 | 7) + 1;
      }

      if (v15 >= 0x17)
      {
        v14 = v16;
      }

      else
      {
        v14 = 23;
      }

      v17 = v13 == 22;
      goto LABEL_24;
    }

    v21 = &v127;
    qmemcpy(&v127 + SHIBYTE(v127.st_gid), "com.apple.cellularlogging.state", 31);
    v22 = st_gid_high + 31;
    HIBYTE(v127.st_gid) = (st_gid_high + 31) & 0x7F;
LABEL_31:
    v20 = v21 + v22;
    goto LABEL_32;
  }

  st_gid_high = v127.st_ino;
  v13 = (*&v127.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v13 - v127.st_ino >= 0x1F)
  {
    v21 = *&v127.st_dev;
    qmemcpy((*&v127.st_dev + v127.st_ino), "com.apple.cellularlogging.state", 31);
    v22 = st_gid_high + 31;
    v127.st_ino = st_gid_high + 31;
    goto LABEL_31;
  }

  v14 = 0x7FFFFFFFFFFFFFF7;
  v11 = v127.st_ino + 31;
  if (0x7FFFFFFFFFFFFFF7 - (*&v127.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v127.st_ino + 31 - v13)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = *&v127.st_dev;
  if (v13 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v17 = 0;
LABEL_24:
  v18 = operator new(v14);
  v19 = v18;
  if (st_gid_high)
  {
    memmove(v18, v12, st_gid_high);
  }

  qmemcpy(&v19[st_gid_high], "com.apple.cellularlogging.state", 31);
  if (!v17)
  {
    operator delete(v12);
  }

  *&v127.st_uid = v14 | 0x8000000000000000;
  *&v127.st_dev = v19;
  v127.st_ino = v11;
  v20 = &v19[v11];
LABEL_32:
  *v20 = 0;
  *__p = *&v127.st_dev;
  __p[2] = *&v127.st_uid;
  memset(&v127, 0, 24);
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v127.st_blksize = v23;
  *v127.st_qspare = v23;
  v127.st_birthtimespec = v23;
  *&v127.st_size = v23;
  v127.st_mtimespec = v23;
  v127.st_ctimespec = v23;
  *&v127.st_uid = v23;
  v127.st_atimespec = v23;
  *&v127.st_dev = v23;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (!stat(v24, &v127))
  {
    *(&__dst.__r_.__value_.__s + 23) = 1;
    LOWORD(__dst.__r_.__value_.__l.__data_) = 47;
    v52 = std::string::insert(&__dst, 0, "/private/var/mobile/Library/Logs/CellularLogging", 0x30uLL);
    v53 = *&v52->__r_.__value_.__l.__data_;
    *&v127.st_uid = *(&v52->__r_.__value_.__l + 2);
    *&v127.st_dev = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    st_ino = SHIBYTE(v127.st_gid);
    if ((SHIBYTE(v127.st_gid) & 0x8000000000000000) != 0)
    {
      st_ino = v127.st_ino;
      v57 = (*&v127.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v57 - v127.st_ino < 0x1F)
      {
        v55 = v127.st_ino + 31;
        if (0x7FFFFFFFFFFFFFF7 - (*&v127.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v127.st_ino + 31 - v57)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v56 = *&v127.st_dev;
        if (v57 >= 0x3FFFFFFFFFFFFFF3)
        {
          v61 = 0;
          v60 = 0x7FFFFFFFFFFFFFF7;
LABEL_123:
          v62 = operator new(v60);
          v63 = v62;
          if (st_ino)
          {
            memmove(v62, v56, st_ino);
          }

          qmemcpy(&v63[st_ino], "com.apple.cellularlogging.state", 31);
          if (!v61)
          {
            operator delete(v56);
          }

          *&v127.st_uid = v60 | 0x8000000000000000;
          *&v127.st_dev = v63;
          v127.st_ino = v55;
          v64 = &v63[v55];
LABEL_132:
          *v64 = 0;
          *&v126.__r_.__value_.__l.__data_ = *&v127.st_dev;
          v126.__r_.__value_.__r.__words[2] = *&v127.st_uid;
          memset(&v127, 0, 24);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = &v126;
          }

          else
          {
            v67 = v126.__r_.__value_.__r.__words[0];
          }

          v68 = strlen(v67);
          if (v68 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v69 = v68;
          if (v68 >= 0x17)
          {
            if ((v68 | 7) == 0x17)
            {
              v71 = 25;
            }

            else
            {
              v71 = (v68 | 7) + 1;
            }

            p_dst = operator new(v71);
            __dst.__r_.__value_.__r.__words[2] = v71 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            __dst.__r_.__value_.__l.__size_ = v69;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v68;
            p_dst = &__dst;
            if (!v68)
            {
LABEL_146:
              p_dst[v69] = 0;
              v72.tv_sec = 0xAAAAAAAAAAAAAAAALL;
              v72.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
              *&v127.st_blksize = v72;
              *v127.st_qspare = v72;
              v127.st_birthtimespec = v72;
              *&v127.st_size = v72;
              v127.st_mtimespec = v72;
              v127.st_ctimespec = v72;
              *&v127.st_uid = v72;
              v127.st_atimespec = v72;
              *&v127.st_dev = v72;
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v73 = &__dst;
              }

              else
              {
                v73 = __dst.__r_.__value_.__r.__words[0];
              }

              if (stat(v73, &v127))
              {
                tv_sec = 0xAAAAAAAAAAAAAAAALL;
              }

              else
              {
                tv_sec = v127.st_birthtimespec.tv_sec;
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              v127.st_ino = 0xAAAAAAAAAAAAAAAALL;
              *&v127.st_dev = 0xAAAAAAAAAAAAAAAALL;
              __dst.__r_.__value_.__r.__words[0] = 16;
              *v128 = 0x1500000001;
              if (sysctl(v128, 2u, &v127, &__dst, 0, 0) >= 0)
              {
                v75 = *&v127.st_dev;
              }

              else
              {
                v75 = 0;
              }

              if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v126.__r_.__value_.__l.__data_);
                v76 = *(this + 5);
                v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
                if (v75 > tv_sec)
                {
                  goto LABEL_159;
                }
              }

              else
              {
                v76 = *(this + 5);
                v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
                if (v75 > tv_sec)
                {
LABEL_159:
                  if (v77)
                  {
                    LOWORD(v127.st_dev) = 0;
                    _os_log_impl(&dword_23C1C4000, v76, OS_LOG_TYPE_DEFAULT, "#I Detected state file is created before current device boot", &v127, 2u);
                  }

                  if (SHIBYTE(__p[2]) >= 0)
                  {
                    v79 = __p;
                  }

                  else
                  {
                    v79 = __p[0];
                  }

                  if (remove(v79, v78))
                  {
                    v80 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                    if (unlink(v80))
                    {
                      v81 = *(this + 5);
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(v127.st_dev) = 0;
                        _os_log_error_impl(&dword_23C1C4000, v81, OS_LOG_TYPE_ERROR, "Failed to remove state file for cellular logging", &v127, 2u);
                      }
                    }
                  }

                  goto LABEL_38;
                }
              }

              if (v77)
              {
                LOWORD(v127.st_dev) = 0;
                _os_log_impl(&dword_23C1C4000, v76, OS_LOG_TYPE_DEFAULT, "#I state file is created after device reboot", &v127, 2u);
              }

              goto LABEL_38;
            }
          }

          memmove(p_dst, v67, v69);
          goto LABEL_146;
        }

LABEL_114:
        v58 = 2 * v57;
        if (v55 > 2 * v57)
        {
          v58 = v55;
        }

        if ((v58 | 7) == 0x17)
        {
          v59 = 25;
        }

        else
        {
          v59 = (v58 | 7) + 1;
        }

        if (v58 >= 0x17)
        {
          v60 = v59;
        }

        else
        {
          v60 = 23;
        }

        v61 = v57 == 22;
        goto LABEL_123;
      }

      v65 = *&v127.st_dev;
      qmemcpy((*&v127.st_dev + v127.st_ino), "com.apple.cellularlogging.state", 31);
      v66 = st_ino + 31;
      v127.st_ino = st_ino + 31;
    }

    else
    {
      if (SHIBYTE(v127.st_gid) < 0x17)
      {
        v55 = SHIBYTE(v127.st_gid) + 31;
        v56 = &v127;
        v57 = 22;
        goto LABEL_114;
      }

      v65 = &v127;
      qmemcpy(&v127 + SHIBYTE(v127.st_gid), "com.apple.cellularlogging.state", 31);
      v66 = st_ino + 31;
      HIBYTE(v127.st_gid) = (st_ino + 31) & 0x7F;
    }

    v64 = v65 + v66;
    goto LABEL_132;
  }

LABEL_38:
  v25 = v123;
  v26 = operator new(0x20uLL);
  v120 = v26;
  v121 = xmmword_23C32CBF0;
  strcpy(v26, "kCommandCellularLoggingStart");
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  aBlock[4] = this;
  aBlock[5] = v3;
  v118 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v27 = _Block_copy(aBlock);
  v28 = *(this + 3);
  if (v28)
  {
    dispatch_retain(*(this + 3));
  }

  v119[0] = v27;
  v119[1] = v28;
  abm::HelperServerInternal::setCommandHandler(v25, &v120, v119);
  if (v28)
  {
    dispatch_release(v28);
  }

  if (v27)
  {
    _Block_release(v27);
  }

  operator delete(v26);
  v29 = operator new(0x20uLL);
  v115 = v29;
  v116 = xmmword_23C32CA70;
  strcpy(v29, "kCommandCellularLoggingStop");
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3321888768;
  v112[2] = ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_7;
  v112[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v112[4] = this;
  v112[5] = v3;
  v113 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v112);
  v31 = *(this + 3);
  if (v31)
  {
    dispatch_retain(*(this + 3));
  }

  v114[0] = v30;
  v114[1] = v31;
  abm::HelperServerInternal::setCommandHandler(v25, &v115, v114);
  if (v31)
  {
    dispatch_release(v31);
  }

  if (v30)
  {
    _Block_release(v30);
  }

  operator delete(v29);
  v32 = operator new(0x28uLL);
  v110 = v32;
  v111 = xmmword_23C32DC30;
  strcpy(v32, "kCommandCellularLoggingGetCurrentIndex");
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3321888768;
  v107[2] = ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_8;
  v107[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v107[4] = this;
  v107[5] = v3;
  v108 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = _Block_copy(v107);
  v34 = *(this + 3);
  if (v34)
  {
    dispatch_retain(*(this + 3));
  }

  v109[0] = v33;
  v109[1] = v34;
  abm::HelperServerInternal::setCommandHandler(v25, &v110, v109);
  if (v34)
  {
    dispatch_release(v34);
  }

  if (v33)
  {
    _Block_release(v33);
  }

  operator delete(v32);
  v35 = operator new(0x28uLL);
  v105 = v35;
  v106 = xmmword_23C32D550;
  strcpy(v35, "kCommandCellularLoggingGetConfigLists");
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3321888768;
  v102[2] = ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_9;
  v102[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v102[4] = this;
  v102[5] = v3;
  v103 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v36 = _Block_copy(v102);
  v37 = *(this + 3);
  if (v37)
  {
    dispatch_retain(*(this + 3));
  }

  v104[0] = v36;
  v104[1] = v37;
  abm::HelperServerInternal::setCommandHandler(v25, &v105, v104);
  if (v37)
  {
    dispatch_release(v37);
  }

  if (v36)
  {
    _Block_release(v36);
  }

  operator delete(v35);
  v38 = operator new(0x20uLL);
  v100 = v38;
  v101 = xmmword_23C32CBF0;
  strcpy(v38, "kCommandCellularLoggingPause");
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3321888768;
  v97[2] = ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_10;
  v97[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v97[4] = this;
  v97[5] = v3;
  v98 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = _Block_copy(v97);
  v40 = *(this + 3);
  if (v40)
  {
    dispatch_retain(*(this + 3));
  }

  v99[0] = v39;
  v99[1] = v40;
  abm::HelperServerInternal::setCommandHandler(v25, &v100, v99);
  if (v40)
  {
    dispatch_release(v40);
  }

  if (v39)
  {
    _Block_release(v39);
  }

  operator delete(v38);
  v41 = operator new(0x20uLL);
  v95 = v41;
  v96 = xmmword_23C32F000;
  strcpy(v41, "kCommandCellularLoggingResume");
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3321888768;
  v92[2] = ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_11;
  v92[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v92[4] = this;
  v92[5] = v3;
  v93 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v42 = _Block_copy(v92);
  v43 = *(this + 3);
  if (v43)
  {
    dispatch_retain(*(this + 3));
  }

  v94[0] = v42;
  v94[1] = v43;
  abm::HelperServerInternal::setCommandHandler(v25, &v95, v94);
  if (v43)
  {
    dispatch_release(v43);
  }

  if (v42)
  {
    _Block_release(v42);
  }

  operator delete(v41);
  v44 = operator new(0x28uLL);
  v90 = v44;
  v91 = xmmword_23C32D550;
  strcpy(v44, "kCommandCellularLoggingSetAppBundleID");
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3321888768;
  v87[2] = ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_12;
  v87[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v87[4] = this;
  v87[5] = v3;
  v88 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v45 = _Block_copy(v87);
  v46 = *(this + 3);
  if (v46)
  {
    dispatch_retain(*(this + 3));
  }

  v89[0] = v45;
  v89[1] = v46;
  abm::HelperServerInternal::setCommandHandler(v25, &v90, v89);
  if (v46)
  {
    dispatch_release(v46);
  }

  if (v45)
  {
    _Block_release(v45);
  }

  operator delete(v44);
  v47 = operator new(0x20uLL);
  v85 = v47;
  v86 = xmmword_23C32D570;
  strcpy(v47, "kCommandCellularLoggingSnapshot");
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3321888768;
  v82[2] = ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_14;
  v82[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v82[4] = this;
  v82[5] = v3;
  v83 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v48 = _Block_copy(v82);
  v49 = *(this + 3);
  if (v49)
  {
    dispatch_retain(v49);
  }

  v84[0] = v48;
  v84[1] = v49;
  abm::HelperServerInternal::setCommandHandler(v25, &v85, v84);
  if (v49)
  {
    dispatch_release(v49);
  }

  if (v48)
  {
    _Block_release(v48);
  }

  operator delete(v47);
  if (v83)
  {
    std::__shared_weak_count::__release_weak(v83);
  }

  if (v88)
  {
    std::__shared_weak_count::__release_weak(v88);
  }

  if (v93)
  {
    std::__shared_weak_count::__release_weak(v93);
  }

  if (v98)
  {
    std::__shared_weak_count::__release_weak(v98);
  }

  if (v103)
  {
    std::__shared_weak_count::__release_weak(v103);
  }

  if (v108)
  {
    std::__shared_weak_count::__release_weak(v108);
  }

  if (v113)
  {
    std::__shared_weak_count::__release_weak(v113);
  }

  if (v118)
  {
    std::__shared_weak_count::__release_weak(v118);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v124;
  if (v124)
  {
LABEL_105:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v50 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v50);
    }
  }

LABEL_107:
  std::__shared_weak_count::__release_weak(v5);
  v51 = *MEMORY[0x277D85DE8];
}

void sub_23C2A15DC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&STACK[0x338]);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke(void *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = a1[4];
  v80 = 0;
  v81 = 0;
  v6 = a1[6];
  if (v6)
  {
    v81 = std::__shared_weak_count::lock(v6);
    if (!v81)
    {
      return;
    }

    v80 = a1[5];
    if (v80)
    {
      v9 = *(v5 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging Start", buf, 2u);
      }

      v10 = *(v5 + 128);
      if (v10)
      {
        if ((*(*v10 + 144))(v10))
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging has been already started!", buf, 2u);
          }

          v12 = xpc_null_create();
          if (*a4)
          {
            v13 = _Block_copy(*a4);
          }

          else
          {
            v13 = 0;
          }

          v24 = *(a4 + 8);
          *buf = MEMORY[0x277D85DD0];
          *&v83 = 3321888768;
          *(&v83 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
          v84 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
          if (v13)
          {
            v25 = _Block_copy(v13);
            v87 = 0;
            aBlock = v25;
            object = v12;
            if (v12)
            {
LABEL_43:
              xpc_retain(v12);
LABEL_46:
              dispatch_async(v24, buf);
              xpc_release(object);
              object = 0;
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v13)
              {
                _Block_release(v13);
              }

LABEL_105:
              xpc_release(v12);
              goto LABEL_168;
            }
          }

          else
          {
            v87 = 0;
            aBlock = 0;
            object = v12;
            if (v12)
            {
              goto LABEL_43;
            }
          }

          object = xpc_null_create();
          goto LABEL_46;
        }

        TelephonyXPC::ServerClientState::ServerClientState();
        *buf = operator new(0x28uLL);
        v83 = xmmword_23C32F4C0;
        strcpy(*buf, "com.apple.cellular-logging.internal");
        isClientEntitled = TelephonyXPC::ServerClientState::isClientEntitled();
        if (SHIBYTE(v83) < 0)
        {
          operator delete(*buf);
        }

        if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        *(*(v5 + 128) + 56) = isClientEntitled;
        if (!abm::CellularLoggingTask::isCarrierBundleKeyExist(v5))
        {
          v17 = *(v5 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle Key doesn't exist, checking for internal entitlement", buf, 2u);
          }

          if ((isClientEntitled & 1) == 0)
          {
            v26 = *(v5 + 40);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_ERROR, "Couldn't find internal app entitlement, cannot start cellular logging", buf, 2u);
            }

            v12 = xpc_null_create();
            if (*a4)
            {
              v27 = _Block_copy(*a4);
            }

            else
            {
              v27 = 0;
            }

            v38 = *(a4 + 8);
            *buf = MEMORY[0x277D85DD0];
            *&v83 = 3321888768;
            *(&v83 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
            v84 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
            if (v27)
            {
              v39 = _Block_copy(v27);
            }

            else
            {
              v39 = 0;
            }

            v87 = -534716416;
            aBlock = v39;
            object = v12;
            if (v12)
            {
              xpc_retain(v12);
            }

            else
            {
              object = xpc_null_create();
            }

            dispatch_async(v38, buf);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v27)
            {
              _Block_release(v27);
            }

            goto LABEL_105;
          }
        }

        if ((TelephonyUtilIsInternalBuild() & isClientEntitled & 1) == 0 && !abm::CellularLoggingTask::isUserAgreeLegalInfo(v5))
        {
          v34 = *(v5 + 40);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23C1C4000, v34, OS_LOG_TYPE_ERROR, "The User disagree to proceed!", buf, 2u);
          }

          v12 = xpc_null_create();
          if (*a4)
          {
            v35 = _Block_copy(*a4);
          }

          else
          {
            v35 = 0;
          }

          v40 = *(a4 + 8);
          *buf = MEMORY[0x277D85DD0];
          *&v83 = 3321888768;
          *(&v83 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
          v84 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
          if (v35)
          {
            v41 = _Block_copy(v35);
          }

          else
          {
            v41 = 0;
          }

          v87 = -534716414;
          aBlock = v41;
          object = v12;
          if (v12)
          {
            xpc_retain(v12);
          }

          else
          {
            object = xpc_null_create();
          }

          dispatch_async(v40, buf);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v35)
          {
            _Block_release(v35);
          }

          goto LABEL_105;
        }

        v18 = *MEMORY[0x277D861B8];
        v19 = sandbox_extension_issue_file();
        v20 = *(v5 + 128);
        v21 = *a3;
        v78 = v21;
        if (v21)
        {
          xpc_retain(v21);
        }

        else
        {
          v78 = xpc_null_create();
        }

        v28 = (*(*v20 + 16))(v20, &v78);
        xpc_release(v78);
        v78 = 0;
        if ((v28 & 1) == 0)
        {
          v31 = *(v5 + 40);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23C1C4000, v31, OS_LOG_TYPE_ERROR, "Failed to start CellularLoggingCommon object!", buf, 2u);
          }

          (*(**(v5 + 128) + 24))(*(v5 + 128));
          v32 = xpc_null_create();
          if (*a4)
          {
            v33 = _Block_copy(*a4);
          }

          else
          {
            v33 = 0;
          }

          v36 = *(a4 + 8);
          *buf = MEMORY[0x277D85DD0];
          *&v83 = 3321888768;
          *(&v83 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
          v84 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
          if (v33)
          {
            v37 = _Block_copy(v33);
          }

          else
          {
            v37 = 0;
          }

          v87 = -534716416;
          aBlock = v37;
          object = v32;
          if (v32)
          {
            xpc_retain(v32);
          }

          else
          {
            object = xpc_null_create();
          }

          dispatch_async(v36, buf);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v33)
          {
            _Block_release(v33);
          }

          xpc_release(v32);
          goto LABEL_168;
        }

        v29 = xpc_dictionary_create(0, 0, 0);
        if (v29 || (v29 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x23EECEE80](v29) == MEMORY[0x277D86468])
          {
            xpc_retain(v29);
            v30 = v29;
          }

          else
          {
            v30 = xpc_null_create();
          }
        }

        else
        {
          v30 = xpc_null_create();
          v29 = 0;
        }

        xpc_release(v29);
        v42 = strlen(v19);
        if (v42 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v43 = v42;
        if (v42 >= 0x17)
        {
          if ((v42 | 7) == 0x17)
          {
            v45 = 25;
          }

          else
          {
            v45 = (v42 | 7) + 1;
          }

          v44 = operator new(v45);
          *&v83 = v43;
          *(&v83 + 1) = v45 | 0x8000000000000000;
          *buf = v44;
        }

        else
        {
          HIBYTE(v83) = v42;
          v44 = buf;
          if (!v42)
          {
            goto LABEL_116;
          }
        }

        memmove(v44, v19, v43);
LABEL_116:
        *(v44 + v43) = 0;
        if (v83 >= 0)
        {
          v46 = buf;
        }

        else
        {
          v46 = *buf;
        }

        v47 = xpc_string_create(v46);
        if (!v47)
        {
          v47 = xpc_null_create();
        }

        xpc_dictionary_set_value(v30, "kKeySE", v47);
        v48 = xpc_null_create();
        xpc_release(v47);
        xpc_release(v48);
        if (SHIBYTE(v83) < 0)
        {
          operator delete(*buf);
        }

        (*(**(v5 + 128) + 72))(buf);
        if (v83 >= 0)
        {
          v49 = buf;
        }

        else
        {
          v49 = *buf;
        }

        v50 = xpc_string_create(v49);
        if (!v50)
        {
          v50 = xpc_null_create();
        }

        xpc_dictionary_set_value(v30, "kKeyConfigName", v50);
        v51 = xpc_null_create();
        xpc_release(v50);
        xpc_release(v51);
        if (SHIBYTE(v83) < 0)
        {
          operator delete(*buf);
        }

        v52 = (*(**(v5 + 128) + 80))(*(v5 + 128));
        v53 = xpc_int64_create(v52);
        if (!v53)
        {
          v53 = xpc_null_create();
        }

        xpc_dictionary_set_value(v30, "kKeyConfigHistory", v53);
        v54 = xpc_null_create();
        xpc_release(v53);
        xpc_release(v54);
        v55 = operator new(0x38uLL);
        strcpy(v55, "/private/var/mobile/Library/Logs/CellularLogging");
        v56 = xpc_string_create(v55);
        if (!v56)
        {
          v56 = xpc_null_create();
        }

        xpc_dictionary_set_value(v30, "LogPath", v56);
        v57 = xpc_null_create();
        xpc_release(v56);
        xpc_release(v57);
        operator delete(v55);
        (*(**(v5 + 128) + 88))(buf);
        if (v83 >= 0)
        {
          v58 = buf;
        }

        else
        {
          v58 = *buf;
        }

        v59 = xpc_string_create(v58);
        if (!v59)
        {
          v59 = xpc_null_create();
        }

        xpc_dictionary_set_value(v30, "kKeyLogExt", v59);
        v60 = xpc_null_create();
        xpc_release(v59);
        xpc_release(v60);
        if (SHIBYTE(v83) < 0)
        {
          operator delete(*buf);
        }

        v61 = (*(**(v5 + 128) + 80))(*(v5 + 128));
        v62 = xpc_int64_create(v61);
        if (!v62)
        {
          v62 = xpc_null_create();
        }

        xpc_dictionary_set_value(v30, "kKeyMaxNumberOfFiles", v62);
        v63 = xpc_null_create();
        xpc_release(v62);
        xpc_release(v63);
        v64 = (*(**(v5 + 128) + 104))(*(v5 + 128));
        v65 = xpc_int64_create(v64);
        if (!v65)
        {
          v65 = xpc_null_create();
        }

        xpc_dictionary_set_value(v30, "kKeyFileSize", v65);
        v66 = xpc_null_create();
        xpc_release(v65);
        xpc_release(v66);
        (*(**(v5 + 128) + 112))(&value);
        xpc_dictionary_set_value(v30, "kKeyGUIDLists", value);
        v67 = value;
        value = xpc_null_create();
        xpc_release(v67);
        xpc_release(value);
        value = 0;
        (*(**(v5 + 128) + 120))(&v76);
        xpc_dictionary_set_value(v30, "kKeyDIAGIDLists", v76);
        v68 = v76;
        v76 = xpc_null_create();
        xpc_release(v68);
        xpc_release(v76);
        v76 = 0;
        if (v19)
        {
          free(v19);
        }

        v69 = *(v5 + 80);
        if (v69)
        {
          dispatch_retain(*(v5 + 80));
          dispatch_group_enter(v69);
        }

        v70 = *(v5 + 104);
        *(v5 + 104) = v69;
        if (v70)
        {
          dispatch_group_leave(v70);
          dispatch_release(v70);
        }

        if (v30)
        {
          xpc_retain(v30);
          v71 = v30;
        }

        else
        {
          v71 = xpc_null_create();
        }

        if (*a4)
        {
          v72 = _Block_copy(*a4);
        }

        else
        {
          v72 = 0;
        }

        v73 = *(a4 + 8);
        *buf = MEMORY[0x277D85DD0];
        *&v83 = 3321888768;
        *(&v83 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v84 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v72)
        {
          v74 = _Block_copy(v72);
        }

        else
        {
          v74 = 0;
        }

        v87 = 0;
        aBlock = v74;
        object = v71;
        if (v71)
        {
          xpc_retain(v71);
        }

        else
        {
          object = xpc_null_create();
        }

        dispatch_async(v73, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v72)
        {
          _Block_release(v72);
        }

        xpc_release(v71);
        xpc_release(v30);
        goto LABEL_168;
      }

      v14 = *(v5 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "CellularLoggingCommon object has not been created!", buf, 2u);
      }

      v12 = xpc_null_create();
      if (*a4)
      {
        v15 = _Block_copy(*a4);
      }

      else
      {
        v15 = 0;
      }

      v22 = *(a4 + 8);
      *buf = MEMORY[0x277D85DD0];
      *&v83 = 3321888768;
      *(&v83 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
      v84 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v15)
      {
        v23 = _Block_copy(v15);
        v87 = -534716414;
        aBlock = v23;
        object = v12;
        if (v12)
        {
LABEL_32:
          xpc_retain(v12);
LABEL_35:
          dispatch_async(v22, buf);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v15)
          {
            _Block_release(v15);
          }

          goto LABEL_105;
        }
      }

      else
      {
        v87 = -534716414;
        aBlock = 0;
        object = v12;
        if (v12)
        {
          goto LABEL_32;
        }
      }

      object = xpc_null_create();
      goto LABEL_35;
    }
  }

LABEL_168:
  v75 = v81;
  if (v81)
  {
    if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v75->__on_zero_shared)(v75);
      std::__shared_weak_count::__release_weak(v75);
    }
  }
}

void sub_23C2A28B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  xpc_release(v22);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL abm::CellularLoggingTask::isCarrierBundleKeyExist(abm::CellularLoggingTask *this)
{
  v6 = 0;
  v1 = *(this + 16);
  if (!v1)
  {
    return 0;
  }

  memset(&v5, 170, sizeof(v5));
  strcpy(__p, "CellularLoggingAllowed");
  v4 = 22;
  abm::CellularLoggingCommon::getProperty(v1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(*__p);
  }

  util::convert<BOOL>(&v5, &v6, 0);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_23C2A2AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL abm::CellularLoggingTask::isUserAgreeLegalInfo(abm::CellularLoggingTask *this)
{
  v45 = *MEMORY[0x277D85DE8];
  memset(&v40, 170, sizeof(v40));
  v2 = *(this + 16);
  v39 = 12;
  strcpy(__p, "CarrierName1");
  abm::CellularLoggingCommon::getProperty(v2, __p, &v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  memset(&__sz, 170, sizeof(__sz));
  v3 = *(this + 16);
  v36 = 12;
  strcpy(v35, "CarrierName2");
  abm::CellularLoggingCommon::getProperty(v3, v35, &__sz);
  if (v36 < 0)
  {
    operator delete(v35[0]);
    memset(&v34, 170, sizeof(v34));
    v4 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      if (v4)
      {
        *&v34.__r_.__value_.__l.__data_ = *&v40.__r_.__value_.__l.__data_;
        v5 = v40.__r_.__value_.__r.__words[2];
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    memset(&v34, 170, sizeof(v34));
    v4 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  size = v40.__r_.__value_.__l.__size_;
  if (v40.__r_.__value_.__l.__size_)
  {
    p_sz = &v40;
    goto LABEL_20;
  }

LABEL_10:
  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __sz.__r_.__value_.__l.__size_;
    if (!__sz.__r_.__value_.__l.__size_)
    {
LABEL_25:
      *(&v34.__r_.__value_.__s + 23) = 7;
      strcpy(&v34, "Carrier");
      v8 = v4;
      if ((v4 & 0x80u) == 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v40.__r_.__value_.__l.__size_;
      }

      if (!v9)
      {
        goto LABEL_49;
      }

      goto LABEL_29;
    }

    p_sz = &__sz;
LABEL_20:
    std::string::__init_copy_ctor_external(&v34, p_sz->__r_.__value_.__l.__data_, size);
    v8 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v40.__r_.__value_.__l.__size_;
    }

    if (!v9)
    {
      goto LABEL_49;
    }

    goto LABEL_29;
  }

  if (!*(&__sz.__r_.__value_.__s + 23))
  {
    goto LABEL_25;
  }

  *&v34.__r_.__value_.__l.__data_ = *&__sz.__r_.__value_.__l.__data_;
  v5 = __sz.__r_.__value_.__r.__words[2];
LABEL_13:
  v34.__r_.__value_.__r.__words[2] = v5;
  v8 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = v40.__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
    goto LABEL_49;
  }

LABEL_29:
  v10 = SHIBYTE(__sz.__r_.__value_.__r.__words[2]);
  if ((__sz.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__sz.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __sz.__r_.__value_.__l.__size_;
  }

  if (v11)
  {
    v12 = v9 + 5;
    if (v9 + 5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 <= 0x16)
    {
      memset(&v42, 0, sizeof(v42));
      v14 = &v42;
      *(&v42.__r_.__value_.__s + 23) = v9 + 5;
    }

    else
    {
      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      v14 = operator new(v13);
      v42.__r_.__value_.__l.__size_ = v9 + 5;
      v42.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
      v42.__r_.__value_.__r.__words[0] = v14;
    }

    if (v8 >= 0)
    {
      v15 = &v40;
    }

    else
    {
      v15 = v40.__r_.__value_.__r.__words[0];
    }

    memmove(v14, v15, v9);
    strcpy(v14 + v9, " and ");
    if (v10 >= 0)
    {
      v16 = &__sz;
    }

    else
    {
      v16 = __sz.__r_.__value_.__r.__words[0];
    }

    v17 = std::string::append(&v42, v16, v11);
    v18 = v17->__r_.__value_.__r.__words[0];
    v44.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__l.__size_;
    *(v44.__r_.__value_.__r.__words + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
    v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    v34.__r_.__value_.__r.__words[0] = v18;
    v34.__r_.__value_.__l.__size_ = v44.__r_.__value_.__r.__words[0];
    *(&v34.__r_.__value_.__r.__words[1] + 7) = *(v44.__r_.__value_.__r.__words + 7);
    *(&v34.__r_.__value_.__s + 23) = v19;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_52;
    }
  }

LABEL_49:
  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_50:
    v32 = v34;
    goto LABEL_53;
  }

LABEL_52:
  std::string::__init_copy_ctor_external(&v32, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
LABEL_53:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v44 = v32;
  }

  v41 = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v44;
  }

  v43 = 0;
  v20 = *MEMORY[0x277CBECE8];
  if (ctu::cf::convert_copy())
  {
    v21 = v43;
  }

  else
  {
    v21 = 0;
  }

  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v33 = v21;
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_84:
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_85;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  v33 = v21;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_84;
  }

LABEL_64:
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_85:
  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_65:
  v42.__r_.__value_.__r.__words[0] = 0;
  v22 = CFURLCreateWithFileSystemPath(v20, @"/System/Library/PrivateFrameworks/ABMHelper.framework", kCFURLPOSIXPathStyle, 0);
  v44.__r_.__value_.__r.__words[0] = v22;
  v23 = CFBundleCreate(v20, v22);
  v43 = v23;
  v24 = CFBundleCopyLocalizedString(v23, @"USERCONFIRM_MESSAGE", @"USERCONFIRM_MESSAGE", @"CellularLoggingTask");
  v25 = CFStringCreateWithFormat(v20, 0, v24, v21);
  v41 = v25;
  v26 = CFBundleCopyLocalizedString(v23, @"USERCONFIRM_TITLE", @"USERCONFIRM_TITLE", @"CellularLoggingTask");
  v27 = CFBundleCopyLocalizedString(v23, @"USERCONFIRM_ALLOW", @"USERCONFIRM_ALLOW", @"CellularLoggingTask");
  v28 = CFBundleCopyLocalizedString(v23, @"USERCONFIRM_DENY", @"USERCONFIRM_DENY", @"CellularLoggingTask");
  CFUserNotificationDisplayAlert(0.0, 3uLL, 0, 0, 0, v26, v25, v27, v28, 0, &v42);
  CFRelease(v24);
  v29 = v42.__r_.__value_.__r.__words[0];
  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__sz.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_87:
    operator delete(__sz.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_88:
    operator delete(v40.__r_.__value_.__l.__data_);
    goto LABEL_82;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_87;
  }

LABEL_81:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_88;
  }

LABEL_82:
  result = v29 == 0;
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C2A30E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_81;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v5);
  v36 = v8;
  if (!v8)
  {
    goto LABEL_81;
  }

  v9 = v8;
  if (a1[5])
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging Stop", buf, 2u);
    }

    if (*(v7 + 128))
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      v12 = MEMORY[0x277D86468];
      if (v11 || (v11 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x23EECEE80](v11) == v12)
        {
          xpc_retain(v11);
          v13 = v11;
        }

        else
        {
          v13 = xpc_null_create();
        }
      }

      else
      {
        v13 = xpc_null_create();
        v11 = 0;
      }

      xpc_release(v11);
      if (MEMORY[0x23EECEE80](v13) == v12)
      {
        if (abm::CellularLoggingCommon::isStarted(*(v7 + 128)))
        {
          v22 = *(v7 + 128);
          if (*a4)
          {
            v23 = _Block_copy(*a4);
          }

          else
          {
            v23 = 0;
          }

          v28 = *(a4 + 8);
          if (v28)
          {
            dispatch_retain(v28);
          }

          v30 = a1[5];
          v29 = a1[6];
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = 0;
          v31 = operator new(0x30uLL);
          *v31 = &unk_284EFD020;
          v31[1] = v23;
          v31[2] = v28;
          v31[3] = v30;
          v31[4] = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v31[5] = v7;
          v45 = v31;
          (*(*v22 + 32))(v22, v44);
          if (v45 == v44)
          {
            (*(*v45 + 32))(v45);
          }

          else if (v45)
          {
            (*(*v45 + 40))(v45);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_weak(v29);
          }

          v34 = *(v7 + 104);
          *(v7 + 104) = 0;
          if (v34)
          {
            dispatch_group_leave(v34);
            dispatch_release(v34);
          }

LABEL_78:
          xpc_release(v13);
          v9 = v36;
          if (!v36)
          {
            goto LABEL_81;
          }

          goto LABEL_79;
        }

        v26 = *(v7 + 40);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging has not been started yet", buf, 2u);
        }

        v20 = xpc_null_create();
        if (*a4)
        {
          v27 = _Block_copy(*a4);
        }

        else
        {
          v27 = 0;
        }

        v32 = *(a4 + 8);
        *buf = MEMORY[0x277D85DD0];
        v38 = 3321888768;
        v39 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v40 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v27)
        {
          v33 = _Block_copy(v27);
        }

        else
        {
          v33 = 0;
        }

        v43 = 0;
        aBlock = v33;
        object = v20;
        if (v20)
        {
          xpc_retain(v20);
        }

        else
        {
          object = xpc_null_create();
        }

        dispatch_async(v32, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v27)
        {
          _Block_release(v27);
        }

LABEL_46:
        xpc_release(v20);
        goto LABEL_78;
      }

      v19 = *(v7 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_ERROR, "Failed to create output dictionary!", buf, 2u);
      }

      v20 = xpc_null_create();
      if (*a4)
      {
        v21 = _Block_copy(*a4);
      }

      else
      {
        v21 = 0;
      }

      v24 = *(a4 + 8);
      *buf = MEMORY[0x277D85DD0];
      v38 = 3321888768;
      v39 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
      v40 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v21)
      {
        v25 = _Block_copy(v21);
        v43 = -534716416;
        aBlock = v25;
        object = v20;
        if (v20)
        {
LABEL_39:
          xpc_retain(v20);
LABEL_42:
          dispatch_async(v24, buf);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v21)
          {
            _Block_release(v21);
          }

          goto LABEL_46;
        }
      }

      else
      {
        v43 = -534716416;
        aBlock = 0;
        object = v20;
        if (v20)
        {
          goto LABEL_39;
        }
      }

      object = xpc_null_create();
      goto LABEL_42;
    }

    v14 = *(v7 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "CellularLoggingCommon object has not been created!", buf, 2u);
    }

    v15 = xpc_null_create();
    if (*a4)
    {
      v16 = _Block_copy(*a4);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a4 + 8);
    *buf = MEMORY[0x277D85DD0];
    v38 = 3321888768;
    v39 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
    v40 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v16)
    {
      v18 = _Block_copy(v16);
      v43 = -534716414;
      aBlock = v18;
      object = v15;
      if (v15)
      {
LABEL_19:
        xpc_retain(v15);
LABEL_22:
        dispatch_async(v17, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v16)
        {
          _Block_release(v16);
        }

        xpc_release(v15);
        goto LABEL_79;
      }
    }

    else
    {
      v43 = -534716414;
      aBlock = 0;
      object = v15;
      if (v15)
      {
        goto LABEL_19;
      }
    }

    object = xpc_null_create();
    goto LABEL_22;
  }

LABEL_79:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_81:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_23C2A3920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::function<void ()(BOOL,xpc::dict)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t _ZZZN3abm19CellularLoggingTask9init_syncEvEUb_EN3__0D1Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_65;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v5);
  v33 = v8;
  if (!v8)
  {
    goto LABEL_65;
  }

  v9 = v8;
  if (a1[5])
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Getting Current Index", buf, 2u);
    }

    if (*(v7 + 128))
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      v12 = MEMORY[0x277D86468];
      if (v11 || (v11 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x23EECEE80](v11) == v12)
        {
          xpc_retain(v11);
          v13 = v11;
        }

        else
        {
          v13 = xpc_null_create();
        }
      }

      else
      {
        v13 = xpc_null_create();
        v11 = 0;
      }

      xpc_release(v11);
      if (MEMORY[0x23EECEE80](v13) != v12)
      {
        v19 = *(v7 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_ERROR, "Failed to create output dictionary!", buf, 2u);
        }

        v20 = xpc_null_create();
        if (*a4)
        {
          v21 = _Block_copy(*a4);
        }

        else
        {
          v21 = 0;
        }

        v28 = *(a4 + 8);
        *buf = MEMORY[0x277D85DD0];
        v35 = 3321888768;
        v36 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v37 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v21)
        {
          v29 = _Block_copy(v21);
          v40 = -534716416;
          aBlock = v29;
          object = v20;
          if (v20)
          {
LABEL_43:
            xpc_retain(v20);
LABEL_46:
            dispatch_async(v28, buf);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v21)
            {
              _Block_release(v21);
            }

            goto LABEL_62;
          }
        }

        else
        {
          v40 = -534716416;
          aBlock = 0;
          object = v20;
          if (v20)
          {
            goto LABEL_43;
          }
        }

        object = xpc_null_create();
        goto LABEL_46;
      }

      v22 = (*(**(v7 + 128) + 128))(*(v7 + 128));
      v23 = xpc_int64_create(v22);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      xpc_dictionary_set_value(v13, "kKeyCurrentIndex", v23);
      v24 = xpc_null_create();
      xpc_release(v23);
      xpc_release(v24);
      v25 = *(v7 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v22;
        _os_log_impl(&dword_23C1C4000, v25, OS_LOG_TYPE_DEFAULT, "#I Current Index is set to - 0x%x", buf, 8u);
      }

      if (v13)
      {
        xpc_retain(v13);
        v20 = v13;
        v26 = *a4;
        if (*a4)
        {
LABEL_39:
          v27 = _Block_copy(v26);
          goto LABEL_53;
        }
      }

      else
      {
        v20 = xpc_null_create();
        v26 = *a4;
        if (*a4)
        {
          goto LABEL_39;
        }
      }

      v27 = 0;
LABEL_53:
      v30 = *(a4 + 8);
      *buf = MEMORY[0x277D85DD0];
      v35 = 3321888768;
      v36 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
      v37 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v27)
      {
        v31 = _Block_copy(v27);
        v40 = 0;
        aBlock = v31;
        object = v20;
        if (v20)
        {
LABEL_55:
          xpc_retain(v20);
LABEL_58:
          dispatch_async(v30, buf);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v27)
          {
            _Block_release(v27);
          }

LABEL_62:
          xpc_release(v20);
          xpc_release(v13);
          v9 = v33;
          if (!v33)
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v40 = 0;
        aBlock = 0;
        object = v20;
        if (v20)
        {
          goto LABEL_55;
        }
      }

      object = xpc_null_create();
      goto LABEL_58;
    }

    v14 = *(v7 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "CellularLoggingCommon object doesn't exist!", buf, 2u);
    }

    v15 = xpc_null_create();
    if (*a4)
    {
      v16 = _Block_copy(*a4);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a4 + 8);
    *buf = MEMORY[0x277D85DD0];
    v35 = 3321888768;
    v36 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
    v37 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v16)
    {
      v18 = _Block_copy(v16);
      v40 = -534716416;
      aBlock = v18;
      object = v15;
      if (v15)
      {
LABEL_19:
        xpc_retain(v15);
LABEL_22:
        dispatch_async(v17, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v16)
        {
          _Block_release(v16);
        }

        xpc_release(v15);
        goto LABEL_63;
      }
    }

    else
    {
      v40 = -534716416;
      aBlock = 0;
      object = v15;
      if (v15)
      {
        goto LABEL_19;
      }
    }

    object = xpc_null_create();
    goto LABEL_22;
  }

LABEL_63:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_65:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_23C2A4070(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_9(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v5);
    v37 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
LABEL_69:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

      v10 = *(v7 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Getting Config Lists", buf, 2u);
      }

      if (*(v7 + 128))
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        v12 = MEMORY[0x277D86468];
        if (v11 || (v11 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x23EECEE80](v11) == v12)
          {
            xpc_retain(v11);
            v13 = v11;
          }

          else
          {
            v13 = xpc_null_create();
          }
        }

        else
        {
          v13 = xpc_null_create();
          v11 = 0;
        }

        xpc_release(v11);
        if (MEMORY[0x23EECEE80](v13) != v12)
        {
          v19 = *(v7 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_ERROR, "Failed to create output dictionary!", buf, 2u);
          }

          v20 = xpc_null_create();
          if (*a4)
          {
            v21 = _Block_copy(*a4);
          }

          else
          {
            v21 = 0;
          }

          v27 = *(a4 + 8);
          *buf = MEMORY[0x277D85DD0];
          v39 = 3321888768;
          v40 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
          v41 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
          if (v21)
          {
            v28 = _Block_copy(v21);
            v44 = -534716416;
            aBlock = v28;
            object = v20;
            if (v20)
            {
LABEL_41:
              xpc_retain(v20);
LABEL_44:
              dispatch_async(v27, buf);
              xpc_release(object);
              object = 0;
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v21)
              {
                _Block_release(v21);
              }

              xpc_release(v20);
              goto LABEL_68;
            }
          }

          else
          {
            v44 = -534716416;
            aBlock = 0;
            object = v20;
            if (v20)
            {
              goto LABEL_41;
            }
          }

          object = xpc_null_create();
          goto LABEL_44;
        }

        memset(__p, 170, sizeof(__p));
        (*(**(v7 + 128) + 136))(__p);
        v22 = xpc_data_create(__p[0], __p[1] - __p[0]);
        if (!v22)
        {
          v22 = xpc_null_create();
        }

        xpc_dictionary_set_value(v13, "kKeyConfigLists", v22);
        v23 = xpc_null_create();
        xpc_release(v22);
        xpc_release(v23);
        if (v13)
        {
          xpc_retain(v13);
          v24 = v13;
          v25 = *a4;
          if (*a4)
          {
LABEL_37:
            v26 = _Block_copy(v25);
            goto LABEL_51;
          }
        }

        else
        {
          v24 = xpc_null_create();
          v25 = *a4;
          if (*a4)
          {
            goto LABEL_37;
          }
        }

        v26 = 0;
LABEL_51:
        v29 = *(a4 + 8);
        *buf = MEMORY[0x277D85DD0];
        v39 = 3321888768;
        v40 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v41 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v26)
        {
          v30 = _Block_copy(v26);
          v44 = 0;
          aBlock = v30;
          object = v24;
          if (v24)
          {
LABEL_53:
            xpc_retain(v24);
LABEL_56:
            dispatch_async(v29, buf);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v26)
            {
              _Block_release(v26);
            }

            xpc_release(v24);
            v31 = __p[0];
            if (__p[0])
            {
              v32 = __p[1];
              v33 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v34 = *(v32 - 1);
                  v32 -= 3;
                  if (v34 < 0)
                  {
                    operator delete(*v32);
                  }
                }

                while (v32 != v31);
                v33 = __p[0];
              }

              __p[1] = v31;
              operator delete(v33);
            }

LABEL_68:
            xpc_release(v13);
            v9 = v37;
            if (!v37)
            {
              return;
            }

            goto LABEL_69;
          }
        }

        else
        {
          v44 = 0;
          aBlock = 0;
          object = v24;
          if (v24)
          {
            goto LABEL_53;
          }
        }

        object = xpc_null_create();
        goto LABEL_56;
      }

      v14 = *(v7 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "CellularLoggingCommon object doesn't exist!", buf, 2u);
      }

      v15 = xpc_null_create();
      if (*a4)
      {
        v16 = _Block_copy(*a4);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a4 + 8);
      *buf = MEMORY[0x277D85DD0];
      v39 = 3321888768;
      v40 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
      v41 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v16)
      {
        v18 = _Block_copy(v16);
        v44 = -534716416;
        aBlock = v18;
        object = v15;
        if (v15)
        {
LABEL_19:
          xpc_retain(v15);
LABEL_22:
          dispatch_async(v17, buf);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v16)
          {
            _Block_release(v16);
          }

          xpc_release(v15);
          goto LABEL_69;
        }
      }

      else
      {
        v44 = -534716416;
        aBlock = 0;
        object = v15;
        if (v15)
        {
          goto LABEL_19;
        }
      }

      object = xpc_null_create();
      goto LABEL_22;
    }
  }
}

void sub_23C2A4714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  xpc_release(v13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v5);
    v32 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
        goto LABEL_67;
      }

      v10 = *(v7 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Pause Cellular Logging", buf, 2u);
      }

      v11 = *(v7 + 128);
      if (v11)
      {
        if (abm::CellularLoggingCommon::isStarted(v11))
        {
          v12 = *(v7 + 128);
          object = xpc_null_create();
          LOBYTE(v12) = (*(*v12 + 40))(v12, &object);
          xpc_release(object);
          object = 0;
          if (v12)
          {
            v13 = xpc_null_create();
            if (*a4)
            {
              v14 = _Block_copy(*a4);
            }

            else
            {
              v14 = 0;
            }

            v26 = *(a4 + 8);
            *buf = MEMORY[0x277D85DD0];
            v34 = 3321888768;
            v35 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
            v36 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
            if (v14)
            {
              v27 = _Block_copy(v14);
              v39 = 0;
              aBlock = v27;
              v38 = v13;
              if (v13)
              {
LABEL_48:
                xpc_retain(v13);
LABEL_55:
                dispatch_async(v26, buf);
                xpc_release(v38);
                v38 = 0;
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v14)
                {
                  _Block_release(v14);
                }

LABEL_66:
                xpc_release(v13);
LABEL_67:
                if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v9->__on_zero_shared)(v9);
                  std::__shared_weak_count::__release_weak(v9);
                }

                return;
              }
            }

            else
            {
              v39 = 0;
              aBlock = 0;
              v38 = v13;
              if (v13)
              {
                goto LABEL_48;
              }
            }

            v38 = xpc_null_create();
            goto LABEL_55;
          }

          v20 = *(v7 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, "Failed to pause cellular logging", buf, 2u);
          }

          v13 = xpc_null_create();
          if (*a4)
          {
            v21 = _Block_copy(*a4);
          }

          else
          {
            v21 = 0;
          }

          v28 = *(a4 + 8);
          *buf = MEMORY[0x277D85DD0];
          v34 = 3321888768;
          v35 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
          v36 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
          if (v21)
          {
            v29 = _Block_copy(v21);
            v39 = -534716416;
            aBlock = v29;
            v38 = v13;
            if (v13)
            {
LABEL_52:
              xpc_retain(v13);
LABEL_62:
              dispatch_async(v28, buf);
              xpc_release(v38);
              v38 = 0;
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v21)
              {
                _Block_release(v21);
              }

              goto LABEL_66;
            }
          }

          else
          {
            v39 = -534716416;
            aBlock = 0;
            v38 = v13;
            if (v13)
            {
              goto LABEL_52;
            }
          }

          v38 = xpc_null_create();
          goto LABEL_62;
        }

        v18 = *(v7 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging has not been started yet", buf, 2u);
        }

        v16 = xpc_null_create();
        if (*a4)
        {
          v19 = _Block_copy(*a4);
        }

        else
        {
          v19 = 0;
        }

        v24 = *(a4 + 8);
        *buf = MEMORY[0x277D85DD0];
        v34 = 3321888768;
        v35 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v36 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v19)
        {
          v25 = _Block_copy(v19);
          v39 = 0;
          aBlock = v25;
          v38 = v16;
          if (v16)
          {
LABEL_37:
            xpc_retain(v16);
LABEL_40:
            dispatch_async(v24, buf);
            xpc_release(v38);
            v38 = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v19)
            {
              _Block_release(v19);
            }

LABEL_33:
            xpc_release(v16);
            goto LABEL_67;
          }
        }

        else
        {
          v39 = 0;
          aBlock = 0;
          v38 = v16;
          if (v16)
          {
            goto LABEL_37;
          }
        }

        v38 = xpc_null_create();
        goto LABEL_40;
      }

      v15 = *(v7 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "CellularLoggingCommon object doesn't exist!", buf, 2u);
      }

      v16 = xpc_null_create();
      if (*a4)
      {
        v17 = _Block_copy(*a4);
      }

      else
      {
        v17 = 0;
      }

      v22 = *(a4 + 8);
      *buf = MEMORY[0x277D85DD0];
      v34 = 3321888768;
      v35 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
      v36 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v17)
      {
        v23 = _Block_copy(v17);
        v39 = -534716416;
        aBlock = v23;
        v38 = v16;
        if (v16)
        {
LABEL_26:
          xpc_retain(v16);
LABEL_29:
          dispatch_async(v22, buf);
          xpc_release(v38);
          v38 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v17)
          {
            _Block_release(v17);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v39 = -534716416;
        aBlock = 0;
        v38 = v16;
        if (v16)
        {
          goto LABEL_26;
        }
      }

      v38 = xpc_null_create();
      goto LABEL_29;
    }
  }
}

void sub_23C2A4D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_23C2A4DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_11(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v5);
    v32 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
        goto LABEL_67;
      }

      v10 = *(v7 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Resume Cellular Logging", buf, 2u);
      }

      v11 = *(v7 + 128);
      if (v11)
      {
        if (abm::CellularLoggingCommon::isStarted(v11))
        {
          v12 = *(v7 + 128);
          object = xpc_null_create();
          LOBYTE(v12) = (*(*v12 + 48))(v12, &object);
          xpc_release(object);
          object = 0;
          if (v12)
          {
            v13 = xpc_null_create();
            if (*a4)
            {
              v14 = _Block_copy(*a4);
            }

            else
            {
              v14 = 0;
            }

            v26 = *(a4 + 8);
            *buf = MEMORY[0x277D85DD0];
            v34 = 3321888768;
            v35 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
            v36 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
            if (v14)
            {
              v27 = _Block_copy(v14);
              v39 = 0;
              aBlock = v27;
              v38 = v13;
              if (v13)
              {
LABEL_48:
                xpc_retain(v13);
LABEL_55:
                dispatch_async(v26, buf);
                xpc_release(v38);
                v38 = 0;
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v14)
                {
                  _Block_release(v14);
                }

LABEL_66:
                xpc_release(v13);
LABEL_67:
                if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v9->__on_zero_shared)(v9);
                  std::__shared_weak_count::__release_weak(v9);
                }

                return;
              }
            }

            else
            {
              v39 = 0;
              aBlock = 0;
              v38 = v13;
              if (v13)
              {
                goto LABEL_48;
              }
            }

            v38 = xpc_null_create();
            goto LABEL_55;
          }

          v20 = *(v7 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, "Failed to resume cellular logging", buf, 2u);
          }

          v13 = xpc_null_create();
          if (*a4)
          {
            v21 = _Block_copy(*a4);
          }

          else
          {
            v21 = 0;
          }

          v28 = *(a4 + 8);
          *buf = MEMORY[0x277D85DD0];
          v34 = 3321888768;
          v35 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
          v36 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
          if (v21)
          {
            v29 = _Block_copy(v21);
            v39 = -534716416;
            aBlock = v29;
            v38 = v13;
            if (v13)
            {
LABEL_52:
              xpc_retain(v13);
LABEL_62:
              dispatch_async(v28, buf);
              xpc_release(v38);
              v38 = 0;
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v21)
              {
                _Block_release(v21);
              }

              goto LABEL_66;
            }
          }

          else
          {
            v39 = -534716416;
            aBlock = 0;
            v38 = v13;
            if (v13)
            {
              goto LABEL_52;
            }
          }

          v38 = xpc_null_create();
          goto LABEL_62;
        }

        v18 = *(v7 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging has not been started yet", buf, 2u);
        }

        v16 = xpc_null_create();
        if (*a4)
        {
          v19 = _Block_copy(*a4);
        }

        else
        {
          v19 = 0;
        }

        v24 = *(a4 + 8);
        *buf = MEMORY[0x277D85DD0];
        v34 = 3321888768;
        v35 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v36 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v19)
        {
          v25 = _Block_copy(v19);
          v39 = 0;
          aBlock = v25;
          v38 = v16;
          if (v16)
          {
LABEL_37:
            xpc_retain(v16);
LABEL_40:
            dispatch_async(v24, buf);
            xpc_release(v38);
            v38 = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v19)
            {
              _Block_release(v19);
            }

LABEL_33:
            xpc_release(v16);
            goto LABEL_67;
          }
        }

        else
        {
          v39 = 0;
          aBlock = 0;
          v38 = v16;
          if (v16)
          {
            goto LABEL_37;
          }
        }

        v38 = xpc_null_create();
        goto LABEL_40;
      }

      v15 = *(v7 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "CellularLoggingCommon object doesn't exist!", buf, 2u);
      }

      v16 = xpc_null_create();
      if (*a4)
      {
        v17 = _Block_copy(*a4);
      }

      else
      {
        v17 = 0;
      }

      v22 = *(a4 + 8);
      *buf = MEMORY[0x277D85DD0];
      v34 = 3321888768;
      v35 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
      v36 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v17)
      {
        v23 = _Block_copy(v17);
        v39 = -534716416;
        aBlock = v23;
        v38 = v16;
        if (v16)
        {
LABEL_26:
          xpc_retain(v16);
LABEL_29:
          dispatch_async(v22, buf);
          xpc_release(v38);
          v38 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v17)
          {
            _Block_release(v17);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v39 = -534716416;
        aBlock = 0;
        v38 = v16;
        if (v16)
        {
          goto LABEL_26;
        }
      }

      v38 = xpc_null_create();
      goto LABEL_29;
    }
  }
}

void sub_23C2A53FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_23C2A5438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_12(void *a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_96;
  }

  v8 = a1[4];
  v9 = std::__shared_weak_count::lock(v5);
  v45 = v9;
  if (!v9)
  {
    goto LABEL_96;
  }

  v10 = v9;
  if (a1[5])
  {
    v11 = *(v8 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Setting up bundle ID monitoring for Cellular Logging", &buf, 2u);
    }

    if (*(v8 + 112))
    {
      if (MEMORY[0x23EECEE80](*a3) != MEMORY[0x277D86468])
      {
        v12 = xpc_null_create();
        if (*a4)
        {
          v13 = _Block_copy(*a4);
        }

        else
        {
          v13 = 0;
        }

        v16 = *(a4 + 8);
        buf.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
        buf.__r_.__value_.__l.__size_ = 3321888768;
        buf.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v49 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v13)
        {
          v17 = _Block_copy(v13);
          v52 = -534716414;
          aBlock = v17;
          object = v12;
          if (v12)
          {
LABEL_17:
            xpc_retain(v12);
LABEL_20:
            dispatch_async(v16, &buf);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v13)
            {
              _Block_release(v13);
            }

LABEL_24:
            xpc_release(v12);
            goto LABEL_94;
          }
        }

        else
        {
          v52 = -534716414;
          aBlock = 0;
          object = v12;
          if (v12)
          {
            goto LABEL_17;
          }
        }

        object = xpc_null_create();
        goto LABEL_20;
      }

      memset(&v43, 170, sizeof(v43));
      value = xpc_dictionary_get_value(*a3, "kKeyAppBundleID");
      buf.__r_.__value_.__r.__words[0] = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        buf.__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      xpc::dyn_cast_or_default();
      xpc_release(buf.__r_.__value_.__l.__data_);
      v20 = *(v8 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = &v43;
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v43.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v21;
        _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I Preparing to set up monitoring for bundle ID %s", &buf, 0xCu);
      }

      v22 = *(v8 + 112);
      v23 = *(v8 + 24);
      v42 = v23;
      if (v23)
      {
        dispatch_retain(v23);
      }

      v39 = v8;
      if (*a4)
      {
        v24 = _Block_copy(*a4);
        v25 = *(a4 + 8);
        v40 = v24;
        v41 = v25;
        if (!v25)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v24 = 0;
        v25 = *(a4 + 8);
        v40 = 0;
        v41 = v25;
        if (!v25)
        {
LABEL_46:
          v47 = 0;
          v26 = operator new(0x20uLL);
          *v26 = &unk_284EFD0B0;
          v26[1] = v8;
          v26[2] = v24;
          v26[3] = v25;
          v40 = 0;
          v41 = 0;
          v47 = v26;
          abm::AppMonitor::setAppStateHandler(v22, &v42, v46);
          if (v47 == v46)
          {
            (*(*v47 + 32))(v47);
          }

          else if (v47)
          {
            (*(*v47 + 40))();
          }

          if (v23)
          {
            dispatch_release(v23);
          }

          v27 = *(v8 + 112);
          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v43;
          }

          v28 = *v27;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = __p;
          }

          v29 = abm::AppMonitorInternal::addBundleID(v28, &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_62:
              if (v29)
              {
LABEL_63:
                abm::AppMonitorInternal::start(**(v8 + 112));
                v30 = xpc_null_create();
                if (*a4)
                {
                  v31 = _Block_copy(*a4);
                }

                else
                {
                  v31 = 0;
                }

                v35 = *(a4 + 8);
                buf.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
                buf.__r_.__value_.__l.__size_ = 3321888768;
                buf.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
                v49 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
                if (v31)
                {
                  v36 = _Block_copy(v31);
                }

                else
                {
                  v36 = 0;
                }

                v52 = 0;
                aBlock = v36;
                object = v30;
                if (v30)
                {
                  xpc_retain(v30);
                }

                else
                {
                  object = xpc_null_create();
                }

                dispatch_async(v35, &buf);
                xpc_release(object);
                object = 0;
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v31)
                {
                  _Block_release(v31);
                }

LABEL_92:
                xpc_release(v30);
                if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v43.__r_.__value_.__l.__data_);
                }

                goto LABEL_94;
              }

LABEL_67:
              v30 = xpc_null_create();
              if (*a4)
              {
                v32 = _Block_copy(*a4);
              }

              else
              {
                v32 = 0;
              }

              v33 = *(a4 + 8);
              buf.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
              buf.__r_.__value_.__l.__size_ = 3321888768;
              buf.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
              v49 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
              if (v32)
              {
                v34 = _Block_copy(v32);
              }

              else
              {
                v34 = 0;
              }

              v52 = -534716416;
              aBlock = v34;
              object = v30;
              if (v30)
              {
                xpc_retain(v30);
              }

              else
              {
                object = xpc_null_create();
              }

              dispatch_async(v33, &buf);
              xpc_release(object);
              object = 0;
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v32)
              {
                _Block_release(v32);
              }

              goto LABEL_92;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
          if (v29)
          {
            goto LABEL_63;
          }

          goto LABEL_67;
        }
      }

      dispatch_retain(v25);
      goto LABEL_46;
    }

    v12 = xpc_null_create();
    if (*a4)
    {
      v14 = _Block_copy(*a4);
    }

    else
    {
      v14 = 0;
    }

    v18 = *(a4 + 8);
    buf.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
    buf.__r_.__value_.__l.__size_ = 3321888768;
    buf.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
    v49 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v14)
    {
      v19 = _Block_copy(v14);
      v52 = -534716416;
      aBlock = v19;
      object = v12;
      if (v12)
      {
LABEL_28:
        xpc_retain(v12);
LABEL_31:
        dispatch_async(v18, &buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v14)
        {
          _Block_release(v14);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v52 = -534716416;
      aBlock = 0;
      object = v12;
      if (v12)
      {
        goto LABEL_28;
      }
    }

    object = xpc_null_create();
    goto LABEL_31;
  }

LABEL_94:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_96:
  v37 = *MEMORY[0x277D85DE8];
}

void sub_23C2A5B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZZN3abm19CellularLoggingTask9init_syncEvEUb0_EN3__1D1Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void ___ZN3abm19CellularLoggingTask9init_syncEv_block_invoke_14(void *a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_86;
  }

  v8 = a1[4];
  v9 = std::__shared_weak_count::lock(v5);
  v40 = v9;
  if (!v9)
  {
    goto LABEL_86;
  }

  v10 = v9;
  if (a1[5])
  {
    v11 = *(v8 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging dump Telephony Logs", buf, 2u);
    }

    if (*(v8 + 128))
    {
      v12 = xpc_dictionary_create(0, 0, 0);
      v13 = MEMORY[0x277D86468];
      if (v12 || (v12 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x23EECEE80](v12) == v13)
        {
          xpc_retain(v12);
          v14 = v12;
        }

        else
        {
          v14 = xpc_null_create();
        }
      }

      else
      {
        v14 = xpc_null_create();
        v12 = 0;
      }

      xpc_release(v12);
      if (MEMORY[0x23EECEE80](v14) == v13)
      {
        if (abm::CellularLoggingCommon::isStarted(*(v8 + 128)))
        {
          memset(__p, 170, sizeof(__p));
          value = xpc_dictionary_get_value(*a3, "DumpStateReason");
          v37 = value;
          if (value)
          {
            xpc_retain(value);
          }

          else
          {
            v37 = xpc_null_create();
          }

          *buf = 0;
          v42 = 0;
          v43 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v43) < 0)
          {
            operator delete(*buf);
          }

          xpc_release(v37);
          v28 = *(v8 + 128);
          if (*a4)
          {
            v29 = _Block_copy(*a4);
          }

          else
          {
            v29 = 0;
          }

          v32 = *(a4 + 8);
          if (v32)
          {
            dispatch_retain(v32);
          }

          v34 = a1[5];
          v33 = a1[6];
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = 0;
          v35 = operator new(0x30uLL);
          *v35 = &unk_284EFD130;
          v35[1] = v29;
          v35[2] = v32;
          v35[3] = v34;
          v35[4] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v35[5] = v8;
          v49 = v35;
          (*(*v28 + 160))(v28, __p, v48);
          if (v49 == v48)
          {
            (*(*v49 + 32))(v49);
          }

          else if (v49)
          {
            (*(*v49 + 40))(v49);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_weak(v33);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_83:
          xpc_release(v14);
          v10 = v40;
          if (!v40)
          {
            goto LABEL_86;
          }

          goto LABEL_84;
        }

        v26 = *(v8 + 40);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging has not been started yet", buf, 2u);
        }

        v21 = xpc_null_create();
        if (*a4)
        {
          v27 = _Block_copy(*a4);
        }

        else
        {
          v27 = 0;
        }

        v30 = *(a4 + 8);
        *buf = MEMORY[0x277D85DD0];
        v42 = 3321888768;
        v43 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v44 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v27)
        {
          v31 = _Block_copy(v27);
        }

        else
        {
          v31 = 0;
        }

        v47 = 0;
        aBlock = v31;
        object = v21;
        if (v21)
        {
          xpc_retain(v21);
        }

        else
        {
          object = xpc_null_create();
        }

        dispatch_async(v30, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v27)
        {
          _Block_release(v27);
        }

LABEL_46:
        xpc_release(v21);
        goto LABEL_83;
      }

      v20 = *(v8 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, "Failed to create output dictionary", buf, 2u);
      }

      v21 = xpc_null_create();
      if (*a4)
      {
        v22 = _Block_copy(*a4);
      }

      else
      {
        v22 = 0;
      }

      v24 = *(a4 + 8);
      *buf = MEMORY[0x277D85DD0];
      v42 = 3321888768;
      v43 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
      v44 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v22)
      {
        v25 = _Block_copy(v22);
        v47 = -534716416;
        aBlock = v25;
        object = v21;
        if (v21)
        {
LABEL_39:
          xpc_retain(v21);
LABEL_42:
          dispatch_async(v24, buf);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v22)
          {
            _Block_release(v22);
          }

          goto LABEL_46;
        }
      }

      else
      {
        v47 = -534716416;
        aBlock = 0;
        object = v21;
        if (v21)
        {
          goto LABEL_39;
        }
      }

      object = xpc_null_create();
      goto LABEL_42;
    }

    v15 = *(v8 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "CellularLoggingCommon object has not been created", buf, 2u);
    }

    v16 = xpc_null_create();
    if (*a4)
    {
      v17 = _Block_copy(*a4);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a4 + 8);
    *buf = MEMORY[0x277D85DD0];
    v42 = 3321888768;
    v43 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
    v44 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v17)
    {
      v19 = _Block_copy(v17);
      v47 = -534716414;
      aBlock = v19;
      object = v16;
      if (v16)
      {
LABEL_19:
        xpc_retain(v16);
LABEL_22:
        dispatch_async(v18, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        xpc_release(v16);
        goto LABEL_84;
      }
    }

    else
    {
      v47 = -534716414;
      aBlock = 0;
      object = v16;
      if (v16)
      {
        goto LABEL_19;
      }
    }

    object = xpc_null_create();
    goto LABEL_22;
  }

LABEL_84:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_86:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_23C2A63E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t _ZZZN3abm19CellularLoggingTask9init_syncEvEUb1_EN3__2D1Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFBundle>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

void *_ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb_E3__0NS_9allocatorIS4_EEFvbN3xpc4dictEEED1Ev(void *a1)
{
  *a1 = &unk_284EFD020;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb_E3__0NS_9allocatorIS4_EEFvbN3xpc4dictEEED0Ev(void *__p)
{
  *__p = &unk_284EFD020;
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[1];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb_E3__0NS_9allocatorIS4_EEFvbN3xpc4dictEEE7__cloneEv(void *a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_284EFD020;
  v3 = a1[1];
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v4 = a1[2];
  v2[1] = v3;
  v2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = a1[4];
  v2[3] = a1[3];
  v2[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v2[5] = a1[5];
  return v2;
}

void _ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb_E3__0NS_9allocatorIS4_EEFvbN3xpc4dictEEE7__cloneEPNS0_6__baseIS9_EE(void *a1, void *a2)
{
  *a2 = &unk_284EFD020;
  v4 = a1[1];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a1[2];
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a1[4];
  a2[3] = a1[3];
  a2[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  a2[5] = a1[5];
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb_E3__0NS_9allocatorIS4_EEFvbN3xpc4dictEEE7destroyEv(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb_E3__0NS_9allocatorIS4_EEFvbN3xpc4dictEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[1];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb_E3__0NS_9allocatorIS4_EEFvbN3xpc4dictEEEclEObOS8_(void *a1, char *a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[4];
  if (!v6)
  {
    goto LABEL_39;
  }

  v7 = a1[5];
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = v8;
  if (a1[3])
  {
    if (v4)
    {
      goto LABEL_22;
    }

    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to stop log collection", &v21, 2u);
      if (v5)
      {
LABEL_7:
        xpc_retain(v5);
        v11 = v5;
        v12 = a1[1];
        if (v12)
        {
LABEL_8:
          v13 = _Block_copy(v12);
          goto LABEL_12;
        }

LABEL_11:
        v13 = 0;
LABEL_12:
        v14 = a1[2];
        v21 = MEMORY[0x277D85DD0];
        v22 = 3321888768;
        v23 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v24 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v13)
        {
          v15 = _Block_copy(v13);
          v27 = -534716416;
          aBlock = v15;
          object = v11;
          if (v11)
          {
LABEL_14:
            xpc_retain(v11);
LABEL_17:
            dispatch_async(v14, &v21);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v13)
            {
              _Block_release(v13);
            }

            xpc_release(v11);
LABEL_22:
            if (v5)
            {
              xpc_retain(v5);
              v16 = v5;
              v17 = a1[1];
              if (v17)
              {
LABEL_24:
                v18 = _Block_copy(v17);
                goto LABEL_27;
              }
            }

            else
            {
              v16 = xpc_null_create();
              v17 = a1[1];
              if (v17)
              {
                goto LABEL_24;
              }
            }

            v18 = 0;
LABEL_27:
            v19 = a1[2];
            v21 = MEMORY[0x277D85DD0];
            v22 = 3321888768;
            v23 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
            v24 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
            if (v18)
            {
              v20 = _Block_copy(v18);
              v27 = 0;
              aBlock = v20;
              object = v16;
              if (v16)
              {
LABEL_29:
                xpc_retain(v16);
LABEL_32:
                dispatch_async(v19, &v21);
                xpc_release(object);
                object = 0;
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v18)
                {
                  _Block_release(v18);
                }

                xpc_release(v16);
                goto LABEL_37;
              }
            }

            else
            {
              v27 = 0;
              aBlock = 0;
              object = v16;
              if (v16)
              {
                goto LABEL_29;
              }
            }

            object = xpc_null_create();
            goto LABEL_32;
          }
        }

        else
        {
          v27 = -534716416;
          aBlock = 0;
          object = v11;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        object = xpc_null_create();
        goto LABEL_17;
      }
    }

    else if (v5)
    {
      goto LABEL_7;
    }

    v11 = xpc_null_create();
    v12 = a1[1];
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_37:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_39:
  xpc_release(v5);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb_E3__0NS_9allocatorIS4_EEFvbN3xpc4dictEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3abm19CellularLoggingTask9init_syncEvEUb_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3abm19CellularLoggingTask9init_syncEvEUb_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3abm19CellularLoggingTask9init_syncEvEUb_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3abm19CellularLoggingTask9init_syncEvEUb_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3__1NS_9allocatorIS4_EEFvNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEENS2_8AppStateEEED1Ev(void *a1)
{
  *a1 = &unk_284EFD0B0;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3__1NS_9allocatorIS4_EEFvNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEENS2_8AppStateEEED0Ev(void *__p)
{
  *__p = &unk_284EFD0B0;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3__1NS_9allocatorIS4_EEFvNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEENS2_8AppStateEEE7__cloneEv(void *a1)
{
  v2 = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_284EFD0B0;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = a1[3];
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return v2;
}

void _ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3__1NS_9allocatorIS4_EEFvNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEENS2_8AppStateEEE7__cloneEPNS0_6__baseISD_EE(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_284EFD0B0;
  a2[1] = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a1[3];
  a2[2] = v4;
  a2[3] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3__1NS_9allocatorIS4_EEFvNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEENS2_8AppStateEEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    _Block_release(v3);
  }
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3__1NS_9allocatorIS4_EEFvNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEENS2_8AppStateEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3__1NS_9allocatorIS4_EEFvNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEENS2_8AppStateEEEclEOSB_OSC_(void *a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v24 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *a3;
  v5 = a1[1];
  v6 = v5[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I App state: %d", buf, 8u);
  }

  if (v4 == 1)
  {
    v7 = v5[16];
    if (v7)
    {
      if (((*(*v7 + 152))(v7, __p) & 1) == 0 && (v8 = v5[5], os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failure to handle app crash", buf, 2u);
        v9 = v5[14];
        if (v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = v5[14];
        if (v9)
        {
LABEL_8:
          *buf = *v9;
          ctu::SharedSynchronizable<abm::AppMonitorInternal>::execute_wrapped<abm::AppMonitorInternal::stop(void)::{lambda(void)#1}>(*buf, buf);
          goto LABEL_40;
        }
      }

      v16 = v5[5];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "AppMonitor object doesn't exist!", buf, 2u);
      }

      v17 = xpc_null_create();
      v18 = a1[2];
      if (v18)
      {
        v19 = _Block_copy(v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = a1[3];
      *buf = MEMORY[0x277D85DD0];
      v26 = 3321888768;
      v27 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
      v28 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v19)
      {
        v21 = _Block_copy(v19);
        v31 = -534716416;
        aBlock = v21;
        object = v17;
        if (v17)
        {
LABEL_32:
          xpc_retain(v17);
LABEL_35:
          dispatch_async(v20, buf);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v19)
          {
            _Block_release(v19);
          }

          xpc_release(v17);
          goto LABEL_40;
        }
      }

      else
      {
        v31 = -534716416;
        aBlock = 0;
        object = v17;
        if (v17)
        {
          goto LABEL_32;
        }
      }

      object = xpc_null_create();
      goto LABEL_35;
    }

    v10 = v5[5];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "CellularLoggingCommon object doesn't exist!", buf, 2u);
    }

    v11 = xpc_null_create();
    v12 = a1[2];
    if (v12)
    {
      v13 = _Block_copy(v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = a1[3];
    *buf = MEMORY[0x277D85DD0];
    v26 = 3321888768;
    v27 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
    v28 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v13)
    {
      v15 = _Block_copy(v13);
      v31 = -534716416;
      aBlock = v15;
      object = v11;
      if (v11)
      {
LABEL_16:
        xpc_retain(v11);
LABEL_19:
        dispatch_async(v14, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        xpc_release(v11);
        goto LABEL_40;
      }
    }

    else
    {
      v31 = -534716416;
      aBlock = 0;
      object = v11;
      if (v11)
      {
        goto LABEL_16;
      }
    }

    object = xpc_null_create();
    goto LABEL_19;
  }

LABEL_40:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C2A72B0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_23C2A7304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23C2A72F4);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3__1NS_9allocatorIS4_EEFvNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEENS2_8AppStateEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3abm19CellularLoggingTask9init_syncEvEUb0_E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3__2NS_9allocatorIS4_EEFvbN3xpc4dictEEED1Ev(void *a1)
{
  *a1 = &unk_284EFD130;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3__2NS_9allocatorIS4_EEFvbN3xpc4dictEEED0Ev(void *__p)
{
  *__p = &unk_284EFD130;
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[1];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3__2NS_9allocatorIS4_EEFvbN3xpc4dictEEE7__cloneEv(void *a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_284EFD130;
  v3 = a1[1];
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v4 = a1[2];
  v2[1] = v3;
  v2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = a1[4];
  v2[3] = a1[3];
  v2[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v2[5] = a1[5];
  return v2;
}

void _ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3__2NS_9allocatorIS4_EEFvbN3xpc4dictEEE7__cloneEPNS0_6__baseIS9_EE(void *a1, void *a2)
{
  *a2 = &unk_284EFD130;
  v4 = a1[1];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a1[2];
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a1[4];
  a2[3] = a1[3];
  a2[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  a2[5] = a1[5];
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3__2NS_9allocatorIS4_EEFvbN3xpc4dictEEE7destroyEv(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3__2NS_9allocatorIS4_EEFvbN3xpc4dictEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[1];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3__2NS_9allocatorIS4_EEFvbN3xpc4dictEEEclEObOS8_(void *a1, char *a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[4];
  if (!v6)
  {
    goto LABEL_39;
  }

  v7 = a1[5];
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = v8;
  if (a1[3])
  {
    if (v4)
    {
      goto LABEL_22;
    }

    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to snapshot", &v21, 2u);
      if (v5)
      {
LABEL_7:
        xpc_retain(v5);
        v11 = v5;
        v12 = a1[1];
        if (v12)
        {
LABEL_8:
          v13 = _Block_copy(v12);
          goto LABEL_12;
        }

LABEL_11:
        v13 = 0;
LABEL_12:
        v14 = a1[2];
        v21 = MEMORY[0x277D85DD0];
        v22 = 3321888768;
        v23 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
        v24 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v13)
        {
          v15 = _Block_copy(v13);
          v27 = -534716416;
          aBlock = v15;
          object = v11;
          if (v11)
          {
LABEL_14:
            xpc_retain(v11);
LABEL_17:
            dispatch_async(v14, &v21);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v13)
            {
              _Block_release(v13);
            }

            xpc_release(v11);
LABEL_22:
            if (v5)
            {
              xpc_retain(v5);
              v16 = v5;
              v17 = a1[1];
              if (v17)
              {
LABEL_24:
                v18 = _Block_copy(v17);
                goto LABEL_27;
              }
            }

            else
            {
              v16 = xpc_null_create();
              v17 = a1[1];
              if (v17)
              {
                goto LABEL_24;
              }
            }

            v18 = 0;
LABEL_27:
            v19 = a1[2];
            v21 = MEMORY[0x277D85DD0];
            v22 = 3321888768;
            v23 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__3ES2_EEEvDpT__block_invoke;
            v24 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
            if (v18)
            {
              v20 = _Block_copy(v18);
              v27 = 0;
              aBlock = v20;
              object = v16;
              if (v16)
              {
LABEL_29:
                xpc_retain(v16);
LABEL_32:
                dispatch_async(v19, &v21);
                xpc_release(object);
                object = 0;
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v18)
                {
                  _Block_release(v18);
                }

                xpc_release(v16);
                goto LABEL_37;
              }
            }

            else
            {
              v27 = 0;
              aBlock = 0;
              object = v16;
              if (v16)
              {
                goto LABEL_29;
              }
            }

            object = xpc_null_create();
            goto LABEL_32;
          }
        }

        else
        {
          v27 = -534716416;
          aBlock = 0;
          object = v11;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        object = xpc_null_create();
        goto LABEL_17;
      }
    }

    else if (v5)
    {
      goto LABEL_7;
    }

    v11 = xpc_null_create();
    v12 = a1[1];
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_37:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_39:
  xpc_release(v5);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3__2NS_9allocatorIS4_EEFvbN3xpc4dictEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3abm19CellularLoggingTask9init_syncEvEUb1_E3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t __cxx_global_var_init_33()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_CellularLoggingTask_mm()
{
  result = ETLDIAGLoggingGetDefaultView();
  dword_280C05E5C = result;
  return result;
}

void abm::helper::getUserConfig(int a1@<W0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_null_create();
  *a2 = v4;
  v5 = MEMORY[0x277D86468];
  if (a1 == 501)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v10) == v5)
      {
        xpc_retain(v10);
        v11 = v10;
      }

      else
      {
        v11 = xpc_null_create();
      }
    }

    else
    {
      v11 = xpc_null_create();
      v10 = 0;
    }

    xpc_release(v10);
    v19 = xpc_null_create();
    v20 = *a2;
    *a2 = v11;
    xpc_release(v20);
    xpc_release(v19);
    v21 = xpc_string_create("CommCenterMobileHelper");
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v11, *MEMORY[0x277D6F168], v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    v23 = xpc_string_create("com.apple.abm.helper.mobile");
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, *MEMORY[0x277D6F170], v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    v25 = xpc_array_create(0, 0);
    if (v25 || (v25 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v25) == MEMORY[0x277D86440])
      {
        xpc_retain(v25);
        v26 = v25;
      }

      else
      {
        v26 = xpc_null_create();
      }
    }

    else
    {
      v26 = xpc_null_create();
      v25 = 0;
    }

    xpc_release(v25);
    v34 = xpc_string_create("com.apple.abm.helper.mobile.allow");
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    xpc_array_append_value(v26, v34);
    xpc_release(v34);
    v35 = xpc_string_create("com.apple.developer.cellular-logging.allow");
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    xpc_array_append_value(v26, v35);
    xpc_release(v35);
    v36 = xpc_string_create("com.apple.cellular-logging.internal");
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    xpc_array_append_value(v26, v36);
    xpc_release(v36);
    if (v26)
    {
      xpc_retain(v26);
      v37 = v26;
    }

    else
    {
      v37 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, *MEMORY[0x277D6F178], v37);
    v38 = xpc_null_create();
    xpc_release(v37);
    xpc_release(v38);
    v53 = 20;
    strcpy(__p, "ABMMobileHelperReady");
    v39 = xpc_string_create(__p);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, *MEMORY[0x277D6F180], v39);
    v40 = xpc_null_create();
    xpc_release(v39);
    xpc_release(v40);
    if (v53 < 0)
    {
      operator delete(*__p);
    }

    xpc_release(v26);
    v4 = *a2;
  }

  else
  {
    if (a1 == 25)
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      if (v8 || (v8 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x23EECEE80](v8) == v5)
        {
          xpc_retain(v8);
          v9 = v8;
        }

        else
        {
          v9 = xpc_null_create();
        }
      }

      else
      {
        v9 = xpc_null_create();
        v8 = 0;
      }

      xpc_release(v8);
      v12 = xpc_null_create();
      v13 = *a2;
      *a2 = v9;
      xpc_release(v13);
      xpc_release(v12);
      v14 = xpc_string_create("abm-helper");
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      xpc_dictionary_set_value(v9, *MEMORY[0x277D6F168], v14);
      v15 = xpc_null_create();
      xpc_release(v14);
      xpc_release(v15);
      v16 = xpc_string_create("com.apple.abm.helper.wireless");
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      v4 = *a2;
      xpc_dictionary_set_value(*a2, *MEMORY[0x277D6F170], v16);
      v17 = xpc_null_create();
      xpc_release(v16);
      xpc_release(v17);
      strcpy(__p, "ABMWirelessHelperReady");
      v53 = 22;
      v18 = xpc_string_create(__p);
      if (!v18)
      {
        v18 = xpc_null_create();
      }
    }

    else
    {
      if (a1)
      {
        goto LABEL_61;
      }

      v6 = xpc_dictionary_create(0, 0, 0);
      if (v6 || (v6 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x23EECEE80](v6) == v5)
        {
          xpc_retain(v6);
          v7 = v6;
        }

        else
        {
          v7 = xpc_null_create();
        }
      }

      else
      {
        v7 = xpc_null_create();
        v6 = 0;
      }

      xpc_release(v6);
      v27 = xpc_null_create();
      v28 = *a2;
      *a2 = v7;
      xpc_release(v28);
      xpc_release(v27);
      v29 = xpc_string_create("CommCenterRootHelper");
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      xpc_dictionary_set_value(v7, *MEMORY[0x277D6F168], v29);
      v30 = xpc_null_create();
      xpc_release(v29);
      xpc_release(v30);
      v31 = xpc_string_create("com.apple.abm.helper.root");
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      v4 = *a2;
      xpc_dictionary_set_value(*a2, *MEMORY[0x277D6F170], v31);
      v32 = xpc_null_create();
      xpc_release(v31);
      xpc_release(v32);
      v53 = 18;
      strcpy(__p, "ABMRootHelperReady");
      v18 = xpc_string_create(__p);
      if (!v18)
      {
        v18 = xpc_null_create();
      }
    }

    xpc_dictionary_set_value(v4, *MEMORY[0x277D6F180], v18);
    v33 = xpc_null_create();
    xpc_release(v18);
    xpc_release(v33);
    if (v53 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_61:
  if (MEMORY[0x23EECEE80](v4) == v5)
  {
    v41 = xpc_int64_create(a1);
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "UserID", v41);
    v42 = xpc_null_create();
    xpc_release(v41);
    xpc_release(v42);
    if (a1)
    {
      if (a1 == 501)
      {
        v43 = "mobile";
      }

      else if (a1 == 25)
      {
        v43 = "wireless";
      }

      else
      {
        v43 = "";
      }
    }

    else
    {
      v43 = "root";
    }

    v44 = xpc_string_create(v43);
    if (!v44)
    {
      v44 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "UserName", v44);
    v45 = xpc_null_create();
    xpc_release(v44);
    xpc_release(v45);
    v46 = xpc_BOOL_create(0);
    if (!v46)
    {
      v46 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, *MEMORY[0x277D6F188], v46);
    v47 = xpc_null_create();
    xpc_release(v46);
    xpc_release(v47);
    v48 = xpc_BOOL_create(0);
    if (!v48)
    {
      v48 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, *MEMORY[0x277D6F190], v48);
    v49 = xpc_null_create();
    xpc_release(v48);
    xpc_release(v49);
    v50 = xpc_string_create("unknown");
    if (!v50)
    {
      v50 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, *MEMORY[0x277D6F160], v50);
    v51 = xpc_null_create();
    xpc_release(v50);
    xpc_release(v51);
  }
}

void sub_23C2A82E8(_Unwind_Exception *a1)
{
  xpc_release(v3);
  xpc_release(v2);
  xpc::dict::~dict(v1);
  _Unwind_Resume(a1);
}

uint64_t abm::helper::getDaemonNotificationName@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 501)
  {
    *(a2 + 23) = 20;
    strcpy(a2, "ABMMobileHelperReady");
  }

  else if (result == 25)
  {
    *(a2 + 23) = 22;
    strcpy(a2, "ABMWirelessHelperReady");
  }

  else
  {
    if (result)
    {
      *(a2 + 23) = 0;
    }

    else
    {
      *(a2 + 23) = 18;
      *(a2 + 16) = 31076;
      *a2 = *"ABMRootHelperReady";
      a2 += 18;
    }

    *a2 = 0;
  }

  return result;
}

uint64_t abm::helper::getUserForTask(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_23C32F73C[a1 - 1];
  }
}

void abm::helper::getTasksForUser(int a1@<W0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = -1; i != 10; ++i)
  {
    if (i > 9)
    {
      if (a1 != -1)
      {
        continue;
      }
    }

    else if (dword_23C32F73C[i] != a1)
    {
      continue;
    }

    v7 = i + 1;
    if (v3 < v4)
    {
      *v3 = v7;
      v3 += 4;
    }

    else
    {
      v8 = v3 - v5;
      v9 = (v3 - v5) >> 2;
      v10 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        a2[1] = v3;
        a2[2] = v4;
        *a2 = v5;
        std::vector<abm::helper::TaskID>::__throw_length_error[abi:ne200100]();
      }

      if ((v4 - v5) >> 1 > v10)
      {
        v10 = (v4 - v5) >> 1;
      }

      if ((v4 - v5) >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        if (v11 >> 62)
        {
          a2[1] = v3;
          a2[2] = v4;
          *a2 = v5;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v12 = operator new(4 * v11);
      }

      else
      {
        v12 = 0;
      }

      v13 = &v12[4 * v9];
      v4 = &v12[4 * v11];
      *v13 = v7;
      v3 = (v13 + 1);
      memcpy(v12, v5, v8);
      if (v5)
      {
        operator delete(v5);
      }

      v5 = v12;
    }
  }

  a2[1] = v3;
  a2[2] = v4;
  *a2 = v5;
}

void sub_23C2A86E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v11;
  a10[2] = v12;
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::helper::getLoggingDomain@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[7] = v4;
  v24[8] = v4;
  v24[5] = v4;
  v24[6] = v4;
  v24[3] = v4;
  v24[4] = v4;
  v24[1] = v4;
  v24[2] = v4;
  v23 = v4;
  v24[0] = v4;
  *__p = v4;
  v22 = v4;
  v19 = v4;
  *__src = v4;
  v17 = v4;
  v18 = v4;
  v16 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v16);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "com.apple.abm.helper", 20);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ".", 1);
  if ((a1 - 1) > 9)
  {
    v7 = "";
  }

  else
  {
    v7 = (&off_278BB9798)[a1 - 1];
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  if ((BYTE8(v23) & 0x10) != 0)
  {
    v10 = v23;
    if (v23 < __src[1])
    {
      *&v23 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
    v9 = v10 - __src[0];
    if ((v10 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((BYTE8(v23) & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_18;
    }

    v11 = *(&v18 + 1);
    v9 = *(&v19 + 1) - *(&v18 + 1);
    if (*(&v19 + 1) - *(&v18 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_22:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v13 = operator new(v12);
    *(a2 + 1) = v9;
    *(a2 + 2) = v12 | 0x8000000000000000;
    *a2 = v13;
    a2 = v13;
    goto LABEL_17;
  }

  a2[23] = v9;
  if (v9)
  {
LABEL_17:
    memmove(a2, v11, v9);
  }

LABEL_18:
  a2[v9] = 0;
  *&v16 = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v17 = v14;
  *(&v17 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EECE150](v24);
}

void sub_23C2A89E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x23EECE150](v9 + 128);
  _Unwind_Resume(a1);
}

void *abm::helper::DaemonObserver::DaemonObserver(void *a1, int a2, uint64_t a3)
{
  a1[2] = 0;
  v6 = (a1 + 2);
  *a1 = 0;
  a1[1] = 0;
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a3 + 8);
  a1[3] = v7;
  a1[4] = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  a1[5] = 0;
  v9 = *MEMORY[0x277CBECE8];
  if (a2 == 501)
  {
    HIBYTE(v15) = 20;
    qmemcpy(__p, "ABMMobileHelperReady", 20);
    v10 = &__p[20];
  }

  else if (a2 == 25)
  {
    HIBYTE(v15) = 22;
    qmemcpy(__p, "ABMWirelessHelperReady", sizeof(__p));
    v10 = &v15;
  }

  else if (a2)
  {
    HIBYTE(v15) = 0;
    v10 = __p;
  }

  else
  {
    HIBYTE(v15) = 18;
    qmemcpy(__p, "ABMRootHelperReady", 18);
    v10 = &__p[18];
  }

  *v10 = 0;
  v11 = CFStringCreateWithCString(v9, __p, 0x600u);
  v12 = *v6;
  *v6 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(*__p);
  }

  return a1;
}

void sub_23C2A8B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(v14 + 24);
    ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(v15);
    v17 = *(v14 + 8);
    if (!v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(v14 + 24);
    ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(v15);
    v17 = *(v14 + 8);
    if (!v17)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

void abm::helper::DaemonObserver::~DaemonObserver(abm::helper::DaemonObserver *this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(this + 5), *(this + 2), 0);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v3);
    *(this + 5) = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void abm::helper::DaemonObserver::init(abm::helper::DaemonObserver *this)
{
  v2 = operator new(0x10uLL);
  v3 = *(this + 1);
  if (!v3 || (v4 = *this, (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *v2 = v4;
  v2[1] = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(this + 5) = v2;
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v5;
    (v5->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = *(this + 5);
  v9 = *(this + 2);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, abm::helper::DaemonObserver::handleDaemonReadyNotificationStatic, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void abm::helper::DaemonObserver::handleDaemonReadyNotificationStatic(abm::helper::DaemonObserver *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  if (a2)
  {
    v7 = *(a2 + 1);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        if (*a2)
        {
          abm::helper::DaemonObserver::handleDaemonReady(*a2);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);

          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }
}

void abm::helper::DaemonObserver::handleDaemonReady(abm::helper::DaemonObserver *this)
{
  if (!*(this + 3) || !*(this + 4))
  {
    return;
  }

  v2 = xpc_null_create();
  v3 = *(this + 3);
  if (v3)
  {
    v4 = _Block_copy(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1174405120;
  v8[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEclIJS2_S4_EEEvDpT__block_invoke;
  v8[3] = &__block_descriptor_tmp_30;
  if (v4)
  {
    v6 = _Block_copy(v4);
  }

  else
  {
    v6 = 0;
  }

  aBlock = v6;
  v10 = -534716411;
  __p = 0;
  v12 = 0;
  v13 = 0;
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  dispatch_async(v5, v8);
  xpc_release(object);
  object = 0;
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    v7 = aBlock;
    if (!aBlock)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  operator delete(__p);
  v7 = aBlock;
  if (aBlock)
  {
LABEL_16:
    _Block_release(v7);
  }

LABEL_17:
  if (v4)
  {
    _Block_release(v4);
  }

  xpc_release(v2);
}

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void dispatch::block<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::operator()<TelephonyXPC::Result const&,xpc::dict const&>(uint64_t *a1, int *a2, void **a3)
{
  v4 = *a1;
  v7 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    v5 = *a3;
    object = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __p = *(a2 + 2);
    v5 = *a3;
    object = v5;
    if (v5)
    {
LABEL_3:
      xpc_retain(v5);
      goto LABEL_6;
    }
  }

  object = xpc_null_create();
LABEL_6:
  (*(v4 + 16))(v4, &v7, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23C2A9094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE40c27_ZTSN12TelephonyXPC6ResultE72c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  *(a1 + 72) = result;
  return result;
}

void sub_23C2A914C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE40c27_ZTSN12TelephonyXPC6ResultE72c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }
}

uint64_t Trace::Trace(uint64_t a1, char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    v2 = *a2;
  }

  ctu::OsLogContext::OsLogContext(v5, "com.apple.telephony.abm", v2);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>((a1 + 8), v2, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v5);
  *a1 = &unk_284EF95A8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void *ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  object = 0;
  ctu::SharedSynchronizable<diag::DIAGConfigurer>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x23EECD7F0](a1 + 4, &object);
  MEMORY[0x23EECD800](&object);
  return a1;
}

void Trace::create(char *a1@<X0>, uint64_t *a2@<X1>, NSObject **a3@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  if (a1[23] < 0)
  {
    v11 = *a1;
    v8 = strcasecmp(*a1, "IPC");
    if (v8)
    {
      v9 = strcasecmp(v11, "BasebandTrace");
      if (v9)
      {
        v9 = strcasecmp(v11, abm::trace::kDIAG[0]);
        if (v9)
        {
          v9 = strcasecmp(v11, "BBTrace");
          if (v9)
          {
            v10 = strcasecmp(v11, "CoreDump");
            if (!v10 || (v10 = strcasecmp(v11, abm::trace::kEURCoreDump[0]), !v10))
            {
LABEL_57:
              v28 = capabilities::radio::vendor(v10);
              if (v28 > 2)
              {
                if (v28 == 4)
                {
                  DALCoredumpTrace::createInternal(buf);
                }

                else
                {
                  if (v28 != 3)
                  {
                    goto LABEL_76;
                  }

                  CoredumpTrace::createInternal(buf);
                }
              }

              else if (v28 == 1)
              {
                EURCoreDumpTrace::createInternal(buf);
              }

              else
              {
                if (v28 != 2)
                {
                  goto LABEL_76;
                }

                ICECoredumpTrace::createInternal(buf);
              }

              goto LABEL_75;
            }

LABEL_15:
            v12 = strcasecmp(v11, "BasebandIPC");
            if (v12)
            {
              goto LABEL_76;
            }

            v13 = capabilities::radio::vendor(v12);
            if (v13 == 2)
            {
              BasebandIPCTraceICE::createInternal(buf);
            }

            else
            {
              if (v13 != 1)
              {
                goto LABEL_76;
              }

              BasebandIPCTrace::createInternal(buf);
            }

LABEL_75:
            std::shared_ptr<abm::trace::TraceReader>::operator=[abi:ne200100](a4, buf);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](buf);
            goto LABEL_76;
          }
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    v8 = strcasecmp(a1, "IPC");
    if (v8)
    {
      v9 = strcasecmp(a1, "BasebandTrace");
      if (v9)
      {
        v9 = strcasecmp(a1, abm::trace::kDIAG[0]);
        if (v9)
        {
          v9 = strcasecmp(a1, "BBTrace");
          if (v9)
          {
            v10 = strcasecmp(a1, "CoreDump");
            if (!v10)
            {
              goto LABEL_57;
            }

            v10 = strcasecmp(a1, abm::trace::kEURCoreDump[0]);
            v11 = a1;
            if (!v10)
            {
              goto LABEL_57;
            }

            goto LABEL_15;
          }
        }
      }

LABEL_19:
      v14 = capabilities::radio::vendor(v9);
      if (v14 > 2)
      {
        if (v14 != 3)
        {
          if (v14 != 4)
          {
            goto LABEL_76;
          }

          v22 = operator new(0x150uLL);
          DALTrace::DALTrace(v22);
          memset(buf, 170, sizeof(buf));
          std::shared_ptr<DALTrace>::shared_ptr[abi:ne200100]<DALTrace,std::shared_ptr<DALTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DALTrace>(DALTrace*)::{lambda(DALTrace*)#1},0>(buf, v22);
          v23 = a4[1];
          *a4 = *buf;
          if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }

          {
            GetOsLogContext(void)::sOsLogContext = 0;
            qword_280C06510 = 0;
          }

          if (GetOsLogContext(void)::onceToken == -1)
          {
            v17 = qword_280C06510;
            if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
            {
              goto LABEL_76;
            }
          }

          else
          {
            dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_4);
            v17 = qword_280C06510;
            if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
            {
              goto LABEL_76;
            }
          }

          *buf = 0;
          v18 = "DAL trace created";
          goto LABEL_56;
        }

        v26 = operator new(0x178uLL);
        INTTrace::INTTrace(v26);
        memset(buf, 170, sizeof(buf));
        std::shared_ptr<INTTrace>::shared_ptr[abi:ne200100]<INTTrace,std::shared_ptr<INTTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<INTTrace>(INTTrace*)::{lambda(INTTrace*)#1},0>(buf, v26);
        v27 = a4[1];
        *a4 = *buf;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        {
          GetOsLogContext(void)::sOsLogContext = 0;
          qword_280C06510 = 0;
        }

        if (GetOsLogContext(void)::onceToken == -1)
        {
          v17 = qword_280C06510;
          if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
          {
            goto LABEL_76;
          }
        }

        else
        {
          dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_4);
          v17 = qword_280C06510;
          if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
          {
            goto LABEL_76;
          }
        }

        *buf = 0;
        v18 = "INT trace created";
        goto LABEL_56;
      }

      if (v14 == 1)
      {
        v24 = operator new(0x160uLL);
        DIAGTrace::DIAGTrace(v24);
        memset(buf, 170, sizeof(buf));
        std::shared_ptr<DIAGTrace>::shared_ptr[abi:ne200100]<DIAGTrace,std::shared_ptr<DIAGTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DIAGTrace>(DIAGTrace*)::{lambda(DIAGTrace*)#1},0>(buf, v24);
        v25 = a4[1];
        *a4 = *buf;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        {
          GetOsLogContext(void)::sOsLogContext = 0;
          qword_280C06510 = 0;
        }

        if (GetOsLogContext(void)::onceToken == -1)
        {
          v17 = qword_280C06510;
          if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
          {
            goto LABEL_76;
          }
        }

        else
        {
          dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_4);
          v17 = qword_280C06510;
          if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
          {
            goto LABEL_76;
          }
        }

        *buf = 0;
        v18 = "DIAG trace created";
        goto LABEL_56;
      }

      if (v14 != 2)
      {
        goto LABEL_76;
      }

      v15 = operator new(0x1C0uLL);
      ICETrace::ICETrace(v15);
      memset(buf, 170, sizeof(buf));
      std::shared_ptr<ICETrace>::shared_ptr[abi:ne200100]<ICETrace,std::shared_ptr<ICETrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<ICETrace>(ICETrace*)::{lambda(ICETrace*)#1},0>(buf, v15);
      v16 = a4[1];
      *a4 = *buf;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      {
        GetOsLogContext(void)::sOsLogContext = 0;
        qword_280C06510 = 0;
      }

      if (GetOsLogContext(void)::onceToken == -1)
      {
        v17 = qword_280C06510;
        if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
        {
          goto LABEL_76;
        }

        goto LABEL_28;
      }

      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_4);
      v17 = qword_280C06510;
      if (os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_INFO))
      {
LABEL_28:
        *buf = 0;
        v18 = "ICE trace created";
LABEL_56:
        _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_INFO, v18, buf, 2u);
      }

LABEL_76:
      v29 = *a4;
      if (*a4)
      {
        goto LABEL_77;
      }

      goto LABEL_62;
    }
  }

  if (!capabilities::trace::supportsKernelPCITrace(v8))
  {
    goto LABEL_76;
  }

  v19 = operator new(0xD8uLL);
  KernelPCITrace::KernelPCITrace(v19);
  memset(buf, 170, sizeof(buf));
  std::shared_ptr<KernelPCITrace>::shared_ptr[abi:ne200100]<KernelPCITrace,std::shared_ptr<KernelPCITrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCITrace>(KernelPCITrace*)::{lambda(KernelPCITrace*)#1},0>(buf, v19);
  v20 = *buf;
  v21 = a4[1];
  *a4 = *buf;
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    goto LABEL_76;
  }

  v29 = v20;
  if (v20)
  {
LABEL_77:
    if (a1[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *a1, *(a1 + 1));
    }

    else
    {
      v38 = *a1;
    }

    v32 = a2[1];
    v36 = *a2;
    v37 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = *a3;
    object = v33;
    if (v33)
    {
      dispatch_retain(v33);
    }

    (*(*v29 + 16))(v29, &v38, &v36, &object);
    if (object)
    {
      dispatch_release(object);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_weak(v37);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    goto LABEL_90;
  }

LABEL_62:
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_280C06510 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v30 = qword_280C06510;
    if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_4);
    v30 = qword_280C06510;
    if (!os_log_type_enabled(qword_280C06510, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }
  }

  if (a1[23] >= 0)
  {
    v31 = a1;
  }

  else
  {
    v31 = *a1;
  }

  *buf = 136315138;
  *&buf[4] = v31;
  _os_log_error_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_ERROR, "Failed to create trace %s", buf, 0xCu);
LABEL_90:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_23C2A9CA4(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_23C2A9D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (object)
  {
    dispatch_release(object);
    v20 = a12;
    if (!a12)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v20 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v20);
  if ((a18 & 0x80000000) == 0)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_2_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void abm::CellularLoggingCommon::create(uint64_t *a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "carriercellularlogging.modem");
  v7 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(v6);
  *a3 = 0;
  a3[1] = 0;
  v9 = capabilities::radio::vendor(v8);
  if (v9 == 1)
  {
    v14 = a1[1];
    v30 = *a1;
    v31 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *a2;
    v29 = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    std::allocate_shared[abi:ne200100]<abm::CellularLoggingEUR,std::allocator<abm::CellularLoggingEUR>,std::weak_ptr<abm::HelperServerInternal> &,dispatch::queue &,0>(&v30, &v29, buf);
    v16 = *buf;
    memset(buf, 0, sizeof(buf));
    v25 = v16;
    *a3 = v16;
    if (v29)
    {
      dispatch_release(v29);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    if (v25)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "Succeeded creating CellularLoggingEUR";
        goto LABEL_25;
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Failed creating CellularLoggingEUR";
      goto LABEL_35;
    }
  }

  else if (v9 == 3)
  {
    v10 = a1[1];
    v27 = *a1;
    v28 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *a2;
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    std::allocate_shared[abi:ne200100]<abm::CellularLoggingINT,std::allocator<abm::CellularLoggingINT>,std::weak_ptr<abm::HelperServerInternal> &,dispatch::queue &,0>(&v27, &object, buf);
    v12 = *buf;
    memset(buf, 0, sizeof(buf));
    v24 = v12;
    *a3 = v12;
    if (object)
    {
      dispatch_release(object);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }

    if (v24)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "Succeeded creating CellularLoggingINT";
LABEL_25:
        v17 = v7;
        v18 = 2;
LABEL_28:
        _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, v13, buf, v18);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Failed creating CellularLoggingINT";
LABEL_35:
      _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, v21, buf, 2u);
      v23 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    v19 = v9;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v19;
      v13 = "Not supported radio vendor: %d";
      v17 = v7;
      v18 = 8;
      goto LABEL_28;
    }
  }

LABEL_32:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C2AA094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, std::__shared_weak_count *a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v17);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

uint64_t abm::CellularLoggingCommon::CellularLoggingCommon(uint64_t a1, void *a2, NSObject **a3)
{
  *a1 = &unk_284EFD1E0;
  ctu::OsLogLogger::OsLogLogger((a1 + 8), "com.apple.telephony", "carriercellularlogging.modem");
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_284EFD1E0;
  v6 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *a3;
  *(a1 + 48) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  *(a1 + 56) = 0;
  return a1;
}

void abm::CellularLoggingCommon::~CellularLoggingCommon(abm::CellularLoggingCommon *this)
{
  *this = &unk_284EFD1E0;
  v2 = *(this + 6);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x23EECD800](this + 8);
}

uint64_t abm::CellularLoggingCommon::setProperty(void *a1, const std::string::value_type *a2, const std::string::value_type *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v4 = a1[5];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v41 = v7;
  if (!v7 || (v40 = a1[4]) == 0)
  {
LABEL_9:
    v10 = a1[1];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Server is not available", buf, 2u);
      v11 = 0;
      if (!v7)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v11 = 0;
      if (!v7)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_66;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v8) == MEMORY[0x277D86468])
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = xpc_string_create("BasebandTrace");
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTraceName", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = a2;
  if (a2[23] < 0)
  {
    v14 = *a2;
  }

  v15 = xpc_string_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTracePropertyName", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = a3;
  if (a3[23] < 0)
  {
    v17 = *a3;
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTracePropertyValue", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_BOOL_create(1);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "kKeyTracePropertyWaitForCompletion", v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = dispatch_group_create();
  v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v24 = dispatch_queue_create("CellularLoggingCommon", v23);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 12;
  strcpy(buf, "helperserver");
  abm::client::CreateManager();
  if (v48 < 0)
  {
    operator delete(*buf);
  }

  if (v22)
  {
    dispatch_retain(v22);
    dispatch_group_enter(v22);
  }

  v34 = v38;
  v35 = v39;
  atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
  if (v22)
  {
    dispatch_retain(v22);
    dispatch_group_enter(v22);
  }

  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *a2, *(a2 + 1));
  }

  else
  {
    v32 = *a2;
  }

  if (a3[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *a3, *(a3 + 1));
  }

  else
  {
    v33 = *a3;
  }

  abm::client::SetTraceProperty();
  if (v37 < 0)
  {
    operator delete(__p);
  }

  v25 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_50:
    operator delete(v32.__r_.__value_.__l.__data_);
    v26 = v22;
    if (!v22)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  operator delete(v33.__r_.__value_.__l.__data_);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_50;
  }

LABEL_47:
  v26 = v22;
  if (v22)
  {
LABEL_51:
    dispatch_group_leave(v26);
    dispatch_release(v22);
  }

LABEL_52:
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

  v27 = dispatch_time(0, 25000000000);
  if (!dispatch_group_wait(v22, v27))
  {
    v11 = *(v43 + 24);
    v29 = v39;
    if (!v39)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v28 = a1[1];
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v11 = 0;
    *(v43 + 24) = 0;
    v29 = v39;
    if (!v39)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  *buf = 136315394;
  *&buf[4] = a2;
  *&buf[12] = 2080;
  v47 = a3;
  _os_log_error_impl(&dword_23C1C4000, v28, OS_LOG_TYPE_ERROR, "Timeout for setting property for %s with %s", buf, 0x16u);
  v11 = 0;
  *(v43 + 24) = 0;
  v29 = v39;
  if (v39)
  {
LABEL_59:
    if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }

LABEL_61:
  if (v24)
  {
    dispatch_release(v24);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  xpc_release(v9);
  v7 = v41;
  if (v41)
  {
LABEL_66:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

LABEL_68:
  _Block_object_dispose(&v42, 8);
  v30 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void sub_23C2AA864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a22 < 0)
  {
    operator delete(__p);
    v40 = group;
    if (!group)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v40 = group;
    if (!group)
    {
LABEL_6:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
      if (v36)
      {
        dispatch_group_leave(v36);
        dispatch_release(v36);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a35);
      if (v37)
      {
        dispatch_release(v37);
        if (!v36)
        {
LABEL_11:
          xpc_release(v35);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v38 - 144);
          _Block_object_dispose((v38 - 128), 8);
          _Unwind_Resume(a1);
        }
      }

      else if (!v36)
      {
        goto LABEL_11;
      }

      dispatch_release(v36);
      goto LABEL_11;
    }
  }

  dispatch_group_leave(v40);
  dispatch_release(group);
  goto LABEL_6;
}

void sub_23C2AA9D0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3abm21CellularLoggingCommon11setPropertyENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7__block_invoke(uint64_t a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v4 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v7 = *v7;
      }

      v8 = (a1 + 80);
      if (*(a1 + 103) < 0)
      {
        v8 = *v8;
      }

      v9 = 136315394;
      v10 = v7;
      v11 = 2080;
      v12 = v8;
      _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "Failed to set property with the name(%s) with the value (%s)", &v9, 0x16u);
      v5 = *a2 == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 48);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }
}

void sub_23C2AAB88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 48);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if (!v2)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 79) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 56));
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

LABEL_7:
  dispatch_group_leave(v2);
  v3 = *(a1 + 48);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void abm::CellularLoggingCommon::getProperty(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x4812000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = "";
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v6) == MEMORY[0x277D86468])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v8 = xpc_string_create("BasebandTrace");
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "kKeyTraceName", v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = a2;
  if (a2[23] < 0)
  {
    v10 = *a2;
  }

  v11 = xpc_string_create(v10);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "kKeyTracePropertyName", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_BOOL_create(1);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "kKeyTracePropertyWaitForCompletion", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = dispatch_group_create();
  v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v17 = dispatch_queue_create("CellularLoggingCommon", v16);
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 12;
  strcpy(buf, "helperserver");
  abm::client::CreateManager();
  if (v42 < 0)
  {
    operator delete(*buf);
  }

  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(v15);
  }

  v26 = v30;
  v27 = v31;
  atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(v15);
  }

  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a2, *(a2 + 1));
  }

  else
  {
    v25 = *a2;
  }

  abm::client::GetTraceProperty();
  if (v29 < 0)
  {
    operator delete(__p);
  }

  v18 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_29:
    operator delete(v25.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    dispatch_group_leave(v15);
    dispatch_release(v15);
  }

  v19 = dispatch_time(0, 25000000000);
  if (dispatch_group_wait(v15, v19))
  {
    v20 = *(a1 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, "Timeout for getting property! for %s", buf, 0xCu);
      v21 = v33;
      if ((*(v33 + 71) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_41:
      std::string::__init_copy_ctor_external(a3, v21[6], v21[7]);
      goto LABEL_42;
    }
  }

  v21 = v33;
  if (*(v33 + 71) < 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v22 = *(v21 + 3);
  a3->__r_.__value_.__r.__words[2] = v21[8];
  *&a3->__r_.__value_.__l.__data_ = v22;
LABEL_42:
  v23 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  xpc_release(v7);
  _Block_object_dispose(&v32, 8);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v38);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C2AB170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
  if (v44)
  {
    dispatch_release(v44);
    if (!v43)
    {
LABEL_4:
      xpc_release(v42);
      _Block_object_dispose(&a31, 8);
      if (a42 < 0)
      {
        operator delete(__p);
        _Unwind_Resume(a1);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_4;
  }

  dispatch_release(v43);
  goto LABEL_4;
}

__n128 __Block_byref_object_copy__0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void ___ZN3abm21CellularLoggingCommon11getPropertyENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1, _DWORD *a2, xpc_object_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = xpc_null_create();
  if (*a2)
  {
    v8 = *(v6 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to get property with the name(%s)", buf, 0xCu);
    }

    v9 = xpc_null_create();
    v10 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v10);
    goto LABEL_19;
  }

  if (a3)
  {
    xpc_retain(a3);
    goto LABEL_7;
  }

  a3 = xpc_null_create();
  if (a3)
  {
LABEL_7:
    if (MEMORY[0x23EECEE80](a3) == MEMORY[0x277D86468])
    {
      xpc_retain(a3);
      v9 = a3;
    }

    else
    {
      v9 = xpc_null_create();
    }

    goto LABEL_11;
  }

  v9 = xpc_null_create();
  a3 = 0;
LABEL_11:
  v11 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v11);
  xpc_release(a3);
  v12 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v12 = *v12;
  }

  value = xpc_dictionary_get_value(v9, v12);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  v14 = *(*(a1 + 32) + 8);
  if (*(v14 + 71) < 0)
  {
    operator delete(*(v14 + 48));
  }

  *(v14 + 48) = *buf;
  *(v14 + 64) = v19;
  HIBYTE(v19) = 0;
  buf[0] = 0;
  xpc_release(object);
LABEL_19:
  xpc_release(v9);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_23C2AB4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 48);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }
}

void sub_23C2AB5C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 48);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  dispatch_group_leave(v2);
  v3 = *(a1 + 48);
  if (v3)
  {

    dispatch_release(v3);
  }
}

BOOL abm::CellularLoggingCommon::start()
{
  v5 = operator new(0x38uLL);
  *&v4[50] = 0;
  *&v4[52] = 0;
  *&v4[56] = 0x8000000000000038;
  v6 = xmmword_23C32DBE0;
  strcpy(v5, "/private/var/mobile/Library/Logs/CellularLogging");
  strcpy(v4, "/CellularLoggingile/Library/Logs/private/var/mob0");
  result = support::fs::removeDir(&v5);
  if (SHIBYTE(v6) < 0)
  {
    v1 = result;
    operator delete(v5);
    result = v1;
    if (!v1)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v2 = operator new(0x38uLL);
  v5 = v2;
  v6 = *&v4[48];
  *v2 = *&v4[32];
  *(v2 + 1) = *&v4[16];
  *(v2 + 2) = *v4;
  v2[48] = 0;
  result = support::fs::createDir(&v5, 0x1EDu, 0);
  if (SHIBYTE(v6) < 0)
  {
    v3 = result;
    operator delete(v5);
    return v3;
  }

  return result;
}

void sub_23C2AB744(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::CellularLoggingCommon::changeState(abm::CellularLoggingCommon *this, int a2)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(__p, 170, 24);
  *(&v36.__r_.__value_.__s + 23) = 1;
  LOWORD(v36.__r_.__value_.__l.__data_) = 47;
  v4 = std::string::insert(&v36, 0, "/private/var/mobile/Library/Logs/CellularLogging", 0x30uLL);
  v6 = *&v4->__r_.__value_.__l.__data_;
  v39 = v4->__r_.__value_.__r.__words[2];
  *buf = v6;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v7 = SHIBYTE(v39);
  if ((SHIBYTE(v39) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v39) < 0x17)
    {
      v8 = SHIBYTE(v39) + 31;
      v9 = buf;
      v10 = 22;
LABEL_7:
      v12 = 2 * v10;
      if (v8 > 2 * v10)
      {
        v12 = v8;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v11 = v13;
      }

      else
      {
        v11 = 23;
      }

      v14 = v10 == 22;
      goto LABEL_16;
    }

    v18 = buf;
    qmemcpy(&buf[SHIBYTE(v39)], "com.apple.cellularlogging.state", 31);
    v19 = v7 + 31;
    HIBYTE(v39) = (v7 + 31) & 0x7F;
LABEL_23:
    v17 = &v18[v19];
    goto LABEL_24;
  }

  v7 = *&buf[8];
  v10 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 - *&buf[8] >= 0x1F)
  {
    v18 = *buf;
    qmemcpy((*buf + *&buf[8]), "com.apple.cellularlogging.state", 31);
    v19 = v7 + 31;
    *&buf[8] = v7 + 31;
    goto LABEL_23;
  }

  v11 = 0x7FFFFFFFFFFFFFF7;
  v8 = *&buf[8] + 31;
  if (0x7FFFFFFFFFFFFFF7 - (v39 & 0x7FFFFFFFFFFFFFFFLL) < *&buf[8] + 31 - v10)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *buf;
  if (v10 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_16:
  v15 = operator new(v11);
  v16 = v15;
  if (v7)
  {
    memmove(v15, v9, v7);
  }

  qmemcpy(&v16[v7], "com.apple.cellularlogging.state", 31);
  if (!v14)
  {
    operator delete(v9);
  }

  *&buf[8] = v8;
  v39 = v11 | 0x8000000000000000;
  *buf = v16;
  v17 = &v16[v8];
LABEL_24:
  *v17 = 0;
  *__p = *buf;
  __p[2] = v39;
  v39 = 0;
  memset(buf, 0, sizeof(buf));
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if (a2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if (a2)
    {
LABEL_29:
      v21 = open(v20, 1537, 420);
      v22 = *(this + 1);
      if (v21 >= 1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_DEFAULT, "#N Successfully created Cellular Logging state file", buf, 2u);
        }

          ;
        }

        goto LABEL_51;
      }

      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_60:
        v29 = 0;
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_61;
      }

      v35 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v35 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v35;
      v27 = "Failed to create the state file, %s";
      v28 = v22;
LABEL_69:
      _os_log_error_impl(&dword_23C1C4000, v28, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
      v29 = 0;
      if (SHIBYTE(__p[2]) < 0)
      {
        goto LABEL_61;
      }

      goto LABEL_57;
    }
  }

  if (remove(v20, v5))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    v24 = unlink(v23);
    v25 = *(this + 1);
    if (v24)
    {
      if (!os_log_type_enabled(*(this + 1), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v26 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v26 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v26;
      v27 = "Failed to remove the state file, %s";
      v28 = v25;
      goto LABEL_69;
    }
  }

  else
  {
    v25 = *(this + 1);
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v25, OS_LOG_TYPE_DEFAULT, "#N Successfully removed Cellular Logging state file", buf, 2u);
  }

LABEL_51:
  sync();
  if (!TelephonyUtilIsInternalBuild() || (*(this + 56) & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    if (!DarwinNotifyCenter)
    {
      v34 = *(this + 1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v34, OS_LOG_TYPE_ERROR, "Failed getting darwin notification center!!!", buf, 2u);
        v29 = 0;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v29 = 0;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_57;
    }

    v29 = 1;
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarrierCellularLogging.state", 0, 0, 1u);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_61:
    operator delete(__p[0]);
    v33 = *MEMORY[0x277D85DE8];
    return v29;
  }

  v29 = 1;
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_61;
  }

LABEL_57:
  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

void sub_23C2ABC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL abm::CellularLoggingCommon::isStarted(abm::CellularLoggingCommon *this)
{
  v32 = *MEMORY[0x277D85DE8];
  *(&v31.__r_.__value_.__s + 23) = 1;
  LOWORD(v31.__r_.__value_.__l.__data_) = 47;
  v2 = std::string::insert(&v31, 0, "/private/var/mobile/Library/Logs/CellularLogging", 0x30uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  *&v30.st_uid = *(&v2->__r_.__value_.__l + 2);
  *&v30.st_dev = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  st_gid_high = SHIBYTE(v30.st_gid);
  if ((SHIBYTE(v30.st_gid) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v30.st_gid) < 0x17u)
    {
      v5 = SHIBYTE(v30.st_gid) + 31;
      v6 = &v30;
      v7 = 22;
LABEL_7:
      v9 = 2 * v7;
      if (v5 > 2 * v7)
      {
        v9 = v5;
      }

      if ((v9 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v9 | 7) + 1;
      }

      if (v9 >= 0x17)
      {
        v8 = v10;
      }

      else
      {
        v8 = 23;
      }

      v11 = v7 == 22;
      goto LABEL_16;
    }

    v15 = &v30;
    qmemcpy(&v30 + SHIBYTE(v30.st_gid), "com.apple.cellularlogging.state", 31);
    v16 = st_gid_high + 31;
    HIBYTE(v30.st_gid) = (st_gid_high + 31) & 0x7F;
LABEL_23:
    v14 = v15 + v16;
    goto LABEL_24;
  }

  st_gid_high = v30.st_ino;
  v7 = (*&v30.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 - v30.st_ino >= 0x1F)
  {
    v15 = *&v30.st_dev;
    qmemcpy((*&v30.st_dev + v30.st_ino), "com.apple.cellularlogging.state", 31);
    v16 = v30.st_ino + 31;
    v30.st_ino += 31;
    goto LABEL_23;
  }

  v8 = 0x7FFFFFFFFFFFFFF7;
  v5 = v30.st_ino + 31;
  if (0x7FFFFFFFFFFFFFF7 - (*&v30.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v30.st_ino + 31 - v7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *&v30.st_dev;
  if (v7 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_7;
  }

  v11 = 0;
LABEL_16:
  v12 = operator new(v8);
  v13 = v12;
  if (st_gid_high)
  {
    memmove(v12, v6, st_gid_high);
  }

  qmemcpy(&v13[st_gid_high], "com.apple.cellularlogging.state", 31);
  if (!v11)
  {
    operator delete(v6);
  }

  v30.st_ino = v5;
  *&v30.st_uid = v8 | 0x8000000000000000;
  *&v30.st_dev = v13;
  v14 = &v13[v5];
LABEL_24:
  *v14 = 0;
  *__p = *&v30.st_dev;
  v29 = *&v30.st_uid;
  memset(&v30, 0, 24);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
    v17 = *(this + 1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }
  }

  else
  {
    v17 = *(this + 1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }
  }

  v18.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v18.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v18;
  *v30.st_qspare = v18;
  v30.st_birthtimespec = v18;
  *&v30.st_size = v18;
  v30.st_mtimespec = v18;
  v30.st_ctimespec = v18;
  *&v30.st_uid = v18;
  v30.st_atimespec = v18;
  *&v30.st_dev = v18;
  if (v29 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  v20 = stat(v19, &v30);
  v21 = "does not exist";
  if (!v20)
  {
    v21 = "exists";
  }

  LODWORD(v31.__r_.__value_.__l.__data_) = 136315394;
  *(v31.__r_.__value_.__r.__words + 4) = v19;
  WORD2(v31.__r_.__value_.__r.__words[1]) = 2080;
  *(&v31.__r_.__value_.__r.__words[1] + 6) = v21;
  _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I State file %s %s", &v31, 0x16u);
LABEL_34:
  v22.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v22.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v22;
  *v30.st_qspare = v22;
  v30.st_birthtimespec = v22;
  *&v30.st_size = v22;
  v30.st_mtimespec = v22;
  v30.st_ctimespec = v22;
  *&v30.st_uid = v22;
  v30.st_atimespec = v22;
  *&v30.st_dev = v22;
  if (v29 >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  v24 = stat(v23, &v30);
  if (SHIBYTE(v29) < 0)
  {
    v25 = v24;
    operator delete(__p[0]);
    v24 = v25;
  }

  result = v24 == 0;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C2ABFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL abm::CellularLoggingCommon::getFileSize(uint64_t a1, xpc_object_t *a2, uint64_t *a3)
{
  if (MEMORY[0x23EECEE80](*a2) != MEMORY[0x277D86468])
  {
    v6 = *(a1 + 8);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v8 = "Received null input";
LABEL_21:
    _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, v8, &buf, 2u);
    return 0;
  }

  if (!xpc_dictionary_get_value(*a2, "kKeyFileSize") || !xpc_dictionary_get_value(*a2, "kKeyFileSegmentMode"))
  {
    if (xpc_dictionary_get_value(*a2, "kKeyFileSize"))
    {
      memset(&buf, 170, sizeof(buf));
      v17 = 8;
      strcpy(__p, "FileSize");
      abm::CellularLoggingCommon::getProperty(a1, __p, &buf);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = 0;
      util::convert<unsigned int>(&buf, &v15, 0);
      value = xpc_dictionary_get_value(*a2, "kKeyFileSize");
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      *a3 = xpc::dyn_cast_or_default();
      xpc_release(object);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        return 1;
      }
    }

    else if (xpc_dictionary_get_value(*a2, "kKeyFileSegmentMode"))
    {
      v10 = xpc_dictionary_get_value(*a2, "kKeyFileSegmentMode");
      buf.__r_.__value_.__r.__words[0] = v10;
      if (v10)
      {
        xpc_retain(v10);
      }

      else
      {
        buf.__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      v11 = xpc::dyn_cast_or_default();
      xpc_release(buf.__r_.__value_.__l.__data_);
      if ((v11 - 1) < 2 || v11)
      {
        v13 = capabilities::trace::defaultFileSizeBytes(v12);
      }

      else
      {
        v13 = defaults::bbtrace::min_file_size(v12);
      }

      *a3 = v13;
      return 1;
    }

    return 1;
  }

  v6 = *(a1 + 8);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v8 = "Both file-size and chunk mode are passed";
    goto LABEL_21;
  }

  return result;
}

uint64_t abm::CellularLoggingCommon::convertFileSegmentModeToSize(capabilities::trace *a1, int a2)
{
  if ((a2 - 1) < 2 || a2)
  {

    return capabilities::trace::defaultFileSizeBytes(a1);
  }

  else
  {
    v3 = capabilities::radio::vendor(a1);
    if ((v3 - 1) > 3)
    {
      v4 = 25;
    }

    else
    {
      v4 = dword_23C32D580[v3 - 1];
    }

    v6 = capabilities::radio::dal(v3);
    if (v6)
    {
      v7 = 1024;
    }

    else
    {
      v7 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v6);
    if (shouldUseMinBasebandTransportIOReadSize)
    {
      return v7;
    }

    if (v4 == 17)
    {
      return 0x80000;
    }

    else
    {
      if (v4 == 21 || v4 == 20)
      {
        return 61440;
      }

      capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
      if ((v4 - 19) >= 6)
      {
        return 0x8000;
      }

      else
      {
        return qword_23C32F810[v4 - 19];
      }
    }
  }
}

uint64_t __cxx_global_var_init_31_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_CellularLoggingCommon_mm()
{
  result = ETLDIAGLoggingGetDefaultView();
  dword_280C05E64 = result;
  return result;
}

void abm::ProfileManagementTask::~ProfileManagementTask(abm::ProfileManagementTask *this)
{
  *this = &unk_284EFD360;
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_release(v2);
  }

  *this = &unk_284F001D8;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x23EECD800](this + 40);
  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void *abm::ProfileManagementTask::ProfileManagementTask(void *a1, int a2, uint64_t *a3)
{
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  abm::HelperTask::HelperTask(a1, a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *a1 = &unk_284EFD360;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  a1[14] = dispatch_queue_create("profile.task.queue", v5);
  return a1;
}

void sub_23C2AC5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void abm::ProfileManagementTask::init_sync(abm::ProfileManagementTask *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v41 = 0;
    v42 = 0;
    v6 = *(this + 12);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v5);
  v41 = 0;
  v42 = 0;
  v6 = *(this + 12);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  v7 = std::__shared_weak_count::lock(v6);
  v42 = v7;
  if (v7)
  {
    v8 = *(this + 11);
    v41 = v8;
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  *(this + 13) = 0;
  abm::ProfileManagementTask::registerForNotifications_sync(this);
  v40[23] = 18;
  strcpy(v40, "CommandReadProfile");
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  aBlock[4] = this;
  aBlock[5] = v3;
  v38 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(aBlock);
  v10 = *(this + 3);
  if (v10)
  {
    dispatch_retain(*(this + 3));
  }

  v39[0] = v9;
  v39[1] = v10;
  abm::HelperServerInternal::setCommandHandler(v8, v40, v39);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  v36[23] = 19;
  strcpy(v36, "CommandApplyProfile");
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3321888768;
  v33[2] = ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke_3;
  v33[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v33[4] = this;
  v33[5] = v3;
  v34 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(v33);
  v12 = *(this + 3);
  if (v12)
  {
    dispatch_retain(*(this + 3));
  }

  v35[0] = v11;
  v35[1] = v12;
  abm::HelperServerInternal::setCommandHandler(v8, v36, v35);
  if (v12)
  {
    dispatch_release(v12);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  v13 = operator new(0x19uLL);
  v31 = v13;
  v32 = xmmword_23C32CA60;
  strcpy(v13, "CheckIfProfileInstalled");
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3321888768;
  v28[2] = ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke_2;
  v28[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v28[4] = this;
  v28[5] = v3;
  v29 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = _Block_copy(v28);
  v15 = *(this + 3);
  if (v15)
  {
    dispatch_retain(*(this + 3));
  }

  v30[0] = v14;
  v30[1] = v15;
  abm::HelperServerInternal::setCommandHandler(v8, &v31, v30);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  operator delete(v13);
  v27[23] = 21;
  strcpy(v27, "CommandInstallProfile");
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3321888768;
  v24[2] = ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke_5;
  v24[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v24[4] = this;
  v24[5] = v3;
  v25 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v16 = _Block_copy(v24);
  v17 = *(this + 3);
  if (v17)
  {
    dispatch_retain(*(this + 3));
  }

  v26[0] = v16;
  v26[1] = v17;
  abm::HelperServerInternal::setCommandHandler(v8, v27, v26);
  if (v17)
  {
    dispatch_release(v17);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  v23[23] = 16;
  strcpy(v23, "UninstallProfile");
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3321888768;
  v20[2] = ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke_6;
  v20[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
  v20[4] = this;
  v20[5] = v3;
  v21 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v20);
  v19 = *(this + 3);
  if (v19)
  {
    dispatch_retain(v19);
  }

  v22[0] = v18;
  v22[1] = v19;
  abm::HelperServerInternal::setCommandHandler(v8, v23, v22);
  if (v19)
  {
    dispatch_release(v19);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C2ACB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, char a53)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    v56 = a28;
    if (!a28)
    {
LABEL_3:
      v57 = a40;
      if (!a40)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v56 = a28;
    if (!a28)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v56);
  v57 = a40;
  if (!a40)
  {
LABEL_4:
    v58 = a52;
    if (!a52)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  std::__shared_weak_count::__release_weak(v57);
  v58 = a52;
  if (!a52)
  {
LABEL_5:
    v59 = *(v54 - 184);
    if (!v59)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  std::__shared_weak_count::__release_weak(v58);
  v59 = *(v54 - 184);
  if (!v59)
  {
LABEL_6:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v54 - 128);
    std::__shared_weak_count::__release_weak(v53);
    _Unwind_Resume(a1);
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v59);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v54 - 128);
  std::__shared_weak_count::__release_weak(v53);
  _Unwind_Resume(a1);
}

void sub_23C2ACC6C()
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(v0 - 176);
  if (*(v0 - 184))
  {
    JUMPOUT(0x23C2ACC4CLL);
  }

  JUMPOUT(0x23C2ACB8CLL);
}

void sub_23C2ACC88(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2 - 128);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void abm::ProfileManagementTask::registerForNotifications_sync(abm::ProfileManagementTask *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (TelephonyUtilIsCarrierBuild() && (TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    abm::ProfileManagementTask::updateDefaultCarrierProfileInstalledProperty_sync(this);
  }

  v6 = *(this + 3);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZN3abm21ProfileManagementTask29registerForNotifications_syncEv_block_invoke;
  handler[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e9_v16__0_v8l;
  handler[4] = this;
  handler[5] = v3;
  v8 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v6, handler);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C2ACDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    std::__shared_weak_count::__release_weak(v16);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v5);
    v17 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
LABEL_20:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

      v10 = v7[10];
      if (v10)
      {
        dispatch_retain(v7[10]);
        dispatch_group_enter(v10);
      }

      abm::ProfileManagementTask::readProfile_sync(v7, &object);
      if (*a4)
      {
        v11 = _Block_copy(*a4);
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a4 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3321888768;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__0ES2_EEEvDpT__block_invoke_0;
      block[3] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v11)
      {
        v13 = _Block_copy(v11);
        v21 = 0;
        v14 = object;
        aBlock = v13;
        v20 = object;
        if (object)
        {
LABEL_11:
          xpc_retain(v14);
LABEL_14:
          dispatch_async(v12, block);
          xpc_release(v20);
          v20 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v11)
          {
            _Block_release(v11);
          }

          xpc_release(object);
          object = 0;
          if (v10)
          {
            dispatch_group_leave(v10);
            dispatch_release(v10);
          }

          goto LABEL_20;
        }
      }

      else
      {
        v21 = 0;
        v14 = object;
        aBlock = 0;
        v20 = object;
        if (object)
        {
          goto LABEL_11;
        }
      }

      v20 = xpc_null_create();
      goto LABEL_14;
    }
  }
}

void sub_23C2ACFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void abm::ProfileManagementTask::readProfile_sync(abm::ProfileManagementTask *this@<X0>, xpc_object_t *a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = objc_alloc_init(MEMORY[0x277CBEBD0]);
  if (v7)
  {
    [v7 addSuiteNamed:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "com.apple.commcenter")}];
    v8 = [v7 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "EnableBasebandLogging")}];
    v9 = v8;
    if (v8)
    {
      __p[0] = v8;
      CFRetain(v8);
      ctu::cf_to_xpc(&value, v9, v10);
      xpc_dictionary_set_value(*a2, "EnableBasebandLogging", value);
      v11 = value;
      value = xpc_null_create();
      xpc_release(v11);
      xpc_release(value);
      value = 0;
      CFRelease(v9);
    }

    v12 = [v7 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "TelephonyLoggingVersion", __p[0])}];
    v13 = v12;
    if (v12)
    {
      __p[0] = v12;
      CFRetain(v12);
      ctu::cf_to_xpc(&object, v13, v14);
      xpc_dictionary_set_value(*a2, "TelephonyLoggingVersion", object);
      v15 = object;
      object = xpc_null_create();
      xpc_release(v15);
      xpc_release(object);
      object = 0;
      CFRelease(v13);
    }

    v16 = [v7 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "TelephonyLoggingPriority", __p[0])}];
    v17 = v16;
    if (v16)
    {
      __p[0] = v16;
      CFRetain(v16);
      ctu::cf_to_xpc(&v25, v17, v18);
      xpc_dictionary_set_value(*a2, "TelephonyLoggingPriority", v25);
      v19 = v25;
      v25 = xpc_null_create();
      xpc_release(v19);
      xpc_release(v25);
      v25 = 0;
      CFRelease(v17);
    }

    else if (!(v9 | v13))
    {
LABEL_23:

      goto LABEL_24;
    }

    v20 = *(this + 5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, a2);
      if (v24 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      *buf = 136315138;
      v29 = v21;
      _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I Logging profile: %s ", buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  v22 = *MEMORY[0x277D85DE8];
}

void ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v5);
    v18 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
LABEL_20:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

      v10 = v7[10];
      if (v10)
      {
        dispatch_retain(v7[10]);
        dispatch_group_enter(v10);
      }

      abm::ProfileManagementTask::readProfile_sync(v7, &v15);
      abm::ProfileManagementTask::convertToTraceProperties_sync(v7, &v15, 0, &object);
      abm::ProfileManagementTask::applyTraceProperties_sync(v7, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v15);
      v15 = 0;
      v11 = xpc_null_create();
      if (*a4)
      {
        v12 = _Block_copy(*a4);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a4 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3321888768;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__0ES2_EEEvDpT__block_invoke_0;
      block[3] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v12)
      {
        v14 = _Block_copy(v12);
        v22 = 0;
        aBlock = v14;
        v21 = v11;
        if (v11)
        {
LABEL_11:
          xpc_retain(v11);
LABEL_14:
          dispatch_async(v13, block);
          xpc_release(v21);
          v21 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v12)
          {
            _Block_release(v12);
          }

          xpc_release(v11);
          if (v10)
          {
            dispatch_group_leave(v10);
            dispatch_release(v10);
          }

          goto LABEL_20;
        }
      }

      else
      {
        v22 = 0;
        aBlock = 0;
        v21 = v11;
        if (v11)
        {
          goto LABEL_11;
        }
      }

      v21 = xpc_null_create();
      goto LABEL_14;
    }
  }
}

void sub_23C2AD5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, char a12)
{
  xpc_release(object);
  xpc_release(a10);
  if (v12)
  {
    dispatch_group_leave(v12);
    dispatch_release(v12);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t abm::ProfileManagementTask::applyTraceProperties_sync(uint64_t a1, xpc_object_t *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x23EECEE80](*a2);
  v5 = MEMORY[0x277D86440];
  if (v4 != MEMORY[0x277D86440] || MEMORY[0x23EECEE80](*a2) != v5 || !xpc_array_get_count(*a2))
  {
    v6 = 0;
    goto LABEL_4;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, a2);
    v10 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Applying trace properties: %s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(__p[2]) = 17;
  strcpy(__p, "ProfileManagement");
  v11 = *(a1 + 24);
  abm::client::CreateManager();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    object = v12;
  }

  else
  {
    v12 = xpc_null_create();
    object = v12;
    if (!v12)
    {
      v12 = 0;
      object = xpc_null_create();
      goto LABEL_18;
    }
  }

  xpc_retain(v12);
LABEL_18:
  v33 = 0;
  xpc_release(v12);
  v13 = *MEMORY[0x277CECB48];
  v6 = 1;
  while (1)
  {
    v14 = *a2;
    if (*a2)
    {
      xpc_retain(*a2);
    }

    else
    {
      v14 = xpc_null_create();
    }

    if (MEMORY[0x23EECEE80](*a2) == v5)
    {
      count = xpc_array_get_count(*a2);
      if (!v14)
      {
LABEL_28:
        v16 = xpc_null_create();
        goto LABEL_29;
      }
    }

    else
    {
      count = 0;
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    xpc_retain(v14);
    v16 = v14;
LABEL_29:
    xpc_release(v14);
    v18 = object;
    v17 = v33;
    xpc_release(v16);
    if (v17 == count && v18 == v16)
    {
      break;
    }

    xdict = 0xAAAAAAAAAAAAAAAALL;
    __p[0] = &object;
    __p[1] = v33;
    xpc::array::object_proxy::operator xpc::dict(__p, &xdict);
    v19 = xpc_int64_create(3000);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, v13, v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
    v21 = xpc_BOOL_create(0);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, "kKeyTracePropertyWaitForCompletion", v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    memset(buf, 170, 24);
    value = xpc_dictionary_get_value(xdict, "kKeyTraceName");
    __p[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(__p[0]);
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v24;
    *&__p[2] = v24;
    v29 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = operator new(0x20uLL);
    strcpy(v28, "kCommandSetTraceProperty");
    abm::client::PerformCommand();
    operator delete(v28);
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
      v25 = LODWORD(__p[0]) == 0;
      if (SHIBYTE(__p[3]) < 0)
      {
LABEL_47:
        operator delete(__p[1]);
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v25 = LODWORD(__p[0]) == 0;
      if (SHIBYTE(__p[3]) < 0)
      {
        goto LABEL_47;
      }
    }

    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_48:
    operator delete(*buf);
LABEL_44:
    xpc_release(xdict);
    v26 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v26 = xpc_null_create();
    }

    v6 &= v25;
    ++v33;
    xpc_release(v26);
  }

  xpc_release(object);
  v27 = v35;
  if (v35 && !atomic_fetch_add((v35 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

void sub_23C2ADB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, xpc_object_t object, xpc_object_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abm::ProfileManagementTask::convertToTraceProperties_sync(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_null_create();
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  v9 = xpc_array_create(0, 0);
  v10 = v9;
  if (v9)
  {
    *a4 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    *a4 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v10) == MEMORY[0x277D86440])
  {
    xpc_retain(v10);
    goto LABEL_9;
  }

  v11 = xpc_null_create();
LABEL_8:
  *a4 = v11;
LABEL_9:
  xpc_release(v10);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  buf.__r_.__value_.__r.__words[0] = a2;
  buf.__r_.__value_.__l.__size_ = "EnableBasebandLogging";
  xpc::dict::object_proxy::operator xpc::dict(&buf, &v43);
  v12 = MEMORY[0x23EECEE80](v43);
  v13 = MEMORY[0x277D86468];
  v14 = *(a1 + 40);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v12 == v13)
  {
    if (v15)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Logging profile found", &buf, 2u);
    }

    v21 = *a2;
    object = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      object = xpc_null_create();
    }

    logs::convertToTraceProperties(&object, &buf.__r_.__value_.__l.__data_);
    v22 = buf.__r_.__value_.__r.__words[0];
    buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    v23 = *a4;
    *a4 = v22;
    xpc_release(v23);
    xpc_release(buf.__r_.__value_.__l.__data_);
    buf.__r_.__value_.__r.__words[0] = 0;
    xpc_release(object);
    object = 0;
    v24 = xpc_dictionary_create(0, 0, 0);
    if (v24 || (v24 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v24) == v13)
      {
        xpc_retain(v24);
        v20 = v24;
      }

      else
      {
        v20 = xpc_null_create();
      }
    }

    else
    {
      v20 = xpc_null_create();
      v24 = 0;
    }

    xpc_release(v24);
    v25 = xpc_null_create();
    xpc_release(v8);
    xpc_release(v25);
    v26 = xpc_string_create("Profile");
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    xpc_dictionary_set_value(v20, "kKeyTraceName", v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    v28 = xpc_string_create(*MEMORY[0x277CECB40]);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    xpc_dictionary_set_value(v20, "kKeyTracePropertyName", v28);
    v29 = xpc_null_create();
    xpc_release(v28);
    xpc_release(v29);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&buf, 1);
    __p = buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v31 = xpc_string_create(p_p);
    if (!v31)
    {
      v31 = xpc_null_create();
    }

    xpc_dictionary_set_value(v20, "kKeyTracePropertyValue", v31);
    v32 = xpc_null_create();
    xpc_release(v31);
    xpc_release(v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a4, v20);
  }

  else
  {
    if (v15)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I No Logging profile found", &buf, 2u);
    }

    if (a3)
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Load the default trace properties", &buf, 2u);
      }

      logs::getDefaultTraceProperties(&buf.__r_.__value_.__l.__data_);
      v17 = buf.__r_.__value_.__r.__words[0];
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
      v18 = *a4;
      *a4 = v17;
      xpc_release(v18);
      xpc_release(buf.__r_.__value_.__l.__data_);
      v19 = xpc_dictionary_create(0, 0, 0);
      if (v19 || (v19 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x23EECEE80](v19) == v13)
        {
          xpc_retain(v19);
          v20 = v19;
        }

        else
        {
          v20 = xpc_null_create();
        }
      }

      else
      {
        v20 = xpc_null_create();
        v19 = 0;
      }

      xpc_release(v19);
      v33 = xpc_null_create();
      xpc_release(v8);
      xpc_release(v33);
      v34 = xpc_string_create("Profile");
      if (!v34)
      {
        v34 = xpc_null_create();
      }

      xpc_dictionary_set_value(v20, "kKeyTraceName", v34);
      v35 = xpc_null_create();
      xpc_release(v34);
      xpc_release(v35);
      v36 = xpc_string_create(*MEMORY[0x277CECB40]);
      if (!v36)
      {
        v36 = xpc_null_create();
      }

      xpc_dictionary_set_value(v20, "kKeyTracePropertyName", v36);
      v37 = xpc_null_create();
      xpc_release(v36);
      xpc_release(v37);
      std::to_string(&buf, 0);
      __p = buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p.__r_.__value_.__r.__words[0];
      }

      v39 = xpc_string_create(v38);
      if (!v39)
      {
        v39 = xpc_null_create();
      }

      xpc_dictionary_set_value(v20, "kKeyTracePropertyValue", v39);
      v40 = xpc_null_create();
      xpc_release(v39);
      xpc_release(v40);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      xpc_array_append_value(*a4, v20);
    }

    else
    {
      v20 = v8;
    }
  }

  xpc_release(v43);
  xpc_release(v20);
}

void sub_23C2AE240(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C2AE170);
}

void sub_23C2AE24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc::array::~array(v17);
  xpc_release(v18);
  _Unwind_Resume(a1);
}

void ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke_2(void *a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v35 = 0;
  v36 = 0;
  v6 = a1[6];
  if (v6)
  {
    v36 = std::__shared_weak_count::lock(v6);
    if (!v36)
    {
      goto LABEL_64;
    }

    v35 = a1[5];
    if (v35)
    {
      v9 = v5[10];
      if (v9)
      {
        dispatch_retain(v5[10]);
        dispatch_group_enter(v9);
      }

      memset(__p, 170, sizeof(__p));
      value = xpc_dictionary_get_value(*a3, "ProfileName");
      *&object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *&object = xpc_null_create();
      }

      xpc::dyn_cast_or_default();
      xpc_release(object);
      v11 = HIBYTE(__p[2]);
      v12 = HIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        v11 = __p[1];
      }

      if (v11)
      {
        v33 = -1431655766;
        v13 = v5[5];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = __p[0];
          if (SHIBYTE(__p[2]) >= 0)
          {
            v14 = __p;
          }

          LODWORD(object) = 136315138;
          *(&object + 4) = v14;
          _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Checking if profile installed: name [%s]", &object, 0xCu);
          v12 = HIBYTE(__p[2]);
        }

        if (v12 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        v16 = abm::ProfileManagementTask::checkifProfileInstalled_sync(v5, v15, &v33);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17 || (v17 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x23EECEE80](v17) == MEMORY[0x277D86468])
          {
            xpc_retain(v17);
            v18 = v17;
          }

          else
          {
            v18 = xpc_null_create();
          }
        }

        else
        {
          v18 = xpc_null_create();
          v17 = 0;
        }

        xpc_release(v17);
        v24 = xpc_BOOL_create(v16);
        if (!v24)
        {
          v24 = xpc_null_create();
        }

        xpc_dictionary_set_value(v18, "ProfileIsInstalled", v24);
        v25 = xpc_null_create();
        xpc_release(v24);
        xpc_release(v25);
        if (v18)
        {
          xpc_retain(v18);
          v26 = v18;
          v27 = *a4;
          if (*a4)
          {
LABEL_44:
            v28 = _Block_copy(v27);
            goto LABEL_47;
          }
        }

        else
        {
          v26 = xpc_null_create();
          v27 = *a4;
          if (*a4)
          {
            goto LABEL_44;
          }
        }

        v28 = 0;
LABEL_47:
        v29 = *(a4 + 8);
        *&object = MEMORY[0x277D85DD0];
        *(&object + 1) = 3321888768;
        v38 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJiS2_EEEvDpT__block_invoke;
        v39 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v28)
        {
          v30 = _Block_copy(v28);
          v42 = 0;
          aBlock = v30;
          v41 = v26;
          if (v26)
          {
LABEL_49:
            xpc_retain(v26);
LABEL_52:
            dispatch_async(v29, &object);
            xpc_release(v41);
            v41 = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v28)
            {
              _Block_release(v28);
            }

            xpc_release(v26);
            xpc_release(v18);
LABEL_57:
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            if (v9)
            {
              dispatch_group_leave(v9);
              dispatch_release(v9);
            }

            goto LABEL_61;
          }
        }

        else
        {
          v42 = 0;
          aBlock = 0;
          v41 = v26;
          if (v26)
          {
            goto LABEL_49;
          }
        }

        v41 = xpc_null_create();
        goto LABEL_52;
      }

      v19 = v5[5];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(object) = 0;
        _os_log_error_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_ERROR, "Requested profile info is empty", &object, 2u);
      }

      v20 = xpc_null_create();
      if (*a4)
      {
        v21 = _Block_copy(*a4);
      }

      else
      {
        v21 = 0;
      }

      v22 = *(a4 + 8);
      *&object = MEMORY[0x277D85DD0];
      *(&object + 1) = 3321888768;
      v38 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJiS2_EEEvDpT__block_invoke;
      v39 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v21)
      {
        v23 = _Block_copy(v21);
        v42 = -534716414;
        aBlock = v23;
        v41 = v20;
        if (v20)
        {
LABEL_31:
          xpc_retain(v20);
LABEL_34:
          dispatch_async(v22, &object);
          xpc_release(v41);
          v41 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v21)
          {
            _Block_release(v21);
          }

          xpc_release(v20);
          goto LABEL_57;
        }
      }

      else
      {
        v42 = -534716414;
        aBlock = 0;
        v41 = v20;
        if (v20)
        {
          goto LABEL_31;
        }
      }

      v41 = xpc_null_create();
      goto LABEL_34;
    }
  }

LABEL_61:
  v31 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

LABEL_64:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_23C2AE888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t abm::ProfileManagementTask::checkifProfileInstalled_sync(NSObject **this, const char *a2, int *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  ProfileInfoIndex_sync = abm::ProfileManagementTask::getProfileInfoIndex_sync(this, a2);
  if (ProfileInfoIndex_sync < 2)
  {
    if ((atomic_load_explicit(_MergedGlobals_12, memory_order_acquire) & 1) == 0)
    {
      v19 = ProfileInfoIndex_sync;
      v18 = __cxa_guard_acquire(_MergedGlobals_12);
      ProfileInfoIndex_sync = v19;
      if (v18)
      {
        qword_280C05E70 = "Baseband";
        unk_280C05E78 = "Baseband.mobileconfig";
        qword_280C05E80 = 0x1200000003;
        qword_280C05E88 = "CellularDE";
        unk_280C05E90 = "CellularDE.mobileconfig";
        qword_280C05E98 = 0x1200000002;
        __cxa_guard_release(_MergedGlobals_12);
        ProfileInfoIndex_sync = v19;
      }
    }

    v9 = _MergedGlobals_12[3 * ProfileInfoIndex_sync + 3];
    object = 0xAAAAAAAAAAAAAAAALL;
    abm::ProfileManagementTask::readProfile_sync(this, &object);
    if (MEMORY[0x23EECEE80](object) == MEMORY[0x277D86468])
    {
      value = xpc_dictionary_get_value(object, "TelephonyLoggingPriority");
      *buf = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v13 = xpc::dyn_cast_or_default();
      xpc_release(*buf);
      v14 = xpc_dictionary_get_value(object, "TelephonyLoggingVersion");
      *buf = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        *buf = xpc_null_create();
      }

      *a3 = xpc::dyn_cast_or_default();
      xpc_release(*buf);
      v15 = this[5];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v9 == v13)
      {
        if (v16)
        {
          v17 = *a3;
          *buf = 136315394;
          *&buf[4] = a2;
          v22 = 1024;
          v23 = v17;
          _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Installed profile name [%s] : version [%d] ", buf, 0x12u);
        }

        v8 = 1;
        goto LABEL_7;
      }

      if (v16)
      {
        *buf = 136315650;
        *&buf[4] = a2;
        v22 = 1024;
        v23 = v9;
        v24 = 1024;
        v25 = v13;
        _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Checking profile [%s: index %d] but installed profile index is [%d] ", buf, 0x18u);
      }
    }

    v8 = 0;
LABEL_7:
    xpc_release(object);
    goto LABEL_8;
  }

  v7 = this[5];
  v8 = 0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = a2;
    _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#E Could not find info for profile: %s", buf, 0xCu);
    v8 = 0;
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C2AEC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke_5(void *a1, uint64_t a2, xpc_object_t *a3, NSObject **a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (v5)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v5);
    v26 = v9;
    if (v9)
    {
      v10 = v9;
      if (a1[5])
      {
        v11 = v8[10];
        if (v11)
        {
          dispatch_retain(v8[10]);
          dispatch_group_enter(v11);
        }

        memset(&v24, 170, sizeof(v24));
        value = xpc_dictionary_get_value(*a3, "ProfileName");
        *object = value;
        if (value)
        {
          xpc_retain(value);
        }

        else
        {
          *object = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        xpc_release(*object);
        v13 = xpc_dictionary_get_value(*a3, "RequireUserConfirmation");
        *object = v13;
        if (v13)
        {
          xpc_retain(v13);
        }

        else
        {
          *object = xpc_null_create();
        }

        v14 = xpc::dyn_cast_or_default();
        xpc_release(*object);
        v15 = v8[5];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = &v24;
          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v16 = v24.__r_.__value_.__r.__words[0];
          }

          *object = 136315394;
          *&object[4] = v16;
          *&object[12] = 1024;
          *&object[14] = v14;
          _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Install profile: %s, with confirmation %d", object, 0x12u);
        }

        v17 = a1[6];
        *object = a1[5];
        *&object[8] = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
        }

        *&object[16] = v11;
        if (v11)
        {
          dispatch_retain(v11);
          if (*&object[16])
          {
            dispatch_group_enter(*&object[16]);
          }
        }

        LOBYTE(v30) = v14;
        *(&v30 + 1) = v8;
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v24;
        }

        v18 = *a4;
        if (*a4)
        {
          v18 = _Block_copy(v18);
        }

        v19 = a4[1];
        v32[0] = v18;
        v32[1] = v19;
        if (v19)
        {
          dispatch_retain(v19);
        }

        v20 = v8[14];
        v21 = operator new(0x50uLL);
        v22 = *&object[8];
        *v21 = *object;
        *(v21 + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
        }

        *(v21 + 2) = *&object[16];
        *(v21 + 24) = v30;
        *(v21 + 40) = __p;
        memset(&__p, 0, sizeof(__p));
        *(v21 + 4) = *v32;
        *&object[16] = 0;
        v32[0] = 0;
        v32[1] = 0;
        v27 = 0;
        v28 = 0;
        dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
        _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1NS_14default_deleteIS3_EEED1B8ne200100Ev(&v27);
        _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1NS_14default_deleteIS3_EEED1B8ne200100Ev(&v28);
        if (v32[1])
        {
          dispatch_release(v32[1]);
        }

        if (v32[0])
        {
          _Block_release(v32[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*&object[16])
        {
          dispatch_group_leave(*&object[16]);
          if (*&object[16])
          {
            dispatch_release(*&object[16]);
          }
        }

        if (*&object[8])
        {
          std::__shared_weak_count::__release_weak(*&object[8]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (v11)
        {
          dispatch_group_leave(v11);
          dispatch_release(v11);
        }
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C2AF018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, std::__shared_weak_count *a21, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void ___ZN3abm21ProfileManagementTask9init_syncEv_block_invoke_6(uint64_t a1, uint64_t a2, xpc_object_t *a3, NSObject **a4)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = std::__shared_weak_count::lock(v5);
    v33 = v9;
    if (v9)
    {
      v10 = v9;
      if (!*(a1 + 40))
      {
LABEL_52:
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        return;
      }

      v11 = *(v8 + 80);
      if (v11)
      {
        dispatch_retain(*(v8 + 80));
        dispatch_group_enter(v11);
      }

      memset(&v31, 170, sizeof(v31));
      value = xpc_dictionary_get_value(*a3, "ProfileName");
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      xpc::dyn_cast_or_default();
      xpc_release(object);
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v14 = *(a1 + 48);
        object = *(a1 + 40);
        v27 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        group[0] = v11;
        if (v11)
        {
          dispatch_retain(v11);
          dispatch_group_enter(group[0]);
        }

        group[1] = v8;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v31;
        }

        v18 = *a4;
        if (*a4)
        {
          v18 = _Block_copy(v18);
        }

        v19 = a4[1];
        v30[0] = v18;
        v30[1] = v19;
        if (v19)
        {
          dispatch_retain(v19);
        }

        v20 = *(v8 + 112);
        v21 = operator new(0x48uLL);
        v22 = v27;
        *v21 = object;
        *(v21 + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = *&__p.__r_.__value_.__l.__data_;
        *(v21 + 1) = *group;
        *(v21 + 2) = v23;
        *(v21 + 6) = *(&__p.__r_.__value_.__l + 2);
        memset(&__p, 0, sizeof(__p));
        *(v21 + 56) = *v30;
        group[0] = 0;
        v30[0] = 0;
        v30[1] = 0;
        v34 = 0;
        v35 = 0;
        dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
        _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2NS_14default_deleteIS3_EEED1B8ne200100Ev(&v34);
        _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2NS_14default_deleteIS3_EEED1B8ne200100Ev(&v35);
        if (v30[1])
        {
          dispatch_release(v30[1]);
        }

        if (v30[0])
        {
          _Block_release(v30[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27)
        {
          std::__shared_weak_count::__release_weak(v27);
        }

LABEL_48:
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (v11)
        {
          dispatch_group_leave(v11);
          dispatch_release(v11);
        }

        goto LABEL_52;
      }

      v15 = *(v8 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(object) = 0;
        _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Requested profile info is empty", &object, 2u);
      }

      v16 = xpc_null_create();
      if (*a4)
      {
        v17 = _Block_copy(*a4);
      }

      else
      {
        v17 = 0;
      }

      v24 = a4[1];
      object = MEMORY[0x277D85DD0];
      v27 = 3321888768;
      group[0] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJiS2_EEEvDpT__block_invoke;
      group[1] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v17)
      {
        v25 = _Block_copy(v17);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = -534716414;
        __p.__r_.__value_.__r.__words[0] = v25;
        __p.__r_.__value_.__l.__size_ = v16;
        if (v16)
        {
LABEL_40:
          xpc_retain(v16);
LABEL_43:
          dispatch_async(v24, &object);
          xpc_release(__p.__r_.__value_.__l.__size_);
          __p.__r_.__value_.__l.__size_ = 0;
          if (__p.__r_.__value_.__r.__words[0])
          {
            _Block_release(__p.__r_.__value_.__l.__data_);
          }

          if (v17)
          {
            _Block_release(v17);
          }

          xpc_release(v16);
          goto LABEL_48;
        }
      }

      else
      {
        LODWORD(__p.__r_.__value_.__r.__words[2]) = -534716414;
        __p.__r_.__value_.__r.__words[0] = 0;
        __p.__r_.__value_.__l.__size_ = v16;
        if (v16)
        {
          goto LABEL_40;
        }
      }

      __p.__r_.__value_.__l.__size_ = xpc_null_create();
      goto LABEL_43;
    }
  }
}

void sub_23C2AF4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, std::__shared_weak_count *a10, dispatch_group_t group, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
LABEL_9:
    if (!v23)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  operator delete(__p);
  if (!v23)
  {
LABEL_11:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v24 - 80);
    _Unwind_Resume(a1);
  }

LABEL_10:
  dispatch_group_leave(v23);
  dispatch_release(v23);
  goto LABEL_11;
}

uint64_t abm::ProfileManagementTask::showMCProfileInstallNotification_sync(abm::ProfileManagementTask *this, const char *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!TelephonyUtilIsCarrierBuild() || (TelephonyUtilIsInternalBuild() & 1) != 0)
  {
    v4 = 1;
    goto LABEL_21;
  }

  v5 = *(this + 5);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    *buf = 136315138;
    *&buf[4] = a2;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Checking [%s] logging profile notification", buf, 0xCu);
  }

  ProfileInfoIndex_sync = abm::ProfileManagementTask::getProfileInfoIndex_sync(v6, a2);
  if (ProfileInfoIndex_sync >= 2)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Profile notification skipped as we failed to get profile info";
LABEL_84:
      _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, v9, buf, 2u);
      v4 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v10 = ProfileInfoIndex_sync;
  if ((abm::ProfileManagementTask::isProfileValid(this, ProfileInfoIndex_sync) & 1) == 0)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Profile notification skipped as profile is not valid";
      goto LABEL_84;
    }

LABEL_20:
    v4 = 0;
    goto LABEL_21;
  }

  if ((abm::ProfileManagementTask::isAllowedToOverrideProfile(this, v10) & 1) == 0)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Profile notification skipped as we want to keep pre-installed one";
      goto LABEL_84;
    }

    goto LABEL_20;
  }

  if (*(this + 13) && (TelephonyUtilGetSystemTime() - *(this + 13)) >> 6 < 0x753)
  {
    goto LABEL_20;
  }

  v11 = *(this + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Asking for user confirmation to install profile", buf, 2u);
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:@"Dismiss" forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Update %s %@", a2, @"Logging Profile"];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277CBF188]];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67340]];
  [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D673D8]];
  if (!config::hw::watch([v12 setObject:@"Install" forKeyedSubscript:*MEMORY[0x277CBF1C0]]))
  {
    v18 = [objc_msgSend(MEMORY[0x277D262A0] "sharedConnection")];
    v15 = v18;
    if (v18)
    {
      v19 = "Do you want to ";
    }

    else
    {
      v19 = "Do you want to enable profile installation and ";
    }

    *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
    *&buf[16] = 0xAAAAAAAAAAAAAAAALL;
    v20 = 15;
    if (v18)
    {
      v21 = 15;
    }

    else
    {
      v21 = 47;
    }

    *buf = 0xAAAAAAAAAAAAAAAALL;
    if (v18)
    {
      buf[23] = 15;
      v22 = buf;
    }

    else
    {
      v22 = operator new(0x30uLL);
      *buf = v22;
      *&buf[8] = xmmword_23C32F850;
      v20 = 47;
    }

    memcpy(v22, v19, v21);
    v22[v20] = 0;
    v23 = buf[23];
    if ((buf[23] & 0x8000000000000000) != 0)
    {
      v23 = *&buf[8];
      v26 = (*&buf[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v26 - *&buf[8] < 0x3F)
      {
        v27 = 0x7FFFFFFFFFFFFFF7;
        v24 = *&buf[8] + 63;
        if (0x7FFFFFFFFFFFFFF7 - (*&buf[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&buf[8] + 63 - v26)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v25 = *buf;
        if (v26 > 0x3FFFFFFFFFFFFFF2)
        {
          v30 = 0;
LABEL_46:
          v31 = operator new(v27);
          v32 = v31;
          if (v23)
          {
            memmove(v31, v25, v23);
          }

          qmemcpy(&v32[v23], "install profile to avoid missing important logging information?", 63);
          if (!v30)
          {
            operator delete(v25);
          }

          *&buf[8] = v24;
          *&buf[16] = v27 | 0x8000000000000000;
          *buf = v32;
          v33 = &v32[v24];
          goto LABEL_54;
        }

LABEL_37:
        v28 = 2 * v26;
        if (v24 > 2 * v26)
        {
          v28 = v24;
        }

        if ((v28 | 7) == 0x17)
        {
          v29 = 25;
        }

        else
        {
          v29 = (v28 | 7) + 1;
        }

        if (v28 >= 0x17)
        {
          v27 = v29;
        }

        else
        {
          v27 = 23;
        }

        v30 = v26 == 22;
        goto LABEL_46;
      }

      v34 = *buf;
      qmemcpy((*buf + *&buf[8]), "install profile to avoid missing important logging information?", 63);
      v35 = v23 + 63;
      *&buf[8] = v23 + 63;
    }

    else
    {
      if (buf[23] < 0x17)
      {
        v24 = buf[23] + 63;
        v25 = buf;
        v26 = 22;
        goto LABEL_37;
      }

      v34 = buf;
      qmemcpy(&buf[buf[23]], "install profile to avoid missing important logging information?", 63);
      v35 = v23 + 63;
      buf[23] = (v23 + 63) & 0x7F;
    }

    v33 = &v34[v35];
LABEL_54:
    *v33 = 0;
    if (buf[23] >= 0)
    {
      v36 = buf;
    }

    else
    {
      v36 = *buf;
    }

    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:v36];
    [v12 setObject:v37 forKeyedSubscript:*MEMORY[0x277CBF198]];
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_59;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"The Telephony Logging Profile generates files that allow Apple to troubleshoot issues with your device and help Apple to improve its products and services. The generated files may contain some of your personal information, including contents of SMS's, device identifiers and names, the IP addresses and recent location history of your device, phone numbers of the registering device, Apple Accounts into which you are signed, and logs of incoming and outgoing calls and audio routes during the time the logging is enabled. If you install this profile, it will automatically turn the logging on and this data will be captured when you take a Sysdiagnose on this device. The data will not leave the device unless you initiate a Sysdiagnose and send the results. The profile will expire after 21 days. You will be able to turn on and off logging at any time while the Profile is installed. To turn off logging on your device, go to your iphone and watch app. By enabling this diagnostic tool and sending a copy of the generated files to Apple, you are consenting to Apple's use of the content of such files in accordance with its privacy policy (http://www.apple.com/legal/privacy)."}];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277CBF198]];
  v15 = 1;
LABEL_59:
  error = 0;
  responseFlags = 3;
  v38 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 600.0, 3uLL, &error, v12);
  v39 = v38;
  v49 = v38;
  v40 = error;
  if (!v38 || error)
  {
    v44 = *(this + 5);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_23C1C4000, v44, OS_LOG_TYPE_ERROR, "Creating profile installation notification resulted in error: %d", buf, 8u);
    }

    v4 = 0;
  }

  else
  {
    v41 = CFUserNotificationReceiveResponse(v38, 0.0, &responseFlags);
    error = v41;
    v42 = *(this + 5);
    if (v41)
    {
      v43 = v41;
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v43;
        _os_log_error_impl(&dword_23C1C4000, v42, OS_LOG_TYPE_ERROR, "Receiving profile installation notification resulted in error: %d", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = responseFlags;
      _os_log_impl(&dword_23C1C4000, v42, OS_LOG_TYPE_DEFAULT, "#I responseFlags=0x%lx", buf, 0xCu);
    }

    v45 = responseFlags == 1 && error == 0;
    v46 = !v45;
    if (v45)
    {
      v47 = v15;
    }

    else
    {
      v47 = 1;
    }

    if (v47)
    {
      v4 = v46 ^ 1u;
    }

    else
    {
      v48 = [MEMORY[0x277D262A0] sharedConnection];
      v4 = 1;
      [v48 setBoolValue:1 forSetting:*MEMORY[0x277D260B0]];
    }
  }

  *(this + 13) = TelephonyUtilGetSystemTime();
  if (v39)
  {
    CFRelease(v39);
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_23C2AFCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::ProfileManagementTask::getProfileInfoIndex_sync(abm::ProfileManagementTask *this, const char *__s)
{
  if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_12))
  {
    qword_280C05E70 = "Baseband";
    unk_280C05E78 = "Baseband.mobileconfig";
    qword_280C05E80 = 0x1200000003;
    qword_280C05E88 = "CellularDE";
    unk_280C05E90 = "CellularDE.mobileconfig";
    qword_280C05E98 = 0x1200000002;
    __cxa_guard_release(&_MergedGlobals_12);
  }

  v3 = strlen(__s);
  result = strncasecmp(__s, qword_280C05E70, v3);
  if (result)
  {
    if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_12))
    {
      qword_280C05E70 = "Baseband";
      unk_280C05E78 = "Baseband.mobileconfig";
      qword_280C05E80 = 0x1200000003;
      qword_280C05E88 = "CellularDE";
      unk_280C05E90 = "CellularDE.mobileconfig";
      qword_280C05E98 = 0x1200000002;
      __cxa_guard_release(&_MergedGlobals_12);
    }

    v5 = strlen(__s);
    if (!strncasecmp(__s, qword_280C05E88, v5))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t abm::ProfileManagementTask::isProfileValid(abm::ProfileManagementTask *this, abm *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  DataFromProfile = abm::createDataFromProfile(a2);
  if (DataFromProfile)
  {
    v5 = DataFromProfile;
    v16 = 0;
    v6 = [MEMORY[0x277D26290] profileWithData:DataFromProfile outError:&v16];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v6 removalDate];
    if (v8 && [v8 earlierDate:v7] == v8)
    {
      v12 = *(this + 5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = *abm::sGetProfileAtIndex(a2);
        *buf = 136315138;
        v18 = v15;
        _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Profile [%s] is expired", buf, 0xCu);
      }

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v18) = a2;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Failed to get profile data [index:%d]", buf, 8u);
    }

    v9 = 0;
    v11 = *MEMORY[0x277D85DE8];
  }

  return v9;
}

uint64_t abm::ProfileManagementTask::isAllowedToOverrideProfile(NSObject **this, unsigned int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(__dst, 170, sizeof(__dst));
  if ((atomic_load_explicit(_MergedGlobals_12, memory_order_acquire) & 1) == 0)
  {
    v26 = a2;
    v27 = __cxa_guard_acquire(_MergedGlobals_12);
    a2 = v26;
    if (v27)
    {
      qword_280C05E70 = "Baseband";
      unk_280C05E78 = "Baseband.mobileconfig";
      qword_280C05E80 = 0x1200000003;
      qword_280C05E88 = "CellularDE";
      unk_280C05E90 = "CellularDE.mobileconfig";
      qword_280C05E98 = 0x1200000002;
      __cxa_guard_release(_MergedGlobals_12);
      a2 = v26;
    }
  }

  v3 = &_MergedGlobals_12[3 * a2];
  v6 = v3[1];
  v5 = v3 + 1;
  v4 = v6;
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst[1] = v8;
    __dst[2] = (v10 | 0x8000000000000000);
    __dst[0] = v9;
  }

  else
  {
    HIBYTE(__dst[2]) = v7;
    v9 = __dst;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  memmove(v9, v4, v8);
LABEL_11:
  *(v8 + v9) = 0;
  if ((atomic_load_explicit(_MergedGlobals_12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_MergedGlobals_12))
  {
    qword_280C05E70 = "Baseband";
    unk_280C05E78 = "Baseband.mobileconfig";
    qword_280C05E80 = 0x1200000003;
    qword_280C05E88 = "CellularDE";
    unk_280C05E90 = "CellularDE.mobileconfig";
    qword_280C05E98 = 0x1200000002;
    __cxa_guard_release(_MergedGlobals_12);
  }

  v11 = *(v5 + 5);
  if ((atomic_load_explicit(_MergedGlobals_12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_MergedGlobals_12))
  {
    qword_280C05E70 = "Baseband";
    unk_280C05E78 = "Baseband.mobileconfig";
    qword_280C05E80 = 0x1200000003;
    qword_280C05E88 = "CellularDE";
    unk_280C05E90 = "CellularDE.mobileconfig";
    qword_280C05E98 = 0x1200000002;
    __cxa_guard_release(_MergedGlobals_12);
  }

  v12 = *(v5 + 4);
  object = 0xAAAAAAAAAAAAAAAALL;
  abm::ProfileManagementTask::readProfile_sync(this, &object);
  if (MEMORY[0x23EECEE80](object) != MEMORY[0x277D86468])
  {
    goto LABEL_14;
  }

  value = xpc_dictionary_get_value(object, "TelephonyLoggingPriority");
  *v30 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *v30 = xpc_null_create();
  }

  v17 = xpc::dyn_cast_or_default();
  xpc_release(*v30);
  v18 = xpc_dictionary_get_value(object, "TelephonyLoggingVersion");
  *v30 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    *v30 = xpc_null_create();
  }

  v19 = xpc::dyn_cast_or_default();
  xpc_release(*v30);
  if (v17 == v12 && v19 >= v11)
  {
    v20 = this[5];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = __dst;
      if (SHIBYTE(__dst[2]) < 0)
      {
        v21 = __dst[0];
      }

      *v30 = 136315394;
      *&v30[4] = v21;
      v31 = 1024;
      v32 = v11;
      v22 = "#I Skip install [%s, version: %d] as installed profile version is same or higher";
LABEL_35:
      _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, v22, v30, 0x12u);
      v13 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v20 = this[5];
    v23 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v17 <= v12)
    {
      if (v23)
      {
        v25 = __dst;
        if (SHIBYTE(__dst[2]) < 0)
        {
          v25 = __dst[0];
        }

        *v30 = 136315394;
        *&v30[4] = v25;
        v31 = 1024;
        v32 = v11;
        _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I Allow to override [%s, version: %d] ", v30, 0x12u);
      }

LABEL_14:
      v13 = 1;
      goto LABEL_15;
    }

    if (v23)
    {
      v24 = __dst;
      if (SHIBYTE(__dst[2]) < 0)
      {
        v24 = __dst[0];
      }

      *v30 = 136315394;
      *&v30[4] = v24;
      v31 = 1024;
      v32 = v11;
      v22 = "#I Skip install [%s, version: %d] as installed profile has higher priority ";
      goto LABEL_35;
    }
  }

  v13 = 0;
LABEL_15:
  xpc_release(object);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_23C2B0430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFUserNotification>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void abm::ProfileManagementTask::updateDefaultCarrierProfileInstalledProperty_sync(NSObject **this)
{
  v2 = xpc_array_create(0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v2) == MEMORY[0x277D86440])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  v16 = -1431655766;
  xpc_release(v2);
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v4) == MEMORY[0x277D86468])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_string_create("Profile");
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "kKeyTraceName", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_string_create("InstalledCarrierProfileVersion");
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "kKeyTracePropertyName", v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (abm::ProfileManagementTask::checkifProfileInstalled_sync(this, "Baseband", &v16))
  {
    v10 = v16;
  }

  else
  {
    v10 = 0;
  }

  std::to_string(&v17, v10);
  __p = v17;
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v12 = xpc_string_create(p_p);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "kKeyTracePropertyValue", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(v3, v5);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::ProfileManagementTask::applyTraceProperties_sync(this, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
  xpc_release(v3);
}

void sub_23C2B07A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  xpc_release(v17);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void ___ZN3abm21ProfileManagementTask29registerForNotifications_syncEv_block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v25 = v6;
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 80);
        if (v8)
        {
          dispatch_retain(*(v5 + 80));
          dispatch_group_enter(v8);
        }

        if (a2)
        {
          string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86430]);
          if (string)
          {
            if (!strcasecmp("com.apple.ManagedConfiguration.profileListChanged", string))
            {
              v12 = *(v5 + 40);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v19[0]) = 0;
                _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I streamed event received: Profile Changed", v19, 2u);
              }

              if (abm::ProfileManagementTask::wasProfileInstalled_sync(v5))
              {
                v13 = 1;
              }

              else
              {
                if (TelephonyUtilIsInternalBuild())
                {
                  IsCarrierBuild = 1;
                }

                else
                {
                  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
                }

                v13 = IsCarrierBuild ^ 1;
              }

              abm::ProfileManagementTask::readProfile_sync(v5, &v22);
              abm::ProfileManagementTask::convertToTraceProperties_sync(v5, &v22, v13, &v23);
              abm::ProfileManagementTask::applyTraceProperties_sync(v5, &v23);
              xpc_release(v23);
              v23 = 0;
              xpc_release(v22);
              v22 = 0;
              if (TelephonyUtilIsCarrierBuild() && (TelephonyUtilIsInternalBuild() & 1) == 0)
              {
                abm::ProfileManagementTask::updateDefaultCarrierProfileInstalledProperty_sync(v5);
                v16 = a1[5];
                v15 = a1[6];
                if (v15)
                {
                  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                if (v8)
                {
                  dispatch_retain(v8);
                  dispatch_group_enter(v8);
                }

                v17 = *(v5 + 112);
                v18 = operator new(0x20uLL);
                *v18 = v16;
                v18[1] = v15;
                if (v15)
                {
                  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v18[2] = v8;
                  v18[3] = v5;
                  dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__3EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
                  std::__shared_weak_count::__release_weak(v15);
                }

                else
                {
                  v18[2] = v8;
                  v18[3] = v5;
                  dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__3EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
                }
              }
            }

            else if (!strcasecmp("com.apple.purplebuddy.setupdone", string))
            {
              v10 = *(v5 + 40);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v19[0]) = 0;
                _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I streamed event received: Buddy Setup Done", v19, 2u);
              }

              if ((TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
              {
                abm::ProfileManagementTask::readProfile_sync(v5, &v20);
                abm::ProfileManagementTask::convertToTraceProperties_sync(v5, &v20, 1, &object);
                abm::ProfileManagementTask::applyTraceProperties_sync(v5, &object);
                xpc_release(object);
                object = 0;
                xpc_release(v20);
                v20 = 0;
              }

              if (TelephonyUtilIsCarrierBuild() && (TelephonyUtilIsInternalBuild() & 1) == 0)
              {
                v11 = a1[6];
                v19[0] = a1[5];
                v19[1] = v11;
                if (v11)
                {
                  atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
                }

                v19[2] = v8;
                if (v8)
                {
                  dispatch_retain(v8);
                  dispatch_group_enter(v8);
                }

                v19[3] = v5;
                _ZN8dispatch5asyncIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__4EEvRKNS_5queueEOT_(*(v5 + 112), v19);
                _ZZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_EN3__4D1Ev(v19);
              }
            }
          }
        }

        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_23C2B0BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t object, xpc_object_t a15, xpc_object_t a16, char a17)
{
  xpc_release(object);
  xpc_release(a13);
  if (v17)
  {
    dispatch_group_leave(v17);
    dispatch_release(v17);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t abm::ProfileManagementTask::wasProfileInstalled_sync(abm::ProfileManagementTask *this)
{
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(__p[2]) = 17;
  strcpy(__p, "ProfileManagement");
  v2 = *(this + 3);
  abm::client::CreateManager();
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = MEMORY[0x277D86468];
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v3) == v4)
    {
      xpc_retain(v3);
      v5 = v3;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v6 = xpc_string_create("Profile");
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "kKeyTraceName", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_string_create(*MEMORY[0x277CECB40]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "kKeyTracePropertyName", v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v33 = xpc_null_create();
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v10;
  *&__p[2] = v10;
  v30 = v34;
  v31 = v35;
  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  v36.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v36.__r_.__value_.__r.__words[1] = xmmword_23C32C5A0;
  strcpy(v36.__r_.__value_.__l.__data_, "kCommandGetTraceProperty");
  abm::client::PerformCommand();
  operator delete(v36.__r_.__value_.__l.__data_);
  if (atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = v33;
    if (v33)
    {
      goto LABEL_16;
    }
  }

  else
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v11 = v33;
    if (v33)
    {
      goto LABEL_16;
    }
  }

  v11 = xpc_null_create();
  if (!v11)
  {
    v12 = xpc_null_create();
    v11 = 0;
    goto LABEL_19;
  }

LABEL_16:
  if (MEMORY[0x23EECEE80](v11) == v4)
  {
    xpc_retain(v11);
    v12 = v11;
  }

  else
  {
    v12 = xpc_null_create();
  }

LABEL_19:
  xpc_release(v11);
  if (LODWORD(__p[0]) || MEMORY[0x23EECEE80](v12) != v4)
  {
LABEL_46:
    v23 = 0;
    goto LABEL_47;
  }

  value = xpc_dictionary_get_value(v12, "kKeyTracePropertyValue");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v14 = *MEMORY[0x277CECD70];
  xpc::dyn_cast_or_default();
  std::to_string(&v36, 1);
  v26 = v36;
  v15 = v29;
  if ((v29 & 0x80u) == 0)
  {
    v16 = v29;
  }

  else
  {
    v16 = v28[1];
  }

  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v18 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (v16 != size)
  {
    v21 = 0;
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if ((v29 & 0x80u) == 0)
  {
    v19 = v28;
  }

  else
  {
    v19 = v28[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v26;
  }

  else
  {
    v20 = v26.__r_.__value_.__r.__words[0];
  }

  v21 = memcmp(v19, v20, v16) == 0;
  if (v18 < 0)
  {
LABEL_39:
    operator delete(v26.__r_.__value_.__l.__data_);
    v15 = v29;
  }

LABEL_40:
  if ((v15 & 0x80) != 0)
  {
    operator delete(v28[0]);
  }

  xpc_release(object);
  if (!v21)
  {
    goto LABEL_46;
  }

  v22 = *(this + 5);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v36.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_DEFAULT, "#I Logging profile was installed", &v36, 2u);
  }

  v23 = 1;
LABEL_47:
  xpc_release(v12);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  xpc_release(v5);
  v24 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  return v23;
}

void sub_23C2B10F0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C2B0F90);
}

void sub_23C2B10FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  xpc_release(object);
  xpc_release(v32);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  xpc_release(v31);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v33 - 96);
  _Unwind_Resume(a1);
}

void sub_23C2B11F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZN8dispatch5asyncIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__4EEvRKNS_5queueEOT_(NSObject *a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  v5 = *(a2 + 8);
  *v4 = *a2;
  v4[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(v4 + 1) = v6;

  dispatch_async_f(a1, v4, _ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__4EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
}

uint64_t _ZZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_EN3__4D1Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

__guard *abm::sGetProfileAtIndex(abm *this)
{
  if (atomic_load_explicit(_MergedGlobals_12, memory_order_acquire))
  {
    return &_MergedGlobals_12[3 * this + 1];
  }

  v4 = this;
  v2 = __cxa_guard_acquire(_MergedGlobals_12);
  v3 = v4;
  if (v2)
  {
    qword_280C05E70 = "Baseband";
    unk_280C05E78 = "Baseband.mobileconfig";
    qword_280C05E80 = 0x1200000003;
    qword_280C05E88 = "CellularDE";
    unk_280C05E90 = "CellularDE.mobileconfig";
    qword_280C05E98 = 0x1200000002;
    __cxa_guard_release(_MergedGlobals_12);
    v3 = v4;
  }

  return &_MergedGlobals_12[3 * v3 + 1];
}

void abm::ProfileManagementTask::getProfileIdentifier_sync(abm::ProfileManagementTask *this@<X0>, abm *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v22 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  DataFromProfile = abm::createDataFromProfile(a2);
  if (DataFromProfile)
  {
    v7 = DataFromProfile;
    v19 = 0;
    v8 = [MEMORY[0x277D26290] profileWithData:DataFromProfile outError:&v19];
    v9 = v19;
    if (v19)
    {
      v10 = *(this + 5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_msgSend(v9 "localizedDescription")];
        *buf = 136315138;
        *&buf[4] = v11;
        _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Reading profile Error: %s", buf, 0xCu);
      }

      goto LABEL_12;
    }

    v13 = [objc_msgSend(v8 "identifier")];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v14 | 7) + 1;
      }

      v16 = operator new(v18);
      *&buf[8] = v15;
      v21 = v18 | 0x8000000000000000;
      *buf = v16;
    }

    else
    {
      HIBYTE(v21) = v14;
      v16 = buf;
      if (!v14)
      {
        buf[0] = 0;
        if ((*(a3 + 23) & 0x80000000) == 0)
        {
LABEL_11:
          *a3 = *buf;
          *(a3 + 16) = v21;
LABEL_12:

          goto LABEL_13;
        }

LABEL_19:
        operator delete(*a3);
        goto LABEL_11;
      }
    }

    memmove(v16, v13, v15);
    *(v16 + v15) = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Failed to get profile data [index:%d]", buf, 8u);
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23C2B15AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::createDataFromProfile(abm *this)
{
  if ((atomic_load_explicit(_MergedGlobals_12, memory_order_acquire) & 1) == 0)
  {
    v7 = this;
    v6 = __cxa_guard_acquire(_MergedGlobals_12);
    LODWORD(this) = v7;
    if (v6)
    {
      qword_280C05E70 = "Baseband";
      unk_280C05E78 = "Baseband.mobileconfig";
      qword_280C05E80 = 0x1200000003;
      qword_280C05E88 = "CellularDE";
      unk_280C05E90 = "CellularDE.mobileconfig";
      qword_280C05E98 = 0x1200000002;
      __cxa_guard_release(_MergedGlobals_12);
      LODWORD(this) = v7;
    }
  }

  v1 = _MergedGlobals_12[3 * this + 2];
  v2 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.ABMHelper", "bundleURL"}];
  v3 = [objc_msgSend(v2 URLByAppendingPathComponent:objc_msgSend(MEMORY[0x277CCACA8] isDirectory:{"stringWithUTF8String:", v1), 0), "path"}];
  v4 = objc_alloc(MEMORY[0x277CBEA90]);

  return [v4 initWithContentsOfFile:v3];
}

BOOL abm::ProfileManagementTask::installMCProfile_sync(NSObject **this, const char *a2, int a3)
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  ProfileInfoIndex_sync = abm::ProfileManagementTask::getProfileInfoIndex_sync(this, a2);
  if (ProfileInfoIndex_sync >= 2)
  {
    v7 = this[5];
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v9 = "Install profile failed as we failed to get profile info";
LABEL_24:
      _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, v9, buf, 2u);
      result = 0;
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  v10 = ProfileInfoIndex_sync;
  if (abm::ProfileManagementTask::isAllowedToOverrideProfile(this, ProfileInfoIndex_sync))
  {
    v25 = 0;
    DataFromProfile = abm::createDataFromProfile(v10);
    if (!DataFromProfile)
    {
      v20 = this[5];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v27 = a2;
        _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, "Profile [%s] not found", buf, 0xCu);
      }

      result = 0;
      goto LABEL_38;
    }

    v12 = DataFromProfile;
    if (a3 && (config::hw::watch(DataFromProfile) & 1) == 0)
    {
      v13 = [objc_msgSend(MEMORY[0x277D262A0] "sharedConnection")];
      if (v13)
      {
        v21 = v25 == 0;
      }

      else
      {
        v21 = 0;
      }

      v15 = v21;
      v16 = this[5];
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v13 = [objc_msgSend(MEMORY[0x277D262A0] "sharedConnection")];
      if (v13)
      {
        v14 = v25 == 0;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = this[5];
      if (!v14)
      {
LABEL_35:
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          isProfileValid = abm::ProfileManagementTask::isProfileValid(this, v10);
          v24 = [objc_msgSend(v25 "localizedDescription")];
          *buf = 67109378;
          v27[0] = isProfileValid;
          LOWORD(v27[1]) = 2080;
          *(&v27[1] + 2) = v24;
          _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "Install profile data [valid=%d] failed: %s", buf, 0x12u);
        }

LABEL_37:

        result = v15;
        goto LABEL_38;
      }
    }

    v17 = v13;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v17 UTF8String];
      *buf = 136315138;
      *v27 = v18;
      _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Install profile data success, id: %s", buf, 0xCu);
    }

    if (TelephonyUtilIsCarrierBuild())
    {
      IsInternalBuild = TelephonyUtilIsInternalBuild();
      if ((IsInternalBuild & 1) == 0)
      {
        if (config::hw::watch(IsInternalBuild))
        {
          abm::ProfileManagementTask::rebootWithConfirmation_sync(this);
        }
      }
    }

    goto LABEL_37;
  }

  v7 = this[5];
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    v9 = "Install profile failed as we want to keep pre-installed one";
    goto LABEL_24;
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void abm::ProfileManagementTask::rebootWithConfirmation_sync(abm::ProfileManagementTask *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Asking for user confirmation to reboot after installing profile", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:@"Dismiss" forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  [v3 setObject:@"Reboot Required" forKeyedSubscript:*MEMORY[0x277CBF188]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67340]];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D673D8]];
  [v3 setObject:@"Reboot" forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  [v3 setObject:@"A reboot is required for the logging profile change to take effect. Would you like to reboot now?" forKeyedSubscript:*MEMORY[0x277CBF198]];
  error = 0;
  responseFlags = 3;
  v4 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 600.0, 3uLL, &error, v3);
  v5 = v4;
  v6 = error;
  if (!v4 || error)
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v15) = v6;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Creating reboot notification resulted in error: %d", buf, 8u);
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    else if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = CFUserNotificationReceiveResponse(v4, 0.0, &responseFlags);
    error = v7;
    v8 = *(this + 5);
    if (v7)
    {
      v9 = v7;
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v15) = v9;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Receiving reboot notification resulted in error: %d", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = responseFlags;
      _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I responseFlags=0x%lx", buf, 0xCu);
    }

    if (responseFlags == 1 && !error)
    {
      abm::ProfileManagementTask::reboot_sync(this);
    }
  }

  CFRelease(v5);
LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23C2B1C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFUserNotification>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_23C2B1CAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abm::ProfileManagementTask::uninstallMCProfile_sync(abm::ProfileManagementTask *a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 136315138;
    *&buf[4] = a2;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Uninstall profile: %s", buf, 0xCu);
  }

  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  ProfileInfoIndex_sync = abm::ProfileManagementTask::getProfileInfoIndex_sync(v7, a2);
  if (ProfileInfoIndex_sync >= 2)
  {
    v9 = *(a1 + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to get profile [%s] info", buf, 0xCu);
    }

    goto LABEL_35;
  }

  abm::ProfileManagementTask::getProfileIdentifier_sync(a1, ProfileInfoIndex_sync, buf);
  v26 = v28;
  *__p = *buf;
  v10 = v28 >> 56;
  v11 = SHIBYTE(v28);
  if (SHIBYTE(v28) < 0)
  {
    v10 = *&buf[8];
  }

  if (v10)
  {
    v12 = [MEMORY[0x277D262A0] sharedConnection];
    if (v11 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3321888768;
    v22[2] = ___ZN3abm21ProfileManagementTask23uninstallMCProfile_syncEPKcN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE_block_invoke;
    v22[3] = &__block_descriptor_56_e8_40c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE_e5_v8__0l;
    v22[4] = a1;
    v15 = *a3;
    if (*a3)
    {
      v15 = _Block_copy(v15);
    }

    v16 = *(a3 + 8);
    aBlock = v15;
    object = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    [v12 removeProfileWithIdentifier:v14 completion:v22];
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    goto LABEL_35;
  }

  if (!*a3 || !*(a3 + 8))
  {
    goto LABEL_35;
  }

  v17 = xpc_null_create();
  if (*a3)
  {
    v18 = _Block_copy(*a3);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a3 + 8);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3321888768;
  v28 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJiS2_EEEvDpT__block_invoke;
  v29 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (!v18)
  {
    v32 = -534716416;
    v30 = 0;
    v31 = v17;
    if (v17)
    {
      goto LABEL_27;
    }

LABEL_29:
    v31 = xpc_null_create();
    goto LABEL_30;
  }

  v20 = _Block_copy(v18);
  v32 = -534716416;
  v30 = v20;
  v31 = v17;
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v17);
LABEL_30:
  dispatch_async(v19, buf);
  xpc_release(v31);
  v31 = 0;
  if (v30)
  {
    _Block_release(v30);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  xpc_release(v17);
LABEL_35:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_23C2B1FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abm21ProfileManagementTask23uninstallMCProfile_syncEPKcN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE_block_invoke(void *a1)
{
  v1 = a1[4];
  if (!a1[5] || !a1[6])
  {
    goto LABEL_16;
  }

  v3 = xpc_null_create();
  v4 = a1[5];
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJiS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (!v5)
  {
    v11 = 0;
    aBlock = 0;
    object = v3;
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v11 = 0;
  aBlock = _Block_copy(v5);
  object = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v3);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v3);
LABEL_16:
  if (TelephonyUtilIsCarrierBuild() && (TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    abm::ProfileManagementTask::updateDefaultCarrierProfileInstalledProperty_sync(v1);
    if (config::hw::watch(v7))
    {
      abm::ProfileManagementTask::rebootWithConfirmation_sync(v1);
    }
  }
}

void __copy_helper_block_e8_40c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void abm::ProfileManagementTask::reboot_sync(abm::ProfileManagementTask *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C1C4000, v1, OS_LOG_TYPE_DEFAULT, "#I Rebooting", v3, 2u);
  }

  v2 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"For logging profile change to take effect"];
  [v2 setRebootType:1];
  [v2 setSource:1];
  [objc_msgSend(MEMORY[0x277D0AE18] "sharedService")];
}

void ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__0ES2_EEEvDpT__block_invoke_0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

void ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJiS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1NS_14default_deleteIS3_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 64);
    if (v4)
    {
      _Block_release(v4);
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      dispatch_group_leave(v5);
      v6 = *(v2 + 16);
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    v7 = *(v2 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *_ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(uint64_t a1)
{
  v14 = a1;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1NS_14default_deleteIS3_EEED1B8ne200100Ev(&v14);
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  v16 = v4;
  if (!v4)
  {
    return _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1NS_14default_deleteIS3_EEED1B8ne200100Ev(&v14);
  }

  v5 = v4;
  if (*a1)
  {
    v6 = -534716416;
    if (!*(a1 + 24))
    {
      goto LABEL_8;
    }

    v7 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v7 = *v7;
    }

    if (abm::ProfileManagementTask::showMCProfileInstallNotification_sync(v3, v7))
    {
LABEL_8:
      v8 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v8 = *v8;
      }

      if (abm::ProfileManagementTask::installMCProfile_sync(v3, v8, *(a1 + 24)))
      {
        v6 = 0;
      }

      else
      {
        v6 = -534716416;
      }
    }

    v9 = xpc_null_create();
    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = _Block_copy(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJiS2_EEEvDpT__block_invoke;
    block[3] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v11)
    {
      v20 = v6;
      aBlock = _Block_copy(v11);
      object = v9;
      if (v9)
      {
LABEL_18:
        xpc_retain(v9);
LABEL_21:
        dispatch_async(v12, block);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v11)
        {
          _Block_release(v11);
        }

        xpc_release(v9);
        goto LABEL_26;
      }
    }

    else
    {
      v20 = v6;
      aBlock = 0;
      object = v9;
      if (v9)
      {
        goto LABEL_18;
      }
    }

    object = xpc_null_create();
    goto LABEL_21;
  }

LABEL_26:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1NS_14default_deleteIS3_EEED1B8ne200100Ev(&v14);
}

void sub_23C2B267C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb_E3__1NS_14default_deleteIS3_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2NS_14default_deleteIS3_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      _Block_release(v4);
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      dispatch_group_leave(v5);
      v6 = *(v2 + 16);
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    v7 = *(v2 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *_ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(uint64_t a1)
{
  v11 = a1;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2NS_14default_deleteIS3_EEED1B8ne200100Ev(&v11);
  }

  v3 = *(a1 + 24);
  v4 = std::__shared_weak_count::lock(v2);
  v15 = v4;
  if (!v4)
  {
    return _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2NS_14default_deleteIS3_EEED1B8ne200100Ev(&v11);
  }

  v5 = v4;
  if (*a1)
  {
    v6 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v6 = *v6;
      v7 = *(a1 + 56);
      if (v7)
      {
LABEL_6:
        v8 = _Block_copy(v7);
        v9 = *(a1 + 64);
        v12 = v8;
        v13 = v9;
        if (!v9)
        {
LABEL_8:
          abm::ProfileManagementTask::uninstallMCProfile_sync(v3, v6, &v12);
          if (v9)
          {
            dispatch_release(v9);
          }

          if (v8)
          {
            _Block_release(v8);
          }

          goto LABEL_12;
        }

LABEL_7:
        dispatch_retain(v9);
        goto LABEL_8;
      }
    }

    else
    {
      v7 = *(a1 + 56);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    v9 = *(a1 + 64);
    v12 = 0;
    v13 = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_12:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2NS_14default_deleteIS3_EEED1B8ne200100Ev(&v11);
}

void sub_23C2B284C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  dispatch::callback<void({block_pointer})(int,xpc::dict)>::~callback(va1);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va2);
  _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask9init_syncEvEUb0_E3__2NS_14default_deleteIS3_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[2];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__3EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = a1[3];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  if (*a1)
  {
    v6 = abm::ProfileManagementTask::showMCProfileInstallNotification_sync(v3, "Baseband");
    if (v6)
    {
      v7 = config::hw::watch(v6);
      abm::ProfileManagementTask::installMCProfile_sync(v3, "Baseband", v7 ^ 1);
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
LABEL_7:
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  v9 = v8[2];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v8[2];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = v8[1];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(v8);
}

void sub_23C2B29F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__4EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = a1[3];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  if (*a1)
  {
    v6 = abm::ProfileManagementTask::showMCProfileInstallNotification_sync(v3, "Baseband");
    if (v6)
    {
      v7 = config::hw::watch(v6);
      abm::ProfileManagementTask::installMCProfile_sync(v3, "Baseband", v7 ^ 1);
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
LABEL_7:
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  v9 = v8[2];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v8[2];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = v8[1];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(v8);
}

void sub_23C2B2B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _ZNSt3__110unique_ptrIZZN3abm21ProfileManagementTask29registerForNotifications_syncEvEUb1_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_53()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t diag::FileInfo::shouldFilter(diag::FileInfo *this)
{
  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  v4 = (IsCarrierBuild | IsInternalBuild | TelephonyUtilIsVendorBuild()) ^ 1;
  if (*(this + 28) == 1)
  {
    v5 = *(this + 6);
    if (v5)
    {
      v6 = v5 == 7;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    LOBYTE(v4) = v7 | v4;
  }

  return v4 & 1;
}

void diag::getFileInfo(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = -1431655766;
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  v5 = ETLDMCGetMatchingFileNameAndType();
  *(a2 + 24) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 28) = 0;
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  memset(&__p, 0, sizeof(__p));
  if (v5)
  {
    std::string::__assign_external(&__p, v5);
    *(a2 + 24) = v32;
    *(a2 + 28) = 1;
  }

  else if (&__p != a1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__assign_no_alias<true>(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }
  }

  v6 = 0x7FFFFFFFFFFFFFF7;
  v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v9 = size + 17;
  if (size + 17 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 < 0x17)
  {
    *&v33.st_uid = 47;
    *&v33.st_dev = *"/usr/lib/bbmasks/";
    v12 = &v33.st_uid + 1;
    if (!size)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((v9 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v9 | 7) + 1;
    }

    v11 = operator new(v10);
    v33.st_ino = size + 17;
    *&v33.st_uid = v10 | 0x8000000000000000;
    *&v33.st_dev = v11;
    v11[16] = 47;
    *v11 = *"/usr/lib/bbmasks/";
    v12 = v11 + 17;
  }

  if (v7 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  memmove(v12, p_p, size);
LABEL_19:
  v12[size] = 0;
  st_gid_high = SHIBYTE(v33.st_gid);
  if ((SHIBYTE(v33.st_gid) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v33.st_gid) - 19) < 4)
    {
      v15 = SHIBYTE(v33.st_gid) + 4;
      v16 = &v33;
      v17 = 22;
LABEL_28:
      v18 = 2 * v17;
      if (v15 > 2 * v17)
      {
        v18 = v15;
      }

      if ((v18 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v18 | 7) + 1;
      }

      if (v18 >= 0x17)
      {
        v6 = v19;
      }

      else
      {
        v6 = 23;
      }

      v20 = v17 == 22;
      goto LABEL_37;
    }

    v24 = &v33;
    *(&v33.st_dev + SHIBYTE(v33.st_gid)) = 1668113454;
    v25 = st_gid_high + 4;
    if ((SHIBYTE(v33.st_gid) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  st_gid_high = v33.st_ino;
  v17 = (*&v33.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v17 - v33.st_ino >= 4)
  {
    v24 = *&v33.st_dev;
    *(*&v33.st_dev + v33.st_ino) = 1668113454;
    v25 = st_gid_high + 4;
    if ((SHIBYTE(v33.st_gid) & 0x80000000) == 0)
    {
LABEL_43:
      HIBYTE(v33.st_gid) = v25 & 0x7F;
LABEL_46:
      v23 = v24 + v25;
      goto LABEL_47;
    }

LABEL_45:
    v33.st_ino = v25;
    goto LABEL_46;
  }

  v15 = v33.st_ino + 4;
  if (0x7FFFFFFFFFFFFFF7 - (*&v33.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v33.st_ino + 4 - v17)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = *&v33.st_dev;
  if (v17 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_28;
  }

  v20 = 0;
LABEL_37:
  v21 = operator new(v6);
  v22 = v21;
  if (st_gid_high)
  {
    memmove(v21, v16, st_gid_high);
  }

  *&v22[st_gid_high] = 1668113454;
  if (!v20)
  {
    operator delete(v16);
  }

  v33.st_ino = v15;
  *&v33.st_uid = v6 | 0x8000000000000000;
  *&v33.st_dev = v22;
  v23 = &v22[v15];
LABEL_47:
  *v23 = 0;
  v26 = *&v33.st_dev;
  st_ino = v33.st_ino;
  v28 = *(&v33.st_ino + 7);
  *a2 = *&v33.st_dev;
  *(a2 + 8) = st_ino;
  *(a2 + 15) = v28;
  LODWORD(v28) = SHIBYTE(v33.st_gid);
  *(a2 + 23) = HIBYTE(v33.st_gid);
  v29.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v29.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v33.st_blksize = v29;
  *v33.st_qspare = v29;
  v33.st_birthtimespec = v29;
  *&v33.st_size = v29;
  v33.st_mtimespec = v29;
  v33.st_ctimespec = v29;
  *&v33.st_uid = v29;
  v33.st_atimespec = v29;
  if (v28 >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = v26;
  }

  *&v33.st_dev = v29;
  *(a2 + 32) = stat(v30, &v33) == 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23C2B2F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p)
{
  if (v17 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if ((*(v16 + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if ((*(v16 + 23) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(*v16);
  _Unwind_Resume(a1);
}

uint64_t diag::loadDMC(uint64_t a1)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v1;
  v17 = v1;
  diag::getFileInfo(a1, __p);
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v19.st_blksize = v2;
  *v19.st_qspare = v2;
  v19.st_birthtimespec = v2;
  *&v19.st_size = v2;
  v19.st_mtimespec = v2;
  v19.st_ctimespec = v2;
  *&v19.st_uid = v2;
  v19.st_atimespec = v2;
  *&v19.st_dev = v2;
  if ((SBYTE7(v17) & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (stat(v3, &v19))
  {
    v4 = 0;
    goto LABEL_6;
  }

  if ((SBYTE7(v17) & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v4 = MEMORY[0x23EECCD70](v6, *MEMORY[0x277CBECE8], kETLDIAGLoggingDefaultView, 0);
  if (!v4)
  {
    goto LABEL_6;
  }

  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  v9 = IsCarrierBuild | IsInternalBuild | TelephonyUtilIsVendorBuild();
  if (BYTE12(v17) == 1)
  {
    if ((v9 & 1) != 0 && DWORD2(v17) && DWORD2(v17) != 7)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  *&v19.st_dev = 0;
  DefaultFilters = ETLDMCLogGetDefaultFilters();
  if (DefaultFilters)
  {
    v11 = 0;
    v12 = 24 * DefaultFilters;
    do
    {
      v13 = *(*&v19.st_dev + v11);
      v14 = *(*&v19.st_dev + v11 + 8);
      v15 = *(*&v19.st_dev + v11 + 16);
      ETLDMCLogFilter();
      v11 += 24;
    }

    while (v12 != v11);
  }

LABEL_6:
  if (SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_23C2B3138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t diag::filterDMC()
{
  DefaultFilters = ETLDMCLogGetDefaultFilters();
  if (!DefaultFilters)
  {
    return 0;
  }

  v1 = 0;
  v2 = 0;
  v3 = 24 * DefaultFilters;
  do
  {
    v4 = *v1;
    v5 = *(v1 + 1);
    v6 = v1[4];
    v2 |= ETLDMCLogFilter();
    v1 += 6;
  }

  while (v3 != v1);
  return v2 & 1;
}

uint64_t diag::mergeDMC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v64 = v7;
  v65 = v7;
  diag::getFileInfo(a1, v64);
  v63 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v61 = v8;
  v62 = v8;
  diag::getFileInfo(a2, v61);
  v60 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v9;
  v59 = v9;
  diag::getFileInfo(a3, __p);
  v10.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v10.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v67.st_blksize = v10;
  *v67.st_qspare = v10;
  v67.st_birthtimespec = v10;
  *&v67.st_size = v10;
  v67.st_mtimespec = v10;
  v67.st_ctimespec = v10;
  *&v67.st_uid = v10;
  v67.st_atimespec = v10;
  *&v67.st_dev = v10;
  if ((SBYTE7(v65) & 0x80u) == 0)
  {
    v11 = v64;
  }

  else
  {
    v11 = v64[0];
  }

  if (stat(v11, &v67))
  {
    v12 = 0;
  }

  else
  {
    if ((SBYTE7(v65) & 0x80u) == 0)
    {
      v13 = v64;
    }

    else
    {
      v13 = v64[0];
    }

    v12 = MEMORY[0x23EECCD70](v13, *MEMORY[0x277CBECE8], kETLDIAGLoggingDefaultView, a4);
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = a4;
  }

  v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v67.st_blksize = v15;
  *v67.st_qspare = v15;
  v67.st_birthtimespec = v15;
  *&v67.st_size = v15;
  v67.st_mtimespec = v15;
  v67.st_ctimespec = v15;
  *&v67.st_uid = v15;
  v67.st_atimespec = v15;
  *&v67.st_dev = v15;
  if ((SBYTE7(v62) & 0x80u) == 0)
  {
    v16 = v61;
  }

  else
  {
    v16 = v61[0];
  }

  if (stat(v16, &v67))
  {
    v17 = 0;
  }

  else
  {
    if ((SBYTE7(v62) & 0x80u) == 0)
    {
      v18 = v61;
    }

    else
    {
      v18 = v61[0];
    }

    v17 = MEMORY[0x23EECCD70](v18, *MEMORY[0x277CBECE8], kETLDIAGLoggingDefaultView, v14);
  }

  if (v17)
  {
    v14 = 0;
  }

  else
  {
    v14 = v14;
  }

  v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v67.st_blksize = v19;
  *v67.st_qspare = v19;
  v67.st_birthtimespec = v19;
  *&v67.st_size = v19;
  v67.st_mtimespec = v19;
  v67.st_ctimespec = v19;
  *&v67.st_uid = v19;
  v67.st_atimespec = v19;
  *&v67.st_dev = v19;
  if ((SBYTE7(v59) & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (stat(v20, &v67))
  {
    v21 = 0;
    if (!v12)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if ((SBYTE7(v59) & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    v21 = MEMORY[0x23EECCD70](v22, *MEMORY[0x277CBECE8], kETLDIAGLoggingDefaultView, v14);
    if (!v12)
    {
      goto LABEL_44;
    }
  }

  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  v25 = IsCarrierBuild | IsInternalBuild | TelephonyUtilIsVendorBuild();
  if (BYTE12(v65) == 1)
  {
    if ((v25 & 1) != 0 && DWORD2(v65) && DWORD2(v65) != 7)
    {
      goto LABEL_44;
    }
  }

  else if (v25)
  {
    goto LABEL_44;
  }

  *&v67.st_dev = 0;
  DefaultFilters = ETLDMCLogGetDefaultFilters();
  if (DefaultFilters)
  {
    v27 = 0;
    v28 = 24 * DefaultFilters;
    do
    {
      v29 = *(*&v67.st_dev + v27);
      v30 = *(*&v67.st_dev + v27 + 8);
      v31 = *(*&v67.st_dev + v27 + 16);
      ETLDMCLogFilter();
      v27 += 24;
    }

    while (v28 != v27);
  }

LABEL_44:
  if (!v17)
  {
    goto LABEL_54;
  }

  v32 = TelephonyUtilIsCarrierBuild();
  v33 = TelephonyUtilIsInternalBuild();
  v34 = v32 | v33 | TelephonyUtilIsVendorBuild();
  if (BYTE12(v62) == 1)
  {
    if ((v34 & 1) != 0 && DWORD2(v62) && DWORD2(v62) != 7)
    {
      goto LABEL_54;
    }
  }

  else if (v34)
  {
    goto LABEL_54;
  }

  *&v67.st_dev = 0;
  v35 = ETLDMCLogGetDefaultFilters();
  if (v35)
  {
    v36 = 0;
    v37 = 24 * v35;
    do
    {
      v38 = *(*&v67.st_dev + v36);
      v39 = *(*&v67.st_dev + v36 + 8);
      v40 = *(*&v67.st_dev + v36 + 16);
      ETLDMCLogFilter();
      v36 += 24;
    }

    while (v37 != v36);
  }

LABEL_54:
  if (!v21)
  {
    if (v12 && v17)
    {
      v44 = *MEMORY[0x277CBECE8];
      v45 = ETLDMCMerge();
      CFRelease(v12);
      CFRelease(v17);
      goto LABEL_72;
    }

    goto LABEL_78;
  }

  v41 = TelephonyUtilIsCarrierBuild();
  v42 = TelephonyUtilIsInternalBuild();
  v43 = v41 | v42 | TelephonyUtilIsVendorBuild();
  if (BYTE12(v59) == 1)
  {
    if ((v43 & 1) != 0 && DWORD2(v59) && DWORD2(v59) != 7)
    {
      goto LABEL_67;
    }

LABEL_64:
    *&v67.st_dev = 0;
    v46 = ETLDMCLogGetDefaultFilters();
    if (v46)
    {
      v47 = 0;
      v48 = 24 * v46;
      do
      {
        v49 = *(*&v67.st_dev + v47);
        v50 = *(*&v67.st_dev + v47 + 8);
        v51 = *(*&v67.st_dev + v47 + 16);
        ETLDMCLogFilter();
        v47 += 24;
      }

      while (v48 != v47);
    }

    goto LABEL_67;
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_67:
  if (v12 && v17)
  {
    v52 = *MEMORY[0x277CBECE8];
    v53 = ETLDMCMerge();
    v45 = ETLDMCMerge();
    CFRelease(v12);
    CFRelease(v17);
    CFRelease(v21);
    CFRelease(v53);
    goto LABEL_72;
  }

  if (v17)
  {
    v54 = *MEMORY[0x277CBECE8];
    v45 = ETLDMCMerge();
    CFRelease(v17);
    CFRelease(v21);
    goto LABEL_72;
  }

  if (v12)
  {
    v56 = *MEMORY[0x277CBECE8];
    v45 = ETLDMCMerge();
    CFRelease(v12);
    CFRelease(v21);
LABEL_72:
    if ((SBYTE7(v59) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_85;
  }

LABEL_78:
  if (v17)
  {
    v57 = v17;
  }

  else
  {
    v57 = v21;
  }

  if (v12)
  {
    v45 = v12;
  }

  else
  {
    v45 = v57;
  }

  if ((SBYTE7(v59) & 0x80000000) == 0)
  {
LABEL_73:
    if ((SBYTE7(v62) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_86:
    operator delete(v61[0]);
    if ((SBYTE7(v65) & 0x80000000) == 0)
    {
      return v45;
    }

LABEL_87:
    operator delete(v64[0]);
    return v45;
  }

LABEL_85:
  operator delete(__p[0]);
  if (SBYTE7(v62) < 0)
  {
    goto LABEL_86;
  }

LABEL_74:
  if (SBYTE7(v65) < 0)
  {
    goto LABEL_87;
  }

  return v45;
}

void sub_23C2B36FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a27);
  _Unwind_Resume(exception_object);
}

BOOL diag::copyDMC(uint64_t a1, const void **a2)
{
  v4 = 0x7FFFFFFFFFFFFFF7;
  diag::getFileInfo(a1, &v39);
  *v37 = *&v39.st_dev;
  v38 = *&v39.st_uid;
  v5 = a2[1];
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = v7 + 1;
  if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 < 0x17)
  {
    memset(&v34, 0, sizeof(v34));
    v10 = &v34;
    *(&v34.__r_.__value_.__s + 23) = v7 + 1;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v8 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v8 | 7) + 1;
    }

    v10 = operator new(v9);
    v34.__r_.__value_.__l.__size_ = v7 + 1;
    v34.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v34.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a2;
  if (v6 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  memmove(v10, v12, v7);
LABEL_15:
  *&v10[v7] = 47;
  v13 = *(a1 + 23);
  if (v13 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v13 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  v16 = std::string::append(&v34, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v39.st_uid = *(&v16->__r_.__value_.__l + 2);
  *&v39.st_dev = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  st_gid_high = SHIBYTE(v39.st_gid);
  if ((SHIBYTE(v39.st_gid) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v39.st_gid) - 19) < 4)
    {
      v19 = SHIBYTE(v39.st_gid) + 4;
      v20 = &v39;
      v21 = 22;
LABEL_27:
      v22 = 2 * v21;
      if (v19 > 2 * v21)
      {
        v22 = v19;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v4 = v23;
      }

      else
      {
        v4 = 23;
      }

      v24 = v21 == 22;
      goto LABEL_36;
    }

    v28 = &v39;
    *(&v39.st_dev + SHIBYTE(v39.st_gid)) = 1668113454;
    v29 = st_gid_high + 4;
    if ((SHIBYTE(v39.st_gid) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  st_gid_high = v39.st_ino;
  v21 = (*&v39.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v21 - v39.st_ino >= 4)
  {
    v28 = *&v39.st_dev;
    *(*&v39.st_dev + v39.st_ino) = 1668113454;
    v29 = st_gid_high + 4;
    if ((SHIBYTE(v39.st_gid) & 0x80000000) == 0)
    {
LABEL_42:
      HIBYTE(v39.st_gid) = v29 & 0x7F;
LABEL_45:
      v27 = v28 + v29;
      goto LABEL_46;
    }

LABEL_44:
    v39.st_ino = v29;
    goto LABEL_45;
  }

  v19 = v39.st_ino + 4;
  if (0x7FFFFFFFFFFFFFF7 - (*&v39.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v39.st_ino + 4 - v21)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = *&v39.st_dev;
  if (v21 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_27;
  }

  v24 = 0;
LABEL_36:
  v25 = operator new(v4);
  v26 = v25;
  if (st_gid_high)
  {
    memmove(v25, v20, st_gid_high);
  }

  *&v26[st_gid_high] = 1668113454;
  if (!v24)
  {
    operator delete(v20);
  }

  v39.st_ino = v19;
  *&v39.st_uid = v4 | 0x8000000000000000;
  *&v39.st_dev = v26;
  v27 = &v26[v19];
LABEL_46:
  *v27 = 0;
  *__p = *&v39.st_dev;
  v36 = *&v39.st_uid;
  memset(&v39, 0, 24);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v30.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v30.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v39.st_blksize = v30;
  *v39.st_qspare = v30;
  v39.st_birthtimespec = v30;
  *&v39.st_size = v30;
  v39.st_mtimespec = v30;
  v39.st_ctimespec = v30;
  *&v39.st_uid = v30;
  v39.st_atimespec = v30;
  *&v39.st_dev = v30;
  if (v38 >= 0)
  {
    v31 = v37;
  }

  else
  {
    v31 = v37[0];
  }

  if (stat(v31, &v39))
  {
    v32 = 0;
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v32 = support::fs::copyFile(v37, __p, 0);
  if (SHIBYTE(v36) < 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  return v32;
}

void sub_23C2B3AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p)
{
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_DIAGUtil_cpp()
{
  result = ETLDIAGLoggingGetDefaultView();
  kETLDIAGLoggingDefaultView = result;
  return result;
}

void *abm::LogCompressionTask::LogCompressionTask(void *a1, int a2, uint64_t *a3)
{
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  abm::HelperTask::HelperTask(a1, a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *a1 = &unk_284EFD408;
  a1[13] = 0;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  a1[14] = dispatch_queue_create("log.compression.task.queue", v5);
  return a1;
}

void sub_23C2B3BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void abm::LogCompressionTask::~LogCompressionTask(abm::LogCompressionTask *this)
{
  *this = &unk_284EFD408;
  v2 = *(this + 13);
  if (v2)
  {
    operator delete[](v2);
    *(this + 13) = 0;
  }

  v3 = *(this + 14);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_284F001D8;
  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x23EECD800](this + 40);
  v6 = *(this + 4);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void abm::LogCompressionTask::init_sync(abm::LogCompressionTask *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 14);
  v7 = operator new(8uLL);
  *v7 = this;
  dispatch_async_f(v6, v7, dispatch::async<abm::LogCompressionTask::init_sync(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abm::LogCompressionTask::init_sync(void)::$_0,std::default_delete<abm::LogCompressionTask::init_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  v8 = *(this + 12);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    v19 = v9;
    if (v9)
    {
      v10 = v9;
      v11 = *(this + 11);
      v18 = v11;
      if (v11)
      {
        v17[23] = 20;
        strcpy(v17, "CommandCreateArchive");
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN3abm18LogCompressionTask9init_syncEv_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_31;
        aBlock[4] = this;
        aBlock[5] = v3;
        v15 = v5;
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v12 = _Block_copy(aBlock);
        v13 = *(this + 3);
        if (v13)
        {
          dispatch_retain(v13);
        }

        v16[0] = v12;
        v16[1] = v13;
        abm::HelperServerInternal::setCommandHandler(v11, v17, v16);
        if (v13)
        {
          dispatch_release(v13);
        }

        if (v12)
        {
          _Block_release(v12);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C2B3EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v18 - 64);
  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

void ___ZN3abm18LogCompressionTask9init_syncEv_block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1[4];
  v46 = 0;
  v47 = 0;
  v6 = a1[6];
  if (v6)
  {
    v47 = std::__shared_weak_count::lock(v6);
    if (!v47)
    {
      return;
    }

    v46 = a1[5];
    if (v46)
    {
      if (*a4 && *(a4 + 8))
      {
        v9 = v5[10];
        if (v9)
        {
          dispatch_retain(v5[10]);
          dispatch_group_enter(v9);
        }

        if (MEMORY[0x23EECEE80](*a3) == MEMORY[0x277D86468])
        {
          v44 = 0xAAAAAAAAAAAAAAAALL;
          v45 = 0xAAAAAAAAAAAAAAAALL;
          v12 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
          v13 = xmmword_280C05A58;
          if (!xmmword_280C05A58)
          {
            ctu::XpcJetsamAssertion::create_default_global(&block, v12);
            v14 = block;
            block = 0uLL;
            v15 = *(&xmmword_280C05A58 + 1);
            xmmword_280C05A58 = v14;
            if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v15->__on_zero_shared)(v15);
              std::__shared_weak_count::__release_weak(v15);
            }

            v16 = *(&block + 1);
            if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v16->__on_zero_shared)(v16);
              std::__shared_weak_count::__release_weak(v16);
            }

            v13 = xmmword_280C05A58;
          }

          v17 = *(&xmmword_280C05A58 + 1);
          v42 = v13;
          v43 = *(&xmmword_280C05A58 + 1);
          if (*(&xmmword_280C05A58 + 1))
          {
            atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
          v41 = 14;
          strcpy(__p, "Archiving Logs");
          ctu::XpcJetsamAssertion::createActivity();
          if (v41 < 0)
          {
            operator delete(__p[0]);
          }

          if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17);
            std::__shared_weak_count::__release_weak(v17);
          }

          v18 = a1[5];
          v19 = a1[6];
          *&block = v18;
          *(&block + 1) = v19;
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
          }

          v33 = v9;
          if (v9)
          {
            dispatch_retain(v9);
            dispatch_group_enter(v9);
          }

          v20 = v44;
          v21 = v45;
          v34 = v44;
          aBlock = v45;
          if (v45)
          {
            atomic_fetch_add_explicit(v45 + 1, 1uLL, memory_order_relaxed);
          }

          v22 = *a3;
          object = v5;
          v37 = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            v22 = xpc_null_create();
            v37 = v22;
          }

          if (*a4)
          {
            v25 = _Block_copy(*a4);
          }

          else
          {
            v25 = 0;
          }

          v26 = *(a4 + 8);
          v38 = v25;
          v39 = v26;
          if (v26)
          {
            dispatch_retain(v26);
          }

          queue = v5[14];
          v27 = operator new(0x48uLL);
          v28 = v27;
          *v27 = v18;
          v27[1] = v19;
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
          }

          v33 = 0;
          v27[2] = v9;
          v27[3] = v20;
          v34 = 0;
          aBlock = 0;
          v27[4] = v21;
          v27[5] = v5;
          v27[6] = v22;
          v29 = xpc_null_create();
          v28[7] = v25;
          v28[8] = v26;
          v38 = 0;
          v39 = 0;
          v37 = v29;
          dispatch_async_f(queue, v28, _ZZN8dispatch5asyncIZZN3abm18LogCompressionTask9init_syncEvEUb_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
          _ZZZN3abm18LogCompressionTask9init_syncEvEUb_EN3__1D1Ev(&block);
          v30 = v45;
          if (v45 && !atomic_fetch_add(v45 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v30);
          }

          goto LABEL_45;
        }

        v10 = xpc_null_create();
        if (*a4)
        {
          v11 = _Block_copy(*a4);
        }

        else
        {
          v11 = 0;
        }

        v23 = *(a4 + 8);
        *&block = MEMORY[0x277D85DD0];
        *(&block + 1) = 1174405120;
        v33 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke_0;
        v34 = &__block_descriptor_tmp_36;
        if (v11)
        {
          LODWORD(v37) = -534716414;
          aBlock = _Block_copy(v11);
          object = v10;
          if (v10)
          {
LABEL_37:
            xpc_retain(v10);
LABEL_40:
            dispatch_async(v23, &block);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v11)
            {
              _Block_release(v11);
            }

            xpc_release(v10);
LABEL_45:
            if (v9)
            {
              dispatch_group_leave(v9);
              dispatch_release(v9);
            }

            goto LABEL_47;
          }
        }

        else
        {
          LODWORD(v37) = -534716414;
          aBlock = 0;
          object = v10;
          if (v10)
          {
            goto LABEL_37;
          }
        }

        object = xpc_null_create();
        goto LABEL_40;
      }
    }
  }

LABEL_47:
  v24 = v47;
  if (v47)
  {
    if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void sub_23C2B43CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  if (v27)
  {
    dispatch_group_leave(v27);
    dispatch_release(v27);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v28 - 104);
  _Unwind_Resume(a1);
}

uint64_t _ZZZN3abm18LogCompressionTask9init_syncEvEUb_EN3__1D1Ev(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v4 = *(a1 + 32);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = *(a1 + 16);
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void abm::LogCompressionTask::initWorkspace_sync(abm::LogCompressionTask *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D Initialization of Workspace", buf, 2u);
  }

  strlen(abm::trace::kSnapshotFolder[0]);
  ctu::fs::create_directory();
  v3 = abm::trace::kPendingCompressionFolder;
  v4 = strlen(abm::trace::kPendingCompressionFolder);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v21 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_11;
  }

  HIBYTE(v21) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_11:
    memmove(v6, v3, v5);
  }

  *(v5 + v6) = 0;
  v8 = abm::trace::kSnapshotFolder[0];
  v9 = strlen(abm::trace::kSnapshotFolder[0]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __p[1] = v10;
    v19 = v12 | 0x8000000000000000;
    __p[0] = v11;
  }

  else
  {
    HIBYTE(v19) = v9;
    v11 = __p;
    if (!v9)
    {
      goto LABEL_21;
    }
  }

  memmove(v11, v8, v10);
LABEL_21:
  *(v10 + v11) = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v16, "[^\\.].*", 0);
  util::moveDirContent(__dst, __p, 1u, 1, v16);
  v13 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(v16);
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_29:
    operator delete(__p[0]);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  std::locale::~locale(v16);
  if (SHIBYTE(v19) < 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_30:
  operator delete(__dst[0]);
LABEL_25:
  strlen(abm::trace::kPendingCompressionFolder);
  ctu::fs::create_directory();
  v14 = *(this + 5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = abm::trace::kPendingCompressionFolder;
    v24 = 2080;
    v25 = abm::trace::kSnapshotFolder[0];